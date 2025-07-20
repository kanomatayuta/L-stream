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
 */
namespace Modules\Payment\Services;

use App\Services\BaseService;
use Modules\Payment\Models\PaymentDetail;
use Modules\Payment\Repositories\PaymentDetailRepository;

/**
 * PaymentDetailService class
 *
 * @category Payment
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class PaymentDetailService extends BaseService
{
    /**
     * Get PaymentDetail repository.
     *
     * @return PaymentDetail
     */
    public function getRepository()
    {
        return PaymentDetailRepository::class;
    }

    /**
     * Get current active payment
     *
     * @param int    $userId        User Id.
     * @param string $month         Search payment in month with format YYYY-MM-DD.
     * @param int    $paymentStatus Payment status.
     *
     * @return collection
     */
    public function getActivePayment(
        $userId,
        $month = null,
        $paymentStatus = PaymentDetail::PAYMENT_STATUS_PAID
    ) {
        $conds = [
            'user_id' => $userId,
            'payment_status' => $paymentStatus,
            'with' => 'plans'
        ];
        $conds['select'] = 'payment_details.*';

        if (isset($month)) {
            $conds['between_month'] = $month;
        }

        if (isset($paymentStatus)) {
            $conds['payment_status'] = $paymentStatus;
        }

        /**
         * Order by plan type desc by following
         * Plan type
         * 4: ENTERPRISE, 3: ADVANCED, 2: PERFORMANCE, 1: ESSENTIALS, 0: FREE TRIAL
         */
        $conds['join_with'] = 'plans';
        $conds['order_by'] = 'plans.plan_type';
        $conds['order_type'] = 'desc';

        return $this->repository->list($conds);
    }

    /**
     * Get current payment detail
     *
     * @param int    $userId        User Id.
     *
     * @return collection
     */
    public function getLastestPaymentActive(
        $userId
    ) {
        $conds = [
            'user_id' => $userId,
            'with' => 'plan',
            'first' => true,
            'payment_status' => PaymentDetail::PAYMENT_STATUS_PAID,
        ];
        $conds['select'] = 'payment_details.*';


        $conds['order_by'] = 'id';
        $conds['order_type'] = 0;

        return $this->repository->list($conds);
    }
}
