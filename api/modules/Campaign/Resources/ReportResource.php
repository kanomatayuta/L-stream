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
namespace Modules\Campaign\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

/**
 * ReportResource class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class ReportResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param mixed $request Request.
     * @return array \Illuminate\Contracts\Support\Arrayable\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'campaign_id' => $this->campaign_id,
            'cost' => $this->cost,
            'revenue' => $this->revenue,
            'roas' => $this->roas,
            'number_of_kol' => $this->number_of_kol,
            'follower' => $this->follower,
            'follower_unit' => $this->follower_unit,
            'reach_rate' => $this->reach_rate,
            'feed_reach' => $this->feed_reach,
            'feed_reach_rate' => $this->feed_reach_rate,
            'feed_download' => $this->feed_download,
            'feed_download_rate' => $this->feed_download_rate,
            'feed_engagement_rate' => $this->feed_engagement_rate,
            'story_impression' => $this->story_impression,
            'story_impression_rate' => $this->story_impression_rate,
            'story_click' => $this->story_click,
            'story_click_rate' => $this->story_click_rate,
            'story_reaction' => $this->story_reaction,
            'story_reaction_rate' => $this->story_reaction_rate,
            'reed_reach' => $this->reed_reach,
            'reed_reach_rate' => $this->reed_reach_rate,
            'reed_download' => $this->reed_download,
            'reed_download_rate' => $this->reed_download_rate,
            'reed_engagement_rate' => $this->reed_engagement_rate,
            'total_click' => $this->total_click,
            'click_rate' => $this->click_rate,
            'er_avg' => $this->er_avg,
            'conversion_avg' => $this->conversion_avg,
            'total_conversion' => $this->total_conversion,
            'revenue_rate' => $this->revenue_rate,
            'regeneration_pr' => $this->regeneration_pr,
            'preg_rate' => $this->preg_rate,
            'share_rate' => $this->share_rate,
        ];
    }
}
