<?php

namespace Modules\Kol\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KolOtherInfo extends Model
{
    use HasFactory;

    protected $table = 'kol_other_info';

    protected $fillable = [
        'kol_id',
        'followers',
        'engagements',
        'likes',
        'hashtags',
        'top_hashtags',
        'brands',
        'favorites',
        'country',
        "demography_by_age",
        "demography",
        "audience_ethnicity",
        "blogger_hashtags",
        "audience_interests",
        "brands_mentions",
        "aqs",
        "email",
        "like_avg_10_latest_reel",
        "comment_avg_10_latest_reel",
        "view_avg_10_latest_reel",
        "er_avg_10_latest_reel",
        'views_avg',
        'status',
        'instagram_url',
        'audience_geo',
        'comments_avg',
        'likes_avg',
        'audience_by_type',
    ];

    protected $hidden = [
        'demography_by_age',
        'demography',
        'audience_ethnicity',
        'blogger_hashtags',
        'audience_interests',
        'brands_mentions',
        'aqs',
        'email',
        'like_avg_10_latest_reel',
        'comment_avg_10_latest_reel',
        'view_avg_10_latest_reel',
        'er_avg_10_latest_reel',
    ];

    /**
     * Relation belongs to with kol
     *
     * @return mixed
     */
    public function kol()
    {
        return $this->belongsTo(Kol::class, 'kol_id');
    }

    protected $casts = [
        'demography_by_age' => 'object',
        'demography' => 'object',
        'audience_ethnicity' => 'object',
        'blogger_hashtags' => 'object',
        'audience_interests' => 'object',
        'brands_mentions' => 'object',
        'country' => 'object',
        // 'hashtags' => 'array'
    ];

    protected $appends = [
        'kol_country',
        'male_follower_rate',
        'female_follower_rate',
        'female_follower_rate_by_group',
        'female_follower_rate_by_group_y_t',
        'male_follower_rate_by_group',
        'male_follower_rate_by_group_y_t',
        'sort_audience_ethnicity',
        'sort_hash_tag_er_rate',
        'sort_audience_interests',
        'sort_brands_mentions',
        'kol_email',
        'kol_email_y_t',
        'sort_audience_geo',
        'sort_follower',
        'sort_registrant_youtube',
    ];
    /**
     * Get Male Follower Rate Attribute
     *
     * @return mixed
     */
    public function getKolEmailAttribute()
    {
        if ($this->email) {
            return ((json_decode($this->email)->emails[0]));
        }
    }
    /**
     * Get Male Follower Rate Attribute
     *
     * @return mixed
     */
    public function getKolEmailYTAttribute()
    {
        if ($this->email) {
            return ((json_decode($this->email)->data[0]));
        }
    }
   /**
     * Get Male Follower Rate Attribute
     *
     * @return mixed
     */
    public function getKolCountryAttribute()
    {
        if ($this->country) {
            $code = $this->country;
            $collection = collect(config('constant.countries'))->filter(function ($c, $key) use ($code) {
                return $key === $code;
            });
            return ($collection[$code]);
        }
    }

    /**
     * Get Male Follower Rate Attribute
     *
     * @return mixed
     */
    public function getMaleFollowerRateAttribute()
    {
        $collection = collect(json_decode($this->demography))->filter(function ($gender) {
            return $gender->gender === config('constant.demography.male');
        });

        return $collection->pluck('value')->first() . '%';
    }

    /**
     * Get Female Follower Rate Attribute
     *
     * @return mixed
     */
    public function getFemaleFollowerRateAttribute()
    {
        $collection = collect(json_decode($this->demography))->filter(function ($gender) {
            return $gender->gender === config('constant.demography.female');
        });

        return $collection->pluck('value')->first() . '%';
    }

    /**
     * Get Female Follower Rate By Group Attribut
     *
     * @return mixed
     */
    public function getFemaleFollowerRateByGroupAttribute()
    {
        return (array) (json_decode($this->demography_by_age)->female->data);
    }

