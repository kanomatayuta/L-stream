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
namespace Modules\Campaign\Repositories;

use App\Repositories\BaseRepository;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Builder;
use Modules\Campaign\Models\Campaign;
use Modules\Campaign\Models\CampaignDetail;
use Modules\Campaign\Models\CampaignDetailPost;
use Modules\Kol\Models\Kol;

/**
 * CampaignDetailPostRepository class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CampaignDetailPostRepository extends BaseRepository
{
    /**
     * Get model CampaignDetailPost
     *
     * @return Modules\Campaign\Models\CampaignDetailPost
     */
    public function getModel()
    {
        return CampaignDetailPost::class;
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
            case 'id':
                return $query->where($column, $data);
                break;
            case 'ids':
                return $query->whereIn($column, $data);
                break;
            case 'campaign_id':
                return $query->where($column, $data);
                break;
            case 'kol_id':
                return $query->where($column, $data);
                break;
            case 'campaign_detail_id':
                return $query->where($column, $data);
                break;
            case 'post_date':
                return $query->where($column, $data);
                break;
            case 'post_url':
                return $query->where($column, $data);
                break;
            case 'product_name':
                return $query->where($column, $data);
                break;
            case 'amount_money':
                return $query->where($column, $data);
                break;
            case 'number_registration':
                return $query->where($column, $data);
                break;
            case 'regeneration_avg':
                return $query->where($column, $data);
                break;
            case 'regeneration_pr':
                return $query->where($column, $data);
                break;
            case 'good_count':
                return $query->where($column, $data);
                break;
            case 'comment_count':
                return $query->where($column, $data);
                break;
            case 'normal_eg_rate':
                return $query->where($column, $data);
                break;
            case 'preg_rate':
                return $query->where($column, $data);
                break;
            case 'share_count':
                return $query->where($column, $data);
                break;
            case 'share_rate':
                return $query->where($column, $data);
                break;
            case 'earning':
                return $query->where($column, $data);
                break;
            case 'roas':
                return $query->where($column, $data);
                break;
            default:
                return $query;
                break;
        }
    }

    /**
    * Multi update Campaign detail post
    *
    * @param array                             $data     Data.
    * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
    *
    * @return void
    */
    public function multiUpdate(array $data, Campaign $campaign)
    {
        $this->model->where('campaign_id', $campaign->id)->delete();
        foreach ($data as $key => $value) {
            unset($value['kol']);
            unset($value['campaign']);
            unset($value['campaign_detail']);
            if (isset($value['post_date'])) {
                $value['post_date'] = Carbon::parse($value['post_date'])->format('Y-m-d');
            }
            $this->model->create($value);
        }
    }

    /**
     * Find detail post by report type
     *
     * @param mixed                             $type     Report type.
     * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
     *
     * @return mixed
     */
    public function findDetailPost($type, Campaign $campaign)
    {
        $result = $this->model->where('report_type', $type)
            ->where('campaign_id', $campaign->id)
            ->get();
        return $result;
    }

    /**
     * Get data campaign report by campaign id
     *
     * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
     * @return array
     */
    public function getCampaignReportByCampaignId(Campaign $campaign)
    {
        $ids = $this->model->where('campaign_id', $campaign->id)->get()->pluck('kol_id')->toArray();
        $kolDone = Kol::WhereIn('id', $ids)->get();
        $costKolTabReport = CampaignDetail::where('campaign_id', $campaign->id)->whereIn('kol_id', $ids)->get();
        $data = $this->model->where('campaign_id', $campaign->id)->get();
        $totalShareRate = $data->where('report_type', '!=', config('constant.campaign_detail_posts_report_type.story'))->sum('reach_rate');
        $dataFeed = $data->where('report_type', config('constant.campaign_detail_posts_report_type.feed'));
        $dataStory = $data->where('report_type', config('constant.campaign_detail_posts_report_type.story'));
        $dataReel = $data->where('report_type', config('constant.campaign_detail_posts_report_type.reel'));
        $countFeed = $dataFeed->count();
        $countStory = $dataStory->count();
        $countReel = $dataReel->count();

        $result['campaign_id'] = $campaign->id;
        $result['cost'] = $costKolTabReport->sum('cost');
        $result['number_of_kol'] = $kolDone->count();
        $result['revenue'] = $data->sum('earning');
        $result['follower'] = $kolDone->sum('followers_count');
        if ($result['cost'] != 0) {
            $result['roas'] = $result['revenue'] / $result['cost'] * 100;
        } else {
            $result['roas'] = 0;
        }
        if ($result['follower'] != 0) {
            $result['follower_unit'] = $result['cost'] / $result['follower'];
        } else {
            $result['follower_unit'] = 0;
        }
        if (($countFeed + $countReel) === 0) {
            $result['reach_rate'] = 0;
        } else {
            $result['reach_rate'] = $totalShareRate / ($countFeed + $countReel);
        }
        if ($countFeed != 0) {
            $result['feed_reach_rate'] = $dataFeed->sum('reach_rate') / $countFeed;
            $result['feed_engagement_rate'] = $dataFeed->sum('normal_eg_rate') / $countFeed;
            $result['feed_download_rate'] = $dataFeed->sum('download_rate') / $countFeed;
        } else {
            $result['feed_reach_rate'] = 0;
            $result['feed_engagement_rate'] = 0;
            $result['feed_download_rate'] = 0;
        }

        if ($countStory != 0) {
            $result['story_impression_rate'] = $dataStory->sum('impression_rate') / $countStory;
            $result['story_click_rate'] = $dataStory->sum('click_rate') / $countStory;
            $result['story_reaction_rate'] = $dataStory->sum('reaction_rate') / $countStory;
        } else {
            $result['story_impression_rate'] = 0;
            $result['story_click_rate'] = 0;
            $result['story_reaction_rate'] = 0;
        }
        if ($countReel != 0) {
            $result['reed_reach_rate'] = $dataReel->sum('reach_rate') / $countReel;
            $result['reed_engagement_rate'] = $dataReel->sum('normal_eg_rate') / $countReel;
            $result['reed_download_rate'] = $dataReel->sum('download_rate') / $countReel;
        } else {
            $result['reed_reach_rate'] = 0;
            $result['reed_engagement_rate'] = 0;
            $result['reed_download_rate'] = 0;
        }

        $result['feed_reach'] = $dataFeed->sum('reach_count');
        $result['feed_download'] = $dataFeed->sum('download_count');
        $result['story_impression'] = $dataStory->sum('impression_count');
        $result['story_click'] = $dataStory->sum('click_count');
        $result['story_reaction'] = $dataStory->sum('reaction_count');
        $result['reed_reach'] = $dataReel->sum('reach_count');
        $result['reed_download'] = $dataReel->sum('download_count');

        return $result;
    }

    /**
     * Get data campaign tiktok report by campaign id
     *
     * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
     * @return array
     */
    public function getCampaignTiktokReportByCampaignId(Campaign $campaign)
    {
        $id = $this->model->where('campaign_id', $campaign->id)->get()->pluck('kol_id')->toArray();
        $kolDone = Kol::WhereIn('id', $id)->get();
        $costKolTabReport = CampaignDetail::where('campaign_id', $campaign->id)->whereIn('kol_id', $id)->get();
        $data = $this->model->where('campaign_id', $campaign->id)->get();

        $result['campaign_id'] = $campaign->id;
        $result['cost'] = $costKolTabReport->sum('cost') ?? 0;
        $result['number_of_kol'] = $kolDone->count() ?? 0;
        $result['revenue'] = $data->sum('earning') ?? 0;
        $result['follower'] = $kolDone->sum('followers_count') ?? 0;
        $result['regeneration_pr'] = $data->sum('regeneration_pr') ?? 0;
        $result['preg_rate'] = $data->avg('preg_rate') ?? 0;
        $result['share_rate'] = $data->avg('share_rate') ?? 0;
        if ($result['regeneration_pr'] != 0 && $result['revenue'] != 0) {
            $result['revenue_rate'] = $result['revenue'] / $result['regeneration_pr'] * 100;
        } else {
            $result['revenue_rate'] = 0;
        }

        if ($result['revenue'] != 0 && $result['cost'] != 0) {
            $result['roas'] = $result['revenue'] / $result['cost'] * 100;
        } else {
            $result['roas'] = 0;
        }

        if ($result['regeneration_pr'] != 0 && $result['follower'] != 0) {
            $result['reach_rate'] = $result['regeneration_pr'] / $result['follower'] * 100;
        } else {
            $result['reach_rate'] = 0;
        }

        return $result;
    }

    /**
     * Get data campaign youtube report by campaign id
     *
     * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
     * @return array
     */
    public function getCampaignYoutubeReportByCampaignId(Campaign $campaign)
    {
        // $totalKol = $campaign->campaign_details()->where('campaign_id', $campaign->id)
        //     ->where('kol_status', config('constant.campaign_status.done'));
        $id = $this->model->where('campaign_id', $campaign->id)->get()->pluck('kol_id')->toArray();
        $kolDone = Kol::WhereIn('id', $id)->get();
        $costKolTabReport = CampaignDetail::where('campaign_id', $campaign->id)->whereIn('kol_id', $id)->get();
        $data = $this->model->where('campaign_id', $campaign->id)->get();

        $result['campaign_id'] = $campaign->id;
        $result['cost'] = $costKolTabReport->sum('cost') ?? 0;
        $result['number_of_kol'] = $kolDone->count() ?? 0;
        $result['revenue'] = $data->sum('earning') ?? 0;
        $result['follower'] = $kolDone->sum('followers_count') ?? 0;
        $result['regeneration_pr'] = $data->sum('regeneration_pr') ?? 0;
        $result['share_rate'] = $data->avg('share_rate') ?? 0;
        $result['er_avg'] = $kolDone->avg('engagement_rate') ?? 0;
        $result['total_click'] = $data->sum('click_count') ?? 0;
        $result['total_conversion'] = $data->sum('conversion_count') ?? 0;
        if ($result['total_conversion'] != 0 && $result['regeneration_pr'] != 0) {
            $result['conversion_avg'] = $result['total_conversion'] / $result['regeneration_pr'] * 100;
        } else {
            $result['conversion_avg'] = 0;
        }

        if ($result['total_click'] != 0 && $result['regeneration_pr'] != 0) {
            $result['click_rate'] = $result['total_click'] / $result['regeneration_pr'] * 100;
        } else {
            $result['click_rate'] = 0;
        }

        if ($result['regeneration_pr'] != 0 && $result['revenue'] != 0) {
            $result['revenue_rate'] = $result['revenue'] / $result['regeneration_pr'] * 100;
        } else {
            $result['revenue_rate'] = 0;
        }

        if ($result['revenue'] != 0 && $result['cost'] != 0) {
            $result['roas'] = $result['revenue'] / $result['cost'] * 100;
        } else {
            $result['roas'] = 0;
        }

        if ($result['regeneration_pr'] != 0 && $result['follower'] != 0) {
            $result['reach_rate'] = $result['regeneration_pr'] / $result['follower'] * 100;
        } else {
            $result['reach_rate'] = 0;
        }

        return $result;
    }

    /**
     * Update Cost Kol
     *
     * @param integer $kolId      KolId.
     * @param integer $campaignId CampaignId.
     * @param array   $input      Input.
     * @return mixed
     */
    public function updateKolCost(int $kolId, int $campaignId, array $input)
    {
        $entity = $this->model->where('kol_id', $kolId)
            ->where('campaign_id', $campaignId)
            ->firstOrFail();
        return $this->model->where('id', $entity->id)->update($input);
    }

    /**
     * Find record in tap report
     *
     * @param integer $CampaignDetailId CampaignDetailId.
     * @return mixed
     */
    public function findRecord(int $CampaignDetailId)
    {
        $data = $this->model->where('campaign_detail_id', $CampaignDetailId)->get();
        return $data;
    }

    /**
     * @param \Modules\Campaign\Models\CampaignDetail $campaignDetail CampaignDetail model.
     * @param array                                   $data           Data.
     *
     * @return Collection
     */
    public function updateCost(CampaignDetail $campaignDetail, array $data)
    {
        $cost = (int) $data['cost'];
        $entity = $this->model->where('campaign_detail_id', $campaignDetail->id)->get();
        $entity->each(function ($item) use ($cost) {
            $item->update(['roas' => $cost != 0 ? $item->earning / $cost * 100 : 0]);
        });

        return $entity;
    }
}
