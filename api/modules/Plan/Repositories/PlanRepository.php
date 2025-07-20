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
namespace Modules\Plan\Repositories;

use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Builder;
use Modules\Plan\Models\Plan;

/**
 * PlanRepository class
 *
 * @category Plan
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class PlanRepository extends BaseRepository
{
    /**
     * Get Plan model.
     *
     * @return Modules\Plan\Models\Plan
     */
    public function getModel()
    {
        return Plan::class;
    }

    /**
     * Search
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
            case 'name':
                return $query->where($column, $data);
                break;
            case 'plan_type':
                return $query->where($column, $data);
                break;
            case 'short_term_money_amount':
                return $query->where($column, $data);
                break;
            case 'long_term_money_amount':
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
                return $query->whereDate($column, $data);
                break;
            case 'end_date':
                return $query->whereDate($column, $data);
                break;
            case 'status':
                return $query->where($column, $data);
                break;
            default:
                return $query;
                break;
        }
    }
}
