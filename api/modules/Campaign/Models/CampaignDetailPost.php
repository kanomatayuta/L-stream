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
 **/
namespace Modules\Campaign\Models;

use Illuminate\Database\Eloquent\Model;
use Modules\Kol\Models\Kol;
use Modules\Campaign\Models\Campaign;
use Modules\Campaign\Models\CampaignDetail;

/**
 * CampaignDetailPost class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CampaignDetailPost extends Model
{
    protected $fillable = [
        'amount_money',// Amount of money (Default: 0.00)
        'campaign_detail_id',// Campagn Detail Id
        'campaign_id',// Campagn Id
        'comment_count',// number of comments (Default: 0.00)
        'earning',// Earning (Default: 0.00)
        'good_count',// いいね (Default: 0.00)
        'kol_id',// KOL Id
        'normal_eg_rate',// Normal EG% (Default: 0.00)
        'number_registration',// Number of registration (Default: 0.00)
        'post_date',// Post date
        'post_url',// Post url
        'preg_rate',// PREG% (Default: 0.00)
        'product_name',// Product name
        'regeneration_avg',// Average regeneration (Default: 0.00)
        'regeneration_pr',// PR regeneration (Default: 0.00)
        'roas',// ROAS (Default: 0.00)
        'report_type', // type of report : Feed, Story, Reel
        'share_count',// Share (Default: 0.00)
        'share_rate',// Share rate (Default: 0.00)
        'impression_count', // Impression
        'impression_rate', // Impression rate
        'click_count', // Click
        'click_rate', // Click rate
        'reaction_count', // Reaction
        'reaction_rate', // Reaction Rate
        'reach_count', // Reach
        'reach_rate', // Reach rate
        'download_count', // download
        'download_rate', // download rate
        'conversion_count', // CV
        'conversion_rate', // CV rate
    ];

    public $selectable = [
        '*',
    ];

    public $sortable = [];

    /**
     * Relation with Kol model
     *
     * @return mixed
     */
    public function kol()
    {
        return $this->belongsTo(Kol::class);
    }

    /**
     * Relation with Campaign model
     *
     * @return mixed
     */
    public function campaign()
    {
        return $this->belongsTo(Campaign::class);
    }

    /**
     * Relation with Campaign detail model
     *
     * @return mixed
     */
    public function campaign_detail()
    {
        return $this->belongsTo(CampaignDetail::class);
    }
}
