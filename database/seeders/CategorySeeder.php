<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('categories')->upsert([
            ['name' => 'Smartphone', 'description' => 'Kategori untuk semua jenis smartphone dan handphone.', 'created_at' => now(), 'updated_at' => now()],
            ['name' => 'Laptop', 'description' => 'Kategori untuk semua jenis laptop, baik gaming maupun bisnis.', 'created_at' => now(), 'updated_at' => now()],
            ['name' => 'Audio', 'description' => 'Kategori untuk headphone, speaker, dan perangkat audio lainnya.', 'created_at' => now(), 'updated_at' => now()],
            ['name' => 'Aksesoris Komputer', 'description' => 'Kategori untuk mouse, keyboard, dan perangkat pendukung komputer lainnya.', 'created_at' => now(), 'updated_at' => now()],
            ['name' => 'Kamera', 'description' => 'Kategori untuk kamera digital, action camera, dan perangkat fotografi lainnya.', 'created_at' => now(), 'updated_at' => now()],
            ['name' => 'E-Reader', 'description' => 'Kategori untuk perangkat e-reader seperti Kindle.', 'created_at' => now(), 'updated_at' => now()],
            ['name' => 'Gaming', 'description' => 'Kategori untuk konsol game dan perangkat gaming lainnya.', 'created_at' => now(), 'updated_at' => now()],
        ], ['name'], ['description', 'updated_at']);
        
    }
}