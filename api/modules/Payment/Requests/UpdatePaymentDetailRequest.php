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
namespace Modules\Payment\Requests;

use Illuminate\Foundation\Http\FormRequest;

/**
 * UpdatePaymentDetailRequest class
 *
 * @category Payment
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class UpdatePaymentDetailRequest extends FormRequest
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
            'plan_id' => 'required|integer',
            'user_id' => 'required|integer',
            'term_mode' => 'required|boolean|min:0|max:9',
            'money_amount' => 'required|decimal',
            'account_search_number' => 'required|integer',
            'page_search_number' => 'required|integer',
            'profile_view_number' => 'required|integer',
            'full_report_number' => 'required|integer',
            'export_csv_number' => 'required|integer',
            'campaign_register_number' => 'required|integer',
            'insight_list_number' => 'required|integer',
            'campaign_list_number' => 'required|integer',
            'start_date' => 'required|date|date_format:Y-m-d',
            'end_date' => 'required|date|date_format:Y-m-d',
            'payment_status' => 'required|boolean|min:0|max:9',
        ];
    }
}
