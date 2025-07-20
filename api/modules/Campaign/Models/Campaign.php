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
use Modules\Genre\Models\Genre;
use Modules\Campaign\Models\CampaignDetail;

/**
 * Campaign class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class Campaign extends Model
{
    protected $fillable = [
        'user_id',
        'campaign_mode',// Campaign status: 0: manual, 1: auto (Default: 0)
        'end_date',// Campaign end date
        'genre_id',// Genre FK
        'name',// Campaign name
        'start_date',// Campaign start date
        'status',// 0: Draft, 1: Running, 2: Stop (Default: 0)
        'social_type',//0: instagram , 1: Youtube, 2: Tiktok
        'is_active',//0:Hide, 1:Show
    ];

    public $selectable = [
        '*',
    ];

    public $sortable = [];

    /**
     *  Relation with Genre model
     *
     * @return mixed
     */
    public function genre()
    {
        return $this->belongsTo(Genre::class);
    }

    /**
     * Relation many to manny with Kol model , table campaign_details
     *
     * @return mixed
     */
    public function kols()
    {
        return $this->belongsToMany(Kol::class, 'campaign_details')->withPivot('kol_status');
    }

    /**
     * Campaign details hasMany function
     *
     * @return mixed
     */
    public function campaign_details()
    {
        return $this->hasMany(CampaignDetail::class);
    }

    /**
     *  Campaign report hasMany function
     *
     * @return mixed
     */
    public function campaign_report()
    {
        return $this->hasOne(TabReport::class, 'campaign_id');
    }


    /**
     * Campaign details post hasMany function
     *
     * @return mixed
     */
    public function campaign_detail_posts()
    {
        return $this->hasMany(CampaignDetailPost::class);
    }

    /**
     * Count kol have status confirming
     *
     * @return integer
     */
    public function getCampaignDetailStatusConfirmingCountAttribute()
    {
        return $this->campaign_details->where('kol_status', config('constant.campaign_status.confirming'))->count();
    }
    /**
     * Count kol have status discussing
     *
     * @return integer
     */
    public function getCampaignDetailStatusDiscussingCountAttribute()
    {
        return $this->campaign_details->where('kol_status', config('constant.campaign_status.discussing'))->count();
    }

    /**
     * Count kol have status ng
     *
     * @return integer
     */
    public function getCampaignDetailStatusNgCountAttribute()
    {
        return $this->campaign_details->where('kol_status', config('constant.campaign_status.ng'))->count();
    }

    /**
     * Count kol have status ok
     *
     * @return integer
     */
    public function getCampaignDetailStatusOkCountAttribute()
    {
        return $this->campaign_details->where('kol_status', '>=', config('constant.campaign_status.ok'))->count();
    }

    /**
     * Count kol have status pending
     *
     * @return integer
     */
    public function getCampaignDetailStatusPendingCountAttribute()
    {
        return $this->campaign_details->where('kol_status', config('constant.campaign_status.ok'))->count();
    }

    /**
     * Count kol have status product sent
     *
     * @return integer
     */
    public function getCampaignDetailStatusProductSentCountAttribute()
    {
        return $this->campaign_details->where('kol_status', config('constant.campaign_status.product_sent'))->count();
    }

    /**
     * Count kol have status waiting for draft
     *
     * @return integer
     */
    public function getCampaignDetailStatusWaitingForDraftCountAttribute()
    {
        return $this->campaign_details->where('kol_status', config('constant.campaign_status.waiting_for_draft'))->count();
    }

    /**
     * Count kol have status waiting for post
     *
     * @return integer
     */
    public function getCampaignDetailStatusWaitingForPostCountAttribute()
    {
        return $this->campaign_details->where('kol_status', config('constant.campaign_status.waiting_for_post'))->count();
    }

    /**
     * Count kol have status waiting for insight
     *
     * @return integer
     */
    public function getCampaignDetailStatusWaitingForInsightCountAttribute()
    {
        return $this->campaign_details->where('kol_status', config('constant.campaign_status.waiting_for_insight'))->count();
    }

    /**
     * Count kol have status done
     *
     * @return integer
     */
    public function getCampaignDetailStatusDoneCountAttribute()
    {
        return $this->campaign_details->where('kol_status', config('constant.campaign_status.done'))->count();
    }

    /**
     * Sum cost kol
     *
     * @return integer
     */
    public function getCampaignDetailCostAttribute()
    {
        return $this->campaign_details->where('kol_status', '>=', config('constant.campaign_status.ok'))->sum('cost');
    }
}
