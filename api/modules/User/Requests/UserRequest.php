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
 * UserRequest class
 *
 * @category User
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class UserRequest extends FormRequest
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
        $required = !$this->user ? 'required|' : '';

        return [
            'name' => $required . 'max:255',
            'email' => $required . 'max:255|unique:users,email,' . ($this->user->id ?? 0),
            'password' => $required . 'min:6|max:255',
            'roles.*' => 'integer|min:0',
        ];
    }
}
