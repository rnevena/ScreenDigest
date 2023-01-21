<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PostRequest extends FormRequest
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
            'title' => 'required|regex:/^[\S][\s\S]{1,99}$/',
            'image' => 'nullable|image',
            'content' => 'required|regex:/^[\S][\s\S]*$/',
            'category' => 'required'
        ];
    }


    public function messages()
    {
        return [
            'category.required' => 'A post has to have a genre',
            'title.regex' => "Fill the title properly.",
            'image' => "Image isn't selected.",
            'content.regex' => "Fill the content properly."
        ];
    }
}
