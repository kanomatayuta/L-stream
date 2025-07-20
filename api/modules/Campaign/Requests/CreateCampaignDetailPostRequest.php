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
 * CreateCampaignDetailPostRequest class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CreateCampaignDetailPostRequest extends FormRequest
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
            'amount_money' => 'decimal',
            'campaign_detail_id' => 'required',
            'campaign_id' => 'required',
            'comment_count' => 'decimal',
            'earning' => 'decimal',
            'good_count' => 'decimal',
            'kol_id' => 'required',
            'normal_eg_rate' => 'decimal',
            'number_registration' => 'decimal',
            'post_date' => 'date|date_format:Y-m-d',
            'post_url' => 'string|max:500',
            'preg_rate' => 'decimal',
            'product_name' => 'string',
            'regeneration_avg' => 'decimal',
            'regeneration_pr' => 'decimal',
            'roas' => 'decimal',
            'report_type' => 'required',
            'share_count' => 'decimal',
            'share_rate' => 'decimal',
            'impression_count' => 'decimal',
            'impression_rate' => 'decimal',
            'click_count' => 'decimal',
            'click_rate' => 'decimal',
            'reaction_count' => 'decimal',
            'reaction_rate' => 'decimal',
        ];
    }
}
