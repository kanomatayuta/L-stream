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
 * CreateCampaignReportRequest class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CreateCampaignReportRequest extends FormRequest
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
            'campaign_id' => 'required',
            'cost' => 'integer|min:0',
            'revenue' => 'integer|min:0',
            'roas' => 'numeric',
            'number_of_kol' => 'integer|min:0',
            'follower' => 'integer|min:0',
            'follower_unit' => 'numeric',
            'reach_rate' => 'numeric',
            'feed_reach' => 'integer|min:0',
            'feed_reach_rate' => 'numeric',
            'feed_download' => 'integer|min:0',
            'feed_download_rate' => 'numeric',
            'feed_engagement_rate' => 'numeric',
            'story_impression' => 'integer|min:0',
            'story_impression_rate' => 'numeric',
            'story_click' => 'integer|min:0',
            'story_click_rate' => 'numeric',
            'story_reaction' => 'integer|min:0',
            'story_reaction_rate' => 'numeric',
            'reed_reach' => 'integer|min:0',
            'reed_reach_rate' => 'numeric',
            'reed_download' => 'integer|min:0',
            'reed_download_rate' => 'numeric',
            'reed_engagement_rate' => 'numeric',
            'total_click' => 'integer|min:0',
            'click_rate' => 'numeric',
            'er_avg' => 'numeric',
            'conversion_avg' => 'numeric',
            'total_conversion' => 'integer|min:0',
            'regeneration_pr' => 'integer|min:0',
            'preg_rate' => 'numeric',
            'revenue_rate' => 'numeric',
            'share_rate' => 'numeric'
        ];
    }
}
