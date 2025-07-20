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
namespace Modules\Payment\Models;

use Illuminate\Database\Eloquent\Model;
use Modules\Plan\Models\Plan;

/**
 * PaymentDetail class
 *
 * @category Payment
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class PaymentDetail extends Model
{
    /**
     * Payment status
     * 0: un-paid, 1: paid, 2: Cancel, 3: Delete
     */
    const PAYMENT_STATUS_UNPAID = 0;
    const PAYMENT_STATUS_PAID = 1;
    const PAYMENT_STATUS_CANCEL = 2;
    const PAYMENT_STATUS_DELETE = 3;

    public $selectable = [
        '*',
    ];

    public $sortable = [
    ];
    protected $fillable = [
        'plan_id',// Plan Id
        'user_id',// User Id
        'term_mode',// Term mode: 0: Short term, 1: Long term (Default: 0)
        'money_amount',// Money amount for short or long term
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
        'payment_status',// Payment status: 0: un-paid, 1: paid, 2: Cancel, 3: Delete (Default: 0)
    ];

    /**
     * Relationhip of variation and stock.
     *
     * @return collection
     */
    public function plans()
    {
        return $this->hasMany(Plan::class, 'id', 'plan_id');
    }

    /**
     * Relationhip of variation and stock.
     *
     * @return collection
     */
    public function plan()
    {
        return $this->belongsTo(Plan::class);
    }
}
