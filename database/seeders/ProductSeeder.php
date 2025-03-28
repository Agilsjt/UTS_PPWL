<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('products')->insert([
            [
                'name' => 'iPhone 14',
                'description' => 'Apple iPhone 14 with 128GB storage and A15 Bionic chip.',
                'stock' => 10,
                'price' => 12000000,
                'sold' => 2,
                'location' => 'Jakarta',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Samsung Galaxy S23',
                'description' => 'Samsung Galaxy S23 with 256GB storage and Snapdragon 8 Gen 2.',
                'stock' => 15,
                'price' => 14000000,
                'sold' => 5,
                'location' => 'Bandung',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'MacBook Air M2',
                'description' => 'Apple MacBook Air with M2 chip and 256GB SSD.',
                'stock' => 5,
                'price' => 18000000,
                'sold' => 1,
                'location' => 'Surabaya',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'ASUS ROG Zephyrus G14',
                'description' => 'ASUS ROG gaming laptop with Ryzen 9 and RTX 4060.',
                'stock' => 7,
                'price' => 22000000,
                'sold' => 3,
                'location' => 'Yogyakarta',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Sony WH-1000XM5',
                'description' => 'Sony noise-canceling headphones with superior sound quality.',
                'stock' => 20,
                'price' => 5000000,
                'sold' => 8,
                'location' => 'Jakarta',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Logitech MX Master 3',
                'description' => 'Advanced wireless mouse with ergonomic design.',
                'stock' => 12,
                'price' => 1500000,
                'sold' => 6,
                'location' => 'Surabaya',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Dell XPS 13',
                'description' => 'Premium ultrabook with Intel Core i7 and 16GB RAM.',
                'stock' => 4,
                'price' => 25000000,
                'sold' => 2,
                'location' => 'Bandung',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'GoPro Hero 11',
                'description' => 'Latest GoPro action camera with 5.3K recording capability.',
                'stock' => 10,
                'price' => 8000000,
                'sold' => 4,
                'location' => 'Yogyakarta',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Amazon Kindle Paperwhite',
                'description' => 'E-reader with high-resolution display and waterproof design.',
                'stock' => 30,
                'price' => 2500000,
                'sold' => 15,
                'location' => 'Jakarta',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Bose SoundLink Revolve+',
                'description' => 'Portable Bluetooth speaker with 360-degree sound.',
                'stock' => 8,
                'price' => 4500000,
                'sold' => 3,
                'location' => 'Surabaya',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
