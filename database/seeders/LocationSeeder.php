<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class LocationSeeder extends Seeder
{
    /**
     * Jalankan database seeders.
     */
    public function run(): void
    {
        DB::table('locations')->insert([
            [
                'nama' => 'Gudang Pontianak',
                'alamat' => 'Jl. Gajah Mada No. 50',
                'kota' => 'Pontianak',
                'provinsi' => 'Kalimantan Barat',
                'kode_pos' => '78121',
                'negara' => 'Indonesia',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nama' => 'Gudang Singkawang',
                'alamat' => 'Jl. Alianyang No. 12',
                'kota' => 'Singkawang',
                'provinsi' => 'Kalimantan Barat',
                'kode_pos' => '79123',
                'negara' => 'Indonesia',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nama' => 'Gudang Ketapang',
                'alamat' => 'Jl. R. Suprapto No. 30',
                'kota' => 'Ketapang',
                'provinsi' => 'Kalimantan Barat',
                'kode_pos' => '78851',
                'negara' => 'Indonesia',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nama' => 'Gudang Sambas',
                'alamat' => 'Jl. Pahlawan No. 45',
                'kota' => 'Sambas',
                'provinsi' => 'Kalimantan Barat',
                'kode_pos' => '79453',
                'negara' => 'Indonesia',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nama' => 'Gudang Sintang',
                'alamat' => 'Jl. Ahmad Yani No. 78',
                'kota' => 'Sintang',
                'provinsi' => 'Kalimantan Barat',
                'kode_pos' => '78612',
                'negara' => 'Indonesia',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}