<?php

namespace Modules\Statistic\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Modules\Payment\Models\PaymentDetail;
use Modules\Payment\Repositories\PaymentDetailRepository;
use Modules\Payment\Services\PaymentDetailService;
use Modules\Plan\Models\Plan;
use Modules\Statistic\Models\Statistic;
use Modules\Statistic\Repositories\StatisticRepository;
use Modules\Statistic\Services\StatisticService;
use Modules\User\Models\User;

class UpdateDurationDateInStatisticSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $paymentDetailService = new PaymentDetailRepository();
        $statisticService = new StatisticRepository();
        $users = User::where('role_type', '!=', config('constant.user_role_type.admin'))
            ->where('is_active', 1)
            ->get();
        foreach($users as $user){
            $paymentDetail = PaymentDetail::where('user_id', $user->id)->where('payment_status', 1)->orderBy('id', 'desc')->first();
            if($paymentDetail){
                $plan = Plan::where('id', $paymentDetail->plan_id)->first();
                DB::beginTransaction();
                try{
                    PaymentDetail::where('user_id', $user->id)->where('payment_status', 1)->delete(); // delete all payment detail;
                    $planStartDate = $paymentEndDate = Carbon::parse($user->plan_start_date);

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

                    $paymentDetailData = [
                        'user_id' => $user->id,
                        'plan_id' => $plan->id,
                        'money_amount' => $plan->short_term_money_amount,
                        'start_date' => $newStartDate,
                        'end_date' => $newEndDate,
                        'page_search_number' => $plan->page_search_number,
                        'profile_view_number' => $plan->profile_view_number,
                        'export_csv_number' => $plan->export_csv_number,
                        'campaign_register_number' => $plan->campaign_register_number,
                        'payment_status' => 1,
                    ];
                    $paymentDetailService->create($paymentDetailData);

                    $data = [
                        'user_id' => $user->id,
                        'month' => Carbon::parse()->format('Ym'),
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
                    $statisticService->create($data);
                    DB::commit();
                }catch(\Exception $e){
                    DB::rollBack();
                    Log::error('Class : ' . __CLASS__ . ', Method : ' . __METHOD__ . ', Line : ' . __LINE__ . ', $e : ' . json_encode($e));
                }

            }
        }
    }
}
