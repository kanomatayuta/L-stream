<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0
 *
 * @category  Web
 * @package   Web_System
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 * @version   GIT: <1.0.0>
 * @link      https://digidinos.com
 * @see       https://digidinos.com
 **/
namespace Modules\Kol\Policies;

use Carbon\Carbon;
use Illuminate\Auth\Access\HandlesAuthorization;
use Modules\User\Models\User;
use Modules\Kol\Models\Kol;
use Modules\Payment\Services\PaymentDetailService;
use Modules\Statistic\Models\Statistic;
use Modules\Statistic\Services\StatisticService;

/**
 * KolPolicy class
 *
 * @category Kol
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class KolPolicy
{
    use HandlesAuthorization;

    /**
     * PaymentDetail service.
     *
     * @var \Modules\Payment\Services\PaymentDetailService PaymentDetail service
     */
    protected $paymentDetailService;

    /**
     * PaymentDetail service.
     *
     * @var \Modules\Statistic\Services\StatisticService Statistic service.
     */
    protected $statisticService;

    /**
     * Create a new policy instance.
     *
     * @param \Modules\Payment\Services\PaymentDetailService $paymentDetailService Payment detail service.
     * @param \Modules\Statistic\Services\StatisticService   $statisticService     Statistic service.
     *
     * @return void
     */
    public function __construct(PaymentDetailService $paymentDetailService, StatisticService $statisticService)
    {
        $this->paymentDetailService = $paymentDetailService;
        $this->statisticService = $statisticService;
    }

    /**
     * Determine if the given post can be updated by the user.
     *
     * @param \Modules\User\Models\User $user User model.
     *
     * @return boolean
     */
    public function search(User $user)
    {
        // TODO: Check limit call search API.
        $month = Carbon::now()->format('Y-m-d');
        $isAllow = $this->statisticService->checkLimitedCall($user->id, $month, Statistic::STATISTIC_PAGE_SEARCH_TYPE);

        if ($isAllow) {
            return true;
        }

        return false;
    }

    /**
     * Determine if the given post can be updated by the user.
     *
     * @param \Modules\User\Models\User $user User model.
     *
     * @return boolean
     */
    public function report(User $user)
    {
        // TODO: Check limit call report API.
        $month = Carbon::now()->format('Y-m-d');
        $isAllow = $this->statisticService->checkLimitedCall($user->id, $month, Statistic::STATISTIC_PROFILE_VIEW_TYPE);

        if ($isAllow) {
            return true;
        }

        return false;
    }

    /**
     * Determine if the given post can be updated by the user.
     *
     * @param \Modules\User\Models\User $user User model.
     *
     * @return boolean
     */
    public function exportCsv(User $user)
    {
        // TODO: Check limit call export csv API.
        $month = Carbon::now()->format('Y-m-d');
        $isAllow = $this->statisticService->checkLimitedCall($user->id, $month, Statistic::STATISTIC_EXPORT_CSV_TYPE);

        if ($isAllow) {
            return true;
        }

        return false;
    }

    /**
     * Determine if the given post can be updated by the user.
     *
     * @param \Modules\User\Models\User $user User model.
     *
     * @return boolean
     */
    public function registerCampaign(User $user)
    {
        // TODO: Check limit call register campaign API.
        $month = Carbon::now()->format('Y-m-d');
        $isAllow = $this->statisticService->checkLimitedCall($user->id, $month, Statistic::STATISTIC_CAMPAIGN_REGISTER_TYPE);

        if ($isAllow) {
            return true;
        }

        return false;
    }
}
