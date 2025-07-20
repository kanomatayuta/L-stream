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
namespace Modules\Role\Services;

use App\Services\BaseService;
use DB;
use Modules\Role\Models\Role;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\PermissionRegistrar;
use Modules\Role\Repositories\RoleRepository;

/**
 * RoleService class
 *
 * @category Role
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class RoleService extends BaseService
{
    /**
     * Get role repository.
     *
     * @return \Modules\Role\Repositories\RoleRepository Role repository.
     */
    public function getRepository()
    {
        return RoleRepository::class;
    }

    /**
     * Clean role.
     *
     * @param \Modules\Role\Models\Role $role Role model.
     *
     * @return void
     */
    public function clean(Role $role)
    {
        DB::table('model_has_roles')->where('role_id', $role->id)->delete();
        $role->syncPermissions();
        app()[PermissionRegistrar::class]->forgetCachedPermissions();
    }

    /**
     * Get permission list.
     *
     * @return Illuminate\Support\Collection Collection permission
     */
    public function getPermissions()
    {
        return Permission::all();
    }
}
