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
namespace Modules\Tag\Repositories;

use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Builder;
use Modules\Tag\Models\Tag;

/**
 * TagRepository class
 *
 * @category Tag
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class TagRepository extends BaseRepository
{
    /**
     * @return Modules\Tag\Models\Tag
     */
    public function getModel()
    {
        return Tag::class;
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
            case 'user_id':
                return $query->where($column, $data);
                break;
            case 'kol_id':
                return $query->where($column, $data);
                break;
            case 'campaign_id':
                return $query->where($column, $data);
                break;
            case 'hash_tags':
                return $query->where($column, $data);
                break;
            default:
                return $query;
                break;
        }
    }
}
