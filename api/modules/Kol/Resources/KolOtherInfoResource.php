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

/**
 * TagResource class
 *
 * @category Tag
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class KolOtherInfoResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param mixed $request Request.
     *
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'kol_id' => $this->user_id,
            'views_avg' => $this->views_avg,
        ];
    }
}
