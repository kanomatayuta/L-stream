<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0.
 *
 * @category  Web
 *
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 *
 * @version   GIT: <1.0.0>
 *
 * @see      https://digidinos.com
 * @see       https://digidinos.com
 */

namespace Modules\Campaign\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\PermissionRegistrar;

/**
 * CampaignDetailPostSeeder class.
 *
 * @category Campaign
 *
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 *
 * @see     https://digidinos.com
 */
class CampaignDetailPostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        app()[PermissionRegistrar::class]->forgetCachedPermissions();

        // $actions = ['index', 'store', 'show', 'update', 'destroy'];

        // foreach ($actions as $key) {
        //     Permission::create(['name' => 'campaignDetailPost.' . $key]);
        // }
    }
}
