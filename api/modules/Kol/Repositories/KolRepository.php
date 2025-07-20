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
 */
namespace Modules\Kol\Repositories;

use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\DB;
use Modules\Campaign\Models\CampaignDetail;
use Modules\Kol\Models\Kol;
use Modules\Tag\Models\Tag;
use PhpOffice\PhpSpreadsheet\IOFactory;

/**
 * KolRepository class
 *
 * @category Kol
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class KolRepository extends BaseRepository
{
    /**
     * Get Kol model.
     *
     * @return Modules\Kol\Models\Kol
     */
    public function getModel()
    {
        return Kol::class;
    }

    /**
     * Search
     *
     * @param Illuminate\Database\Eloquent\Builder $query  Eloquent query builder.
     * @param string                               $column Column name.
     * @param mixed                                $data   Data conditions (string|integer).
     *
     * @return Query
     */
    public function search(Builder $query, string $column, $data)
    {
        switch ($column) {
            // case 'id':
            // case 'social_type':
            // case 'social_id':
            // case 'full_name':
            // case 'username':
            // case 'description':
            // case 'avatar_url':
            // case 'like_avg':
            // case 'comment_avg':
            // case 'posts_count':
            // case 'followers_count':
            // case 'engagement_count':
            // case 'engagement_rate':
            case 'username':
                return $query->whereIn($column, $data);
                break;
            case 'last_post_time':
                return $query->where($column, $data);
                break;
            case 'engagement_rate':
                return $query->where($column, '>=', $data);
                break;
            case 'followers_count_min':
                return $query->where('followers_count', '>=', $data);
                break;
            case 'followers_count_max':
                return $query->where('followers_count', '<=', $data);
                break;
            case 'ids':
                return $query->whereIn('id', $data);
                break;
            case 'tag':
                return $query->whereHas('tags', function ($query) use ($data) {
                    return $query->whereIn('tag_id', $data);
                });
                break;
            case 'free_word':
                return $query->whereHas('ratings', function ($query) use ($data) {
                    return $query->where('user_id', auth()->user()->id)->where('comment', 'like', '%' . $data . '%');
                });
                break;
            case 'amount_money_max':
                return $query->whereHas('campaign_details', function ($query) use ($data) {
                    $query->whereHas('campaign', function ($query) {
                        $query->where('user_id', auth()->user()->id);
                    });
                    $query->select(DB::raw("AVG(cost) as total_cost"))->groupBy('kol_id')->havingRaw('AVG(cost) <= ?', [$data]);
                });
                break;
            case 'amount_money_min':
                return $query->whereHas('campaign_details', function ($query) use ($data) {
                    $query->whereHas('campaign', function ($query) {
                        $query->where('user_id', auth()->user()->id);
                    });
                    $query->select(DB::raw("AVG(cost) as total_cost"))->groupBy('kol_id')->havingRaw('AVG(cost) >= ?', [$data]);
                });
                break;
            case 'interest':
            case 'area':
                $field = 'favorites';
                if ($column == 'area') {
                    $field = 'city';
                }
                return $query->whereHas('followers', function ($query) use ($data, $field) {
                    foreach ($data as $key => $item) {
                        if ($key == 0) {
                            $query = $query->whereJsonContains($field, $item);
                        } else {
                            $query = $query->orWhereJsonContains($field, $item);
                        }
                    }
                    return $query;
                });
                break;
            case 'active_rate':
                return $query->whereHas('followers', function ($query) use ($data) {
                    return $query->where('active_rate', '>=', $data);
                });
                break;
            case 'genre':
                return $query->whereHas('campaign_details', function ($query) use ($data) {
                    return $query->whereHas('campaign', function ($query) use ($data) {
                        return $query->where('genre_id', $data)
                            ->where('user_id', auth()->user()->id)
                            ->where('social_type', config('constant.campaign_social_type.instagram'));
                    });
                });
                break;
            case 'campaign_details_reel':
                return $query->whereHas('campaignDetailPosts', function ($query) use ($data) {
                    $query->whereHas('campaign', function ($query) {
                        $query->where('user_id', auth()->user()->id);
                    });
                    return $query->where('report_type', config('constant.campaign_detail_posts_report_type.reel'))
                                    ->where(function ($query) use ($data) {
                                        if (isset($data['total_research_reel'])) {
                                            $query = $query->where('reach_count', $data['total_research_reel']);
                                        }

                                        if (isset($data['ratio_research_reel'])) {
                                            $query = $query->where('reach_rate', $data['ratio_research_reel']);
                                        }

                                        if (isset($data['number_saves_reel'])) {
                                            $query = $query->where('download_count', $data['number_saves_reel']);
                                        }

                                        if (isset($data['ratio_saves_reel'])) {
                                            $query = $query->where('download_rate', $data['ratio_saves_reel']);
                                        }

                                        if (isset($data['engagement_rate_reel'])) {
                                            $query = $query->where('normal_eg_rate', $data['engagement_rate_reel']);
                                        }

                                        if (isset($data['roas_reel'])) {
                                            $query = $query->where('roas', $data['roas_reel']);
                                        }

                                        return $query;
                                    });
                });
                break;
            case 'campaign_details_story':
                return $query->whereHas('campaignDetailPosts', function ($query) use ($data) {
                    $query->whereHas('campaign', function ($query) {
                        $query->where('user_id', auth()->user()->id);
                    });
                    return $query->where('report_type', config('constant.campaign_detail_posts_report_type.story'))
                                    ->where(function ($query) use ($data) {
                                        if (isset($data['number_impressions'])) {
                                            $query = $query->where('impression_count', $data['number_impressions']);
                                        }

                                        if (isset($data['ratio_impressions'])) {
                                            $query = $query->where('impression_rate', $data['ratio_impressions']);
                                        }

                                        if (isset($data['number_click'])) {
                                            $query = $query->where('click_count', $data['number_click']);
                                        }

                                        if (isset($data['ratio_click'])) {
                                            $query = $query->where('click_rate', $data['ratio_click']);
                                        }

                                        if (isset($data['number_reaction'])) {
                                            $query = $query->where('reaction_count', $data['number_reaction']);
                                        }

                                        if (isset($data['ratio_reaction'])) {
                                            $query = $query->where('reaction_rate', $data['ratio_reaction']);
                                        }

                                        if (isset($data['story_roas'])) {
                                            $query = $query->where('roas', $data['story_roas']);
                                        }

                                        return $query;
                                    });
                });
                break;
            case 'campaign_details_feed':
                return $query->whereHas('campaignDetailPosts', function ($query) use ($data) {
                    $query->whereHas('campaign', function ($query) {
                        $query->where('user_id', auth()->user()->id);
                    });
                    return $query->where('report_type', config('constant.campaign_detail_posts_report_type.feed'))
                                    ->where(function ($query) use ($data) {
                                        if (isset($data['total_research'])) {
                                            $query = $query->where('reach_count', $data['total_research']);
                                        }

                                        if (isset($data['ratio_research'])) {
                                            $query = $query->where('reach_rate', $data['ratio_research']);
                                        }

                                        if (isset($data['number_saves'])) {
                                            $query = $query->where('download_count', $data['number_saves']);
                                        }

                                        if (isset($data['ratio_saves'])) {
                                            $query = $query->where('download_rate', $data['ratio_saves']);
                                        }

                                        if (isset($data['engagement_rate_feed'])) {
                                            $query = $query->where('normal_eg_rate', $data['engagement_rate_feed']);
                                        }

                                        if (isset($data['roas'])) {
                                            $query = $query->where('roas', $data['roas']);
                                        }

                                        return $query;
                                    });
                });
                break;


            case 'avg_view_min':
                return $query->whereHas('kolOtherInfo', function ($query) use ($data) {
                    $query->where('views_avg', '>=', $data);
                });
                break;
            case 'avg_view_max':
                return $query->whereHas('kolOtherInfo', function ($query) use ($data) {
                    $query->where('views_avg', '<=', $data);
                });
                break;
            case 'youtube_genre':
                return $query->whereHas('campaign_details', function ($query) use ($data) {
                    return $query->whereHas('campaign', function ($query) use ($data) {
                        return $query->where('genre_id', $data)
                            ->where('user_id', auth()->user()->id)
                            ->where('social_type', config('constant.campaign_social_type.youtube'));
                    });
                });
                break;
            case 'youtube_campaign_details':
                return $query->whereHas('campaignDetailPosts', function ($query) use ($data) {
                    $query->whereHas('campaign', function ($query) {
                        $query->where('user_id', auth()->user()->id)->where('social_type', config('constant.campaign_social_type.youtube'));
                    });
                    return $query->where(function ($query) use ($data) {
                        if (isset($data['youtube_click_rate'])) {
                            $query = $query->where('click_rate', $data['youtube_click_rate']);
                        }

                        if (isset($data['youtube_conversion_rate'])) {
                            $query = $query->where('conversion_rate', $data['youtube_conversion_rate']);
                        }

                        if (isset($data['youtube_engagement_detail_rate'])) {
                            $query = $query->where('normal_eg_rate', $data['youtube_engagement_detail_rate']);
                        }

                        if (isset($data['youtube_roas'])) {
                            $query = $query->where('roas', $data['youtube_roas']);
                        }

                            return $query;
                    });
                });
                break;
            case 'tiktok_genre':
                return $query->whereHas('campaign_details', function ($query) use ($data) {
                    return $query->whereHas('campaign', function ($query) use ($data) {
                        return $query->where('genre_id', $data)
                            ->where('user_id', auth()->user()->id)
                            ->where('social_type', config('constant.campaign_social_type.tiktok'));
                    });
                });
                break;
            case 'tiktok_campaign_details':
                return $query->whereHas('campaignDetailPosts', function ($query) use ($data) {
                    $query->whereHas('campaign', function ($query) {
                        $query->where('user_id', auth()->user()->id)->where('social_type', config('constant.campaign_social_type.tiktok'));
                    });
                    return $query->where(function ($query) use ($data) {
                        if (isset($data['tiktok_share_rate'])) {
                            $query = $query->where('share_rate', $data['tiktok_share_rate']);
                        }

                        if (isset($data['tiktok_engagement_rate'])) {
                            $query = $query->where('normal_eg_rate', $data['tiktok_engagement_rate']);
                        }

                        if (isset($data['tiktok_roas'])) {
                            $query = $query->where('roas', $data['tiktok_roas']);
                        }

                        return $query;
                    });
                });
                break;
            default:
                return $query;
                break;
        }
    }

    /**
     * Get kol tags
     *
     * @param mixed $kolsFromHype Kol search result.
     *
     * @return array $kolsFromHype Kol search result.
     */
    public function getKolTags($kolsFromHype = [])
    {
        \Log::error('Class : ' . __CLASS__ . ', Method : ' . __METHOD__ . ', Line : ' . __LINE__ . ', $kolsFromHype : ' . json_encode($kolsFromHype));
        try {
            if (!empty($kolsFromHype)) {
                $tags = DB::table('kol_tags as kt')
                    ->select('k.username', 'k.id', 't.hash_tags', 'kt.kol_id')
                    ->join('kols as k', 'kt.kol_id', 'k.id')
                    ->join('tags as t', 'kt.tag_id', 't.id')
                    ->join('users as u', 't.user_id', 'u.id')
                    ->where('u.id', auth()->user()->id)
                    ->whereIn('k.username', collect($kolsFromHype['search_results'])->pluck('basic.username')->toArray())
                    ->get()
                    ->groupBy('username');

                foreach ($kolsFromHype['search_results'] as $index => $value) {
                    if (isset($tags[$value['basic']['username']])) {
                        $kolsFromHype['search_results'][$index]['tags'] = $tags[$value['basic']['username']]
                            ->pluck('hash_tags')
                            ->toArray();
                    }
                }

                return $kolsFromHype;
            }

            return $kolsFromHype;
        } catch (DDException $e) {
            LogHelper::logTrace($e);

            throw $e;
        }
    }

    /**
     * Get list kols have kol_status >= OK
     *
     * @param integer $campaignDetailKolStatus Kol_status.
     * @param integer $campaignId              Campaign_id.
     *
     * @return array Kol.
     */
    public function getKolWithCampaignDetailStatus(int $campaignDetailKolStatus, int $campaignId)
    {
        $ids = CampaignDetail::where('campaign_id', $campaignId)->where('kol_status', '>=', $campaignDetailKolStatus)->get()->pluck('kol_id')->toArray();
        return $this->model->whereIn('id', $ids)->get();
    }

    /**
     * Get list kols in tab list up
     *
     * @param integer $campaignId Campaign_id.
     *
     * @return array Kol.
     */
    public function getKolWithCampaignDetail(int $campaignId)
    {
        $ids = CampaignDetail::where('campaign_id', $campaignId)->get()->pluck('kol_id')->toArray();
        return $this->model->whereIn('id', $ids)->get();
    }

    /**
     * Total kol tab list up with status ok
     *
     * @param integer $campaignDetailKolStatus Kol_status.
     * @param integer $campaignId              Campaign_id.
     *
     * @return array Kol.
     */
    public function totalKolStatusOk(int $campaignDetailKolStatus, int $campaignId)
    {
        $ids = CampaignDetail::where('campaign_id', $campaignId)->where('kol_status', '>=', $campaignDetailKolStatus)->get()->pluck('kol_id')->toArray();
        return $this->model->whereIn('id', $ids)->get();
    }
}
