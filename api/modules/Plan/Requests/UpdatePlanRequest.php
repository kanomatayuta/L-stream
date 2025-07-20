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
namespace Modules\Plan\Requests;

use Illuminate\Foundation\Http\FormRequest;

/**
 * UpdatePlanRequest class
 *
 * @category Plan
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class UpdatePlanRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return boolean
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'string|max:100',
            'plan_type' => 'min:0|max:9',
            'short_term_money_amount' => 'required|integer',
            'account_search_number' => 'integer',
            'page_search_number' => 'required|integer',
            'profile_view_number' => 'required|integer',
            'full_report_number' => 'integer',
            'export_csv_number' => 'required|integer',
            'campaign_register_number' => 'required|integer',
            'insight_list_number' => 'integer',
            'campaign_list_number' => 'integer',
            'start_date' => 'date_format:Y-m-d H:i:s',
            'end_date' => 'date_format:Y-m-d H:i:s',
            'status' => 'required|boolean|min:0|max:9',
        ];
    }
}
