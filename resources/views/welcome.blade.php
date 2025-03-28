<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventaris Barang</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        .background-image {
            background: url('https://www.hashmicro.com/id/blog/wp-content/uploads/2024/02/Cara-Membuat-Daftar-Inventaris-untuk-Efisiensi-Pengelolaan-Stok-Bisnis-1.webp') no-repeat center center/cover;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100vh;
            filter: brightness(30%);
            z-index: -1;
        }
    </style>
</head>
<body class="relative min-h-screen flex flex-col">
    <div class="background-image"></div>
    
    <!-- Navbar -->
    <nav class="bg-white bg-opacity-0 py-4 px-8 flex justify-between items-center">
        <h1 class="text-2xl font-bold text-white">Inventaris Barang</h1>
        <div class="space-x-4">
            <a href="{{ route('login') }}" class="text-white hover:text-blue-300">Login</a>
            <span class="text-white">/</span>
            <a href="{{ route('register') }}" class="text-white hover:text-blue-300">Daftar</a>
        </div>
    </nav>
    
    <!-- Content -->
    <div class="flex-grow flex items-center justify-center">
        <div class="bg-white bg-opacity-50 backdrop-blur-md p-10 rounded-2xl shadow-2xl w-full max-w-md">
            <h1 class="text-4xl font-bold text-center text-white mb-4">Sistem Inventaris</h1>
            <p class="text-white text-center">Kelola dan pantau inventaris barang dengan mudah dan efisien.</p>
        </div>
    </div>
    
    <!-- Footer -->
    <footer class="bg-white bg-opacity-0 text-center py-4 text-gray-300">
        &copy; 2025 Inventaris Barang. All Rights Reserved.
    </footer>
    
</body>
</html>
