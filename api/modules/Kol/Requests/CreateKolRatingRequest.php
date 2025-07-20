<?php

namespace Modules\Kol\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateKolRatingRequest extends FormRequest
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
            'user_id' => 'required|integer',
            'kol_id' => 'required|integer',
            'rate' => 'integer|max:5',
        ];
    }
}
