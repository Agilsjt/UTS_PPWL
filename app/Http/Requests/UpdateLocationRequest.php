<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateLocationRequest extends FormRequest
{
    /**
     * Tentukan apakah pengguna diizinkan untuk membuat permintaan ini.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Dapatkan aturan validasi yang berlaku untuk permintaan ini.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'nama' => 'sometimes|string|max:255',
            'alamat' => 'sometimes|string',
            'kota' => 'sometimes|string|max:100',
            'provinsi' => 'sometimes|string|max:100',
            'kode_pos' => 'sometimes|string|max:10',
            'negara' => 'sometimes|string|max:100'
        ];
    }
}