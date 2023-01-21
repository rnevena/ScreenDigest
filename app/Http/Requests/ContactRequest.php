<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ContactRequest extends FormRequest
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
            'email' => 'required|regex:/^\S+@\S+\.\S+$/',
            'subject' => 'required',
            'message' => 'required'

        ];
    }

    public function messages()
    {
        return [
            'required' => "This field is required.",
            'email.max' => "Email is too long.",
            'email.regex' => 'Email is not in the right format.'
        ];
    }
}
