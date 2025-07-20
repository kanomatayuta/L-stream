<?php
/**
 * Digi Dinos package.
 *
 * @category  PHP
 *
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 *
 * @version   Release: 1.0.0
 *
 * @see      https://digidinos.com
 */
use Illuminate\Database\Seeder;
use Modules\Campaign\Seeders\CampaignSeeder;
use Modules\Genre\Seeders\GenreDataSeeder;
use Modules\Genre\Seeders\GenreSeeder;
use Modules\Kol\Seeders\KolSeeder;
use Modules\Menu\Seeders\MenuSeeder;
use Modules\Payment\Seeders\PaymentDetailSeeder;
use Modules\Plan\Seeders\PlanDataSeeder;
use Modules\Plan\Seeders\PlanSeeder;
use Modules\Role\Seeders\PermissionSeeder;
use Modules\Role\Seeders\RoleSeeder;
use Modules\Statistic\Seeders\StatisticSeeder;
use Modules\Tag\Seeders\TagSeeder;
use Modules\User\Seeders\UserSeeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // Run first when init system. Include User, Role, Permission
        $this->call([
            RoleSeeder::class,
            UserSeeder::class,
            MenuSeeder::class,
        ]);
        // Init dynamic permission for all action menu
        $this->call([
            PermissionSeeder::class
        ]);
        // Init master data only
        $this->call([
            GenreDataSeeder::class,
            PlanDataSeeder::class,
        ]);
    }
}
