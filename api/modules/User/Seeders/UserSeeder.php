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
namespace Modules\User\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Modules\Role\Models\Role;
use Modules\User\Models\User;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\PermissionRegistrar;

/**
 * UserSeeder class
 *
 * @category User
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        app()[PermissionRegistrar::class]->forgetCachedPermissions();

        $actions = ['index', 'store', 'show', 'update', 'destroy'];

        foreach ($actions as $key) {
            Permission::updateOrCreate(['name' => 'user.' . $key, 'guard_name' => 'web']);
        }

        $user = User::updateOrCreate(
            [
                'email' => 'admin@admin.com',
            ],
            [
                'name' => 'Admin',
                'email' => 'admin@admin.com',
                'username' => 'admin',
                'code' => '0001',
                'mobile_no' => '0123456789',
                'date_join' => Carbon::now(),
                'plan_id' => 0,
                'email_verified_at' => Carbon::now()->timestamp,
                'password' => bcrypt(config('constant.admin_password')),
                'role_type' => 1,
            ]
        );

        $user->syncRoles(Role::ADMIN);
    }
}
