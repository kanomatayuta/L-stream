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
 * TikTokReportResultTransformer class
 *
 * @category Hypeauditor
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class TikTokReportResultTransformer
{
   /**
    * Transform data from hypeauditor this system.
    * Ref: https://hypeauditor.readme.io/reference/report_instagram
    * Format result:
    * "report": {
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

        // 1. Report info -> 1.1 Basic info.
        $result['basic'] = $this->extractBasicInfo($kolInfo);
        // 1. Report info -> 1.2 Metrics info.
        $result['metrics'] = $this->extractMetrics($kolInfo);
        // 1. Report info -> 1.3 Features info.
        $result['features'] = $this->extractFeatures($kolInfo);
        $result['features']['audience_age'] = $this->extractFeaturesAudienceAge($kolInfo);
        $result['features']['demography_by_age_and_gender'] = $this->extractDemographyByAgeAndGenderReport($kolInfo);
        $result['features']['demography'] = $this->extractDemography($kolInfo);
        $result['features']['audience_geo_group'] = $this->extractAudienceGeo($kolInfo);
        // 1. Report info -> KolInfo validUntil.
        $result['validUntil'] = $kolInfo->validUntil ?? '';
        // 1. Report metrics info -> Engagement last posted
        $result['metrics']['er_last_posted'] = $this->extractERLastPosted($kolInfo);
        $result['metrics']['follower_chart'] = $this->extractFollowerChart($kolInfo);
        $result['metrics']['like_chart'] = $this->extractLikeChart($kolInfo);

        return $result;
    }

    /**
     * Extract basic info from report API result.
     * 1. Report info -> 1.1 Basic info.
     * Example hypeauditor result:
     * "basic": {
     *     "id": "6557821753438371845",
     *     "username": "littlebig",
     *     "title": "littlebig",
     *     "avatar_url": "https://cdn.hypeauditor.com/img/tiktok/user/6557821753438371845.jpg?w=150&till=1663412400&sign=f6541e7e1c5fc9c75add25dd66c0f634",
     *     "description": "Russian punk-rave band LITTLE BIG"
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Basic info.
     */
    protected function extractBasicInfo(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. Report info -> 1.1 Basic info.
        // report => $kolInfo->report
        if (isset($kolInfo->report)) {
            $result['id'] = $kolInfo->report->basic->id ?? '';
            $result['username'] = $kolInfo->report->basic->username ?? '';
            $result['title'] = $kolInfo->report->basic->title ?? '';
            $result['avatar_url'] = $kolInfo->report->basic->avatar_url ?? '';
            $result['description'] = $kolInfo->report->basic->description ?? '';
        }
        return $result;
    }

    /**
     * Extract metrics from search API result.
     * 1. Report info -> 1.2 Metrics info.
     * Example hypeauditor result:
     * "metrics": {
     *   "media_per_week": {
     *   },
     *   "subscribers_count": {
     *   },
     *   "views_avg": {
     *   },
     *   "subscribers_growth_prc": {
     *   },
     *   "er": {
     *   },
     *   "alikes_avg": {
     *   },
     *   "likes_count": {
     *   },
     *   "media_count": {
     *   },
     *   "likes_views_ratio": {
     *   },
     *   "comments_count": {
     *   },
     *   "views_followers_ratio": {
     *   },
     *   "shares_count": {
     *   },
     *   "following_count": {
     *   },
     *   "comments_avg": {
     *   },
     *   "shares_avg": {
     *   },
     *   "comments_likes_ratio": {
     *   },
     *   "post_frequency": {
     *   },
     *   "subscribers_quality": {
     *   },
     *   "audience_reachability": {
     *   }
     * }
     *
     * @param mixed $kolInfo KolInfo from search API.
     *
     * @return array Metrics info.
     */
    protected function extractMetrics($kolInfo)
    {
        $result = [
            'media_per_week' => '',
            'subscribers_count' => '',
            'views_avg' => '',
            'subscribers_growth_prc' => '',
            'er' => '',
            'alikes_avg' => '',
            'likes_count' => '',
            'media_count' => '',
            'likes_views_ratio' => '',
            'comments_count' => '',
            'views_followers_ratio' => '',
            'shares_count' => '',
            'following_count' => '',
            'comments_avg' => '',
            'shares_avg' => '',
            'comments_likes_ratio' => '',
            'post_frequency' => '',
            'subscribers_quality' => '',
            'audience_reachability' => '',
        ];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1.2 Metrics info.
        // metrics => $kolInfo->metrics
        if (isset($kolInfo->report->metrics)) {
            $result['media_per_week'] = $kolInfo->report->metrics->media_per_week ?? '';
            $result['subscribers_count'] = $kolInfo->report->metrics->subscribers_count ?? '';
            $result['views_avg'] = $kolInfo->report->metrics->views_avg ?? '';
            $result['subscribers_growth_prc'] = $kolInfo->report->metrics->subscribers_growth_prc ?? '';
            $result['er'] = $kolInfo->report->metrics->er ?? '';
            $result['alikes_avg'] = $kolInfo->report->metrics->alikes_avg ?? '';
            $result['likes_count'] = $kolInfo->report->metrics->likes_count ?? '';
            $result['media_count'] = $kolInfo->report->metrics->media_count ?? '';
            $result['likes_views_ratio'] = $kolInfo->report->metrics->likes_views_ratio ?? '';
            $result['comments_count'] = $kolInfo->report->metrics->comments_count ?? '';
            $result['views_followers_ratio'] = $kolInfo->report->metrics->views_followers_ratio ?? '';
            $result['shares_count'] = $kolInfo->report->metrics->shares_count ?? '';
            $result['following_count'] = $kolInfo->report->metrics->following_count ?? '';
            $result['comments_avg'] = $kolInfo->report->metrics->comments_avg ?? null;
            $result['shares_avg'] = $kolInfo->report->metrics->shares_avg ?? '';
            $result['comments_likes_ratio'] = $kolInfo->report->metrics->comments_likes_ratio ?? '';
            $result['post_frequency'] = $kolInfo->report->metrics->post_frequency ?? '';
            $result['subscribers_quality'] = $kolInfo->report->metrics->subscribers_quality ?? '';
            $result['audience_reachability'] = $kolInfo->report->metrics->audience_reachability ?? '';
        }

        return $result;
    }

    /**
     * Extract features from report API result.
     * 1. Report info -> 1.3 Features info.
     * Example hypeauditor result:
     * "report": {
     *     "features": {}
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Features info.
     */
    protected function extractFeatures(object $kolInfo)
    {
        $result = [
            'likes_distribution' => '',
            'blogger_geo' => '',
            'blogger_languages' => '',
            'most_media' => '',
            'blogger_challenges_performance' => '',
            'blogger_prices' => '',
            'blogger_thematics' => '',
            'blogger_emv' => '',
            'blogger_emails' => '',
            'audience_sentiments' => '',
            'audience_age_gender' => '',
            'audience_by_type' => '',
            'audience_geo' => '',
            'audience_languages' => '',
            'audience_races' => '',
            'aqs' => '',
            'media_by_type' => '',
            'blogger_views_likes_chart' => '',
            'social_networks' => '',
        ];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. Report info -> 1.3 Features info.
        // report => $kolInfo->report->features
        if (isset($kolInfo->report->features)) {
            $result['likes_distribution'] = $kolInfo->report->features->likes_distribution ?? '';
            $result['blogger_geo'] = $kolInfo->report->features->blogger_geo ?? '';
            $result['blogger_languages'] = $kolInfo->report->features->blogger_languages ?? '';
            $result['most_media'] = $kolInfo->report->features->most_media ?? '';
            $result['blogger_challenges_performance'] = $kolInfo->report->features->blogger_challenges_performance ?? '';
            $result['blogger_prices'] = $kolInfo->report->features->blogger_prices ?? '';
            $result['blogger_thematics'] = $kolInfo->report->features->blogger_thematics ?? '';
            $result['blogger_emv'] = $kolInfo->report->features->blogger_emv ?? '';
            $result['blogger_emails'] = $kolInfo->report->features->blogger_emails ?? '';
            $result['audience_sentiments'] = $kolInfo->report->features->audience_sentiments ?? '';
            $result['audience_age_gender'] = $kolInfo->report->features->audience_age_gender ?? '';
            $result['audience_by_type'] = $kolInfo->report->features->audience_by_type ?? '';
            $result['audience_geo'] = $kolInfo->report->features->audience_geo ?? '';
            $result['audience_languages'] = $kolInfo->report->features->audience_languages ?? '';
            $result['audience_races'] = $kolInfo->report->features->audience_races ?? '';
            $result['aqs'] = $kolInfo->report->features->aqs ?? '';
            $result['media_by_type'] = $kolInfo->report->features->media_by_type ?? '';
            $result['blogger_views_likes_chart'] = $kolInfo->report->features->blogger_views_likes_chart ?? '';
            $result['social_networks'] = $kolInfo->report->features->social_networks->data ?? [];
        }

        return $result;
    }

    /**
     * Extract features audience age from report API result.
     * Example hypeauditor result:
     * "report": {
     *     "features": {
     *          "audience_age_gender": {}
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Features audience age info.
     */
    protected function extractFeaturesAudienceAge(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        if (isset($kolInfo->report->features)) {
            $result = $kolInfo->report->features->audience_age_gender->data;
            if (!empty($result)) {
                $dataMale['data'] = array_column($this->mappingAgeGroup((array) $result), 'male');
                $dataFemale['data'] = array_column($this->mappingAgeGroup((array) $result), 'female');
                $demoByAge = [];
                $dataMale['name'] = config('constant.demography.male');
                $dataFemale['name'] = config('constant.demography.female');
                array_push($demoByAge, $dataMale, $dataFemale);
            }
        }
        return $demoByAge;
    }

    /**
     * Transform data from hypeauditor this system.
     * Example hypeauditor result:
     * "user": {
     *      "favorite_mentions": {
     *          "title": "thesummeriturnedpretty",
     *          "value": "123",
     *      }
     *  }
     *
     * @param array $ages KolInfo from report API.
     *
     * @return object Geo quality info.
     */
    protected function mappingAgeGroup(array $ages)
    {
        $agesValue = config('constant.ages_group_tiktok');
        $agesValueMerge = config('constant.ages_group_merge_tiktok');
        foreach ($ages as $key => $age) {
            if (!empty($key) && !empty($agesValue[$key])) {
                $agesValue[$key]['male'] = $age->male ?? 0;
                $agesValue[$key]['female'] = $age->female ?? 0;
            } elseif (in_array($key, $agesValueMerge) && isset($age->male) && isset($age->female)) {
                $agesValue[config('constant.ages_mapping_tiktok')]['male'] += $age->male;
                $agesValue[config('constant.ages_mapping_tiktok')]['female'] += $age->female;
            }
        }
        return $agesValue;
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
        if (isset($kolInfo->report->features)) {
            $items = $kolInfo->report->features->audience_age_gender->data;
            $gender = $this->mappingAgeGroup((array) $items);
            $data = [];
            $male = [];
            $female = [];
            foreach ($gender as $key => $item) {
                $data[$key] = [
                    'title' => $key,
                    'value' => $item['male'] + $item['female'],
                ];
                $male[$key] = [
                    'title' => $key,
                    'value' => $item['male'],
                ];
                $female[$key] = [
                    'title' => $key,
                    'value' => $item['female'],
                ];
            }
        }
        $result['male'] = $male;
        $result['female'] = $female;
        $result['group'] = $data;
        return $result;
    }

    /**
     * Transform data from hypeauditor this system.
     * 1. User info -> 1.41 geo_quality info.
     * Example hypeauditor result:
     * "user": {
     *      "audience_age_gender": {
     *               "data": {
     *                   "13-17": {
     *                       "male": 7.73,
     *                       "female": 18.78
     *                   },
     *                   "18-24": {
     *                      "male": 14.36,
     *                       "female": 24.31
     *                   },
     *                   "25-34": {
     *                       "male": 12.71,
     *                       "female": 12.15
     *                   },
     *                   "35-44": {
     *                       "male": 4.97,
     *                      "female": 1.1
     *                   },
     *                   "45-54": {
     *                       "male": 2.21,
     *                       "female": 0.55
     *                   },
     *                   "55-64": {
     *                       "male": 0.55,
     *                       "female": 0
     *                   },
     *                   "65+": {
     *                       "male": 0,
     *                       "female": 0.55
     *                   }
     *               }
     *           }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Demography info.
     */
    protected function extractDemography(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.39 demography info.
        // user => $kolInfo->user->demography
        if (isset($kolInfo->report->features)) {
            $data = $kolInfo->report->features->audience_age_gender->data;
            $result = collect($data)->toArray();
            $male = $female = 0;
            foreach ($result as $item) {
                $male += $item->male;
                $female += $item->female;
            }
            $result = [
                [
                    'gender' => config('constant.demography.male'),
                    'value' => $male,
                ],
                [
                    'gender' => config('constant.demography.female'),
                    'value' => $female,
                ],
            ];
        }
        return $result;
    }

    /**
     * Transform data from hypeauditor this system.
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object AudienceGeo info.
     */
    protected function extractAudienceGeo(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        if (isset($kolInfo->report->features)) {
            $data = $kolInfo->report->features->audience_geo->data->groups;
            $result = collect($data)->toArray();
            $data = [];
            foreach ($result as $key => $item) {
                $data[] = [
                    'title' => $key,
                    'value' => $item,
                ];
            }
        }
        $result['group'] = $data;
        return $result;
    }

    /**
     * Extract ER last posted from report API result.
     * Example hypeauditor result:
     * "data": {
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
        if (isset($kolInfo->er_last_posted) && isset($kolInfo->er_last_posted->media)) {
            $medias = $posters = (array) $kolInfo->er_last_posted->media;
            usort($medias, function ($a, $b) {
                if ($a->basic->exact_create_time == $b->basic->exact_create_time) {
                    return 0;
                }
                return ($a->basic->exact_create_time > $b->basic->exact_create_time) ? -1 : 1;
            });
            // 6 porter er high
            usort($posters, function ($a, $b) {
                if ($a->metrics->er->value == $b->metrics->er->value) {
                    return 0;
                }
                return ($a->metrics->er->value < $b->metrics->er->value) ? 1 : -1;
            });
            $medias = array_slice($medias, 0, 6);
            $medias = array_reverse($medias);
            $posters = array_slice($posters, 0, 6);
            $posters = array_map(function ($poster) {
                $poster->basic->day = Carbon::parse($poster->basic->exact_create_time)->format('d');
                $poster->basic->month = Carbon::parse($poster->basic->exact_create_time)->format('m');
                $poster->basic->year = Carbon::parse($poster->basic->exact_create_time)->format('Y');
                return $poster;
            }, $posters);

            foreach ($medias as $media) {
                $result['likes']['data'][] = $media->metrics->likes_count->value;
                $result['comments']['data'][] = $media->metrics->comments_count->value;
                $result['comments']['date'][] = Carbon::parse($media->basic->exact_create_time)->format('d.m.Y');
                $result['er_post']['data'][] = $media->metrics->er->value;
                $result['er_post']['date'][] = Carbon::parse($media->basic->exact_create_time)->format('d.m.Y');
            }
            $result['posters'] = $posters;
        }
        return $result;
    }

    /**
     * Extract metrics history from report API result.
     * Example hypeauditor result:
     * "data": {
     *      "metrics_history": {
     *          "subscribers_count": {},
     *          "following_count": {},
     *          "likes_count": {},
     *          "posts_count": {},
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Geo quality info.
     */
    public function extractFollowerChart(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        $lastMonth = Carbon::now()->subMonth()->format('Y-m-01');
        // Get last seven month
        for ($i = 0; $i < 7; $i++) {
            $month = date('Y-m', strtotime($lastMonth . ' -' . $i . 'months'));
            $months[] = $month;
            $listMonths[$month] = [
                'month' => $month,
            ];
        }

        if (isset($kolInfo->metrics_history) && is_array($kolInfo->metrics_history->subscribers_count->history)) {
            $result = $kolInfo->metrics_history->subscribers_count->history;
            $result = array_filter($result, function ($item) use ($months) {
                $item->month = Carbon::parse($item->timestamp)->format('Y-m');
                if (in_array($item->month, $months)) {
                    return $item;
                }
            });
            $countLastMonth = $countBeforeLastMonth = 0;
            $beforeLastMonth = Carbon::now()->subMonth(2)->format('Y-m');
            $lastMonth = Carbon::now()->subMonth()->format('Y-m');
            foreach ($result as $item) {
                if (!empty($listMonths[$item->month])) {
                    $listMonths[$item->month]['value'] = $item->value;
                }
            }
            foreach ($listMonths as $month) {
                if ($month['month'] === $beforeLastMonth) {
                    $countBeforeLastMonth = $month['value'] ?? 0;
                }
                if ($month['month'] === $lastMonth) {
                    $countLastMonth = $month['value'] ?? 0;
                }
            }
            if ($countBeforeLastMonth && $countLastMonth) {
                $numeral = round((($countLastMonth - $countBeforeLastMonth) / $countBeforeLastMonth) * 100, 2);
            }

            return [
                'months' => array_reverse($months),
                'values' => array_column(array_reverse($listMonths), 'value'),
                'numeral' => $numeral ?? 0,
            ];
        }
    }

    /**
     * Extract metrics history from report API result.
     * Example hypeauditor result:
     * "data": {
     *      "metrics_history": {
     *          "subscribers_count": {},
     *          "following_count": {},
     *          "likes_count": {},
     *          "posts_count": {},
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Geo quality info.
     */
    public function extractLikeChart(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        $lastMonth = Carbon::now()->subMonth()->format('Y-m-01');
        // Get last seven month
        for ($i = 0; $i < 7; $i++) {
            $month = date('Y-m', strtotime($lastMonth . ' -' . $i . 'months'));
            $months[] = $month;
        }

        if (isset($kolInfo->metrics_history) && is_array($kolInfo->metrics_history->likes_count->history)) {
            $result = $kolInfo->metrics_history->likes_count->history;
            $result = array_filter($result, function ($item) use ($months) {
                $item->month = Carbon::parse($item->timestamp)->format('Y-m');
                if (in_array($item->month, $months)) {
                    return $item;
                }
            });
            $result = array_values($result);
            $countDuplicateMonths = [];
            $totalLikePerMonth = [];
            $countLastMonth = $countBeforeLastMonth = 0;
            $beforeLastMonth = Carbon::now()->subMonth(2)->format('Y-m');
            $lastMonth = Carbon::now()->subMonth()->format('Y-m');
            foreach ($result as $key => $item) {
                if (isset($result[$key + 1])) {
                    if ($key == 0 || $result[$key]->month != $result[$key + 1]->month) {
                        $totalLikePerMonth[$result[$key + 1]->month] = 0;
                        if ($key == 0 && $result[$key]->month != $result[$key + 1]->month) {
                            $totalLikePerMonth[$item->month] = 0;
                        }
                    }
                    $totalLikePerMonth[$item->month] += $item->value;
                } elseif (!isset($result[$key + 1])) {
                    if ($result[$key]->month == $result[$key - 1]->month) {
                        $totalLikePerMonth[$item->month] += $item->value;
                    } else {
                        $totalLikePerMonth[$item->month] = $item->value;
                    }
                }

                $countDuplicateMonths[] = $item->month;
            }

            $countDuplicateMonths = array_count_values($countDuplicateMonths);
            if (!empty($totalLikePerMonth) && !empty($countDuplicateMonths)) {
                foreach ($totalLikePerMonth as $key => $value) {
                    $totalLikePerMonth[$key] = $value / $countDuplicateMonths[$key];
                }
            }
            foreach ($totalLikePerMonth as $key => $month) {
                if ($key === $beforeLastMonth) {
                    $countBeforeLastMonth = $month;
                }
                if ($key === $lastMonth) {
                    $countLastMonth = $month;
                }
            }
            if ($countBeforeLastMonth && $countLastMonth) {
                $numeral = round((($countLastMonth - $countBeforeLastMonth) / $countBeforeLastMonth) * 100, 2);
            }

            return [
                'months' => array_reverse($months),
                'values' => array_values($totalLikePerMonth),
                'numeral' => $numeral ?? 0,
            ];
        }
    }

    /**
    * Transform data from hypeauditor this system.
    * Ref: https://hypeauditor.readme.io/reference/report_tiktok#sample-response
    *
    * Store full kol info structure Response from hypeauditor search API.
    * "report": {
    *  }
    *
    * Basic structure Response from hypeauditor report API.
    * Ref: https://hypeauditor.readme.io/reference/report_tiktok#sample-response
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
         * "basic": {
         *     "id": "6557821753438371845",
         *     "username": "littlebig",
         *     "title": "littlebig",
         *     "avatar_url": "https://cdn.hypeauditor.com/img/tiktok/user/6557821753438371845.jpg?w=150&till=1663412400&sign=f6541e7e1c5fc9c75add25dd66c0f634",
         *     "description": "Russian punk-rave band LITTLE BIG"
         * }
         * "metrics": {
         *      "subscribers_count": {
         *          "value": 4900000,
         *      },
         *      "er": {
         *          "value": 5.48,
         *          "mark_title": "LOW",
         *          "performance": {
         *              "30d": {
         *                   "value": 4.33,
         *                  "mark": "poor",
         *                  "similar": 9.101883
         *              },
         *               "90d": {
         *                   "value": 4.51,
         *                  "mark": "poor",
         *                  "similar": 8.694697
         *              },
         *              "180d": {
         *                   "value": 4.51,
         *                  "mark": "poor",
         *                  "similar": 8.335672
         *              }
         *          }
         *      },
         * },
         * "features": {
         *      "social_networks": [ {
         *          "type": 2,
         *          "title": "Little Big",
         *          "social_id": "UCu7TZ_ATWgjgD9IrNLdnYDA",
         *          "username": "Little Big",
         *          "avatar_url": "https://yt3.ggpht.com/_n9fJU7eoppGMaZovVEDgt9Vv3oNG7GlwcCQnAvRowqD6pETPEkuZA8XDXimPf7uA35cYt6PHQ=s900-c-k-c0x00ffffff-no-rj",
         *          "subscribers_count": 7115674,
         *          "er": 1.77,
         *          "state": "READY"
         *      }],
         * }
         */
        $kolData['social_type'] = SnsService::SNS_TIKTOK_TYPE;
        $kolData['social_id'] = $kolInfo['basic']['id'] ?? '';
        $kolData['username'] = $kolInfo['basic']['username'] ?? '';
        $kolData['full_name'] = $kolInfo['basic']['title'] ?? '';
        $kolData['avatar_url'] = $kolInfo['basic']['avatar_url'] ?? '';
        $kolData['description'] = $kolInfo['basic']['description'] ?? '';
        // $kolData['posts_count'] = $kolInfo['posts_count'] ?? 0;
        $kolData['followers_count'] = $kolInfo['metrics']['subscribers_count']->value ?? 0;
        // $kolData['followings_count'] = $kolInfo['followings_count'] ?? 0;
        // $kolData['like_avg'] = $kolInfo['avg_likes'] ?? 0;//???alikes_avg
        $kolData['comment_avg'] = $kolInfo['metrics']['comments_avg']->value ?? 0;
        // $kolData['aqs_name'] = $kolInfo['aqs_name'] ?? '';
        // $kolData['aqs_description'] = $kolInfo['aqs_description'] ?? '';
        // $kolData['engagement_count'] = $kolInfo['metrics']['er']->value ?? 0;
        $kolData['engagement_rate'] = $kolInfo['metrics']['er']->value ?? 0;
        $kolData['social_networks'] = '';
        if (!empty($kolInfo['features']['social_networks'])) {
            $socialNetworks = $kolInfo['features']['social_networks'];
            $kolData['social_networks'] = json_encode($socialNetworks);
        }

        return $kolData;
    }

    /**
     * Transform data add to kol other info.
     *
     * @param mixed $kolInfo KolInfo from report API.
     * @return array|null
     */
    public function transformReportResultToKolOtherInfo($kolInfo)
    {
        if (empty($kolInfo)) {
            return null;
        }
        $kolOtherInfo = [];
        $kolOtherInfo['views_avg'] = $kolInfo['metrics']['views_avg']->value ?? 0;
        $kolOtherInfo['followers'] = $kolInfo['metrics']['subscribers_count']->value ?? 0;
        $kolOtherInfo['engagements'] = $kolInfo['metrics']['er']->value ?? 0;
        $kolOtherInfo['likes'] = $kolInfo['metrics']['likes_count']->value ?? 0;
        $kolOtherInfo['country'] = ($kolInfo['features']['blogger_geo']->data->country);
        $kolOtherInfo['demography_by_age'] = json_encode($kolInfo['features']['demography_by_age_and_gender']);
        $kolOtherInfo['demography'] = json_encode($kolInfo['features']['demography']);
        $kolOtherInfo['email'] = json_encode($kolInfo['features']['blogger_emails']);
        $kolOtherInfo['audience_geo'] = json_encode($kolInfo['features']['audience_geo']->data->countries);
        $kolOtherInfo['audience_by_type'] = $kolInfo['features']['audience_by_type']->data->infs ?? 0;
        $kolOtherInfo['likes_avg'] = $kolInfo['metrics']['likes_count']->value / $kolInfo['metrics']['media_count']->value ?? 0;
        $kolOtherInfo['comments_avg'] = $kolInfo['metrics']['comments_avg']->value ?? 0;
        $kolOtherInfo['instagram_url'] = json_encode($kolInfo['features']['social_networks']);
        return $kolOtherInfo;
    }
}