    /**
     * Get Female Follower Rate By Group Attribute
     *
     * @return mixed
     */
    public function getFemaleFollowerRateByGroupYTAttribute()
    {
        return (array) (json_decode($this->demography_by_age)->female);
    }

    /**
     * Get Male Follower Rate By Group Attribute
     *
     * @return mixed
     */
    public function getMaleFollowerRateByGroupYTAttribute()
    {
        return (array) (json_decode($this->demography_by_age)->male);
    }

    /**
     * Get Male Follower Rate By Group Attribute
     *
     * @return mixed
     */
    public function getMaleFollowerRateByGroupAttribute()
    {

        return (array) (json_decode($this->demography_by_age)->male->data);
    }

    /**
     * Sort Audience Ethnicity Attribute
     *
     * @return mixed
     */
    public function getSortAudienceEthnicityAttribute()
    {
        if ($this->audience_ethnicity && !empty(json_decode($this->audience_ethnicity)->countries)) {
            $newCollection = collect(json_decode($this->audience_ethnicity)->countries)->sortBy([['value', 'desc']]);

            return collect($newCollection)->map(function ($country) {
                return $country->value = $country->name . ' = ' . $country->value . '%';
            })->take(3);
        }
    }

    /**
     * Sort Audience Ethnicity Attribute
     *
     * @return mixed
     */
    public function getSortRegistrantYoutubeAttribute()
    {
        if ($this->audience_geo) {
            $newCollection = collect(json_decode($this->audience_geo))->sortBy([['prc', 'desc']]);
            return collect($newCollection)->map(function ($country) {
                $code = $country->title;
                $collection = collect(config('constant.countries'))->filter(function ($c, $key) use ($code) {
                    return $key === $code;
                });
                return $country->value = $collection[$code] . ' = ' . $country->prc . '%';
            })->take(3);
        }
    }

    /**
     * Sort Follower Attribute
     *
     * @return mixed
     */
    public function getSortFollowerAttribute()
    {
        if ($this->audience_geo) {
            $newCollection = collect(json_decode($this->audience_geo))->sortBy([['prc', 'desc']]);
            return collect($newCollection)->map(function ($country) {
                $code = $country->code;
                $collection = collect(config('constant.countries'))->filter(function ($c, $key) use ($code) {
                    return $key === $code;
                });
                return $country->value = $collection[$code] . ' = ' . $country->prc . '%';
            })->take(3);
        }
    }

    /**
     * Sort Hash Tag ER Rate Attribute
     *
     * @return mixed
     */
    public function getSortHashTagErRateAttribute()
    {
        $newCollection = collect(json_decode($this->hashtags))->sortBy([['value', 'desc']]);
        return collect($newCollection)->map(function ($tag) {
            return $tag->title . ' = ' . $tag->value  . '%';
        })->take(5);
    }

     /**
     * Sort Audience Interests Rate Attribute
     *
     * @return mixed
     */
    public function getSortAudienceInterestsAttribute()
    {
        if ($this->audience_interests) {
            $results = [];
            $brandsMentions = collect($this->audience_interests);
            foreach ($brandsMentions as $brandsMention) {
                $text = $brandsMention->title;
                if ($results && !empty($results[strval($brandsMention->value)])) {
                    $text = $results[strval($brandsMention->value)].','.$brandsMention->title;
                }
                $results[strval($brandsMention->value)] = $text;
            }
            $arr = [];
            collect($results)->mapWithKeys(function ($result, $key) use (&$arr) {
                $arr[] = $result . ' = ' . $key .'%';
                return [];
            });
            return $arr;
        }
    }

     /**
     * Sort Brands Mentions Rate Attribute
     *
     * @return mixed
     */
    public function getSortBrandsMentionsAttribute()
    {
        $newCollection = collect(json_decode($this->blogger_hashtags))->sortBy([['value', 'desc']]);

        return collect($newCollection)->map(function ($tag) {
            return $tag->title . ' = ' . $tag->value  . '%';
        })->take(5);
    }
}
