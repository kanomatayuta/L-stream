<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0
 *
 * @category  Web
 * @package   Web_System
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 * @version   GIT: <1.0.0>
 * @link      https://digidinos.com
 * @see       https://digidinos.com
 **/
namespace Modules\Kol\Models;

use Illuminate\Database\Eloquent\Model;
use Modules\Campaign\Models\Campaign;
use Modules\Campaign\Models\CampaignDetail;
use Modules\Campaign\Models\CampaignDetailPost;
use Modules\Tag\Models\Tag;
use Modules\Kol\Models\KolOtherInfo;

/**
 * Kol class
 *
 * @category Kol
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class Kol extends Model
{
    protected $fillable = [
        // 'age',// KOL age (Default: 0)
        'avatar_url',// Avatar url
        // 'birthday',// KOL birthday
        'comment_avg',// Comment average (Default: 0.00)
        'description',// KOL description
        'engagement_count',// Engagement count (Default: 0.00)
        'engagement_rate',// Engagement rate (Default: 0.00)
        'followers_count',// Total follower (Default: 0.00)
        'full_name',// Full name
        // 'gender',// KOL gender: 0: femal, 1: male, 2: other (Default: 0)
        // 'last_post_time',// Last post on social network
        'like_avg',// Like average (Default: 0.00)
        // 'marital_status',// 0: single, 1: married, 2: widowed, 3: divorced, 4: other (Default: 0)
        'posts_count',// Total post (Default: 0.00)
        'social_id',// Id on socical (Default: 0)
        'social_type',// 0: Instagram, 1: Youtube, 2: Tiktok (Default: 0)
        'username',// Nick name
        'social_networks',// List of social networks: store json format.
    ];

    public $selectable = [
        '*',
    ];

    public $sortable = [];

    /**
     * Campaigns belongs to many function
     *
     * @return mixed
     */
    public function campaigns()
    {
        return $this->belongsToMany(Campaign::class, 'campaign_details')->orderByDesc('campaign_details.id');
    }

    /**
     * Relation many to many with model Tag , table: kol_tags
     *
     * @return mixed
     */
    public function tags()
    {
        return $this->belongsToMany(Tag::class, 'kol_tags');
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
     * Relation many to many with model Tag , table: kol_ratings
     *
     * @return mixed
     */
    public function ratings()
    {
        return $this->hasMany(KolRating::class, 'kol_id');
    }

    /**
     * Relation many to many with model Tag , table: kol_follower
     *
     * @return mixed
     */
    public function followers()
    {
        return $this->hasOne(KolFollower::class, 'kol_id');
    }

    /**
     * Relation many to many with model Tag , table: campaign_detail_posts
     *
     * @return mixed
     */
    public function campaignDetailPosts()
    {
        return $this->hasMany(CampaignDetailPost::class, 'kol_id');
    }

    /**
     * Relation one to one with kol other info
     *
     * @return mixed
     */
    public function kolOtherInfo()
    {
        return $this->hasOne(KolOtherInfo::class, 'kol_id');
    }
}
