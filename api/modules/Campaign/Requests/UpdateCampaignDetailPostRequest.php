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
 **/
namespace Modules\Campaign\Requests;

use Illuminate\Foundation\Http\FormRequest;

/**
 * UpdateCampaignDetailPostRequest class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class UpdateCampaignDetailPostRequest extends FormRequest
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
            'amount_money' => 'required',
            'campaign_detail_id' => 'required',
            'campaign_id' => 'required',
            'comment_count' => 'required|decimal',
            'earning' => 'required|decimal',
            'good_count' => 'required|decimal',
            'kol_id' => 'required',
            'normal_eg_rate' => 'required|decimal',
            'number_registration' => 'required|decimal',
            'post_date' => 'required|date|date_format:Y-m-d',
            'post_url' => 'required|string|max:500',
            'preg_rate' => 'required|decimal',
            'product_name' => 'required|string|max:150',
            'regeneration_avg' => 'required|decimal',
            'regeneration_pr' => 'required|decimal',
            'roas' => 'required|decimal',
            'share_count' => 'required|decimal',
            'share_rate' => 'required|decimal',
        ];
    }
}
