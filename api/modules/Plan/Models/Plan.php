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
namespace Modules\Plan\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Plan class
 *
 * @category Plan
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class Plan extends Model
{
    /**
     * Plan type
     * 0: FREE TRIAL, 1: ESSENTIALS, 2: PERFORMANCE, 3: ADVANCED, 4: ENTERPRISE
     */
    const PLAN_TYPE_FREE_TRIAL = 0;
    const PLAN_TYPE_BASIC = 1;
    const PLAN_TYPE_SILVER = 2;
    const PLAN_TYPE_GOLD = 3;
    const PLAN_TYPE_ORDER_MADE = 4;
    /**
     * Plan status
     * 0: Draft, 1: active, 2: Pending, 3: Delete
     */
    const PLAN_STATUS_DRAFT = 0;
    const PLAN_STATUS_ACTIVE = 1;
    const PLAN_STATUS_PENDING = 2;
    const PLAN_STATUS_DELETED = 3;

    protected $fillable = [
        'name',// Plan name
        'plan_type',// Plan type: 0: FREE TRIAL, 1: ESSENTIALS, 2: PERFORMANCE, 3: ADVANCED, 4: ENTERPRISE (Default: 0)
        'short_term_money_amount',// Amount 1 year (1 year contract)
        'long_term_money_amount',// Amount 2 year (2 year contract)
        'account_search_number',// Limit account search number
        'page_search_number',// Limit page search number
        'profile_view_number',// Limit profile view number
        'full_report_number',// Limit full report number
        'export_csv_number',// Limit export csv number
        'campaign_register_number',// Limit campaign register number
        'insight_list_number',// Limit insight list number
        'campaign_list_number',// Limit campaign list number
        'start_date',// Plan start date
        'end_date',// Plan end date
        'status',// Plan status: 0: Draft, 1: active, 2: Pending, 3: Delete (Default: 0)
    ];

    public $selectable = [
        '*',
    ];

    public $sortable = [];
}
