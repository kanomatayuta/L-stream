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
namespace Modules\Plan\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

/**
 * UpgradePlanResource class
 *
 * @category Plan
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class UpgradePlanResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param mixed $request Handle request.
     *
     * @return array
     */
    public function toArray($request)
    {
        return [
            'name' => $this->name,
            'short_term_money_amount' => $this->short_term_money_amount,
            'plan_type' => $this->plan_type,
        ];
    }
}
