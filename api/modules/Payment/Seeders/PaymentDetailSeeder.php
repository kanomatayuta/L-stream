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

namespace Modules\Payment\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\PermissionRegistrar;

/**
 * PaymentDetailSeeder class.
 *
 * @category Payment
 *
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 *
 * @see     https://digidinos.com
 */
class PaymentDetailSeeder extends Seeder
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
            Permission::updateOrCreate(['name' => 'paymentDetail.' . $key]);
        }
    }
}
