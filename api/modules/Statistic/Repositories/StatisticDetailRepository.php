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
use Illuminate\Database\Eloquent\Builder;
use Modules\Statistic\Models\StatisticDetail;

/**
 * StatisticDetailRepository class
 *
 * @category Statistic
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class StatisticDetailRepository extends BaseRepository
{
    /**
     * Get model StatisticDetail
     *
     * @return Modules\Statistic\Models\StatisticDetail StatisticDetail model.
     */
    public function getModel()
    {
        return StatisticDetail::class;
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
            case 'api_url':
                return $query->where($column, $data);
                break;
            case 'day':
                return $query->where($column, $data);
                break;
            default:
                return $query;
                break;
        }
    }
}
