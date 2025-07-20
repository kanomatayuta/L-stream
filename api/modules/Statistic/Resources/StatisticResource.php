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
 */
namespace Modules\Statistic\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

/**
 * StatisticRepository class
 *
 * @category Statistic
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class StatisticResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param \Illuminate\Http\Request $request Handle request
     *
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'user_id' => $this->user_id,
            'account_search_number' => $this->account_search_number,
            'page_search_number' => $this->page_search_number,
            'profile_view_number' => $this->profile_view_number,
            'full_report_number' => $this->full_report_number,
            'export_csv_number' => $this->export_csv_number,
            'campaign_register_number' => $this->campaign_register_number,
            'insight_list_number' => $this->insight_list_number,
            'campaign_list_number' => $this->campaign_list_number,
            'month' => $this->month,
            'start_date' => $this->start_date,
            'end_date' => $this->end_date,
        ];
    }
}

