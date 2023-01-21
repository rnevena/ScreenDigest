<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRegisterRequest extends FormRequest
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
            'fname' => 'required|max:30|regex:/^[A-ZČĆŽŠĐ][a-zčćžš]{1,29}$/',
            'lname' => 'required|max:30|regex:/^[A-ZČĆŽŠĐ][a-zčćžš]{1,29}$/',
            'email' => 'required|max:255|unique:users,email|regex:/^\S+@\S+\.\S+$/',
            "password" => 'required|regex:/^[A-z0-9]{8,40}$/'
        ];
    }

//
    public function messages()
    {
        return [
            'required' => "This field is required.",
            'fname.regex' => 'Name format is incorrect.',
            'fname.max' => 'Name is too long, max 30 characters.',
            'lname.regex' => 'Last name format is incorrect.',
            'lname.max' => 'Last name is too long, max 30 characters.',
            'email.max' => "Email is too long.",
            'email,unique' => "This email is already registered",
            'email.regex' => 'Email is not in the right format.',
            'password.regex' => "Password must be be 8-40 characters long."
        ];
    }
}
