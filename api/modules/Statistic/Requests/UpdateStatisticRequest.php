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
namespace Modules\Statistic\Requests;

use Illuminate\Foundation\Http\FormRequest;

/**
 * StatisticRepository class
 *
 * @category Statistic
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class UpdateStatisticRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
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
            'user_id' => 'required|integer',
            'account_search_number' => 'required|integer',
            'page_search_number' => 'required|integer',
            'profile_view_number' => 'required|integer',
            'full_report_number' => 'required|integer',
            'export_csv_number' => 'required|integer',
            'campaign_register_number' => 'required|integer',
            'insight_list_number' => 'required|integer',
            'campaign_list_number' => 'required|integer',
            'month' => 'required|integer',
        ];
    }
}
