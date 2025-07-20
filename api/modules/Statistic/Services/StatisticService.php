<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0
 *
 * @category  PHP
 * @package   Web_System
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 * @version   GIT: <1.0.0>
 * @link      https://digidinos.com
 * @see       https://digidinos.com
 */
namespace Modules\Statistic\Services;

use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use App\Services\BaseService;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Modules\Payment\Models\PaymentDetail;
use Modules\Payment\Services\PaymentDetailService;
use Modules\Plan\Models\Plan;
use Modules\Statistic\Models\Statistic;
use Modules\Statistic\Repositories\StatisticRepository;
use Modules\User\Services\UserService;

/**
 * StatisticRepository class
 *
 * @category Statistic
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class StatisticService extends BaseService
{
    /**
     * Get Statistic repository.
     *
     * @return StatisticRepository
     */
    public function getRepository()
    {
        return StatisticRepository::class;
    }

    /**
     * PaymentDetail service.
     *
     * @var \Modules\Payment\Services\PaymentDetailService PaymentDetail service
     */
    protected $paymentDetailService;

    /**
     * User service.
     *
     * @var \Modules\User\Services\UserService User service
     */
    protected $userService;

    /**
     * Create a new policy instance.
     *
     * @param \Modules\Payment\Services\PaymentDetailService $paymentDetailService Payment detail service.
     * @param \Modules\User\Services\UserService             $userService          User service.
     *
     * @return void
     */
    public function __construct(
        PaymentDetailService $paymentDetailService,
        UserService $userService
    )
    {
        parent::__construct();
        $this->paymentDetailService = $paymentDetailService;
        $this->userService = $userService;
    }

    /**
     * Check current active payment
     *
     * @param integer $userId        User Id.
     * @param string  $month         Search payment in month with format YYYY-MM-DD.
     * @param integer $statisticType Statistic type.
     *
     * @return boolean true/false (true: is limited, false: is not limited)
     */
    public function checkLimitedCall(
        int $userId,
        string $month = null,
        int $statisticType = Statistic::STATISTIC_ACCOUNT_SEARCH_TYPE
    )
    {
        try {
            // Handle check account search page.
            // If current page is account search page and form is normal loaded then allow action.
            if($statisticType === Statistic::STATISTIC_PAGE_SEARCH_TYPE) {
                if (!request()->has('is_submit')) {
                    return true;
                }
            }

            $paymentDetail = $this->paymentDetailService->getLastestPaymentActive($userId);

            if($paymentDetail && $paymentDetail->plan){
                $currentDate = $month ?? Carbon::now()->format('Y-m-d');

                $paymentStartDate = Carbon::parse($paymentDetail->start_date)->format('Y-m-d');
                $paymentEndDate = Carbon::parse($paymentDetail->end_date)->format('Y-m-d');
                Log::info('Class : ' . __CLASS__ . ', Method : ' . __METHOD__ . ', Line : ' . __LINE__ . ', $currentDate : ' . json_encode($currentDate));
                if($paymentStartDate <= $currentDate && $paymentEndDate >= $currentDate) {
                    // Current payment detail in duration date.
                    Log::info('Class : ' . __CLASS__ . ', Method : ' . __METHOD__ . ', Line : ' . __LINE__ . ', Current payment detail in duration date.');
                    Log::info('Class : ' . __CLASS__ . ', Method : ' . __METHOD__ . ', Line : ' . __LINE__ . ',  $paymentDetail: ' . json_encode($paymentDetail));
                    return $this->handleCheckLimitNumberAction($paymentDetail, $statisticType);
                } else {
                    if($currentDate > $paymentDetail->end_date && $paymentDetail->plan->plan_type !== Plan::PLAN_TYPE_FREE_TRIAL){
                        // Current payment detail is past.
                        Log::info('Class : ' . __CLASS__ . ', Method : ' . __METHOD__ . ', Line : ' . __LINE__ . ', Current payment detail is past.');
                        Log::info('Class : ' . __CLASS__ . ', Method : ' . __METHOD__ . ', Line : ' . __LINE__ . ',  $paymentDetail: ' . json_encode($paymentDetail));

                        $currentDate = Carbon::parse();
                        $dayOfCurrentDate = $currentDate->day;
                        $dayOfPaymentEndDate = Carbon::parse($paymentEndDate)->day;
                        if($dayOfCurrentDate <= $dayOfPaymentEndDate){
                            $newEndDate = Carbon::parse($paymentEndDate);
                            $newEndDate->setDate($currentDate->year, $currentDate->month, $dayOfPaymentEndDate);

                            $newStartDate = Carbon::parse($paymentEndDate);
                            $newStartDate->setDate($currentDate->year, $currentDate->month, $dayOfPaymentEndDate);
                            $newStartDate = $newStartDate->subDays(config('constant.user_payment.plan_in_days'));
                        }else{
                            $newStartDate = Carbon::parse($paymentEndDate)->addDays(1);
                            $newStartDate->setDate($currentDate->year, $currentDate->month, $newStartDate->day);

                            $newEndDate = Carbon::parse($paymentEndDate)->addDays(1);
                            $newEndDate->setDate($currentDate->year, $currentDate->month, $newEndDate->day);
                            $newEndDate = $newEndDate->addDays(config('constant.user_payment.plan_in_days'));
                        }


                        $data = [
                            'user_id' => $userId,
                            'month' => Carbon::parse($month)->format('Ym'),
                            'start_date' => $newStartDate,
                            'end_date' => $newEndDate,
                            'account_search_number' => 0,
                            'page_search_number' => 0,
                            'profile_view_number' => 0,
                            'full_report_number' => 0,
                            'export_csv_number' => 0,
                            'campaign_register_number' => 0,
                            'insight_list_number' => 0,
                            'campaign_list_number' => 0
                        ];
                        $this->repository->create($data);

                        $paymentDetailData['user_id'] = $paymentDetail->user_id;
                        $paymentDetailData['plan_id'] = $paymentDetail->plan_id;
                        $paymentDetailData['money_amount'] = $paymentDetail->money_amount;
                        $paymentDetailData['start_date'] = $newStartDate;
                        $paymentDetailData['end_date'] = $newEndDate;
                        $paymentDetailData['page_search_number'] = $paymentDetail->page_search_number;
                        $paymentDetailData['profile_view_number'] = $paymentDetail->profile_view_number;
                        $paymentDetailData['export_csv_number'] = $paymentDetail->export_csv_number;
                        $paymentDetailData['campaign_register_number'] = $paymentDetail->campaign_register_number;
                        $paymentDetailData['payment_status'] = $paymentDetail->payment_status;
                        $this->paymentDetailService->create($paymentDetailData);

                        return $this->handleCheckLimitNumberAction($paymentDetail, $statisticType);
                    }else{
                        Log::info('Class : ' . __CLASS__ . ', Method : ' . __METHOD__ . ', Line : ' . __LINE__ . ', Current payment detail is not in duration date.');
                        Log::info('Class : ' . __CLASS__ . ', Method : ' . __METHOD__ . ', Line : ' . __LINE__ . ',  $paymentDetail: ' . json_encode($paymentDetail));
                        return false;
                    }
                }
            }else{
                return false;
            }

        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return false;
        }
    }

    /**
     * Handle check limit number action
     *
     * @param $paymentDetail
     * @param $statisticType
     * @return bool
     */
    public function handleCheckLimitNumberAction($paymentDetail, $statisticType): bool
    {
        $planHighPriority = $paymentDetail->plan;
        $userStatistic = $this->repository->list([
            'user_id' => $paymentDetail->user_id,
            'first' => true,
            'order_by' => 'id',
            'order_type' => 0,
        ]);
        switch ($statisticType) {
            case Statistic::STATISTIC_ACCOUNT_SEARCH_TYPE:
                if ($userStatistic->account_search_number < $planHighPriority->account_search_number) {
                    $userStatistic->account_search_number++;
                    $userStatistic->save();
                    return true;
                }

                return false;
                break;
            case Statistic::STATISTIC_PAGE_SEARCH_TYPE:
                if (!request()->has('is_submit')) {
                    return true;
                }
                if ($userStatistic->page_search_number < $planHighPriority->page_search_number) {
                    $userStatistic->page_search_number++;
                    $userStatistic->save();
                    return true;
                }

                return false;
                break;
            case Statistic::STATISTIC_PROFILE_VIEW_TYPE:
                if ($userStatistic->profile_view_number < $planHighPriority->profile_view_number) {
                    $userStatistic->profile_view_number++;
                    $userStatistic->save();
                    return true;
                }

                return false;
                break;
            case Statistic::STATISTIC_FULL_REPORT_TYPE:
                if ($userStatistic->full_report_number < $planHighPriority->full_report_number) {
                    $userStatistic->full_report_number++;
                    $userStatistic->save();
                    return true;
                }

                return false;
                break;
            case Statistic::STATISTIC_EXPORT_CSV_TYPE:
                if ($userStatistic->export_csv_number < $planHighPriority->export_csv_number) {
                    $userStatistic->export_csv_number++;
                    $userStatistic->save();
                    return true;
                }

                return false;
                break;
            case Statistic::STATISTIC_CAMPAIGN_REGISTER_TYPE:
                if ($userStatistic->campaign_register_number < $planHighPriority->campaign_register_number) {
                    $userStatistic->campaign_register_number++;
                    $userStatistic->save();
                    return true;
                }

                return false;
                break;
            case Statistic::STATISTIC_INSIGHT_LIST_TYPE:
                if ($userStatistic->insight_list_number < $planHighPriority->insight_list_number) {
                    $userStatistic->insight_list_number++;
                    $userStatistic->save();
                    return true;
                }

                return false;
                break;
            case Statistic::STATISTIC_CAMPAIGN_LIST_TYPE:
                if ($userStatistic->campaign_list_number < $planHighPriority->campaign_list_number) {
                    $userStatistic->campaign_list_number++;
                    $userStatistic->save();
                    return true;
                }

                return false;
                break;
            default:
                return false;
                break;
        }
    }
}
