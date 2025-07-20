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
 * YoutubeReportResultTransformer class
 *
 * @category Hypeauditor
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class YoutubeReportResultTransformer
{
   /**
    * Transform data from hypeauditor this system.
    * Ref: https://hypeauditor.readme.io/reference/report_instagram
    * Format result:
    * {
    * "result": {
    *     "report_state": "READY",
    *     "report_quality": "FULL",
    *     "report": {
    *         "basic": {
    *             "id": "UCLA_DiR1FfKNvjuUpBHmylQ",
    *             "username": "NASAtelevision",
    *             "title": "NASA",
    *             "avatar_url": "https://yt3.ggpht.com/ytc/AMLnZu-6OoK1vqefumQnIGPodyy48E9d5QRs1p2AyPRx67g=s900-c-k-c0x00ffffff-no-rj",
    *             "description": "NASA's mission is to pioneer the future in space exploration, scientific discovery and aeronautics research.\r\n\r\nTo do that,  we have worked around the world -- and off it -- for more than 50 years, searching for answers to fundamental questions about our place in the universe. We're exploring space and discovering Earth. Join us for this exciting and important journey.",
    *             "category_name": "Science & Technology",
    *             "is_verified": true
    *         },
    *         "metrics": {
    *             "subscribers_count": {
    *                 "value": 10554899,
    *                 "performance": {
    *                 }
    *             },
    *             "subscribers_growth_prc": {
    *                 "value": null,
    *                 "performance": {
    *                 }
    *             },
    *             "media_count": {
    *                 "value": 5480,
    *                 "performance": {
    *                 }
    *             },
    *             "views_count": {
    *                 "value": 846604737,
    *                 "performance": {
    *                 }
    *             },
    *             "views_avg": {
    *                 "performance": {
    *                 }
    *             },
    *             "videos_v30": {
    *                 "value": 69521,
    *                 "performance": {
    *                 }
    *             },
    *             "alikes_count": {
    *                 "performance": {
    *                 }
    *             },
    *             "likes_count": {
    *                 "performance": {
    *                 }
    *             },
    *             "dislikes_count": {
    *                 "performance": {
    *                 }
    *             },
    *             "comments_count": {
    *                 "performance": {
    *                 }
    *             },
    *             "video_views_count": {
    *                 "performance": {
    *                 }
    *             },
    *             "video_views_avg": {
    *                 "performance": {
    *                 }
    *             },
    *             "comments_rate": {
    *                 "performance": {
    *                 }
    *             },
    *             "reactions_rate": {
    *                 "performance": {
    *                 }
    *             },
    *             "ltd_rate": null,
    *             "videos_per_week": {
    *                 "performance": {
    *                 }
    *             },
    *             "comments_avg": {
    *                 "performance": {
    *                 }
    *             },
    *             "alikes_avg": {
    *                 "performance": {
    *                 }
    *             },
    *             "likes_comments_ratio": {
    *                 "performance": {
    *                 }
    *             },
    *             "er": {
    *                 "performance": {
    *                 }
    *             }
    *         },
    *         "features": {
    *             "audience_geo": {
    *                 "data": [
    *                 ]
    *             },
    *             "audience_age_gender": {
    *                 "data": {
    *                 }
    *             },
    *             "audience_languages": {
    *                 "data": [
    *                 ]
    *             },
    *             "audience_races": {
    *             },
    *             "audience_sentiments": {
    *             },
    *             "blogger_languages": {
    *             },
    *             "blogger_geo": {
    *             },
    *             "blogger_emails": {
    *             },
    *             "blogger_views_likes_chart": {
    *             },
    *             "blogger_emv": {
    *             },
    *             "blogger_thematics": {
    *             },
    *             "brand_safety": {
    *             },
    *             "most_media": {
    *             },
    *             "blogger_rankings": {
    *             },
    *             "social_networks": {
    *             },
    *             "cqs": {
    *             }
    *         },
    *         "_report_state": "READY",
    *         "video_integration_price": {
    *             "data": {
    *                 "price": 2125,
    *                 "price_from": 1000,
    *                 "price_to": 6000
    *             }
    *         }
    *     },
    *     "features": [],
    *     "metrics_history": {
    *         "videos_v30": {
    *         },
    *         "er": {
    *         },
    *         "subscribers_count": {
    *         },
    *         "media_count": {
    *         }
    *     },
    *     "media": [
    *     ],
    *     "restTokens": 0,
    *     "validUntil": 57657398400
    * }
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

        // 1. report info -> 1.1 Basic info.
        $result['report']['basic'] = $this->extractBasicInfo($kolInfo);
        // 1. report info -> 1.2 metrics info.
        $result['report']['metrics'] = $this->extractMetrics($kolInfo);
        // 1. report info -> 1.3 features info.
        $result['report']['features'] = $this->extractReportFeatures($kolInfo);
        // 1. report info -> 1.4 video_integration_price info.
        $result['report']['video_integration_price'] = $this->extractVideoIntegrationPrice($kolInfo);
        $result['report']['features']['audience_age'] = $this->extractFeaturesAudienceAge($kolInfo);
        $result['report']['features']['demography_by_age_and_gender'] = $this->extractDemographyByAgeAndGenderReport($kolInfo);
        $result['report']['features']['demography'] = $this->extractDemography($kolInfo);
        $result['metrics_history'] = $this->extractMetricsHistory($kolInfo);
        $result['report']['metrics']['follower_chart'] = $this->extractFollowerChart($kolInfo);
        $result['media'] = $this->extractMedia($kolInfo);
        $result['validUntil'] = $kolInfo->validUntil ?? '';

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
        if (isset($kolInfo->report)) {
            $result['id'] = $kolInfo->report->basic->id ?? '';
            $result['username'] = $kolInfo->report->basic->username ?? '';
            $result['title'] = $kolInfo->report->basic->title ?? '';
            $result['avatar_url'] = $kolInfo->report->basic->avatar_url ?? '';
            $result['description'] = $kolInfo->report->basic->description ?? '';
            $result['category_name'] = $kolInfo->report->basic->category_name ?? '';
            $result['is_verified'] = $kolInfo->report->basic->is_verified ?? '';
        }

        return $result;
    }

    /**
     * Extract social networks from search API result.
     * 2. Metrics info.
     * Example hypeauditor result:
     *   "metrics": {
     *      "subscribers_count": {
     *          "value": 10554899,
     *          "performance": {
     *          }
     *      },
     *      "subscribers_growth_prc": {
     *          "value": null,
     *          "performance": {
     *          }
     *      },
     *      "media_count": {
     *          "value": 5480,
     *          "performance": {
     *          }
     *      },
     *      "views_count": {
     *          "value": 846604737,
     *          "performance": {
     *          }
     *      },
     *      "views_avg": {
     *          "performance": {
    *           }
    *       },
    *       "videos_v30": {
    *           "value": 69521,
    *           "performance": {
    *           }
    *       },
    *       "alikes_count": {
    *           "performance": {
    *           }
    *       },
    *       "likes_count": {
    *           "performance": {
    *           }
    *       },
    *       "dislikes_count": {
    *           "performance": {
    *           }
    *       },
    *       "comments_count": {
    *           "performance": {
    *           }
    *       },
    *       "video_views_count": {
    *           "performance": {
    *           }
    *       },
    *       "video_views_avg": {
    *           "performance": {
    *           }
    *       },
    *       "comments_rate": {
    *           "performance": {
    *           }
    *       },
    *       "reactions_rate": {
    *           "performance": {
    *           }
    *       },
    *       "ltd_rate": null,
    *       "videos_per_week": {
    *           "performance": {
    *           }
    *       },
    *       "comments_avg": {
    *           "performance": {
    *           }
    *       },
    *       "alikes_avg": {
    *           "performance": {
    *           }
    *       },
    *       "likes_comments_ratio": {
    *           "performance": {
    *           }
    *       },
    *       "er": {
    *           "performance": {
    *           }
    *       }
     *   }
     *
     * @param mixed $kolInfo KolInfo from search API.
     *
     * @return array Metrics info.
     */
    protected function extractMetrics($kolInfo)
    {
        $result = [
            'subscribers_count' => '',
            'subscribers_growth_prc' => '',
            'media_count' => '',
            'views_count' => '',
            'views_avg' => '',
            'videos_v30' => '',
            'alikes_count' => '',
            'likes_count' => '',
            'dislikes_count' => '',
            'comments_count' => '',
            'video_views_count' => '',
            'video_views_avg' => '',
            'comments_rate' => '',
            'reactions_rate' => '',
            'ltd_rate' => null,
            'videos_per_week' => '',
            'comments_avg' => '',
            'alikes_avg' => '',
            'likes_comments_ratio' => '',
            'er' => ''
        ];
        if (empty($kolInfo)) {
            return $result;
        }

        // 2. Metrics info.
        // metrics => $kolInfo->metrics
        if (isset($kolInfo->report->metrics)) {
            $result['subscribers_count'] = $kolInfo->report->metrics->subscribers_count ?? '';
            $result['subscribers_growth_prc'] = $kolInfo->report->metrics->subscribers_growth_prc ?? '';
            $result['media_count'] = $kolInfo->report->metrics->media_count ?? '';
            $result['views_count'] = $kolInfo->report->metrics->views_count ?? '';
            $result['views_avg'] = $kolInfo->report->metrics->views_avg ?? '';
            $result['videos_v30'] = $kolInfo->report->metrics->videos_v30 ?? '';
            $result['alikes_count'] = $kolInfo->report->metrics->alikes_count ?? '';
            $result['likes_count'] = $kolInfo->report->metrics->likes_count ?? '';
            $result['dislikes_count'] = $kolInfo->report->metrics->dislikes_count ?? '';
            $result['comments_count'] = $kolInfo->report->metrics->comments_count ?? '';
            $result['video_views_count'] = $kolInfo->report->metrics->video_views_count ?? '';
            $result['video_views_avg'] = $kolInfo->report->metrics->video_views_avg ?? '';
            $result['comments_rate'] = $kolInfo->report->metrics->comments_rate ?? '';
            $result['reactions_rate'] = $kolInfo->report->metrics->reactions_rate ?? '';
            $result['ltd_rate'] = $kolInfo->report->metrics->ltd_rate ?? null;
            $result['videos_per_week'] = $kolInfo->report->metrics->videos_per_week ?? '';
            $result['comments_avg'] = $kolInfo->report->metrics->comments_avg ?? '';
            $result['alikes_avg'] = $kolInfo->report->metrics->alikes_avg ?? '';
            $result['likes_comments_ratio'] = $kolInfo->report->metrics->likes_comments_ratio ?? '';
            $result['er'] = $kolInfo->report->metrics->er ?? '';
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
    protected function extractReportFeatures(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. report info -> 1.2 features info.
        // report => $kolInfo->report->features
        if (isset($kolInfo->report->features)) {
            $result['audience_geo'] = $kolInfo->report->features->audience_geo ?? '';
            $result['audience_age_gender'] = $kolInfo->report->features->audience_age_gender ?? '';
            $result['audience_languages'] = $kolInfo->report->features->audience_languages ?? '';
            $result['audience_races'] = $kolInfo->report->features->audience_races ?? '';
            $result['audience_sentiments'] = $kolInfo->report->features->audience_sentiments ?? '';
            $result['blogger_languages'] = $kolInfo->report->features->blogger_languages ?? '';
            $result['blogger_geo'] = $kolInfo->report->features->blogger_geo ?? '';
            $result['blogger_emails'] = $kolInfo->report->features->blogger_emails ?? '';
            $result['blogger_views_likes_chart'] = $kolInfo->report->features->blogger_views_likes_chart ?? '';
            $result['blogger_emv'] = $kolInfo->report->features->blogger_emv ?? '';
            $result['blogger_thematics'] = $kolInfo->report->features->blogger_thematics ?? '';
            $result['brand_safety'] = $kolInfo->report->features->brand_safety ?? '';
            $result['most_media'] = $kolInfo->report->features->most_media ?? '';
            $result['blogger_rankings'] = $kolInfo->report->features->blogger_rankings ?? '';
            $result['social_networks'] = $kolInfo->report->features->social_networks->data ?? [];
            $result['cqs'] = $kolInfo->report->features->cqs ?? '';
        }

        return $result;
    }

    /**
     * Extract blogger categories from report API result.
     * 1. report info -> 1.2 metrics_history info.
     * Example hypeauditor result:
     * "report": {
     *     "metrics_history": {}
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Blogger categories info.
     */
    protected function extractMetricsHistory(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. report info -> 1.2 metrics_history info.
        // report => $kolInfo->metrics_history
        if (isset($kolInfo->metrics_history)) {
            $result['videos_v30'] = $kolInfo->metrics_history->videos_v30 ?? '';
            $result['er'] = $kolInfo->metrics_history->er ?? '';
            $result['subscribers_count'] = $kolInfo->metrics_history->subscribers_count ?? '';
            $result['media_count'] = $kolInfo->metrics_history->media_count ?? '';
        }

        return $result;
    }

    /**
     * Extract metrics history follower from report API result.
     * 1. report info -> 1.2 metrics_history info.
     * Example hypeauditor result:
     * "report": {
     *     "metrics_history": {
     *          "subscribers_count": {}
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Follower history info.
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
                $item->month = Carbon::parse($item->time)->format('Y-m');
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
                'values' => array_column(array_reverse($listMonths), 'value'),
                'numeral' => $numeral ?? 0,
            ];
        }
    }

    /**
     * Extract blogger categories from report API result.
     * 1. report info -> 1.2 metrics_history info.
     * Example hypeauditor result:
     * "report": {
     *     "media": {}
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Blogger categories info.
     */
    protected function extractMedia(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. report info -> 1.2 media info.
        // report => $kolInfo->media
        if (isset($kolInfo->media) && is_array($kolInfo->media)) {
            $medias = $posters = (array) $kolInfo->media;
            usort($medias, function ($a, $b) {
                if ($a->time_added == $b->time_added) {
                    return 0;
                }
                return ($a->time_added > $b->time_added) ? -1 : 1;
            });
            $medias = array_slice($medias, 0, 6);
            $medias = array_reverse($medias);
            foreach ($medias as $media) {
                $result['likes']['data'][] = $media->metrics->likes_count->value;
                $result['comments']['data'][] = $media->metrics->comments_count->value;
                $result['comments']['date'][] = Carbon::parse($media->time_added)->format('d.m.Y');
            }
            // 6 porter er high
            usort($posters, function ($a, $b) {
                if ($a->metrics->er->value == $b->metrics->er->value) {
                    return 0;
                }
                return ($a->metrics->er->value < $b->metrics->er->value) ? 1 : -1;
            });
            $postersSortByEr = array_slice($posters, 0, 6);
            $postersSortByEr = array_map(function ($poster) {
                $poster->day = Carbon::parse($poster->time_added)->format('d');
                $poster->month = Carbon::parse($poster->time_added)->format('m');
                $poster->year = Carbon::parse($poster->time_added)->format('Y');

                try {
                    $poster->thumbnail = 'data:image/jpeg;base64,'.base64_encode(file_get_contents($poster->thumbnail));
                } catch (\Throwable $th) {
                    $poster->thumbnail = '';
                }
                return $poster;
            }, $postersSortByEr);
            // 6 poster new
            usort($posters, function ($a, $b) {
                if ($a->time_added == $b->time_added) {
                    return 0;
                }
                return ($a->time_added < $b->time_added) ? 1 : -1;
            });
            $postersSortByTime = array_slice($posters, 0, 3);
            $postersSortByTime = array_map(function ($poster) {
                unset($poster->description);
                $poster->day = Carbon::parse($poster->time_added)->format('d');
                $poster->month = Carbon::parse($poster->time_added)->format('m');
                $poster->year = Carbon::parse($poster->time_added)->format('Y');

                try {
                    $poster->thumbnail = 'data:image/jpeg;base64,'.base64_encode(file_get_contents($poster->thumbnail));
                } catch (\Throwable $th) {
                    $poster->thumbnail = '';
                }
                return $poster;
            }, $postersSortByTime);

            $result['posters'] = $postersSortByEr;
            $result['posters_sort_by_time'] = $postersSortByTime;
        }

        return $result;
    }

    /**
     * Video integration price from report API result.
     * 1. report info -> 1.4 video_integration_price info.
     * Example hypeauditor result:
     * "report": {
     *      "video_integration_price": [
     *          {
     *              "data": {
     *               "price": 2125,
     *               "price_from": 1000,
     *               "price_to": 6000
     *          },
     *      ]
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return array Video integration price info.
     */
    protected function extractVideoIntegrationPrice(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. report info -> 1.4 video_integration_price info.
        // report => $kolInfo->report->video_integration_price
        if (isset($kolInfo->report->video_integration_price)) {
            $result = $kolInfo->report->video_integration_price ?? '';
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
     *          "data": {
     *          }
     *      }
     *  }
     *
     * @param object $kolInfo KolInfo from report API.
     *
     * @return object Geo quality info.
     */
    public function extractDemography(object $kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. User info -> 1.39 audience_age_gender info.
        // report => $kolInfo->report->audience_age_gender
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
    * Ref: https://hypeauditor.readme.io/reference/instagram-example
    *
    * Store full kol info structure Response from hypeauditor search API.
    * {
    *   "result": {
    *     "report_state": "READY",
    *     "report_quality": "FULL",
    *     "report": {
    *         "basic": {
    *             "id": "UCLA_DiR1FfKNvjuUpBHmylQ",
    *             "username": "NASAtelevision",
    *             "title": "NASA",
    *             "avatar_url": "https://yt3.ggpht.com/ytc/AMLnZu-6OoK1vqefumQnIGPodyy48E9d5QRs1p2AyPRx67g=s900-c-k-c0x00ffffff-no-rj",
    *             "description": "NASA's mission is to pioneer the future in space exploration, scientific discovery and aeronautics research.\r\n\r\nTo do that,  we have worked around the world -- and off it -- for more than 50 years, searching for answers to fundamental questions about our place in the universe. We're exploring space and discovering Earth. Join us for this exciting and important journey.",
    *             "category_name": "Science & Technology",
    *             "is_verified": true
    *         },
    *         "metrics": {
    *             "subscribers_count": {
    *                 "value": 10554899,
    *                 "performance": {
    *                 }
    *             },
    *             "subscribers_growth_prc": {
    *                 "value": null,
    *                 "performance": {
    *                 }
    *             },
    *             "media_count": {
    *                 "value": 5480,
    *                 "performance": {
    *                 }
    *             },
    *             "views_count": {
    *                 "value": 846604737,
    *                 "performance": {
    *                 }
    *             },
    *             "views_avg": {
    *                 "performance": {
    *                 }
    *             },
    *             "videos_v30": {
    *                 "value": 69521,
    *                 "performance": {
    *                 }
    *             },
    *             "alikes_count": {
    *                 "performance": {
    *                 }
    *             },
    *             "likes_count": {
    *                 "performance": {
    *                 }
    *             },
    *             "dislikes_count": {
    *                 "performance": {
    *                 }
    *             },
    *             "comments_count": {
    *                 "performance": {
    *                 }
    *             },
    *             "video_views_count": {
    *                 "performance": {
    *                 }
    *             },
    *             "video_views_avg": {
    *                 "performance": {
    *                 }
    *             },
    *             "comments_rate": {
    *                 "performance": {
    *                 }
    *             },
    *             "reactions_rate": {
    *                 "performance": {
    *                 }
    *             },
    *             "ltd_rate": null,
    *             "videos_per_week": {
    *                 "performance": {
    *                 }
    *             },
    *             "comments_avg": {
    *                 "performance": {
    *                 }
    *             },
    *             "alikes_avg": {
    *                 "performance": {
    *                 }
    *             },
    *             "likes_comments_ratio": {
    *                 "performance": {
    *                 }
    *             },
    *             "er": {
    *                 "performance": {
    *                 }
    *             }
    *         },
    *         "features": {
    *             "audience_geo": {
    *                 "data": [
    *                 ]
    *             },
    *             "audience_age_gender": {
    *                 "data": {
    *                 }
    *             },
    *             "audience_languages": {
    *                 "data": [
    *                 ]
    *             },
    *             "audience_races": {
    *             },
    *             "audience_sentiments": {
    *             },
    *             "blogger_languages": {
    *             },
    *             "blogger_geo": {
    *             },
    *             "blogger_emails": {
    *             },
    *             "blogger_views_likes_chart": {
    *             },
    *             "blogger_emv": {
    *             },
    *             "blogger_thematics": {
    *             },
    *             "brand_safety": {
    *             },
    *             "most_media": {
    *             },
    *             "blogger_rankings": {
    *             },
    *             "social_networks": {
    *             },
    *             "cqs": {
    *             }
    *         },
    *         "_report_state": "READY",
    *         "video_integration_price": {
    *             "data": {
    *                 "price": 2125,
    *                 "price_from": 1000,
    *                 "price_to": 6000
    *             }
    *         }
    *     },
    *     "features": [],
    *     "metrics_history": {
    *         "videos_v30": {
    *         },
    *         "er": {
    *         },
    *         "subscribers_count": {
    *         },
    *         "media_count": {
    *         }
    *     },
    *     "media": [
    *     ],
    *     "restTokens": 0,
    *     "validUntil": 57657398400
    * }
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
         * "basic": {
         *       "id": "UCLA_DiR1FfKNvjuUpBHmylQ",
         *       "username": "NASAtelevision",
         *       "title": "NASA",
         *       "avatar_url": "https://yt3.ggpht.com/ytc/AMLnZu-6OoK1vqefumQnIGPodyy48E9d5QRs1p2AyPRx67g=s900-c-k-c0x00ffffff-no-rj",
         *       "description": "NASA's mission is to pioneer the future in space exploration, scientific discovery and aeronautics research.\r\n\r\nTo do that,  we have worked around the world -- and off it -- for more than 50 years, searching for answers to fundamental questions about our place in the universe. We're exploring space and discovering Earth. Join us for this exciting and important journey.",
         *       "category_name": "Science & Technology",
         *       "is_verified": true
         * },
         * "metrics": {
         *   "subscribers_count": {
         *      "value": 10554899,
         *   },
         *   "performance": {
         *      "er": {
         *         "7d": {},
         *         "30d": {},
         *         "90d": {},
         *         "180d": {},
         *         "365d": {},
         *         "all": {
         *           "value": 3.76,
         *           "value_prev": 0,
         *           "is_rating_allowed": true,
         *           "is_comments_enabled": true,
         *           "similar": 3.031662,
         *           "mark": "good"
         *         }
         *      },
         *    },
         * }
         * "social_networks": {
         *  "data": [{
         *      "type": 1,
         *      "title": "NASA",
         *      "social_id": "528817151",
         *      "username": "nasa",
         *      "avatar_url": "https://cdn.hypeauditor.com/img/instagram/user/528817151.jpg?w=150&till=1665201600&sign=11e6d8b75dfdad5370a682c30fa175c6",
         *      "subscribers_count": 82245447,
         *      "state": "READY"
         *  }],
         * }
         */
        $kolData['social_type'] = SnsService::SNS_YOUTUBE_TYPE;
        $kolData['username'] = $kolInfo['basic']['username'] ?? '';
        $kolData['full_name'] = $kolInfo['basic']['title'] ?? '';
        $kolData['avatar_url'] = $kolInfo['basic']['avatar_url'] ?? '';
        $kolData['description'] = isset($kolInfo['basic']['description']) ? stripslashes($kolInfo['basic']['description']) : '';
        // $kolData['posts_count'] = $kolInfo['posts_count'] ?? 0;
        $kolData['followers_count'] = $kolInfo['metrics']['subscribers_count']->value ?? 0;
        // $kolData['followings_count'] = $kolInfo['followings_count'] ?? 0;
        // $kolData['like_avg'] = $kolInfo['avg_likes'] ?? 0;
        // $kolData['comment_avg'] = $kolInfo['avg_comments'] ?? 0;
        // $kolData['aqs_name'] = $kolInfo['aqs_name'] ?? '';
        // $kolData['aqs_description'] = $kolInfo['aqs_description'] ?? '';
        // $kolData['engagement_count'] = $kolInfo['er']->value ?? 0;
        $kolData['engagement_rate'] = $kolInfo['metrics']['er']->performance->all->value ?? 0;
        $kolData['social_networks'] = '';
        $kolData['social_id'] = $kolInfo['basic']['id'] ?? '';
        if (!empty($kolInfo['features']['social_networks']->data)) {
            $socialNetworks = $kolInfo['features']['social_networks']->data ?? [];
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
        $kolOtherInfo['views_avg'] = $kolInfo['metrics']['video_views_avg']->performance->all->value ?? 0;
        $kolOtherInfo['followers'] = $kolInfo['metrics']['subscribers_count']->value ?? 0;
        $kolOtherInfo['engagements'] = $kolInfo['metrics']['er']->performance->all->value ?? 0;
        $kolOtherInfo['likes'] = $kolInfo['metrics']['likes_count']->performance->all->value ?? 0;
        $kolOtherInfo['country'] = $kolInfo['features']['blogger_geo']->data->country;
        $kolOtherInfo['demography'] = json_encode($kolInfo['features']['demography']);
        $kolOtherInfo['email'] = json_encode($kolInfo['features']['blogger_emails']);
        $kolOtherInfo['audience_geo'] = json_encode($kolInfo['features']['audience_geo']->data);
        $kolOtherInfo['likes_avg'] = $kolInfo['metrics']['likes_count']->performance->all->value / $kolInfo['metrics']['media_count']->value ?? 0;
        $kolOtherInfo['comments_avg'] = $kolInfo['metrics']['comments_count']->performance->all->value / $kolInfo['metrics']['media_count']->value ?? 0;
        $kolOtherInfo['demography_by_age'] = json_encode($kolInfo['features']['demography_by_age_and_gender']);
        $kolOtherInfo['instagram_url'] = json_encode($kolInfo['features']['social_networks']);
        return $kolOtherInfo;
    }
}
