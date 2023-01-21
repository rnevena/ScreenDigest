<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateUserSelectRequest extends FormRequest
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
            'selectUTU' => 'required|numeric'
        ];
    }

    public function messages()
    {
        return ['required' => 'Select a user to update.', 'numeric' => 'Select a user to update.'];
    }
}
