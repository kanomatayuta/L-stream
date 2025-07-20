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
namespace Modules\Role\Repositories;

use Modules\Role\Models\Role;
use App\Repositories\BaseRepository;

/**
 * RoleRepository class
 *
 * @category Role
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class RoleRepository extends BaseRepository
{
    /**
     * Get role model.
     *
     * @return \Modules\Role\Models\Role Role model.
     */
    public function getModel()
    {
        return Role::class;
    }

    /**
     * Dynamic build search function.
     *
     * @param mixed $query  Query builder.
     * @param mixed $column Column for query.
     * @param mixed $data   Data filter.
     *
     * @return Query
     */
    public function search($query, $column, $data)
    {
        switch ($column) {
            case 'not':
                return $query->where('name', '!=', $data);
                break;
            case 'name':
                return $query->where($column, 'like', '%' . $data . '%');
                break;
            default:
                return $query;
                break;
        }
    }
}
