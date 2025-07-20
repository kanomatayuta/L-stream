<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0.
 *
 * @category  PHP
 *
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 *
 * @version   GIT: <1.0.0>
 *
 * @see      https://digidinos.com
 */

namespace Modules\Role\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Str;
use Modules\Role\Models\Role;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\PermissionRegistrar;

/**
 * PermissionSeeder class.
 *
 * @category Role
 *
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 *
 * @see     https://digidinos.com
 */
class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        app()[PermissionRegistrar::class]->forgetCachedPermissions();
        $excludes = ['l5-swagger', 'auth.login', 'forgetPassword', 'updatePassword', 'auth.getProfile', 'auth.logout'];

        $routeCollection = Route::getRoutes();
        foreach ($routeCollection as $value) {
            if ((!empty($value->getName())) && !Str::of($value->getName())->contains($excludes)) {
                Permission::updateOrCreate(['name' => $value->getName(), 'guard_name' => 'web']);
            }
        }
    }
}
