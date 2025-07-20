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
use Modules\Genre\Resources\GenreResource;

/**
 * CampaignResource class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CampaignResource extends JsonResource
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
            'name' => $this->name,
            'user_id' => $this->user_id,
            'campaign_mode' => $this->campaign_mode,
            'genre_id' => $this->genre_id,
            'start_date' => $this->start_date,
            'end_date' => $this->end_date,
            'status' => $this->status,
            'social_type' => $this->social_type,
            'is_active' => $this->is_active,
            'genre' => new GenreResource($this->genre),
            'campaign_detail' => CampaignDetailResource::collection($this->campaign_details),
            'campaign_report' => $this->campaign_report,
            'total_cost' => $this->total_cost,
            'total_reach' => $this->total_reach,
            'campaign_details_count' => $this->campaign_details_count,
            'created_at' => $this->created_at,
        ];
    }
}
