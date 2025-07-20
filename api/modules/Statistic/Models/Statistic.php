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
 * @see       https://digidinos.com
 */
namespace Modules\Statistic\Models;

use Illuminate\Database\Eloquent\Model;
use Modules\User\Models\User;

/**
 * CreateStatisticsTable class
 *
 * @category Statistic
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class Statistic extends Model
{
    /**
     * Statistic call Api type
     * 0: account_search_number
     * 1: page_search_number
     * 2: profile_view_number
     * 3: full_report_number
     * 4: export_csv_number
     * 5: campaign_register_number
     * 6: insight_list_number
     * 7: campaign_list_number
     */
    const STATISTIC_ACCOUNT_SEARCH_TYPE = 0;
    const STATISTIC_PAGE_SEARCH_TYPE = 1;
    const STATISTIC_PROFILE_VIEW_TYPE = 2;
    const STATISTIC_FULL_REPORT_TYPE = 3;
    const STATISTIC_EXPORT_CSV_TYPE = 4;
    const STATISTIC_CAMPAIGN_REGISTER_TYPE = 5;
    const STATISTIC_INSIGHT_LIST_TYPE = 6;
    const STATISTIC_CAMPAIGN_LIST_TYPE = 7;

    protected $fillable = [
        'user_id',// User Id
        'account_search_number',// Account search number (Default: 0)
        'page_search_number',// Page search number (Default: 0)
        'profile_view_number',// Profile view number (Default: 0)
        'full_report_number',// Full report number (Default: 0)
        'export_csv_number',// Export csv number (Default: 0)
        'campaign_register_number',// Campaign register number (Default: 0)
        'insight_list_number',// Insight list number (Default: 0)
        'campaign_list_number',// Campaign list number (Default: 0)
        'month',// Count number in month
        'start_date',
        'end_date',
    ];

    public $selectable = [
        '*',
    ];

    public $sortable = [];

    /**
     *  Relation with User model
     *
     * @return mixed
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
