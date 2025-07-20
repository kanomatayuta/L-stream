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

use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use App\Repositories\BaseRepository;
use Exception;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\DB;
use Modules\Campaign\Models\Campaign;
use Modules\Campaign\Models\CampaignDetail;
use Modules\Kol\Models\Kol;

/**
 * CampaignRepository class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CampaignRepository extends BaseRepository
{
    /**
     * @return Modules\Campaign\Models\Campaign
     */
    public function getModel()
    {
        return Campaign::class;
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
            case 'ids':
                return $query->whereIn($column, $data);
                break;
            case 'id':
            case 'name':
            case 'user_id':
            case 'campaign_mode':
            case 'start_date':
            case 'end_date':
            case 'is_active':
            case 'social_type':
            case 'status':
                return $query->where($column, $data);
                break;
            case 'social':
                switch ($data) {
                    case 'Instagram':
                        $social_type = config('constant.campaign_social_type.instagram');
                        break;
                    case 'Youtube':
                        $social_type = config('constant.campaign_social_type.youtube');
                        break;
                    case 'Tiktok':
                        $social_type = config('constant.campaign_social_type.tiktok');
                        break;
                }
                return $query->where('social_type', $social_type);
                break;
            case 'genre_id':
                return $query->whereHas('genre', function ($query) use ($data) {
                    return $query->where('name', $data);
                });
                break;
            case 'created_at':
                return $query->whereDate($column, $data);
                break;
            case 'genre_name':
                return $query->withCount([
                    'genre AS genre_name' => function ($query) {
                        $query->select(DB::raw("name"));
                    },
                ]);
                break;
            case 'total_cost':
                return $query->withCount([
                    'campaign_details AS total_cost' => function ($query) {
                        $query->select(DB::raw("SUM(cost) as total_cost"));
                    },
                ]);
                break;
            case 'total_reach':
                return $query->withCount([
                    'campaign_report AS total_reach' => function ($query) {
                        $query->select(DB::raw("SUM(feed_reach + reed_reach) as total_reach"));
                    },
                ]);
                break;
            case 'campaign_details_count':
                return $query->withCount('campaign_details');
                break;
            case 'reach_rate':
                return $query->withCount([
                    'campaign_report AS reach_rate' => function ($query) {
                        $query->select(DB::raw("reach_rate"));
                    },
                ]);
                break;
            case 'revenue':
                return $query->withCount([
                    'campaign_report AS revenue' => function ($query) {
                        $query->select(DB::raw("revenue"));
                    },
                ]);
                break;
            case 'roas':
                return $query->withCount([
                    'campaign_report AS roas' => function ($query) {
                        $query->select(DB::raw("roas"));
                    },
                ]);
                break;
            default:
                return $query;
                break;
        }
    }

    /**
     * Get Kol data by Campaign ID
     *
     * @param string $id Campaign ID.
     *
     * @return array $kol
     */
    public function getKolByCampaign(string $id)
    {
        $campaign = $this->model::find($id);
        if ($campaign) {
            $kol = $campaign->load('kols')->kols->groupBy('username');
            return $kol;
        }
    }

    /**
     * Get Kol data by Campaign Ids
     *
     * @param array $ids Campaign Ids.
     *
     * @return array $kols
     */
    public function getKolByCampaigns(array $ids)
    {
        $kols = DB::table('campaign_details as cd')
                    ->select('k.username')
                    ->join('kols as k', 'cd.kol_id', 'k.id')
                    ->join('campaigns as c', 'cd.campaign_id', 'c.id')
                    ->whereIn('c.id', $ids)
                    ->get()
                    ->groupBy('username');
        
        return $kols;
    }

    /**
     * Register 15 Kols to campaigns
     *
     * @param array $input Input data.
     *
     * @return void
     */
    public function registerKolsToCampaigns(array $input)
    {
        try {
            $kolIds = Kol::whereIn('username', $input['kol_usernames'])
                        ->where('social_type', $input['social_type'])
                        ->pluck('id')
                        ->toArray();
            $campaignId = $input['campaign_id'];
            $campaign = $this->model::find($campaignId);
            $currentKolIds = $campaign->kols->pluck('id')->toArray();
            $kolIdsDiff = array_diff($kolIds, $currentKolIds);

            $campaign->kols()->attach($kolIdsDiff);
        } catch (DDException $e) {
            LogHelper::logTrace($e);

            throw $e;
        }
    }

    /**
     * Remove 15 Kols from campaign
     *
     * @param array $input Input data.
     *
     * @return boolean
     */
    public function removeKolsFromCampaign(array $input)
    {
        try {
            $campaignId = $input['campaign_id'];
            $campaign = $this->model::find($campaignId);
            $kolIds = collect($campaign->kols
                ->whereIn('username', $input['kol_usernames'])
                ->where('pivot.kol_status', config('constant.campaign_status.confirming'))
                ->pluck('id')
                ->toArray());
            $countKolUsername = is_array($input['kol_usernames']) ? count($input['kol_usernames']) : 1;

            if (count($kolIds) == $countKolUsername) {
                $campaign->kols()->detach($kolIds);
                return true;
            } else {
                return false;
            }
        } catch (DDException $e) {
            LogHelper::logTrace($e);

            throw $e;
        }
    }

    /**
     * Delete campaign
     *
     * @param integer $id Id.
     * @return array
     */
    public function deleteCampaign(int $id)
    {
        $campaign = $this->model->find($id);
        return [
            $campaign->campaign_report()->delete(),
            $campaign->campaign_detail_posts()->delete(),
            $campaign->campaign_details()->delete(),
            $campaign->delete(),
        ];
    }

    /**
     * Download CSV.
     *
     * @param integer $campaignID Campaign_id.
     *
     * @return integer
     */
    public function getSocialType(int $campaignID)
    {
        $socialType = $this->model->where('id', $campaignID)->pluck('social_type')->toArray();
        return $socialType[0];
    }
}
