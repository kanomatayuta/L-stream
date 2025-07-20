<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0
 *
 * @category  Web
 * @package   Web_System
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 * @version   GIT: <1.0.0>
 * @link      https://digidinos.com
 * @see       https://digidinos.com
 **/
namespace Modules\Kol\Requests;

use Illuminate\Foundation\Http\FormRequest;

/**
 * UpdateKolRequest class
 *
 * @category Kol
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class UpdateKolRequest extends FormRequest
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
            // 'age' => 'integer',
            'avatar_url' => 'string|max:500',
            // 'birthday' => 'date|date_format:Y-m-d',
            'comment_avg' => 'required',
            'description' => 'string|max:500',
            'engagement_count' => 'required',
            'engagement_rate' => 'required',
            'followers_count' => 'required',
            'full_name' => 'string|max:150',
            // 'gender' => 'boolean|min:0|max:9',
            'like_avg' => 'required',
            // 'marital_status' => 'boolean|min:0|max:9',
            'posts_count' => 'required',
            'social_type' => 'required|boolean|min:0|max:9',
            'username' => 'required|string|max:60',
        ];
    }
}
