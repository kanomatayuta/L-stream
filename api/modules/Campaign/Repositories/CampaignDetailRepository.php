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
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Modules\Campaign\Models\Campaign;
use Modules\Campaign\Models\CampaignDetail;
use Modules\Campaign\Models\CampaignDetailPost;
use Modules\Kol\Models\Kol;

/**
 * CampaignDetailRepository class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CampaignDetailRepository extends BaseRepository
{
    /**
     * @return Modules\Campaign\Models\CampaignDetail
     */
    public function getModel()
    {
        return CampaignDetail::class;
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
            case 'kol_status':
                return $query->where($column, $data);
                break;
            case 'notes':
                return $query->where($column, $data);
                break;
            case 'kol_status_ok':
                return $query->where('kol_status', '>=', $data);
                break;
            case 'order_by':
                return $query->join('kols', 'campaign_details.kol_id', 'kols.id');
                break;
            default:
                return $query;
                break;
        }
    }

    /**
     * Get kol tab report
     *
     * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
     *
     * @return collection
     */
    public function getKolReport(Campaign $campaign)
    {
        $detail = DB::table('campaign_detail_posts')->pluck('campaign_detail_id');
        return $this->model->where('campaign_id', $campaign->id)
                    ->where('kol_status', 8)
                    ->whereNotIn('id', $detail)
                    ->get();
    }

    /**
     * Get Campaign Register in campaign
     *
     * @param array $input Kol Username.
     *
     * @return collection
     */
    public function getRegisteredCampaign(array $input)
    {
        $campaignId = Campaign::where('user_id', auth()->user()->id)
            ->where('social_type', $input['social_type'])
            ->pluck('id');

        if (is_string($input['username'])) {
            $kol = Kol::where('username', $input['username'])->where('social_type', $input['social_type'])->firstOrFail();
            $result = $this->model->where('kol_id', $kol->id)
                ->whereIn('campaign_id', $campaignId)
                ->get();
        } else {
            $kol = Kol::whereIn('username', $input['username'])->where('social_type', $input['social_type'])->pluck('id');
            $result = $this->model->whereIn('kol_id', $kol)
                ->whereIn('campaign_id', $campaignId)
                ->pluck('campaign_id');
            $campaignIds = [];
            foreach ($campaignId as $value) {
                $count = 0;
                foreach ($result as $item) {
                    if ($value == $item) {
                        $count++;
                    }
                }
                if ($count >= count($input['username'])) {
                    $campaignIds[] = $value;
                }
            }

            return $campaignIds;
        }

        return $result;
    }


    /**
     * Get kol at insight list
     *
     * @param integer $socialType Socialtype.
     * @return collection
     */
    public function filterInsightListKol(int $socialType)
    {
        return $this->model->whereHas('campaign', function ($query) use ($socialType) {
            return $query->where('user_id', auth()->user()->id)->where('social_type', $socialType);
        })->get();
    }
}
