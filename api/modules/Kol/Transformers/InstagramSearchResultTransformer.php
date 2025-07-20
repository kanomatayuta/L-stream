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
use Illuminate\Support\Facades\App;

/**
 * InstagramSearchResultTransformer class
 *
 * @category Hypeauditor
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class InstagramSearchResultTransformer
{
   /**
    * Transform data from hypeauditor this system.
    * Ref: https://hypeauditor.readme.io/reference/instagram-example
    *
    * Basic structure Response from hypeauditor search API.
    * {
    *   "result": {
    *       "search_results": [
    *           {
    *               "basic": {
    *               },
    *               "metrics": {
    *               },
    *               "features": {
    *                   "social_networks": [
    *                   ],
    *                   "blogger_topics": {
    *                   },
    *                   "blogger_thematics": {
    *                   },
    *                   "audience_geo": {
    *                   }
    *               }
    *       }],
    *       "current_page": 1,
    *       "total_pages": 4,
    *       "queries_left": 51
    *   }
    * }
    *
    * @param object $kolInfos List KolInfo from search API.
    *
    * @return mixed
    */
    public function transformSearchResults(object $kolInfos) : array
    {
        $result = [];

        foreach ($kolInfos->search_results as $kolInfo) {
            $result['search_results'][] = $this->transformSearchResult($kolInfo);
        }

        // 4. Total search items
        $totalSearchItems = $this->extractQueriesLeft($kolInfos);
        if (!empty($totalSearchItems)) {
            $result['meta']['total_search_items'] = $totalSearchItems;
        } else {
            $result['meta']['total_search_items'] = count($result['search_results']);
        }

        // 5. Current page info
        if (!empty($kolInfos->current_page)) {
            $result['meta']['current_page'] = $kolInfos->current_page;
        }

        // 6. Total pages info
        if (!empty($kolInfos->total_pages)) {
            $result['meta']['total_pages'] = $kolInfos->total_pages;
        }

        if (App::environment('staging')) {
            $countKolInfos = count(config('constant.kol_infos'));
            $kolInfosFake = [];
            for ($i = 0; $i < $countKolInfos; $i++) {
                $kolInfosFake[$i]['basic']['username'] = config('constant.kol_infos')[$i]['basic']['username'];
                $kolInfosFake[$i]['basic']['title'] = config('constant.kol_infos')[$i]['basic']['title'];
                $kolInfosFake[$i]['basic']['avatar_url'] = config('constant.kol_infos')[$i]['basic']['avatar_url'];

                $kolInfosFake[$i]['metrics']['subscribers_count'] = config('constant.kol_infos')[$i]['metrics']['subscribers_count'];
                $kolInfosFake[$i]['metrics']['er'] = config('constant.kol_infos')[$i]['metrics']['er'];
                $kolInfosFake[$i]['metrics']['engagement_count'] = ($kolInfosFake[$i]['metrics']['er'] / 100) * $kolInfosFake[$i]['metrics']['subscribers_count'];
            }

            foreach ($kolInfosFake as $value) {
                $result['search_results'][] = $value;
            }
        }

        return $result;
    }

    /**
    * Transform data from hypeauditor this system.
    * Ref: https://hypeauditor.readme.io/reference/instagram-example
    *
    * Basic structure Response from hypeauditor search API.
    * {
    *   [
    *       "basic": {
    *       },
    *       "metrics": {
    *       },
    *       "features": {
    *           "social_networks": [
    *           ],
    *           "blogger_topics": {
    *           },
    *           "blogger_thematics": {
    *           },
    *           "audience_geo": {
    *           }
    *       }
    *   ]
    * }
    *
    * @param mixed $kolInfo KolInfo from search API.
    *
    * @return array|null
    */
    public function transformSearchResult($kolInfo) : array
    {
        $result = [
            // 1. Basic info
            'basic' => $this->extractBasic($kolInfo),
            // 2. Metrics info
            'metrics' => $this->extractMetrics($kolInfo),
            /**
             * Information in "Features"
             * 3. Features
             * 3.1 social_networks info
             * 3.2 blogger_topics info
             * 3.3 blogger_thematics info
             * 3.4 audience_geo info: countries, cities
             */
            'features' => [
                // 3.1 social_networks info
                'social_networks' => $this->extractSocialNetworks($kolInfo),
                // 3.2 blogger_topics info
                'blogger_topics' => $this->extractBloggerTopics($kolInfo),
                // 3.3 blogger_thematics info
                'blogger_thematics' => $this->extractBloggerThematics($kolInfo),
                // 3.4 audience_geo info: countries, cities
                'audience_geo' => $this->extractAudienceGeo($kolInfo),
                // 3.5 aqs info
                'aqs' => $this->extractAqs($kolInfo),
            ],
        ];

        return $result;
    }

    /**
     * Extract social networks from search API result.
     * 1. Basic info
     * Example hypeauditor result:
     *   "basic": {
     *     "username": "nasachandraxray",
     *     "title": "NASA Chandra X-ray Observatory",
     *     "avatar_url": "https://cdn.hypeauditor.com/img/instagram/user/1332348075.jpg?w=150&till=1646636400&sign=a87695eb0d2ae0be402b52c2b4293692"
     *   }
     *
     * @param mixed $kolInfo KolInfo from search API.
     *
     * @return array Basic info.
     */
    protected function extractBasic($kolInfo)
    {
        $result = [
            'username' => '',
            'title' => '',
            'avatar_url' => '',
        ];
        if (empty($kolInfo)) {
            return $result;
        }

        // 1. Basic info.
        // basic => $kolInfo->basic
        if (isset($kolInfo->basic)) {
            $result['username'] = $kolInfo->basic->username ?? '';
            $result['title'] = $kolInfo->basic->title ?? '';
            $result['avatar_url'] = $kolInfo->basic->avatar_url ?? '';
        }

        return $result;
    }

    /**
     * Extract social networks from search API result.
     * 2. Metrics info.
     * Example hypeauditor result:
     *   "metrics": {
     *     "er": {
     *       "value": 1.32
     *     },
     *     "subscribers_count": {
     *       "value": 1172869
     *     },
     *     "real_subscribers_count": {
     *       "value": 961635
     *     },
     *     "subscribers_growth_prc": {
     *       "7d": 0.42
     *     }
     *   }
     *
     * @param mixed $kolInfo KolInfo from search API.
     *
     * @return array Metrics info.
     */
    protected function extractMetrics($kolInfo)
    {
        $field7d = '7d';
        $result = [
            'engagement_count' => 0,
            'er' => 0,
            'subscribers_count' => 0,
            'real_subscribers_count' => 0,
            'subscribers_growth_prc' => 0,
        ];
        if (empty($kolInfo)) {
            return $result;
        }

        // 2. Metrics info.
        // metrics => $kolInfo->metrics
        if (isset($kolInfo->metrics)) {
            if (isset($kolInfo->metrics->er->value) && isset($kolInfo->metrics->subscribers_count->value)) {
                $result['engagement_count'] = ($kolInfo->metrics->er->value / 100) * $kolInfo->metrics->subscribers_count->value;
            }
            $result['er'] = $kolInfo->metrics->er->value ?? 0;
            $result['subscribers_count'] = $kolInfo->metrics->subscribers_count->value ?? 0;
            $result['real_subscribers_count'] = $kolInfo->metrics->real_subscribers_count->value ?? 0;
            $result['subscribers_growth_prc'] = $kolInfo->metrics->subscribers_growth_prc->$field7d ?? 0;// Field 7d
        }

        return $result;
    }

    /**
     * Extract social networks from search API result.
     * 3. Features info -> 3.1 social_networks info
     * Example hypeauditor result:
     * "features": {
     *     "social_networks": [
     *       {
     *         "type": "instagram",
     *         "title": "NASA Chandra X-ray Observatory",
     *         "social_id": "1332348075",
     *         "username": "nasachandraxray",
     *         "avatar_url": "https://cdn.hypeauditor.com/img/instagram/user/1332348075.jpg?w=150&till=1646614800&sign=2057cd1c0151fcfb09560dad0695a1c6",
     *         "subscribers_count": 1170332
     *       }
     *     ]
     *  }
     *
     * @param mixed $kolInfo KolInfo from search API.
     *
     * @return array Social networks info.
     */
    protected function extractSocialNetworks($kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 3. Features info -> 3.1 social_networks info
        // social_networks => $kolInfo->features->social_networks
        if (isset($kolInfo->features->social_networks) && is_array($kolInfo->features->social_networks)) {
            foreach ($kolInfo->features->social_networks as $socialNetworkInfo) {
                $result[] = $socialNetworkInfo;
            }
        }

        return $result;
    }

    /**
     * Extract blogger topics from search API result.
     * 3. Features info -> 3.2 blogger_topics info
     * Example hypeauditor result:
     * "features": {
     *     "blogger_topics": {
     *           "data": []
     *     }
     * }
     *
     * @param mixed $kolInfo KolInfo from search API.
     *
     * @return array Blogger topics info.
     */
    protected function extractBloggerTopics($kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 3. Features info -> 3.2 blogger_topics info
        // blogger_topics => $kolInfo->features->blogger_topics->data
        if (isset($kolInfo->features->blogger_topics->data)) {
            $result = $kolInfo->features->blogger_topics->data;
        }

        return $result;
    }

    /**
     * Extract blogger thematics from search API result.
     * 3. Features info -> 3.3 blogger_thematics info
     * Example hypeauditor result:
     * "features": {
     *     "blogger_thematics": {
     *       "data": [
     *         1029
     *       ]
     *     }
     *  }
     *
     * @param mixed $kolInfo KolInfo from search API.
     *
     * @return array Blogger thematics info.
     */
    protected function extractBloggerThematics($kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 3. Features info -> 3.3 blogger_thematics info
        // blogger_thematics => $kolInfo->features->blogger_thematics->data
        if (isset($kolInfo->features->blogger_thematics->data) && is_array($kolInfo->features->blogger_thematics->data)) {
            $result = $kolInfo->features->blogger_thematics->data;
        }

        return $result;
    }

    /**
     * Extract audience geo from search API result.
     * 3. Features info -> 3.4 audience_geo info
     * Example hypeauditor result:
     * "features": {
     *     "audience_geo": {
     *       "countries": {
     *         "GB": 4.12,
     *         "US": 23.65
     *       },
     *       "cities": {
     *         "2643743": 1.36
     *       }
     *     }
     *  }
     *
     * @param mixed $kolInfo KolInfo from search API.
     *
     * @return array Audience geo info.
     */
    protected function extractAudienceGeo($kolInfo)
    {
        $result = [
            'countries' => '',
            'cities' => '',
        ];
        if (empty($kolInfo)) {
            return $result;
        }

        // 3.4 audience_geo info
        // audience_geo->countries => $kolInfo->features->audience_geo->countries
        if (isset($kolInfo->features->audience_geo->countries)) {
            $result['countries'] = $kolInfo->features->audience_geo->countries;
        }

        // audience_geo->cities => $kolInfo->features->audience_geo->cities
        if (isset($kolInfo->features->audience_geo->cities)) {
            $result['cities'] = $kolInfo->features->audience_geo->cities;
        }

        return $result;
    }

    /**
     * Extract Aqs from search API result.
     * 3. Features info -> 3.5 aqs info
     * Example hypeauditor result:
     * "features": {
     *     "aqs": {
     *          "data": {
     *              "mark": "good"
     *          }
     *     }
     *  }
     *
     * @param mixed $kolInfo KolInfo from search API.
     *
     * @return array Aqs info.
     */
    protected function extractAqs($kolInfo)
    {
        $result = [];
        if (empty($kolInfo)) {
            return $result;
        }

        // 3.5 aqs info
        // aqs => $kolInfo->features->aqs->data
        if (isset($kolInfo->features->aqs->data)) {
            $result = $kolInfo->features->aqs->data;
        }

        return $result;
    }

    /**
     * Extract queries_left from search API result.
     * 4. Queries left info
     * Example hypeauditor result:
     * "queries_left": 51
     *
     * @param mixed $kolInfos KolInfo from search API.
     *
     * @return array total search items info.
     */
    protected function extractQueriesLeft($kolInfos)
    {
        $result = '';
        if (empty($kolInfos)) {
            return $result;
        }

        // 4 Total pages info
        // queries left => $kolInfo->queries_left
        // total search items => $kolInfo->queries_left + 20 (default is 20 search items per page)
        if (App::environment('staging')) {
            $result = 13;
            return $result;
        }
        if (isset($kolInfos->queries_left) && $kolInfos->queries_left > 0) {
            $result = $kolInfos->queries_left + 20;
        }

        return $result;
    }

    /**
    * Transform data from hypeauditor this system.
    * Ref: https://hypeauditor.readme.io/reference/instagram-example
    *
    * Store only basic structure Response from hypeauditor search API.
    * {
    *   "result": {
    *       "search_results": [
    *           {
    *               "basic": {
    *                   "username": "nasachandraxray",
    *                   "title": "NASA Chandra X-ray Observatory",
    *                   "avatar_url": "https://cdn.hypeauditor.com/img/instagram/user/1332348075.jpg?w=150&till=1646636400&sign=a87695eb0d2ae0be402b52c2b4293692"
    *               },
    *               "metrics": {
    *                   "er": {
    *                       "value": 1.32
    *                   },
    *                   "subscribers_count": {
    *                       "value": 1172869
    *                   },
    *                   "real_subscribers_count": {
    *                       "value": 961635
    *                   },
    *                   "subscribers_growth_prc": {
    *                       "7d": 0.42
    *                   }
    *               },
    *               "features": {
    *                   "social_networks": [
    *                       {
    *                           "type": "instagram",
    *                           "title": "NASA Chandra X-ray Observatory",
    *                           "social_id": "1332348075",
    *                           "username": "nasachandraxray",
    *                           "avatar_url": "https://cdn.hypeauditor.com/img/instagram/user/1332348075.jpg?w=150&till=1646614800&sign=2057cd1c0151fcfb09560dad0695a1c6",
    *                           "subscribers_count": 1170332
    *                       }
    *                   ],
    *               }
    *           }
    *       ],
    *       "current_page": 1,
    *       "total_pages": 4,
    *       "queries_left": 51
    *   }
    * }
    *
    * @param mixed $kolInfo KolInfo from search API.
    *
    * @return array|null
    */
    public function transformSearchResultToKolInfo($kolInfo)
    {
        if (empty($kolInfo)) {
            return null;
        }
        $kolData = [];
        /**
         * 1. Basic info
         * 'basic' => $this->extractBasic($kolInfo),
         */
        $kolData['social_type'] = SnsService::SNS_INSTAGRAM_TYPE;
        $kolData['username'] = $kolInfo['basic']['username'] ?? '';
        $kolData['full_name'] = $kolInfo['basic']['title'] ?? '';
        $kolData['avatar_url'] = $kolInfo['basic']['avatar_url'] ?? '';
        /**
         * 2. Metrics info
         * 'metrics' => $this->extractMetrics($kolInfo),
         */
        $kolData['engagement_count'] = $kolInfo['metrics']['engagement_count'] ?? 0;
        $kolData['engagement_rate'] = $kolInfo['metrics']['er'] ?? 0;
        $kolData['followers_count'] = $kolInfo['metrics']['subscribers_count'] ?? 0;
        /**
         * Information in "Features"
         * 3. Features
         * 3.1 social_networks info
         * 'features' => [
         *    // 3.1 social_networks info
         *    'social_networks' => $this->extractSocialNetworks($kolInfo),
         * ],
         */
        $kolData['social_networks'] = '';
        if (!empty($kolInfo['features']['social_networks'])) {
            $kolData['social_networks'] = json_encode($kolInfo['features']['social_networks']);
        }

        return $kolData;
    }

    /**
     * Transform data staging environment : Remove duplicate result
     *
     * @param array $result Search result.
     * @return mixed Transformed search result.
     */
    public function stagingTransform(array $result)
    {
        foreach ($result['search_results'] as $k => $v) {
            foreach ($result['search_results'] as $key => $value) {
                if ($k != $key && $v['basic']['username'] == $value['basic']['username']) {
                    unset($result['search_results'][$k]);
                }
            }
        }
        $result['search_results'] = array_values($result['search_results']);
        return $result;
    }
}
