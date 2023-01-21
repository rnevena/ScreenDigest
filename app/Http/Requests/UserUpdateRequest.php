<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserUpdateRequest extends FormRequest
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
            'name' => 'required|max:30|regex:/^[A-ZČĆŽŠĐ][a-zčćžš]{1,29}$/',
            'surname' => 'required|max:30|regex:/^[A-ZČĆŽŠĐ][a-zčćžš]{1,29}$/',
        ];
    }

    public function messages()
    {
        return [
            'required' => "This field is required.",
            'name.regex' => 'Name format is incorrect.',
            'name.max' => 'Name is too long, max 30 characters.',
            'surname.regex' => 'Last name format is incorrect.',
            'surname.max' => 'Last name is too long, max 30 characters.'
        ];
    }
}
