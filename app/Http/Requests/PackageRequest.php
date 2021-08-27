<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PackageRequest extends FormRequest
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

    public function messages()
    {
        return [
            'required' => 'Required field',
            'numeric' => 'Must be a number',
            'integer' => 'Must be an integer',
            'min' => 'Negative value not allowed',
            'not_in' => 'Zero value not allowed',
        ];
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'package_type' => 'required|integer',
            'field_of_text' => 'required|integer',
            'language_id' => 'required|array',
            'language_id.*' => 'required|integer',
            'number_of_words' => 'required|integer|min:0|not_in:0',
            'is_complementary' => 'required|integer',
            'duration' => 'required',
            'discount' => 'required|numeric|min:0',
            'name' => 'required',
            'email' => 'required|email'
        ];
    }
}
