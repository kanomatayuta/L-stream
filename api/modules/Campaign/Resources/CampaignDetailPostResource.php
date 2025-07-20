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
namespace Modules\Campaign\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use Modules\Kol\Resources\KolResource;
use Modules\Campaign\Resources\CampaignDetailResource;

/**
 * CampaignDetailPostResource class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CampaignDetailPostResource extends JsonResource
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
            'kol_id' => $this->kol_id,
            'campaign_detail_id' => $this->campaign_detail_id,
            'post_date' => $this->post_date,
            'post_url' => $this->post_url,
            'product_name' => $this->product_name,
            'number_registration' => $this->number_registration,
            'regeneration_avg' => $this->regeneration_avg,
            'regeneration_pr' => $this->regeneration_pr,
            'good_count' => $this->good_count,
            'comment_count' => $this->comment_count,
            'normal_eg_rate' => $this->normal_eg_rate,
            'preg_rate' => $this->preg_rate,
            'share_count' => $this->share_count,
            'share_rate' => $this->share_rate,
            'earning' => $this->earning,
            'roas' => $this->roas,
            'impression_count' => $this->impression_count,
            'impression_rate' => $this->impression_rate,
            'click_count' => $this->click_count,
            'click_rate' => $this->click_rate,
            'reaction_count' => $this->reaction_count,
            'reaction_rate' => $this->reaction_rate,
            'download_count' => $this->download_count,
            'download_rate' => $this->download_rate,
            'reach_count' => $this->reach_count,
            'reach_rate' => $this->reach_rate,
            'conversion_count' => $this->conversion_count,
            'conversion_rate' => $this->conversion_rate,
            'report_type' => $this->report_type,
            'kol' => new KolResource($this->kol),
            'campaign' => new CampaignResource($this->campaign),
            'campaign_detail' => new CampaignDetailResource($this->campaign_detail),
        ];
    }
}
