<?php

namespace Modules\Campaign\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TabReport extends Model
{
    use HasFactory;

    protected $fillable = [
        'campaign_id',
        'cost',
        'revenue',
        'roas',
        'number_of_kol',
        'follower',
        'follower_unit',
        'reach_rate',
        'feed_reach',
        'feed_reach_rate',
        'feed_download',
        'feed_download_rate',
        'feed_engagement_rate',
        'story_impression',
        'story_impression_rate',
        'story_click',
        'story_click_rate',
        'story_reaction',
        'story_reaction_rate',
        'reed_reach',
        'reed_reach_rate',
        'reed_download',
        'reed_download_rate',
        'reed_engagement_rate',
        'total_click',
        'click_rate',
        'er_avg',
        'conversion_avg',
        'total_conversion',
        'revenue_rate',
        'regeneration_pr',
        'preg_rate',
        'share_rate',
    ];

    /**
     *  Relation with Campaign model
     *
     * @return mixed
     */
    public function campaign()
    {
        return $this->belongsTo(Campaign::class);
    }
}
