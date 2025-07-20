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
namespace Modules\Plan\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Modules\Plan\Models\Plan;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\PermissionRegistrar;

/**
 * PlanDataSeeder class
 *
 * @category Plan
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class PlanDataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // 1. FREE TRIAL
        Plan::updateOrCreate(
            [
                'name' => 'FREE TRIAL',
                'plan_type' => Plan::PLAN_TYPE_FREE_TRIAL,
                'status' => Plan::PLAN_STATUS_ACTIVE,
            ],
            [
                'name' => 'FREE TRIAL',
                'plan_type' => Plan::PLAN_TYPE_FREE_TRIAL,
                'short_term_money_amount' => 0,
                'long_term_money_amount' => 0,
                'account_search_number' => 5,
                'page_search_number' => 5,
                'profile_view_number' => 5,
                'full_report_number' => 5,
                'export_csv_number' => 0,
                'campaign_register_number' => 0,
                'insight_list_number' => -1,
                'campaign_list_number' => -1,
                'start_date' => Carbon::now()->format('Y-m-d'),
                'end_date' => Carbon::now()->addYears(10)->format('Y-m-d'),
                'status' => Plan::PLAN_STATUS_ACTIVE,
            ]
        );

        // 2. ESSENTIALS
        Plan::updateOrCreate(
            [
                'name' => 'basic plan',
                'plan_type' => Plan::PLAN_TYPE_BASIC,
                'status' => Plan::PLAN_STATUS_ACTIVE,
            ],
            [
                'name' => '基本プラン',
                'plan_type' => Plan::PLAN_TYPE_BASIC,
                'short_term_money_amount' => 10000,
                'long_term_money_amount' => 185000,
                'account_search_number' => 200,
                'page_search_number' => 200,
                'profile_view_number' => -1,
                'full_report_number' => 500,
                'export_csv_number' => 0,
                'campaign_register_number' => 0,
                'insight_list_number' => -1,
                'campaign_list_number' => -1,
                'start_date' => Carbon::now()->format('Y-m-d'),
                'end_date' => Carbon::now()->addYears(10)->format('Y-m-d'),
                'status' => Plan::PLAN_STATUS_ACTIVE,
            ]
        );

        // 3. PERFORMANCE
        Plan::updateOrCreate(
            [
                'name' => 'silver plan',
                'plan_type' => Plan::PLAN_TYPE_SILVER,
                'status' => Plan::PLAN_STATUS_ACTIVE,
            ],
            [
                'name' => 'シルバープラン',
                'plan_type' => Plan::PLAN_TYPE_SILVER,
                'short_term_money_amount' => 50000,
                'long_term_money_amount' => 385000,
                'account_search_number' => 500,
                'page_search_number' => 500,
                'profile_view_number' => -1,
                'full_report_number' => 1000,
                'export_csv_number' => -1,
                'campaign_register_number' => -1,
                'insight_list_number' => -1,
                'campaign_list_number' => -1,
                'start_date' => Carbon::now()->format('Y-m-d'),
                'end_date' => Carbon::now()->addYears(10)->format('Y-m-d'),
                'status' => Plan::PLAN_STATUS_ACTIVE,
            ]
        );

        // 4. ADVANCED
        Plan::updateOrCreate(
            [
                'name' => 'gold plan',
                'plan_type' => Plan::PLAN_TYPE_GOLD,
                'status' => Plan::PLAN_STATUS_ACTIVE,
            ],
            [
                'name' => 'ゴールドプラン',
                'plan_type' => Plan::PLAN_TYPE_GOLD,
                'short_term_money_amount' => 100000,
                'long_term_money_amount' => 780000,
                'account_search_number' => 1000,
                'page_search_number' => 1000,
                'profile_view_number' => -1,
                'full_report_number' => 2000,
                'export_csv_number' => -1,
                'campaign_register_number' => -1,
                'insight_list_number' => -1,
                'campaign_list_number' => -1,
                'start_date' => Carbon::now()->format('Y-m-d'),
                'end_date' => Carbon::now()->addYears(10)->format('Y-m-d'),
                'status' => Plan::PLAN_STATUS_ACTIVE,
            ]
        );

        // 4. ENTERPRISE
        Plan::updateOrCreate(
            [
                'name' => 'order made plan',
                'plan_type' => Plan::PLAN_TYPE_ORDER_MADE,
                'status' => Plan::PLAN_STATUS_ACTIVE,
            ],
            [
                'name' => 'オーダーメイド販売',
                'plan_type' => Plan::PLAN_TYPE_ORDER_MADE,
                'short_term_money_amount' => 1000000,
                'long_term_money_amount' => -1,
                'account_search_number' => -1,
                'page_search_number' => -1,
                'profile_view_number' => -1,
                'full_report_number' => -1,
                'export_csv_number' => -1,
                'campaign_register_number' => -1,
                'insight_list_number' => -1,
                'campaign_list_number' => -1,
                'start_date' => Carbon::now()->format('Y-m-d'),
                'end_date' => Carbon::now()->addYears(10)->format('Y-m-d'),
                'status' => Plan::PLAN_STATUS_ACTIVE,
            ]
        );
    }
}
