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
namespace Modules\User\Requests;

use Illuminate\Foundation\Http\FormRequest;

/**
 * CreateUserRequest class
 *
 * @category User
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CreateUserRequest extends FormRequest
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
        $required = !$this->user ? 'required|' : '';
        return [
            'address' => 'max:255',
            'avatar_url' => 'max:255',
            // 'code' => $required . 'max:50',
            'email' => $required . 'max:255|unique:users,email,' . ($this->user->id ?? 0),
            // 'gender' => $required . 'integer|in:0,1,2',
            // 'is_active' => $required . 'integer|in:0,1',
            'mobile_no' => 'max:15',
            'company_name' => $required . 'max:255',
            'password' => $required . 'min:6|max:255',
            'representative' => 'max:255',
            // 'username' => $required . 'max:50',
            'website' => 'max:255',
            'role_type' => 'required|integer',
            'plan_id' => 'required|integer',
            'payment_status' => 'integer',
            'page_search_number' => 'integer',
            'profile_view_number' => 'integer',
            'export_csv_number' => 'integer',
            'campaign_register_number' => 'integer',
        ];
    }
}
