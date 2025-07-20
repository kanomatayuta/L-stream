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
namespace Modules\Kol\Transformers;

use App\Services\SnsService;
use Carbon\Carbon;
use Illuminate\Support\Facades\Log;

/**
 * InstagramReportResultTransformer class
 *
 * @category Hypeauditor
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class InstagramReportResultTransformer
{
   /**
    * Transform data from hypeauditor this system.
    * Ref: https://hypeauditor.readme.io/reference/report_instagram
    * Format result:
    * "user": {
    *     "username": "vancityreynolds",
    *     "full_name": "Ryan Reynolds",
    *     "is_private": false,
    *     "is_verified": true,
    *     "is_deleted": false,
    *     "about": "Owner @aviationgin & @mintmobile @maximumeffort & @wrexham_afc 🇨🇦",
    *     "photo_url": "https://cdn.hypeauditor.com/img/instagram/user/1942463581.jpg?w=320&till=1671525417&sign=e8b01b94dc3567e89060d0ef9e07ade6",
    *     "posts_count": 689,
    *     "followers_count": 45294254,
    *     "followings_count": 676,
    *     "avg_likes": 672863,
    *     "avg_comments": 3815,
    *     "aqs": 93,
    *     "aqs_name": "Excellent",
    *     "aqs_description": "Good quality of active audience; Excellent likes activity; Excellent comments activity",
    *     "blogger_categories": [
    *         1032
    *     ],
    *     "blogger_languages": [
    *         "en"
    *     ],
    *     "blogger_hashtags": {},
    *     "blogger_graph_anomalies": {},
    *     "blogger_geo": {},
    *     "blogger_emv": [],
    *     "brand_safety": {},
    *     "blogger_rankings": {},
    *     "likes_spread": {},
    *     "likes_comments_ratio": {},
    *     "audience_reachability": {},
    *     "audience_authenticity": {},
    *     "audience_type": {},
    *     "most_media": {},
    *     "audience_ethnicity": [],
    *     "audience_sentiments": {},
    *     "likes_comments_ratio_chart": [],
    *     "followers_chart": [],
    *     "following_chart": [],
    *     "er": {},
    *     "subscribers_growth_prc": {},
    *     "comments_rate": {},
    *     "audience_languages": [],
    *     "audience_age_21_plus_prc": {},
    *     "social_networks": [],
    *     "audience_education": {},
    *     "audience_marital_status": {},
    *     "growth": {},
    *     "audience_geography": {},
    *     "top3_blogger_topics": [],
    *     "audience_interests": [],
    *     "est_reach": {},
    *     "yearly_growth": {},
    *     "advertising_data": {},
    *     "post_frequency": {},
    *     "location": {},
    *     "demography_by_age": [],
    *     "demography": [],
    *     "audience_income": {},
    *     "geo_quality": {},
    *     "features": {},
    *  }
    *
    * Basic structure Response from hypeauditor report API.
    * Ref: https://hypeauditor.readme.io/reference/report_instagram#sample-response
    *
    * @param object $kolInfo KolInfo from report API.
    *
    * @return mixed
    */
    public function transformReportResult(object $kolInfo) : array
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }
        // 1. User info -> 1.1 Basic info.
        $result['user'] = $this->extractBasicInfo($kolInfo);
        // 1. User info -> 1.2 blogger_categories info.
        $result['user']['blogger_categories'] = $this->extractBloggerCategories($kolInfo);
        // 1. User info -> 1.3 blogger_languages info.
        $result['user']['blogger_languages'] = $this->extractBloggerLanguages($kolInfo);
        // 1. User info -> 1.4 blogger_hashtags info.
        $result['user']['blogger_hashtags'] = $this->extractBloggerHashtags($kolInfo);
        // 1. User info -> 1.5 blogger_graph_anomalies info.
        $result['user']['blogger_graph_anomalies'] = $this->extractBloggerGraphAnomalies($kolInfo);
        // 1. User info -> 1.6 blogger_geo info.
        $result['user']['blogger_geo'] = $this->extractBloggerGeo($kolInfo);
        // 1. User info -> 1.7 blogger_emv info.
        $result['user']['blogger_emv'] = $this->extractBloggerEmv($kolInfo);
        // 1. User info -> 1.8 brand_safety info.
        $result['user']['brand_safety'] = $this->extractBrandSafety($kolInfo);
        // 1. User info -> 1.9 blogger_rankings info.
        $result['user']['blogger_rankings'] = $this->extractBloggerRankings($kolInfo);
        // 1. User info -> 1.10 likes_spread info.
        $result['user']['likes_spread'] = $this->extractLikesSpread($kolInfo);
        // 1. User info -> 1.11 likes_comments_ratio info.
        $result['user']['likes_comments_ratio'] = $this->extractLikesCommentsRatio($kolInfo);
        // 1. User info -> 1.12 audience_reachability info.
        $result['user']['audience_reachability'] = $this->extractAudienceReachability($kolInfo);
        // 1. User info -> 1.13 audience_authenticity info.
        $result['user']['audience_authenticity'] = $this->extractAudienceAuthenticity($kolInfo);
        // 1. User info -> 1.14 audience_type info.
        $result['user']['audience_type'] = $this->extractAudienceType($kolInfo);
        // 1. User info -> 1.15 most_media info.
        $result['user']['most_media'] = $this->extractMostMedia($kolInfo);
        // 1. User info -> 1.16 audience_ethnicity info.
        $result['user']['audience_ethnicity'] = $this->extractAudienceEthnicity($kolInfo);
        // 1. User info -> 1.17 audience_sentiments info.
        $result['user']['audience_sentiments'] = $this->extractAudienceSentiments($kolInfo);
        // 1. User info -> 1.18 likes_comments_ratio_chart info.
        $result['user']['likes_comments_ratio_chart'] = $this->extractLikesCommentsRatioChart($kolInfo);
        // 1. User info -> 1.19 followers_chart info.
        $result['user']['followers_chart'] = $this->extractFollowersChart($kolInfo);
        // 1. User info -> 1.20 following_chart info.
        $result['user']['following_chart'] = $this->extractFollowingChart($kolInfo);
        // 1. User info -> 1.21 er info.
        $result['user']['er'] = $this->extractEr($kolInfo);
        // 1. User info -> 1.22 subscribers_growth_prc info.
        $result['user']['subscribers_growth_prc'] = $this->extractSubscribersGrowthPrc($kolInfo);
        // 1. User info -> 1.23 comments_rate info.
        $result['user']['comments_rate'] = $this->extractCommentsRate($kolInfo);
        // 1. User info -> 1.24 audience_languages info.
        $result['user']['audience_languages'] = $this->extractAudienceLanguages($kolInfo);
        // 1. User info -> 1.25 audience_age_21_plus_prc info.
        $result['user']['audience_age_21_plus_prc'] = $this->extractAudienceAge21PlusPrc($kolInfo);
        // 1. User info -> 1.26 social_networks info.
        $result['user']['social_networks'] = $this->extractSocialNetworks($kolInfo);
        // 1. User info -> 1.27 audience_education info.
        $result['user']['audience_education'] = $this->extractAudienceEducation($kolInfo);
        // 1. User info -> 1.28 audience_marital_status info.
        $result['user']['audience_marital_status'] = $this->extractAudienceMaritalStatus($kolInfo);
        // 1. User info -> 1.29 growth info.
        $result['user']['growth'] = $this->extractGrowth($kolInfo);
        // 1. User info -> 1.30 audience_geography info.
        $result['user']['audience_geography'] = $this->extractAudienceGeography($kolInfo);
        // 1. User info -> 1.31 top3_blogger_topics info.
        $result['user']['top3_blogger_topics'] = $this->extractTop3BloggerTopics($kolInfo);
        // 1. User info -> 1.32 audience_interests info.
        $result['user']['audience_interests'] = $this->extractAudienceInterests($kolInfo);
        // 1. User info -> 1.33 est_reach info.
        $result['user']['est_reach'] = $this->extractEstReach($kolInfo);
        // 1. User info -> 1.34 yearly_growth info.
        $result['user']['yearly_growth'] = $this->extractYearlyGrowth($kolInfo);
        // 1. User info -> 1.35 advertising_data info.
        $result['user']['advertising_data'] = $this->extractAdvertisingData($kolInfo);
        // 1. User info -> 1.36 post_frequency info.
        $result['user']['post_frequency'] = $this->extractPostFrequency($kolInfo);
        // 1. User info -> 1.37 location info.
        $result['user']['location'] = $this->extractLocation($kolInfo);
        // 1. User info -> 1.38 demography_by_age info.
        $result['user']['demography_by_age'] = $this->extractDemographyByAge($kolInfo);
        // 1. User info -> 1.39 demography info.
        $result['user']['demography'] = $this->extractDemography($kolInfo);
        // 1. User info -> 1.40 audience_income info.
        $result['user']['audience_income'] = $this->extractAudienceIncome($kolInfo);
        // 1. User info -> 1.41 geo_quality info.
        $result['user']['geo_quality'] = $this->extractGeoQuality($kolInfo);
        // 1. User info -> 1.42 features info.
        $result['user']['features'] = $this->extractFeatures($kolInfo);
        // 1. User info -> 1.43 features info.
        $result['user']['brands_mentions'] = $this->extractBrandsMentions($kolInfo);
        // 1. User info -> 1.44 Data valid Until
        $result['validUntil'] = $kolInfo->validUntil ?? '';
        // 1. User info -> 1.45 Engagement last posted time
        $result['user']['er_last_posted'] = $this->extractERLastPosted($kolInfo);
        // 1. User info -> 1.46 Similar report
        $result['user']['similar_report'] = $this->extractSimilarReport($kolInfo);
        // 1. User info -> 1.47 Hashtags report
        $result['user']['hashtag_report'] = $this->extractHashtagsReport($kolInfo);
        // 1. User info -> 1.48 Frequently hashtags
        $result['user']['frequently_hashtags'] = $this->extractFrequentlyHashtagsReport($kolInfo);
        // 1. User info -> 1.49 Favorite mentions
        $result['user']['favorite_mentions'] = $this->extractFavoriteMentionsReport($kolInfo);
        // 1. User info -> 1.50 demography_by_age_and_gender.
        $result['user']['demography_by_age_and_gender'] = $this->extractDemographyByAgeAndGenderReport($kolInfo);
        // 1. User info -> 1.51 demography_by_age_and_gender.
        $result['user']['hashtags_er'] = $this->extractHashtagsEr($kolInfo);
        // User info -> 1.52 contact_details info.
        $result['user']['emails'] = $this->extractContactDetailsReport($kolInfo);
        // User info -> 1.52 contact_details info.
        $result['user']['audience_brand_affinity'] = $this->extractAudienceBrandAffinityReport($kolInfo);


        return $result;
    }

    /**
     * Extract social networks from report API result.
     * 1. User info -> 1.1 Basic info.
     * Example hypeauditor result:
     * "user": {
     *     "username": "vancityreynolds",
     *     "full_name": "Ryan Reynolds",
     *     "is_private": false,
     *     "is_verified": true,
     *     "is_deleted": false,
     *     "about": "Owner @aviationgin & @mintmobile @maximumeffort & @wrexham_afc 🇨🇦",
     *     "photo_url": "https://cdn.hypeauditor.com/img/instagram/user/1942463581.jpg?w=320&till=1671525417&sign=e8b01b94dc3567e89060d0ef9e07ade6",
     *     "posts_count": 689,
     *     "followers_count": 45294254,
     *     "followings_count": 676,
     *     "avg_likes": 672863,
     *     "avg_comments": 3815,
     *     "aqs": 93,
     *     "aqs_name": "Excellent",
     *     "aqs_description": "Good quality of active audience; Excellent likes activity; Excellent comments activity",
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Social networks info.
     */
    protected function extractBasicInfo(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.1 Basic info.
        // user => $kolInfo->user
        if (isset($kolInfo->user)) {
            $result['username'] = $kolInfo->user->username ?? '';
            $result['full_name'] = $kolInfo->user->full_name ?? '';
            $result['is_private'] = $kolInfo->user->is_private ?? '';
            $result['is_verified'] = $kolInfo->user->is_verified ?? '';
            $result['is_deleted'] = $kolInfo->user->is_deleted ?? '';
            $result['about'] = $kolInfo->user->about ?? '';
            $result['photo_url'] = $kolInfo->user->photo_url ?? '';
            $result['posts_count'] = $kolInfo->user->posts_count ?? '';
            $result['followers_count'] = $kolInfo->user->followers_count ?? '';
            $result['followers_count_convert'] = $kolInfo->user->followers_count ? $this->convertNumber($kolInfo->user->followers_count) : '';
            $result['followings_count'] = $kolInfo->user->followings_count ?? '';
            $result['avg_likes'] = $kolInfo->user->avg_likes ?? '';
            $result['avg_likes_convert'] = $kolInfo->user->avg_likes ? $this->convertNumber($kolInfo->user->avg_likes) : '';
            $result['avg_comments'] = $kolInfo->user->avg_comments ?? '';
            $result['avg_comments_convert'] = $kolInfo->user->avg_comments ? $this->convertNumber($kolInfo->user->avg_comments) : '';
            $result['aqs'] = $kolInfo->user->aqs ?? '';
            $result['aqs_name'] = $kolInfo->user->aqs_name ?? '';
            $result['aqs_description'] = $kolInfo->user->aqs_description ?? '';
        }

        return $result;
    }

    /**
     * Extract blogger categories from report API result.
     * 1. User info -> 1.2 blogger_categories info.
     * Example hypeauditor result:
     * "user": {
     *     "blogger_categories": [1032]
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Blogger categories info.
     */
    protected function extractBloggerCategories(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.2 blogger_categories info.
        // user => $kolInfo->user->blogger_categories
        if (isset($kolInfo->user->blogger_categories) && is_array($kolInfo->user->blogger_categories)) {
            $result = $kolInfo->user->blogger_categories;
        }

        return $result;
    }

    /**
     * Extract blogger languages from report API result.
     * 1. User info -> 1.3 blogger_languages info.
     * Example hypeauditor result:
     * "user": {
     *     "blogger_languages": ["en"]
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Blogger languages info.
     */
    protected function extractBloggerLanguages(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.3 blogger_languages info.
        // user => $kolInfo->user->blogger_languages
        if (isset($kolInfo->user->blogger_languages) && is_array($kolInfo->user->blogger_languages)) {
            $result = $kolInfo->user->blogger_languages;
        }

        return $result;
    }

    /**
     * Extract blogger hashtags from report API result.
     * 1. User info -> 1.4 blogger_hashtags info.
     * Example hypeauditor result:
     * "user": {
     *     "blogger_hashtags": ["en"]
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Blogger hashtags info.
     */
    protected function extractBloggerHashtags(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }
        // 1. User info -> 1.4 blogger_hashtags info.
        // user => $kolInfo->user->blogger_hashtags
        if (isset($kolInfo->user->blogger_hashtags)) {
            $result = $kolInfo->user->blogger_hashtags;
            if (isset($result->performance->{config('constant.performance_blogger_hashtags')})) {
                $result = $result->performance->{config('constant.performance_blogger_hashtags')};
                usort($result, function ($a, $b) {
                    if ($a->media_count == $b->media_count) {
                        return 0;
                    }
                    return ($a->media_count < $b->media_count) ? 1 : -1;
                });

                $result = array_slice($result, 0, 12);
                if ($result) {
                    $result = array_map(function ($item) {
                        return [
                            'title' => $item->text,
                            'value' => $item->er_avg ?? 0,
                        ];
                    }, $result);
                }
            }
        }
        return $result;
    }

    /**
     * Extract blogger graph anomalies from report API result.
     * 1. User info -> 1.5 blogger_graph_anomalies info.
     * Example hypeauditor result:
     * "user": {
     *     "blogger_graph_anomalies": ["en"]
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Blogger graph anomalies info.
     */
    protected function extractBloggerGraphAnomalies(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.5 blogger_graph_anomalies info.
        // user => $kolInfo->user->blogger_graph_anomalies
        if (isset($kolInfo->user->blogger_graph_anomalies) && is_array($kolInfo->user->blogger_graph_anomalies)) {
            $result = $kolInfo->user->blogger_graph_anomalies;
        }

        return $result;
    }

    /**
     * Extract blogger geo from report API result.
     * 1. User info -> 1.6 blogger_geo info.
     * Example hypeauditor result:
     * "user": {
     *     "blogger_geo": {
     *          "country": "us",
     *          "city": 5746545,
     *          "state": 5744337
     *     }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Blogger geo info.
     */
    protected function extractBloggerGeo(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.6 blogger_geo info.
        // user => $kolInfo->user->blogger_geo
        if (isset($kolInfo->user->blogger_geo)) {
            $result = $kolInfo->user->blogger_geo;
        }

        return $result;
    }

    /**
     * Extract blogger emv from report API result.
     * 1. User info -> 1.7 blogger_emv info.
     * Example hypeauditor result:
     * "user": {
     *     "blogger_emv": [],
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Blogger emv info.
     */
    protected function extractBloggerEmv(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.7 blogger_emv info.
        // user => $kolInfo->user->blogger_emv
        if (isset($kolInfo->user->blogger_emv) && is_array($kolInfo->user->blogger_emv)) {
            $result = $kolInfo->user->blogger_emv;
        }

        return $result;
    }

    /**
     * Extract brand safety from report API result.
     * 1. User info -> 1.8 brand_safety info.
     * Example hypeauditor result:
     * "user": {
     *      "brand_safety": {
     *          "score": 0,
     *          "mark": "POSITIVE",
     *          "items": {
     *          }
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Brand safety info.
     */
    protected function extractBrandSafety(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.8 brand_safety info.
        // user => $kolInfo->user->brand_safety
        if (isset($kolInfo->user->brand_safety)) {
            $result = $kolInfo->user->brand_safety;
        }

        return $result;
    }

    /**
     * Extract blogger rankings from report API result.
     * 1. User info -> 1.9 blogger_rankings info.
     * Example hypeauditor result:
     * "user": {
     *      "blogger_rankings": {
     *          "worldwide": {
     *               "rank": 228,
     *               "delta": 0
     *           },
     *           "country": {
     *               "rank": 31,
     *               "country": {
     *                   "id": 2635167,
     *                   "code": "gb",
     *                   "title": "United Kingdom"
     *               }
     *           },
     *           "category": {
     *          }
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Blogger rankings info.
     */
    protected function extractBloggerRankings(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.9 blogger_rankings info.
        // user => $kolInfo->user->blogger_rankings
        if (isset($kolInfo->user->blogger_rankings)) {
            $result = $kolInfo->user->blogger_rankings;
        }

        return $result;
    }

    /**
     * Extract likes spread from report API result.
     * 1. User info -> 1.10 likes_spread info.
     * Example hypeauditor result:
     * "user": {
     *      "likes_spread": {
     *          "value": 2.68,
     *           "avg": 0.580062,
     *           "title": "Low"
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Likes spread info.
     */
    protected function extractLikesSpread(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.10 likes_spread info.
        // user => $kolInfo->user->likes_spread
        if (isset($kolInfo->user->likes_spread)) {
            $result = $kolInfo->user->likes_spread;
        }

        return $result;
    }

    /**
     * Extract likes comments ratio from report API result.
     * 1. User info -> 1.11 likes_comments_ratio info.
     * Example hypeauditor result:
     * "user": {
     *      "likes_comments_ratio": {
     *          "value": 0.6,
     *          "avg": 1,
     *          "title": "Good"
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Likes comments ratio info.
     */
    protected function extractLikesCommentsRatio(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.11 likes_comments_ratio info.
        // user => $kolInfo->user->likes_comments_ratio
        if (isset($kolInfo->user->likes_comments_ratio)) {
            $result = $kolInfo->user->likes_comments_ratio;
        }

        return $result;
    }

    /**
     * Extract Audience reachability from report API result.
     * 1. User info -> 1.12 audience_reachability info.
     * Example hypeauditor result:
     * "user": {
     *      "audience_reachability": {
     *          "value": 90.2,
     *          "avg": 89.873349,
     *          "title": "Average"
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Audience reachability ratio info.
     */
    protected function extractAudienceReachability(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.12 audience_reachability info.
        // user => $kolInfo->user->audience_reachability
        if (isset($kolInfo->user->audience_reachability)) {
            $result = $kolInfo->user->audience_reachability;
        }

        return $result;
    }

    /**
     * Extract Audience authenticity from report API result.
     * 1. User info -> 1.13 audience_authenticity info.
     * Example hypeauditor result:
     * "user": {
     *      "audience_authenticity": {
     *          "value": 76.16999999999999,
     *          "avg": 73.411699,
     *          "title": "Average"
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Audience authenticity ratio info.
     */
    protected function extractAudienceAuthenticity(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.13 audience_authenticity info.
        // user => $kolInfo->user->audience_authenticity
        if (isset($kolInfo->user->audience_authenticity)) {
            $result = $kolInfo->user->audience_authenticity;
        }

        return $result;
    }

    /**
     * Extract audience type from report API result.
     * 1. User info -> 1.14 audience_type info.
     * Example hypeauditor result:
     * "user": {
     *      "audience_type": {
     *          "real": 74.85,
     *          "susp": 14.01,
     *          "infs": 1.32,
     *          "mass": 9.81
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Audience type ratio info.
     */
    protected function extractAudienceType(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.14 audience_type info.
        // user => $kolInfo->user->audience_type
        if (isset($kolInfo->user->audience_type)) {
            $result = $kolInfo->user->audience_type;
            $result->quality_tracking_rate = ($kolInfo->user->audience_type->real ?? 0) + ($kolInfo->user->audience_type->infs ?? 0);
        }

        return $result;
    }

    /**
     * Extract most media from report API result.
     * 1. User info -> 1.15 most_media info.
     * Example hypeauditor result:
     * "user": {
     *      "most_media": {
     *          "all": {
     *              "time_posted_desc": {
     *                  "performance": {
     *                      "30d": {
     *                          "metrics": {
     *                          },
     *                          "media_ids": [],
     *                      },
     *                      "90d": {
     *                          "metrics": {
     *                          },
     *                          "media_ids": [],
     *                      },
     *                      "180d": {
     *                          "metrics": {
     *                          },
     *                          "media_ids": [],
     *                      },
     *                  }
     *              }
     *          }
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Most media info.
     */
    protected function extractMostMedia(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.15 most_media info.
        // user => $kolInfo->user->most_media
        if (isset($kolInfo->user->most_media)) {
            $result = $kolInfo->user->most_media;
        }

        return $result;
    }

    /**
     * Extract audience ethnicity from report API result.
     * 1. User info -> 1.16 audience_ethnicity info.
     * Example hypeauditor result:
     * "user": {
     *      "audience_ethnicity": [
     *          {
     *              "name": "African",
     *              "value": 8.38
     *          },
     *          {
     *              "name": "Asian",
     *              "value": 8.72
     *          },
     *      ]
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Audience ethnicity info.
     */
    protected function extractAudienceEthnicity(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.16 audience_ethnicity info.
        // user => $kolInfo->user->audience_ethnicity
        if (isset($kolInfo->user->audience_ethnicity) && is_array($kolInfo->user->audience_ethnicity)) {
            $result = $kolInfo->user->audience_ethnicity;
        }

        return $result;
    }

    /**
     * Extract audience sentiments from report API result.
     * 1. User info -> 1.17 audience_sentiments info.
     * Example hypeauditor result:
     * "user": {
     *      "audience_sentiments": {
     *          "sentiments": {
     *              "POSITIVE": {
     *                  "count": 145,
     *                  "prc": 67.13
     *              },
     *              "NEUTRAL": {
     *                  "count": 56,
     *                  "prc": 25.93
     *              },
     *              "NEGATIVE": {
     *                  "count": 15,
     *                  "prc": 6.94
     *              }
     *          },
     *          "score": 93,
     *          "comments_count": 216,
     *          "posts_count": 27
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Audience sentiments info.
     */
    protected function extractAudienceSentiments(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.17 audience_sentiments info.
        // user => $kolInfo->user->audience_sentiments
        if (isset($kolInfo->user->audience_sentiments)) {
            $result = $kolInfo->user->audience_sentiments;
        }

        return $result;
    }

    /**
     * Extract likes comments ratio chart from report API result.
     * 1. User info -> 1.18 likes_comments_ratio_chart info.
     * Example hypeauditor result:
     * "user": {
     *      "likes_comments_ratio_chart": {
     *          {
     *              "x": 370820,
     *              "y": 4496
     *          },
     *          {
     *              "x": 349533,
     *              "y": 1364
     *          },
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Likes comments ratio chart info.
     */
    protected function extractLikesCommentsRatioChart(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.18 likes_comments_ratio_chart info.
        // user => $kolInfo->user->likes_comments_ratio_chart
        if (isset($kolInfo->user->likes_comments_ratio_chart) && is_array($kolInfo->user->likes_comments_ratio_chart)) {
            $result = $kolInfo->user->likes_comments_ratio_chart;
        }

        return $result;
    }

    /**
     * Extract followers chart from report API result.
     * 1. User info -> 1.19 followers_chart info.
     * Example hypeauditor result:
     * "user": {
     *      "followers_chart": [
     *          {
     *              "date": 1663286400,
     *              "count": 44936445
     *          },
     *          {
     *              "date": 1662336000,
     *              "count": 45054061
     *          },
     *      ]
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Followers chart info.
     */
    protected function extractFollowersChart(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }
        $lastMonth = Carbon::now()->subMonth()->format('Y-m-01');
        // Get last six month
        for ($i = 0; $i < 6; $i++) {
            $month = date('Y-m', strtotime($lastMonth . ' -' . $i . 'months'));
            $months[] = $month;
            $listMonths[$month] = [
                'month' => $month,
            ];
        }
        // 1. User info -> 1.19 followers_chart info.
        // user => $kolInfo->user->followers_chart
        if (isset($kolInfo->user->followers_chart) && is_array($kolInfo->user->followers_chart)) {
            $result = $kolInfo->user->followers_chart;
            $result = array_filter($result, function ($item) use ($months) {
                $item->month = Carbon::parse($item->date)->format('Y-m');
                if (in_array($item->month, $months)) {
                    return $item;
                }
            });
            $result = array_reverse($result);
            $countLastMonth = $countBeforeLastMonth = 0;
            $beforeLastMonth = Carbon::now()->subMonth(2)->format('Y-m');
            $lastMonth = Carbon::now()->subMonth()->format('Y-m');
            foreach ($result as $item) {
                if (!empty($listMonths[$item->month])) {
                    $listMonths[$item->month]['value'] = $item->count;
                }
            }
            $listMonths = array_reverse($listMonths);
            foreach ($listMonths as $month) {
                if ($month['month'] === $beforeLastMonth && isset($month['value'])) {
                    $countBeforeLastMonth = $month['value'];
                }
                if ($month['month'] === $lastMonth && isset($month['value'])) {
                    $countLastMonth = $month['value'];
                }
            }
            if ($countBeforeLastMonth && $countLastMonth) {
                $numeral = round((($countLastMonth - $countBeforeLastMonth) / $countBeforeLastMonth) * 100, 2);
            }

            return [
                'months' => array_reverse($months),
                'values' => array_column($listMonths, 'value'),
                'numeral' => $numeral ?? 0,
            ];
        }

        return $result;
    }

    /**
     * Extract following chart from report API result.
     * 1. User info -> 1.20 following_chart info.
     * Example hypeauditor result:
     * "user": {
     *      "following_chart": [
     *          {
     *              "date": 1663286400,
     *              "count": 44936445
     *          },
     *          {
     *              "date": 1662336000,
     *              "count": 45054061
     *          },
     *      ]
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Following chart info.
     */
    protected function extractFollowingChart(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.20 following_chart info.
        // user => $kolInfo->user->following_chart
        if (isset($kolInfo->user->following_chart) && is_array($kolInfo->user->following_chart)) {
            for ($i = 1; $i <= 6; $i++) {
                $month = date('Y-m', strtotime(date('Y-m-01') . ' -' . $i . 'months'));
                $months[] = $month;
                $listMonths[$month] = [
                    'month' => $month,
                ];
            }
            $result = $kolInfo->user->following_chart;
            $result = array_reverse(array_filter($result, function ($item) use ($months) {
                $item->month = Carbon::parse($item->date)->format('Y-m');
                if (in_array($item->month, $months)) {
                    return $item;
                }
            }));
            foreach ($result as $item) {
                if (!empty($listMonths[$item->month])) {
                    $listMonths[$item->month]['value'] = $item->count;
                }
            }
            return [
                'months' => array_reverse($months),
                'values' => array_reverse(array_column($listMonths, 'value')),
            ];
        }

        return $result;
    }

    /**
     * Extract er from report API result.
     * 1. User info -> 1.21 er info.
     * Example hypeauditor result:
     * "user": {
     *      "er": {
     *          "value": 1.489749,
     *          "avg": 1.258497,
     *          "title": "Excellent, compared to other 1M+ followers accounts",
     *          "hist": [],
     *          "performance": {
     *              "7d": {},
     *              "30d": {},
     *              "90d": {},
     *              "180d": {},
     *              "365d": {},
     *              "all": {},
     *          }
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Rr info.
     */
    protected function extractEr(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.21 er info.
        // user => $kolInfo->user->er
        if (isset($kolInfo->user->er)) {
            $result = $kolInfo->user->er;
            $result->value = isset($result->value) ? round($result->value, 2) : 0;
        }
        return $result;
    }

    /**
     * Extract subscribers growth prc from report API result.
     * 1. User info -> 1.22 subscribers_growth_prc info.
     * Example hypeauditor result:
     * "user": {
     *      "subscribers_growth_prc": {
     *          "performance": {
     *              "7d": {},
     *              "30d": {},
     *              "90d": {},
     *              "180d": {},
     *              "365d": {},
     *          }
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Subscribers growth prc info.
     */
    protected function extractSubscribersGrowthPrc(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.22 subscribers_growth_prc info.
        // user => $kolInfo->user->subscribers_growth_prc
        if (isset($kolInfo->user->subscribers_growth_prc)) {
            $result = $kolInfo->user->subscribers_growth_prc;
        }

        return $result;
    }

    /**
     * Extract comments rate from report API result.
     * 1. User info -> 1.23 comments_rate info.
     * Example hypeauditor result:
     * "user": {
     *      "comments_rate": {
     *          "value": 0.010059,
     *          "avg": null,
     *          "title": "Excellent"
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Comments rate info.
     */
    protected function extractCommentsRate(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.23 comments_rate info.
        // user => $kolInfo->user->comments_rate
        if (isset($kolInfo->user->comments_rate)) {
            $result = $kolInfo->user->comments_rate;
        }

        return $result;
    }

    /**
     * Extract audience languages from report API result.
     * 1. User info -> 1.24 audience_languages info.
     * Example hypeauditor result:
     * "user": {
     *      "audience_languages": [
     *          {
     *              "code": "en",
     *              "value": 74
     *          },
     *          {
     *              "code": "es",
     *              "value": 9
     *          },
     *      ]
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Audience languages info.
     */
    protected function extractAudienceLanguages(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.24 audience_languages info.
        // user => $kolInfo->user->audience_languages
        if (isset($kolInfo->user->audience_languages) && is_array($kolInfo->user->audience_languages)) {
            $result = $kolInfo->user->audience_languages;
            $language = config('constant.languages');
            $result = array_map(function ($item) use ($language) {
                $item->title = isset($language[$item->code]) ? $language[$item->code] : $item->code;
                return $item;
            }, $result);
        }

        return $result;
    }

    /**
     * Extract audience age 21 plus prc from report API result.
     * 1. User info -> 1.25 audience_age_21_plus_prc info.
     * Example hypeauditor result:
     * "user": {
     *      "audience_age_21_plus_prc": {
     *          82.98,
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Audience age 21 plus prc info.
     */
    protected function extractAudienceAge21PlusPrc(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.25 audience_age_21_plus_prc info.
        // user => $kolInfo->user->audience_age_21_plus_prc
        if (isset($kolInfo->user->audience_age_21_plus_prc)) {
            $result = $kolInfo->user->audience_age_21_plus_prc;
        }

        return $result;
    }

    /**
     * Extract social networks from report API result.
     * 1. User info -> 1.26 social_networks info.
     * Example hypeauditor result:
     * "user": {
     *      "social_networks": [
     *          {
     *              "type": 1,
     *              "title": "Ryan Reynolds",
     *              "social_id": "1942463581",
     *              "username": "vancityreynolds",
     *              "avatar_url": "https://cdn.hypeauditor.com/img/instagram/user/1942463581.jpg?w=150&till=1666285200&sign=3ac8ac43a1a70935f22685e663b9a48f",
     *              "subscribers_count": 45294254,
     *              "er": 1.489749,
     *              "state": "READY"
     *          },
     *      ]
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Social networks info.
     */
    protected function extractSocialNetworks(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.26 social_networks info.
        // user => $kolInfo->user->social_networks
        if (isset($kolInfo->user->social_networks) && is_array($kolInfo->user->social_networks)) {
            $result = $kolInfo->user->social_networks;
        }

        return $result;
    }

    /**
     * Extract audience education from report API result.
     * 1. User info -> 1.27 audience_education info.
     * Example hypeauditor result:
     * "user": {
     *      "audience_education": {
     *          "no_education": 3.89,
     *          "incomplete_primary": 1.92,
     *          "primary": 8.38,
     *          "lower_secondary": 17.58,
     *          "upper_secondary": 44.38,
     *          "post_secondary": 23.85
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Audience education info.
     */
    protected function extractAudienceEducation(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.27 audience_education info.
        // user => $kolInfo->user->audience_education
        if (isset($kolInfo->user->audience_education)) {
            $result = $kolInfo->user->audience_education;
        }

        return $result;
    }

    /**
     * Extract audience marital status from report API result.
     * 1. User info -> 1.28 audience_marital_status info.
     * Example hypeauditor result:
     * "user": {
     *      "audience_marital_status": {
     *          "single": 53.76,
     *          "married": 42.29,
     *          "widowed": 0.81,
     *          "divorced": 3.12
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Audience marital status info.
     */
    protected function extractAudienceMaritalStatus(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.28 audience_marital_status info.
        // user => $kolInfo->user->audience_marital_status
        if (isset($kolInfo->user->audience_marital_status)) {
            $result = $kolInfo->user->audience_marital_status;
        }

        return $result;
    }

    /**
     * Extract Growth from report API result.
     * 1. User info -> 1.29 growth info.
     * Example hypeauditor result:
     * "user": {
     *      "growth": {
     *          "title": "Organic",
     *          "description": "No \"incentivized following\" patterns or negative trends detected on followers & following graphs."
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Growth info.
     */
    protected function extractGrowth(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.29 growth info.
        // user => $kolInfo->user->growth
        if (isset($kolInfo->user->growth)) {
            $result = $kolInfo->user->growth;
        }

        return $result;
    }

    /**
     * Extract audience geography from report API result.
     * 1. User info -> 1.30 audience_geography info.
     * Example hypeauditor result:
     * "user": {
     *      "audience_geography": {
     *          "countries": [
     *              {
     *                  "name": "United States (USA)",
     *                  "code": "US",
     *                  "value": 21.33
     *              },
     *              {
     *                  "name": "India",
     *                  "code": "IN",
     *                  "value": 6.68
     *              },
     *          ],
     *          "states": [
     *              {
     *                  "name": "New York",
     *                  "value": 4.7
     *              },
     *              {
     *                  "name": "California",
     *                  "value": 3.59
     *              },
     *          ],
     *          "cities": [
     *              {
     *                  "name": "New York City",
     *                  "value": 3.93,
     *                  "id": 5128581
     *              },
     *              {
     *                  "name": "London",
     *                  "value": 2.4,
     *                  "id": 2643743
     *              },
     *          ],
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Audience geography info.
     */
    protected function extractAudienceGeography(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.30 audience_geography info.
        // user => $kolInfo->user->audience_geography
        if (isset($kolInfo->user->audience_geography)) {
            $result = $kolInfo->user->audience_geography;
            if (!empty($result->countries)) {
                $result->countries_top = $result->countries;
                usort($result->countries_top, function ($a, $b) {
                    if ($a->value == $b->value) {
                        return 0;
                    }
                    return ($a->value < $b->value) ? 1 : -1;
                });
                $result->countries_convert = $result->countries;
            }
            if (!empty($result->cities)) {
                $result->cities_top = $result->cities;
                usort($result->cities_top, function ($a, $b) {
                    if ($a->value == $b->value) {
                        return 0;
                    }
                    return ($a->value < $b->value) ? 1 : -1;
                });
            }
        }
        return $result;
    }

    /**
     * Extract top3 blogger topics from report API result.
     * 1. User info -> 1.31 top3_blogger_topics info.
     * Example hypeauditor result:
     * "user": {
     *      "top3_blogger_topics": [],
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Top3 blogger topics info.
     */
    protected function extractTop3BloggerTopics(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.31 top3_blogger_topics info.
        // user => $kolInfo->user->top3_blogger_topics
        if (isset($kolInfo->user->top3_blogger_topics) && is_array($kolInfo->user->top3_blogger_topics)) {
            $result = $kolInfo->user->top3_blogger_topics;
        }

        return $result;
    }

    /**
     * Extract audience interests from report API result.
     * 1. User info -> 1.32 audience_interests info.
     * Example hypeauditor result:
     * "user": {
     *      "audience_interests": [
     *          [
     *              "Cinema & Actors/actresses",
     *              0.9
     *          ],
     *          [
     *              "Machinery & Technologies",
     *              0.9
     *          ],
     *      ],
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Audience interests info.
     */
    protected function extractAudienceInterests(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.32 audience_interests info.
        // user => $kolInfo->user->audience_interests
        if (isset($kolInfo->user->audience_interests) && is_array($kolInfo->user->audience_interests)) {
            $data = $kolInfo->user->audience_interests;
            $result = array_map(function ($item) {
                return (object) [
                    'title' => $item['0'],
                    'value' => $item['1'] * 100,
                ];
            }, $data);
        }

        return $result;
    }

    /**
     * Extract est reach from report API result.
     * 1. User info -> 1.33 est_reach info.
     * Example hypeauditor result:
     * "user": {
     *      "est_reach": {
     *          "from": 3500000,
     *          "to": 15000000
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Est reach info.
     */
    protected function extractEstReach(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.33 est_reach info.
        // user => $kolInfo->user->est_reach
        if (isset($kolInfo->user->est_reach)) {
            $result = $kolInfo->user->est_reach;
        }

        return $result;
    }

    /**
     * Extract yearly growth from report API result.
     * 1. User info -> 1.34 yearly_growth info.
     * Example hypeauditor result:
     * "user": {
     *      "yearly_growth": {
     *          "value": 15.05,
     *          "avg": 25.7,
     *          "title": "Good"
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Yearly growth info.
     */
    protected function extractYearlyGrowth(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.34 yearly_growth info.
        // user => $kolInfo->user->yearly_growth
        if (isset($kolInfo->user->yearly_growth)) {
            $result = $kolInfo->user->yearly_growth;
        }

        return $result;
    }

    /**
     * Extract advertising data from report API result.
     * 1. User info -> 1.35 advertising_data info.
     * Example hypeauditor result:
     * "user": {
     *      "advertising_data": {
     *          "avg_ad_er": 1.07,
     *          "avg_er_display": [
     *              "excellent",
     *              "High"
     *          ],
     *          "ad_posts": {},
     *          ....
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Advertising data info.
     */
    protected function extractAdvertisingData(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.35 advertising_data info.
        // user => $kolInfo->user->advertising_data
        if (isset($kolInfo->user->advertising_data->brands_mentions)) {
            $result = $kolInfo->user->advertising_data->brands_mentions;
            usort($result, function ($a, $b) {
                if ($a->mentions_count == $b->mentions_count) {
                    return 0;
                }
                return ($a->mentions_count < $b->mentions_count) ? 1 : -1;
            });
        }

        return $result;
    }

    /**
     * Extract post frequency from report API result.
     * 1. User info -> 1.36 post_frequency info.
     * Example hypeauditor result:
     * "user": {
     *      "post_frequency": 1.2,
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return integer Post frequency info.
     */
    protected function extractPostFrequency(object $kolInfo)
    {
        $result = 0;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.36 post_frequency info.
        // user => $kolInfo->user->post_frequency
        if (isset($kolInfo->user->post_frequency)) {
            $result = $kolInfo->user->post_frequency;
        }

        return $result;
    }

    /**
     * Extract location from report API result.
     * 1. User info -> 1.37 location info.
     * Example hypeauditor result:
     * "user": {
     *      "location": "United States (USA), Portland",
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return string Location info.
     */
    protected function extractLocation(object $kolInfo)
    {
        $result = '';
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.37 location info.
        // user => $kolInfo->user->location
        if (isset($kolInfo->user->location)) {
            $result = $kolInfo->user->location;
        }

        return $result;
    }

    /**
     * Extract demography by age from report API result.
     * 1. User info -> 1.38 demography_by_age info.
     * Example hypeauditor result:
     * "user": {
     *      "demography_by_age": [
     *          {
     *              "gender": "male",
     *              "value": 40.52,
     *              "by_age_group": [
     *                  {
     *                      "group": "age13-17",
     *                      "value": 3
     *                  },
     *              ],
     *          },
     *      ]
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Demography by age info.
     */
    protected function extractDemographyByAge(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.38 demography_by_age info.
        // user => $kolInfo->user->demography_by_age
        if (isset($kolInfo->user->demography_by_age) && is_array($kolInfo->user->demography_by_age)) {
            $items = $kolInfo->user->demography_by_age;
            foreach ($items as $item) {
                $result[] = [
                    'name' => $item->gender == 'male' ? config('constant.demography.male') : config('constant.demography.female'),
                    'data' => array_values(array_column($this->mappingAgeGroup($item->by_age_group), 'value')),
                ];
            }
        }
        return $result;
    }

    /**
     * Mapping age group.
     *
     * @param array $ages Age Group.
     *
     * @return array
     */
    protected function mappingAgeGroup(array $ages)
    {
        $agesValue = config('constant.ages_group');
        $agesValueMerge = config('constant.ages_group_merge');
        foreach ($ages as $age) {
            if (!empty($age->group) && !empty($agesValue[$age->group])) {
                $agesValue[$age->group]['value'] = $age->value ?? 0;
            } elseif (in_array($age->group, $agesValueMerge) && isset($age->value)) {
                $agesValue[config('constant.ages_mapping')]['value'] += $age->value;
            }
        }

        return $agesValue;
    }

    /**
     * Extract demography from report API result.
     * 1. User info -> 1.39 demography info.
     * Example hypeauditor result:
     * "user": {
     *      "demography": [
     *          {
     *              "gender": "M",
     *              "value": 40.52
     *          },
     *      ]
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Demography info.
     */
    protected function extractDemography(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.39 demography info.
        // user => $kolInfo->user->demography
        if (isset($kolInfo->user->demography) && is_array($kolInfo->user->demography)) {
            $result = $kolInfo->user->demography;
            foreach ($result as $item) {
                if ($item->gender == 'M') {
                    $item->gender = config('constant.demography.male');
                    $item->title = config('constant.demography.male_title');
                } else {
                    $item->gender = config('constant.demography.female');
                    $item->title = config('constant.demography.female_title');
                }
            }
        }

        return $result;
    }

    /**
     * Extract audience income from report API result.
     * 1. User info -> 1.40 audience_income info.
     * Example hypeauditor result:
     * "user": {
     *      "audience_income": {
     *          "0k-5k": 25.31,
     *          "5k-10k": 14.33,
     *          "10k-25k": 16.1,
     *          "25k-50k": 11.81,
     *          "50k-75k": 9.03,
     *          "75k-100k": 6.89,
     *          "100k-150k": 8.59,
     *          "150k-200k": 4.22,
     *          "200k+": 3.72
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Audience income info.
     */
    protected function extractAudienceIncome(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.40 audience_income info.
        // user => $kolInfo->user->audience_income
        if (isset($kolInfo->user->audience_income)) {
            $result = $kolInfo->user->audience_income;
        }

        return $result;
    }

    /**
     * Extract geo quality from report API result.
     * 1. User info -> 1.41 geo_quality info.
     * Example hypeauditor result:
     * "user": {
     *      "geo_quality": {
     *          "0k-5k": 25.31,
     *          "5k-10k": 14.33,
     *          "10k-25k": 16.1,
     *          "25k-50k": 11.81,
     *          "50k-75k": 9.03,
     *          "75k-100k": 6.89,
     *          "100k-150k": 8.59,
     *          "150k-200k": 4.22,
     *          "200k+": 3.72
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Geo quality info.
     */
    protected function extractGeoQuality(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.41 geo_quality info.
        // user => $kolInfo->user->geo_quality
        if (isset($kolInfo->user->geo_quality)) {
            $result = $kolInfo->user->geo_quality;
        }

        return $result;
    }

    /**
     * Extract features from report API result.
     * 1. User info -> 1.42 features info.
     * Example hypeauditor result:
     * "user": {
     *      "features": {
     *          "ranking": {
     *              "worldwide": {
     *                  "rank": 228,
     *                  "delta": 0
     *              },
     *              "country": {
     *                  "rank": 31,
     *                  "country": {
     *                      "id": 2635167,
     *                      "code": "gb",
     *                      "title": "United Kingdom"
     *                  }
     *              },
     *              "category": {
     *                  "rank": 15,
     *                  "country": {
     *                      "id": 2635167,
     *                      "code": "gb",
     *                      "title": "United Kingdom"
     *                  },
     *                  "category": {
     *                      "id": 1032,
     *                      "title": "Cinema & Actors/actresses"
     *                  }
     *              }
     *          },
     *          "content": {
     *              "blogger_mentions": {
     *                  "_id": "1942463581",
     *                  "data": {},
     *                  "confidence": {
     *                      "model_version": "2022-08-16",
     *                      "value": 100,
     *                      "is_low_confidence": false
     *                  },
     *                  "time_updated": "2022-09-13T23:25:19.338000",
     *                  "time_added": "2021-04-19T14:23:27.151000",
     *                  "status": {
     *                      "code": "OK"
     *                  }
     *              },
     *              "reports": {
     *                  "wrexham_afc": {},
     *                  "mintmobile": {},
     *                  "deloitte": {},
     *                  "gettyentertainment": {},
     *                  "voguemagazine": {},
     *                  "gq": {},
     *                  "maximumeffort": {},
     *                  "cannes_lions": {},
     *                  "omega": {},
     *                  "netflix": {}
     *              }
     *          }
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Features info.
     */
    protected function extractFeatures(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.42 features info.
        // user => $kolInfo->user->features
        if (isset($kolInfo->user->features)) {
            $result = $kolInfo->user->features;
        }

        return $result;
    }

    /**
     * Extract geo quality from report API result.
     * 1. User info -> 1.41 geo_quality info.
     * Example hypeauditor result:
     * "user": {
     *      "brands_mentions": {
     *          "username": "thesummeriturnedpretty",
     *          "name": "The Summer I Turned Pretty",
     *          "avatar": "https://cdn.hypeauditor.com/img/instagram/user/45865896348.jpg?w=150&till=1666605600&sign=8c59ef24399e2c6c657574cbbd707c4b",
     *          "mentions_count": 1,
     *          "mention_er": 1.23,
     *          "category": "Photography"
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Geo quality info.
     */
    protected function extractBrandsMentions(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.41 geo_quality info.
        // user => $kolInfo->user->geo_quality
        if (isset($kolInfo->user->brands_mentions)) {
            $result = $kolInfo->user->brands_mentions;
            usort($result, function ($a, $b) {
                if ($a->mentions_count == $b->mentions_count) {
                    return 0;
                }
                return ($a->mentions_count < $b->mentions_count) ? 1 : -1;
            });
        }

        return $result;
    }

    /**
     * Extract geo quality from report API result.
     * 1. User info -> 1.41 geo_quality info.
     * Example hypeauditor result:
     * "user": {
     *      "er_last_posted": {
     *          "likes": "",
     *          "comments": "",
     *          "date": "",
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Geo quality info.
     */
    protected function extractERLastPosted(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // user => $kolInfo->user->er_last_posted
        if (isset($kolInfo->user->er_last_posted) && isset($kolInfo->user->er_last_posted->media)) {
            $medias = $posters = (array) $kolInfo->user->er_last_posted->media;
            usort($medias, function ($a, $b) {
                if ($a->basic->time_posted == $b->basic->time_posted) {
                    return 0;
                }
                return ($a->basic->time_posted > $b->basic->time_posted) ? -1 : 1;
            });
            // 6 porter er high
            usort($posters, function ($a, $b) {
                if ($a->metrics->er == $b->metrics->er) {
                    return 0;
                }
                return ($a->metrics->er < $b->metrics->er) ? 1 : -1;
            });
            $medias = array_slice($medias, 0, 6);
            $posters = array_slice($posters, 0, 6);
            $posters = array_map(function ($poster) {
                $poster->basic->day = Carbon::parse($poster->basic->time_posted)->format('d');
                $poster->basic->month = Carbon::parse($poster->basic->time_posted)->format('m');
                $poster->basic->year = Carbon::parse($poster->basic->time_posted)->format('Y');
                return $poster;
            }, $posters);
            $result['likes']['name'] = '';
            $result['comments']['name'] = '';
            foreach (array_reverse($medias) as $media) {
                $result['likes']['data'][] = $media->metrics->likes_count;
                $result['comments']['data'][] = $media->metrics->comments_count;
                $result['comments']['date'][] = Carbon::parse($media->basic->time_posted)->format('d.m.Y');
            }

            $result['posters'] = $posters;
        }
        return $result;
    }

    /**
     * Extract geo quality from report API result.
     * 1. User info -> 1.41 geo_quality info.
     * Example hypeauditor result:
     * "user": {
     *      "similar_report": {
     *          "username": "thesummeriturnedpretty",
     *          "name": "The Summer I Turned Pretty",
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Geo quality info.
     */
    protected function extractSimilarReport(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // user => $kolInfo->user->geo_quality
        if (isset($kolInfo->user->similar_report) && isset($kolInfo->user->similar_report->search_results)) {
            $result = (array) $kolInfo->user->similar_report->search_results;
        }
        return $result;
    }

    /**
     * Transform data from hypeauditor this system.
     * 1. User info -> 1.41 geo_quality info.
     * Example hypeauditor result:
     * "user": {
     *      "hashtag_report": {
     *          "title": "thesummeriturnedpretty",
     *          "value": "123",
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Geo quality info.
     */
    protected function extractHashtagsReport(object $kolInfo)
    {
        $bloggerHashtags = [];
        if (isset($kolInfo->user->blogger_hashtags->performance->{config('constant.performance_blogger_hashtags')})) {
            $result = $kolInfo->user->blogger_hashtags->performance->{config('constant.performance_blogger_hashtags')};
            usort($result, function ($a, $b) {
                if ($a->er_avg == $b->er_avg) {
                    return 0;
                }
                return ($a->er_avg < $b->er_avg) ? 1 : -1;
            });
            $bloggerHashtags = array_slice($result, 0, 6);
            if ($bloggerHashtags) {
                $bloggerHashtags = array_map(function ($item) {
                    return [
                        'title' => $item->text,
                        'value' => $item->er_avg ?? 0,
                    ];
                }, $bloggerHashtags);
            }
        }

        return $bloggerHashtags;
    }

    /**
     * Transform data from hypeauditor this system.
     * 1. User info -> 1.41 geo_quality info.
     * Example hypeauditor result:
     * "user": {
     *      "frequently_hashtags": {
     *          "title": "thesummeriturnedpretty",
     *          "value": "123",
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Geo quality info.
     */
    protected function extractFrequentlyHashtagsReport(object $kolInfo)
    {
        $result = [];
        if (isset($kolInfo->user->blogger_hashtags) && is_array($kolInfo->user->blogger_hashtags)) {
            $result = $kolInfo->user->blogger_hashtags;
            if (isset($result->performance) && $result = $result->performance->config('constant.performance_blogger_hashtags')) {
                usort($result, function ($a, $b) {
                    if ($a->media_count == $b->media_count) {
                        return 0;
                    }
                    return ($a->media_count < $b->media_count) ? 1 : -1;
                });
                $result = array_slice($result, 0, 13);
                if ($result) {
                    $result = array_map(function ($item) {
                        return [
                            'title' => $item->text,
                            'value' => $item->media_count ?? 0,
                        ];
                    }, $result);
                }
            }
        }

        return $result;
    }

    /**
     * Transform data from hypeauditor this system.
     * 1. User info -> 1.41 geo_quality info.
     * Example hypeauditor result:
     * "user": {
     *      "favorite_mentions": {
     *          "title": "thesummeriturnedpretty",
     *          "value": "123",
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Geo quality info.
     */
    protected function extractFavoriteMentionsReport(object $kolInfo)
    {
        $result = [];
        if (isset($kolInfo->user->advertising_data) && isset($kolInfo->user->advertising_data->brands_mentions)) {
            $result = $kolInfo->user->advertising_data->brands_mentions;
            usort($result, function ($a, $b) {
                if ($a->mentions_count == $b->mentions_count) {
                    return 0;
                }
                return ($a->mentions_count < $b->mentions_count) ? 1 : -1;
            });
            $result = array_slice($result, 0, 5);
            if ($result) {
                $result = array_map(function ($item) {
                    return [
                        'title' => $item->username,
                        'value' => $item->mention_er ?? 0,
                    ];
                }, $result);
            }
        }

        return $result;
    }

    /**
     * Transform data from hypeauditor this system.
     * 1. User info -> 1.51 geo_quality info.
     * Example hypeauditor result:
     * "user": {
     *      "hashtags_er": {
     *          "text": "thesummeriturnedpretty",
     *          "media_count": 123,
     *          "er_avg": 0.995477,
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Geo quality info.
     */
    protected function extractHashtagsEr(object $kolInfo)
    {
        $result = null;
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.4 blogger_hashtags info.
        // user => $kolInfo->user->blogger_hashtags
        if (isset($kolInfo->user->blogger_hashtags)) {
            $result = $kolInfo->user->blogger_hashtags;
            if (isset($result->performance->{config('constant.performance_blogger_hashtags')})) {
                $result = $result->performance->{config('constant.performance_blogger_hashtags')};
                usort($result, function ($a, $b) {
                    if ($a->er_avg == $b->er_avg) {
                        return 0;
                    }
                    return ($a->er_avg < $b->er_avg) ? 1 : -1;
                });
                $result = array_slice($result, 0, 6);
            }
        }
        return $result;
    }

    /**
     * Transform data from hypeauditor this system.
     * 1. User info -> 1.41 geo_quality info.
     * Example hypeauditor result:
     * "user": {
     *      "favorite_mentions": {
     *          "title": "thesummeriturnedpretty",
     *          "value": "123",
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Geo quality info.
     */
    protected function extractDemographyByAgeAndGenderReport(object $kolInfo)
    {
        $result = [];
        if (isset($kolInfo->user->demography_by_age)) {
            $items = $kolInfo->user->demography_by_age;
            foreach ($items as $item) {
                $data = $this->mappingAgeGroup($item->by_age_group);
                $result[$item->gender] = [
                    'name' => $item->gender == 'male' ? config('constant.demography.male') : config('constant.demography.female'),
                    'data' => $data,
                ];
            }
        }
        $result['group'] = $this->extractDemographyByAgeReport($kolInfo);
        return $result;
    }

     /**
     * Transform data from hypeauditor this system.
     * 1. User info -> 1.41 geo_quality info.
     * Example hypeauditor result:
     * "user": {
     *      "favorite_mentions": {
     *          "title": "thesummeriturnedpretty",
     *          "value": "123",
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Geo quality info.
     */
    protected function extractDemographyByAgeReport(object $kolInfo)
    {
        $results = array_reduce($kolInfo->user->demography_by_age, function ($carry, $item) {
            foreach ($item->by_age_group as $k => $v) {
                $carry[$v->group] = $v->value + ($carry[$v->group] ?? 0);
            }
            return $carry;
        }, []);
        $index = 0;
        $carry = [];
        foreach ($results as $k => $v) {
            $index ++;
            $carry[$index] = (object) [
                'group' => $k,
                'value' => $v,
             ];
        }
        return $this->mappingAgeGroup($carry);
    }
    /**
     * Transform data from hypeauditor this system.
     * 1. User info -> 1.52 contact_details info.
     * Example hypeauditor result:
     * "contact_details": {
     *           "emails": [
     *               "public-inquiries@hq.nasa.gov"
     *           ]
     * }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Email contact info.
     */
    protected function extractContactDetailsReport(object $kolInfo)
    {
        $result = [];
        if (isset($kolInfo->user->contact_details->emails)) {
            $result['emails'] = $kolInfo->user->contact_details->emails;
        }
        return $result;
    }

    /**
     * Transform data from hypeauditor this system.
     * 1. User info -> 1.52 contact_details info.
     * Example hypeauditor result:
     * "audience_brand_affinity": {
     *           "data": {
     *              "username": "nike",
     *               "prc": 1.1,
     *                "sort_value": 242155928
     *            }
     * }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Audience Brand Affinity Info.
     */
    protected function extractAudienceBrandAffinityReport(object $kolInfo)
    {
        $result = [];

        if (isset($kolInfo->user->features) && isset($kolInfo->user->features->report) && isset($kolInfo->user->features->report->audience_brand_affinity)) {
            $data = $kolInfo->user->features->report->audience_brand_affinity->data;
            $result = array_map(function ($item) {
                return (object) [
                    'title' => $item->username,
                    'value' => $item->prc,
                ];
            }, is_array($data) ? $data : []);
        }
        return $result;
    }

    /**
    * Transform data from hypeauditor this system.
    * Ref: https://hypeauditor.readme.io/reference/instagram-example
    *
    * Store full kol info structure Response from hypeauditor search API.
    * "user": {
    *     "username": "vancityreynolds",
    *     "full_name": "Ryan Reynolds",
    *     "is_private": false,
    *     "is_verified": true,
    *     "is_deleted": false,
    *     "about": "Owner @aviationgin & @mintmobile @maximumeffort & @wrexham_afc 🇨🇦",
    *     "photo_url": "https://cdn.hypeauditor.com/img/instagram/user/1942463581.jpg?w=320&till=1671525417&sign=e8b01b94dc3567e89060d0ef9e07ade6",
    *     "posts_count": 689,
    *     "followers_count": 45294254,
    *     "followings_count": 676,
    *     "avg_likes": 672863,
    *     "avg_comments": 3815,
    *     "aqs": 93,
    *     "aqs_name": "Excellent",
    *     "aqs_description": "Good quality of active audience; Excellent likes activity; Excellent comments activity",
    *     "blogger_categories": [
    *         1032
    *     ],
    *     "blogger_languages": [
    *         "en"
    *     ],
    *     "blogger_hashtags": {},
    *     "blogger_graph_anomalies": {},
    *     "blogger_geo": {},
    *     "blogger_emv": [],
    *     "brand_safety": {},
    *     "blogger_rankings": {},
    *     "likes_spread": {},
    *     "likes_comments_ratio": {},
    *     "audience_reachability": {},
    *     "audience_authenticity": {},
    *     "audience_type": {},
    *     "most_media": {},
    *     "audience_ethnicity": [],
    *     "audience_sentiments": {},
    *     "likes_comments_ratio_chart": [],
    *     "followers_chart": [],
    *     "following_chart": [],
    *     "er": {},
    *     "subscribers_growth_prc": {},
    *     "comments_rate": {},
    *     "audience_languages": [],
    *     "audience_age_21_plus_prc": {},
    *     "social_networks": [],
    *     "audience_education": {},
    *     "audience_marital_status": {},
    *     "growth": {},
    *     "audience_geography": {},
    *     "top3_blogger_topics": [],
    *     "audience_interests": [],
    *     "est_reach": {},
    *     "yearly_growth": {},
    *     "advertising_data": {},
    *     "post_frequency": {},
    *     "location": {},
    *     "demography_by_age": [],
    *     "demography": [],
    *     "audience_income": {},
    *     "geo_quality": {},
    *     "features": {},
    *  }
    *
    * Basic structure Response from hypeauditor report API.
    * Ref: https://hypeauditor.readme.io/reference/report_instagram#sample-response
    *
    * @param mixed $kolInfo KolInfo from search API.
    *
    * @return array|null
    */
    public function transformReportResultToKolInfo($kolInfo)
    {
        if (empty($kolInfo)) {
            return null;
        }
        $kolData = [];
        /**
         * 1. Basic info
         * "username": "vancityreynolds",
         * "full_name": "Ryan Reynolds",
         * "is_private": false,
         * "is_verified": true,
         * "is_deleted": false,
         * "about": "Owner @aviationgin & @mintmobile @maximumeffort & @wrexham_afc 🇨🇦",
         * "photo_url": "https://cdn.hypeauditor.com/img/instagram/user/1942463581.jpg?w=320&till=1671606002&sign=9de1033ec79f46df47889924cb83f4b3",
         * "posts_count": 689,
         * "followers_count": 45294254,
         * "followings_count": 676,
         * "avg_likes": 672863,
         * "avg_comments": 3815,
         * "aqs_name": "Excellent",
         * "aqs_description": "Good quality of active audience; Excellent likes activity; Excellent comments activity",
         * "er": {
         *      "value": 1.489749,
         *      "avg": 1.258497,
         *      "title": "Excellent, compared to other 1M+ followers accounts",
         *      "hist": [],
         *      "performance": {}
         *  },
         * "social_networks": [
         *  {
         *      "type": 1,
         *      "title": "Ryan Reynolds",
         *      "social_id": "1942463581",
         *      "username": "vancityreynolds",
         *      "avatar_url": "https://cdn.hypeauditor.com/img/instagram/user/1942463581.jpg?w=150&till=1666285200&sign=3ac8ac43a1a70935f22685e663b9a48f",
         *      "subscribers_count": 45294254,
         *      "er": 1.489749,
         *      "state": "READY"
         *  }],
         */
        $kolData['social_type'] = SnsService::SNS_INSTAGRAM_TYPE;
        $kolData['username'] = $kolInfo['username'] ?? '';
        $kolData['full_name'] = $kolInfo['full_name'] ?? '';
        $kolData['avatar_url'] = $kolInfo['photo_url'] ?? '';
        $kolData['description'] = $kolInfo['about'] ?? '';
        $kolData['posts_count'] = $kolInfo['posts_count'] ?? 0;
        $kolData['followers_count'] = $kolInfo['followers_count'] ?? 0;
        $kolData['followings_count'] = $kolInfo['followings_count'] ?? 0;
        $kolData['like_avg'] = $kolInfo['avg_likes'] ?? 0;
        $kolData['comment_avg'] = $kolInfo['avg_comments'] ?? 0;
        $kolData['aqs_name'] = $kolInfo['aqs_name'] ?? '';
        $kolData['aqs_description'] = $kolInfo['aqs_description'] ?? '';
        $kolData['engagement_rate'] = $kolInfo['er']->avg ?? 0;
        $kolData['social_networks'] = '';
        $kolData['social_id'] = 0;

        if (!empty($kolInfo['social_networks'])) {
            $socialNetworks = $kolInfo['social_networks'];
            $kolData['social_networks'] = json_encode($socialNetworks);
            foreach ($socialNetworks as $socialNetwork) {
                if (isset($socialNetwork->type) && $socialNetwork->type == 1) {
                    $kolData['social_id'] = $socialNetwork->social_id;
                }
            }
        }

        return $kolData;
    }

    /**
    * Transform data from hypeauditor this system.
    * Ref: https://hypeauditor.readme.io/reference/instagram-example
    *
    * Store full kol info structure Response from hypeauditor search API.
    * "user": {
    *     "username": "vancityreynolds",
    *     "full_name": "Ryan Reynolds",
    *     "is_private": false,
    *     "is_verified": true,
    *     "is_deleted": false,
    *     "about": "Owner @aviationgin & @mintmobile @maximumeffort & @wrexham_afc 🇨🇦",
    *     "photo_url": "https://cdn.hypeauditor.com/img/instagram/user/1942463581.jpg?w=320&till=1671525417&sign=e8b01b94dc3567e89060d0ef9e07ade6",
    *     "posts_count": 689,
    *     "followers_count": 45294254,
    *     "followings_count": 676,
    *     "avg_likes": 672863,
    *     "avg_comments": 3815,
    *     "aqs": 93,
    *     "aqs_name": "Excellent",
    *     "aqs_description": "Good quality of active audience; Excellent likes activity; Excellent comments activity",
    *     "blogger_categories": [
    *         1032
    *     ],
    *     "blogger_languages": [
    *         "en"
    *     ],
    *     "blogger_hashtags": {},
    *     "blogger_graph_anomalies": {},
    *     "blogger_geo": {},
    *     "blogger_emv": [],
    *     "brand_safety": {},
    *     "blogger_rankings": {},
    *     "likes_spread": {},
    *     "likes_comments_ratio": {},
    *     "audience_reachability": {},
    *     "audience_authenticity": {},
    *     "audience_type": {},
    *     "most_media": {},
    *     "audience_ethnicity": [],
    *     "audience_sentiments": {},
    *     "likes_comments_ratio_chart": [],
    *     "followers_chart": [],
    *     "following_chart": [],
    *     "er": {},
    *     "subscribers_growth_prc": {},
    *     "comments_rate": {},
    *     "audience_languages": [],
    *     "audience_age_21_plus_prc": {},
    *     "social_networks": [],
    *     "audience_education": {},
    *     "audience_marital_status": {},
    *     "growth": {},
    *     "audience_geography": {},
    *     "top3_blogger_topics": [],
    *     "audience_interests": [],
    *     "est_reach": {},
    *     "yearly_growth": {},
    *     "advertising_data": {},
    *     "post_frequency": {},
    *     "location": {},
    *     "demography_by_age": [],
    *     "demography": [],
    *     "audience_income": {},
    *     "geo_quality": {},
    *     "features": {},
    *  }
    *
    * Basic structure Response from hypeauditor report API.
    * Ref: https://hypeauditor.readme.io/reference/report_instagram#sample-response
    *
    * @param mixed $kolInfo KolInfo from search API.
    *
    * @return array|null
    */
    public function transformReportResultToKolOtherInfo($kolInfo)
    {
        if (empty($kolInfo)) {
            return null;
        }
        $kolOtherInfo = [];
        $kolOtherInfo['followers'] = $kolInfo['followers_count'] ?? 0;
        $kolOtherInfo['engagements'] = $kolInfo['er']->value ?? 0;
        $kolOtherInfo['likes'] = $kolInfo['avg_likes'] ?? 0;
        $kolOtherInfo['hashtags'] = json_encode($kolInfo['blogger_hashtags']);
        if (!empty($kolInfo['frequently_hashtags'])) {
            $frequentlyHashtags = [];
            foreach ($kolInfo['frequently_hashtags'] as $value) {
                $frequentlyHashtags[] = $value['title'];
            }

            $kolOtherInfo['top_hashtags'] = json_encode($frequentlyHashtags);
        }

        if (!empty($kolInfo['advertising_data']->brands_categories)) {
            $kolOtherInfo['brands'] = json_encode($kolInfo['advertising_data']->brands_categories);
        }

        if (!empty($kolInfo['favorite_mentions'])) {
            $kolOtherInfo['favorites'] = json_encode($kolInfo['favorite_mentions']);
        }

        $kolOtherInfo['country'] = ($kolInfo['blogger_geo']->country);
        $kolOtherInfo['demography_by_age'] = json_encode($kolInfo['demography_by_age_and_gender']);
        $kolOtherInfo['demography'] = json_encode($kolInfo['demography']);
        $kolOtherInfo['audience_ethnicity'] = json_encode($kolInfo['audience_geography']);
        $kolOtherInfo['audience_interests'] = $kolInfo['audience_interests'];
        $bloggerHashtags = array_map(function ($item) {
            return ['title' => $item->username, 'value' => $item->prc];
        }, $kolInfo['features']->report->audience_brand_affinity->data);
        $kolOtherInfo['blogger_hashtags'] = json_encode($bloggerHashtags);
        if (isset($kolInfo['advertising_data']->brands_mentions)) {
            $kolOtherInfo['brands_mentions'] = json_encode($kolInfo['advertising_data']->brands_mentions);
        }

        $kolOtherInfo['aqs'] = $kolInfo['aqs'] ?? 0;
        if (!empty($kolInfo['emails'])) {
            $kolOtherInfo['email'] = json_encode($kolInfo['emails']);
        }

        $kolOtherInfo['like_avg_10_latest_reel'] = $kolInfo['most_media']->reels->time_posted_desc->performance->{config('constant.performance_blogger_hashtags')}->metrics->likes_avg->value ?? 0;
        $kolOtherInfo['comment_avg_10_latest_reel'] = $kolInfo['most_media']->reels->time_posted_desc->performance->{config('constant.performance_blogger_hashtags')}->metrics->comments_avg->value ?? 0;
        $kolOtherInfo['view_avg_10_latest_reel'] = $kolInfo['most_media']->reels->time_posted_desc->performance->{config('constant.performance_blogger_hashtags')}->metrics->video_views_avg->value ?? 0;
        $kolOtherInfo['er_avg_10_latest_reel'] = $kolInfo['most_media']->reels->time_posted_desc->performance->{config('constant.performance_blogger_hashtags')}->metrics->er_avg->value ?? 0;

        return $kolOtherInfo;
    }

    /**
    * Transform data from hypeauditor this system.
    * Ref: https://hypeauditor.readme.io/reference/instagram-example
    *
    * Store full kol info structure Response from hypeauditor search API.
    * "user": {
    *     "username": "vancityreynolds",
    *     "full_name": "Ryan Reynolds",
    *     "is_private": false,
    *     "is_verified": true,
    *     "is_deleted": false,
    *     "about": "Owner @aviationgin & @mintmobile @maximumeffort & @wrexham_afc 🇨🇦",
    *     "photo_url": "https://cdn.hypeauditor.com/img/instagram/user/1942463581.jpg?w=320&till=1671525417&sign=e8b01b94dc3567e89060d0ef9e07ade6",
    *     "posts_count": 689,
    *     "followers_count": 45294254,
    *     "followings_count": 676,
    *     "avg_likes": 672863,
    *     "avg_comments": 3815,
    *     "aqs": 93,
    *     "aqs_name": "Excellent",
    *     "aqs_description": "Good quality of active audience; Excellent likes activity; Excellent comments activity",
    *     "blogger_categories": [
    *         1032
    *     ],
    *     "blogger_languages": [
    *         "en"
    *     ],
    *     "blogger_hashtags": {},
    *     "blogger_graph_anomalies": {},
    *     "blogger_geo": {},
    *     "blogger_emv": [],
    *     "brand_safety": {},
    *     "blogger_rankings": {},
    *     "likes_spread": {},
    *     "likes_comments_ratio": {},
    *     "audience_reachability": {},
    *     "audience_authenticity": {},
    *     "audience_type": {},
    *     "most_media": {},
    *     "audience_ethnicity": [],
    *     "audience_sentiments": {},
    *     "likes_comments_ratio_chart": [],
    *     "followers_chart": [],
    *     "following_chart": [],
    *     "er": {},
    *     "subscribers_growth_prc": {},
    *     "comments_rate": {},
    *     "audience_languages": [],
    *     "audience_age_21_plus_prc": {},
    *     "social_networks": [],
    *     "audience_education": {},
    *     "audience_marital_status": {},
    *     "growth": {},
    *     "audience_geography": {},
    *     "top3_blogger_topics": [],
    *     "audience_interests": [],
    *     "est_reach": {},
    *     "yearly_growth": {},
    *     "advertising_data": {},
    *     "post_frequency": {},
    *     "location": {},
    *     "demography_by_age": [],
    *     "demography": [],
    *     "audience_income": {},
    *     "geo_quality": {},
    *     "features": {},
    *  }
    *
    * Basic structure Response from hypeauditor report API.
    * Ref: https://hypeauditor.readme.io/reference/report_instagram#sample-response
    *
    * @param mixed $kolInfo KolInfo from search API.
    *
    * @return array|null
    */
    public function transformReportResultToKolFollowerInfo($kolInfo)
    {
        if (empty($kolInfo)) {
            return null;
        }

        $kolFollowerInfo = [];
        if (!empty($kolInfo['audience_interests'])) {
            $audienceInterest = array_map(function ($item) {
                return $item->title;
            }, $kolInfo['audience_interests']);

            $kolFollowerInfo['favorites'] = json_encode($audienceInterest);
        }

        if (!empty($kolInfo['audience_geography']->cities)) {
            $cities = array_map(function ($item) {
                return "$item->id";
            }, $kolInfo['audience_geography']->cities);

            $kolFollowerInfo['city'] = json_encode($cities);
        }

        if (!empty($kolInfo['aqs'])) {
            $kolFollowerInfo['active_rate'] = $kolInfo['aqs'];
        }

        return $kolFollowerInfo;
    }

    /**
     * Convert number to 'K', 'M', 'B', 'T'
     *
     * @param integer $number Number.
     *
     * @return string
     */
    protected function convertNumber(int $number)
    {
        if ($number > 1000) {
            $number = round($number);
            $numberFormat = number_format($number);
            $convertNumber = explode(',', $numberFormat);
            $parts = ['K', 'M', 'B', 'T'];
            $countParts = count($convertNumber) - 1;
            $display = $convertNumber[0] . ((int) $convertNumber[1][0] !== 0 ? '.' . $convertNumber[1][0] : '');
            $display .= $parts[$countParts - 1];

            return $display;
        }

        return (string) $number;
    }
}
