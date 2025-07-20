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
namespace Modules\Payment\Repositories;

use App\Repositories\BaseRepository;
use Carbon\Carbon;
use DateInterval;
use DateTime;
use Illuminate\Database\Eloquent\Builder;
use Modules\Payment\Models\PaymentDetail;
use Modules\Plan\Models\Plan;
use Modules\User\Models\User;

/**
 * PaymentDetailRepository class
 *
 * @category Payment
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class PaymentDetailRepository extends BaseRepository
{
    /**
     * Get PaymentDetail model.
     *
     * @return Modules\Payment\Models\PaymentDetail
     */
    public function getModel()
    {
        return PaymentDetail::class;
    }

    /**
     * Search.
     *
     * @param \Illuminate\Database\Eloquent\Builder $query  Eloquent query builder.
     * @param string                                $column Column name.
     * @param mixed                                 $data   Data conditions (string|integer).
     *
     * @return Query
     */
    public function search(Builder $query, string $column, $data)
    {
        switch ($column) {
            case 'id':
                return $query->where($column, $data);
                break;
            case 'ids':
                return $query->whereIn($column, $data);
                break;
            case 'plan_id':
                return $query->where($column, $data);
                break;
            case 'user_id':
                return $query->where($column, $data);
                break;
            case 'term_mode':
                return $query->where($column, $data);
                break;
            case 'money_amount':
                return $query->where($column, $data);
                break;
            case 'account_search_number':
                return $query->where($column, $data);
                break;
            case 'page_search_number':
                return $query->where($column, $data);
                break;
            case 'profile_view_number':
                return $query->where($column, $data);
                break;
            case 'full_report_number':
                return $query->where($column, $data);
                break;
            case 'export_csv_number':
                return $query->where($column, $data);
                break;
            case 'campaign_register_number':
                return $query->where($column, $data);
                break;
            case 'insight_list_number':
                return $query->where($column, $data);
                break;
            case 'campaign_list_number':
                return $query->where($column, $data);
                break;
            case 'start_date':
                return $query->where($column, $data);
                break;
            case 'end_date':
                return $query->where($column, $data);
                break;
            case 'between_month':
                $query = $query->where('payment_details.start_date', '<=', $data);
                $query = $query->where('payment_details.end_date', '>=', $data);
                return $query;
                break;
            case 'end_date_greater_than':
                $query = $query->where('payment_details.end_date', '>=', $data);
                return $query;
            case 'payment_status':
                return $query->where($column, $data);
                break;
            default:
                return $query;
                break;
        }
    }

    /**
     * Query builder join with other table.
     *
     * @param Illuminate\Database\Eloquent\Builder $query Eloquent query builder.
     * @param array                                $conds Conditions for filter.
     *
     * @return Builder
     */
    public function joinWith(Builder $query, array $conds)
    {
        if (empty($conds['join_with'])) {
            return $query;
        }

        $joinTable = $conds['join_with'];
        switch ($joinTable) {
            case 'plans':
                // join with plans table
                $query->join($joinTable, 'plans.id', '=', 'payment_details.plan_id');

                if (!empty($conds['order_by'])) {
                    $order_type = $conds['order_type'] ?? 'asc';
                    $query->orderBy($conds['order_by'], $order_type);
                }
                break;
            default:
                break;
        }

        return $query;
    }

    /**
     * @param \Modules\User\Models\User $user   User Model.
     * @param \Modules\Plan\Models\Plan $plan   Plan Model.
     * @param integer                   $status Pay status.
     * @return Model
     */
    public function storePayment(User $user, Plan $plan, int $status)
    {
        $data = [];
        $data['plan_start_date'] = new Datetime($user->plan_start_date);
        $data['user_id'] = $user->id;
        $data = $this->getArr($user, $plan, $status, $data);

        $result = $this->model->create($data);
        return $result;
    }

    /**
     * @param \Modules\User\Models\User $user   User Model.
     * @param \Modules\Plan\Models\Plan $plan   Plan Model.
     * @param integer                   $status Pay status.
     * @return Model
     */
    public function updatePayment(User $user, Plan $plan, int $status)
    {
        $data = [];
        $data = $this->getArr($user, $plan, $status, $data);

        $result = $this->model->where('user_id', $user->id)->orderBy('id', 'desc')->first()->update($data);
        return $result;
    }

    /**
     * @param \Modules\User\Models\User $user   User Model.
     * @param \Modules\Plan\Models\Plan $plan   Plan Model.
     * @param integer                   $status Pay status.
     * @param array                     $data   Data.
     * @return array
     */
    protected function getArr(User $user, Plan $plan, int $status, array $data): array
    {
        $data['plan_id'] = $plan->id;
        $data['money_amount'] = $plan->short_term_money_amount;
        $data['start_date'] = Carbon::parse($user->plan_start_date);
        $data['end_date'] = Carbon::parse($user->plan_start_date)->addDays(config('constant.user_payment.plan_in_days'));
        $data['page_search_number'] = ($plan->plan_type == Plan::PLAN_TYPE_ORDER_MADE) ? $user->page_search_number : $plan->page_search_number;
        $data['profile_view_number'] = ($plan->plan_type == Plan::PLAN_TYPE_ORDER_MADE) ? $user->profile_view_number : $plan->profile_view_number;
        $data['export_csv_number'] = ($plan->plan_type == Plan::PLAN_TYPE_ORDER_MADE) ? $user->export_csv_number : $plan->export_csv_number;
        $data['campaign_register_number'] = ( $plan->plan_type == Plan::PLAN_TYPE_ORDER_MADE ) ? $user->campaign_register_number : $plan->campaign_register_number;
        $data['payment_status'] = $status;
        return $data;
    }
}
