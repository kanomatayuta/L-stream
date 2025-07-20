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
namespace Modules\User\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use Modules\Payment\Resources\PaymentDetailResource;
use Modules\Plan\Resources\PlanResource;
use Modules\Role\Resources\RoleResource;
use Modules\Statistic\Resources\StatisticResource;

/**
 * UserResource class
 *
 * @category User
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param mixed $request Request data.
     *
     * @return array
     */
    public function toArray($request)
    {
        return [
            'address' => $this->address,
            'avatar_url' => $this->avatar_url,
            'birthday' => $this->birthday,
            'code' => $this->code,
            'created_at' => $this->created_at,
            'date_join' => $this->date_join,
            'email_verified_at' => $this->email_verified_at,
            'email' => $this->email,
            'gender' => $this->gender,
            'id' => $this->id,
            'is_active' => $this->is_active,
            'menus' => $this->menus,
            'mobile_no' => $this->mobile_no,
            'name' => $this->name,
            'plan_start_date' => $this->plan_start_date,
//            'plan' => new PlanResource($this->whenLoaded('plan')),
            'plan_id' => $this->plan_id,
//            'statistic' => new StatisticResource($this->whenLoaded('latestStatistic')),
            'payment_status' => $this->paymentPlans ? $this->paymentPlans->payment_status : null ,
            'remember_token' => $this->remember_token,
            'representative' => $this->representative,
            'username' => $this->username,
            'website' => $this->website,
            'role_type' => $this->role_type,
            'company_name' => $this->company_name,
            'page_search_number' => $this->page_search_number,
            'profile_view_number' => $this->profile_view_number,
            'export_csv_number' => $this->export_csv_number,
            'campaign_register_number' => $this->campaign_register_number,
        ];
    }
}
