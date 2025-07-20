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
namespace Modules\Kol\Requests;

use Illuminate\Foundation\Http\FormRequest;

/**
 * SearchKolRequest class
 *
 * @category Kol
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class SearchKolRequest extends FormRequest
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
            'social_type' => 'integer|required|in:1,2,3',
            'order_by' => 'string',
            'order_type' => 'integer|in:0,1',
            'limit' => 'integer|min:1',
        ];
    }

    /**
     * Prepare the data for validation.
     *
     * @return void
     */
    protected function prepareForValidation()
    {
        if (!$this->has('limit')) {
            $this->merge([
                'limit' => 20,
            ]);
        }

        if (!$this->has('order_by')) {
            $this->merge([
                'order_by' => 'id',
            ]);
        }

        if (!$this->has('order_type')) {
            $this->merge([
                'order_type' => 0,
            ]);
        }
    }
}
