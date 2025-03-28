<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    use HasFactory;

    protected $table = 'locations'; // Menentukan nama tabel secara eksplisit

    protected $fillable = [
        'nama',
        'alamat',
        'kota',
        'provinsi',
        'kode_pos',
        'negara'
    ];

    protected $casts = [
        'kode_pos' => 'integer',
    ];

    /**
     * Relasi ke Produk (Satu lokasi bisa memiliki banyak produk).
     */
    public function products()
    {
        return $this->hasMany(Product::class, 'location_id');
    }

    /**
     * Mendapatkan alamat lengkap.
     */
    public function getFullAddressAttribute()
    {
        return "{$this->alamat}, {$this->kota}, {$this->provinsi}, {$this->negara} - {$this->kode_pos}";
    }
}
