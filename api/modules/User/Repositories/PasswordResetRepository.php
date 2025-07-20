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
namespace Modules\User\Repositories;

use App\Repositories\BaseRepository;
use Modules\User\Models\PasswordReset;

/**
 * UserRepository class
 *
 * @category User
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class PasswordResetRepository extends BaseRepository
{
    /**
     * Get PasswordReset model.
     *
     * @return App\modules\User\Models\PasswordReset PasswordReset model.
     */
    public function getModel()
    {
        return PasswordReset::class;
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
            case 'email':
            case 'token':
                return $query->where($column, $data);
                break;
            default:
                return $query;
                break;
        }
    }
}
