<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateProductRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'name' => 'sometimes|string|max:255',
            'description' => 'sometimes|string',
            'stock' => 'sometimes|integer|min:0',
            'price' => 'sometimes|numeric|min:0',
            'sold' => 'sometimes|nullable|integer|min:0',
            'location_id' => 'sometimes|required|exists:locations,id', // Ubah dari 'location' ke 'location_id'
            'category_id' => 'sometimes|required|exists:categories,id'
        ];
    }
}
