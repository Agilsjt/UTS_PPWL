<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class PermissionSeeder extends Seeder
{
    /**
     * Jalankan seeder untuk permission.
     */
    public function run(): void
    {
        $permissions = [
            // Permission Role
            'create-role',
            'edit-role',
            'delete-role',

            // Permission User
            'create-user',
            'edit-user',
            'delete-user',

            // Permission Product
            'create-product',
            'edit-product',
            'delete-product',

            // Permission Location (Baru Ditambahkan)
            'create-location',
            'edit-location',
            'delete-location'
        ];

        foreach ($permissions as $permission) {
            Permission::firstOrCreate(['name' => $permission, 'guard_name' => 'web']);
        }
    }
}
