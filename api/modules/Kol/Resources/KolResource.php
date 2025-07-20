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
namespace Modules\Kol\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use Modules\Campaign\Resources\CampaignDetailResource;
use Modules\Kol\Resources\CampaignResource;
use Modules\Kol\Models\KolRating;
use Modules\Tag\Resources\TagResource;

/**
 * KolResource class
 *
 * @category Kol
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class KolResource extends JsonResource
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
            'social_type' => $this->social_type,
            'social_id' => $this->social_id,
            'full_name' => $this->full_name,
            'username' => $this->username,
            'description' => $this->description,
            'avatar_url' => $this->avatar_url,
            'like_avg' => $this->like_avg,
            'comment_avg' => $this->comment_avg,
            'posts_count' => $this->posts_count,
            'followers_count' => $this->followers_count,
            'engagement_count' => $this->engagement_count,
            'engagement_rate' => $this->engagement_rate,
            'campaigns' => CampaignResource::collection($this->campaigns)->where('user_id', auth()->user()->id)->toArray(),
            'tags' => TagResource::collection($this->tags)->where('user_id', auth()->user()->id)->toArray(),
            'ratings' => KolRatingResource::collection($this->ratings)->Where('user_id', auth()->user()->id)->first(),
            'Kol_other_info' => new KolOtherInfoResource($this->kolOtherInfo),
            'created_at' => $this->created_at,
        ];
    }
}
