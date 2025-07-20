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
namespace Modules\Role\Models;

use Spatie\Permission\Models\Role as SpatieRole;

/**
 * CreatePermissionTables class
 *
 * @category Role
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class Role extends SpatieRole
{
    public const ADMIN = 'admin';
    public const USER = 'user';

    protected $fillable = [
        'name',
        'guard_name',
    ];
}
