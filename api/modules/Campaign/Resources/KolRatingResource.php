<?php

namespace Modules\Campaign\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

/**
 * KolRatingResource class
 *
 * @category KolRating
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class KolRatingResource extends JsonResource
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
            'user_id' => $this->user_id,
            'kol_id' => $this->kol_id,
            'rate' => $this->rate,
            'comment' => $this->comment,
        ];
    }
}
