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
namespace Modules\Statistic\Repositories;

use App\Repositories\BaseRepository;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Builder;
use Modules\Statistic\Models\Statistic;
use Modules\User\Models\User;

/**
 * StatisticRepository class
 *
 * @category Statistic
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class StatisticRepository extends BaseRepository
{
    /**
     * Get model Statistic
     *
     * @return Modules\Statistic\Models\Statistic Statistic model.
     */
    public function getModel()
    {
        return Statistic::class;
    }

    /**
     * Search method
     *
     * @param Illuminate\Database\Eloquent\Builder $query  Eloquent query builder.
     * @param string                               $column Column name.
     * @param mixed                                $data   Data conditions (string|integer).
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
            case 'user_id':
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
            case 'month':
                return $query->where($column, $data);
                break;
            case 'between_date':
                $query = $query->where('start_date', '<=', $data);
                $query = $query->where('end_date', '>=', $data);
                return $query;
            default:
                return $query;
                break;
        }
    }

    /**
     * Update user statistic
     *
     * @param \Modules\User\Models\User $user User Model.
     * @return void
     */
    public function updateStatistic(User $user)
    {
        $userStatistic = $this->model->where('user_id', $user->id)->first();
        if ($userStatistic && $userStatistic->count() > 0) {
            $userStatistic->delete();
        }
    }

    /**
     * Update user statistic
     *
     * @param \Modules\User\Models\User $user User Model.
     * @return void
     */
    public function storeStatistic(User $user)
    {
        $data = [
            'user_id' => $user->id,
            'month' => Carbon::parse($user->plan_start_date)->format('Ym'),
            'start_date' => Carbon::parse($user->plan_start_date),
            'end_date' => Carbon::parse($user->plan_start_date)->addDays(config('constant.user_payment.plan_in_days')),
            'account_search_number' => 0,
            'page_search_number' => 0,
            'profile_view_number' => 0,
            'full_report_number' => 0,
            'export_csv_number' => 0,
            'campaign_register_number' => 0,
            'insight_list_number' => 0,
            'campaign_list_number' => 0
        ];
        $this->create($data);
    }
}
