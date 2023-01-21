<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserLoginRequest extends FormRequest
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
            'email' => 'required|max:255|exists:users,email|regex:/^\S+@\S+\.\S+$/',
            "password" => 'required|regex:/^.{8,40}$/'
        ];
    }
//
    public function messages()
    {
        return [
            'required' => "The :attribute field is required.",
            'email.max' => "Email is too long.",
            'email.regex' => 'Email is not in the right format.',
            "email.exists" => "There is no user with this account.",
            'password.regex' => "Password must be be 8-40 characters long."
        ];
    }
}
