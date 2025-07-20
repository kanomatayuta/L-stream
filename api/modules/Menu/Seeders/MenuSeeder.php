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
namespace Modules\Menu\Seeders;

use Illuminate\Database\Seeder;
use Modules\Menu\Models\Menu;

/**
 * MenuSeeder class
 *
 * @category Menu
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class MenuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Menu::truncate();

        $position = 1;

        // kol groups
        Menu::updateOrCreate(
            ['title' => 'module.kol'],
            ['link' => '/kol/search', 'position' => $position++, 'icon' => 'search',  'parent_id' => 0]
        );

        // insight list
        Menu::updateOrCreate(
            ['title' => 'module.insight-list'],
            ['link' => '/insight/list', 'position' => $position++, 'icon' => 'book',  'parent_id' => 0]
        );

        // campaign groups
        Menu::updateOrCreate(
            ['title' => 'module.campaign'],
            ['link' => '/campaign', 'position' => $position++, 'icon' => 'credit-card',  'parent_id' => 0]
        );

        // user groups
        Menu::updateOrCreate(
            ['title' => 'module.user'],
            ['link' => '/user', 'position' => $position++, 'icon' => 'team',  'parent_id' => 0]
        );

        // role groups
        Menu::updateOrCreate(
            ['title' => 'module.role'],
            ['link' => '/role', 'position' => $position++, 'icon' => 'balance-scale',  'parent_id' => 0]
        );

        //campaignDetail groups
        // Menu::updateOrCreate(
        //     ['title' => 'module.campaignDetail'],
        //     ['link' => '/campaign-detail', 'position' => $position++, 'icon' => 'balance-scale',  'parent_id' => 0]
        // );

       // campaignDetailPost groups
        // Menu::updateOrCreate(
        //     ['title' => 'module.campaignDetailPost'],
        //     ['link' => '/campaign-detail-post', 'position' => $position++, 'icon' => 'balance-scale',  'parent_id' => 0]
        // );

        // genre groups
        Menu::updateOrCreate(
            ['title' => 'module.genre'],
            ['link' => '/genre', 'position' => $position++, 'icon' => 'container',  'parent_id' => 0]
        );

        // payment groups
        Menu::updateOrCreate(
            ['title' => 'module.payment'],
            ['link' => '/payment', 'position' => $position++, 'icon' => 'balance-scale',  'parent_id' => 0]
        );

        // plan groups
        Menu::updateOrCreate(
            ['title' => 'module.plan'],
            ['link' => '/plan', 'position' => $position++, 'icon' => 'inbox',  'parent_id' => 0]
        );

        // tag groups
        // Menu::updateOrCreate(
        //     ['title' => 'module.tag'],
        //     ['link' => '/tag', 'position' => $position++, 'icon' => 'balance-scale',  'parent_id' => 0]
        // );

        // tag groups
        // Menu::updateOrCreate(
        //     ['title' => 'module.statistic'],
        //     ['link' => '/statistic', 'position' => $position++, 'icon' => 'balance-scale',  'parent_id' => 0]
        // );

        // usage plan
        Menu::updateOrCreate(
            ['title' => 'module.setting'],
            ['link' => '/setting', 'position' => $position++, 'icon' => 'setting',  'parent_id' => 0]
        );
    }
}
