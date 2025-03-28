-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for laravel-spatie
CREATE DATABASE IF NOT EXISTS `laravel-spatie` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `laravel-spatie`;

-- Dumping structure for table laravel-spatie.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-spatie.cache: ~1 rows (approximately)
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('spatie.permission.cache', 'a:3:{s:5:"alias";a:4:{s:1:"a";s:2:"id";s:1:"b";s:4:"name";s:1:"c";s:10:"guard_name";s:1:"r";s:5:"roles";}s:11:"permissions";a:15:{i:0;a:3:{s:1:"a";i:1;s:1:"b";s:11:"create-role";s:1:"c";s:3:"web";}i:1;a:3:{s:1:"a";i:2;s:1:"b";s:9:"edit-role";s:1:"c";s:3:"web";}i:2;a:3:{s:1:"a";i:3;s:1:"b";s:11:"delete-role";s:1:"c";s:3:"web";}i:3;a:4:{s:1:"a";i:4;s:1:"b";s:11:"create-user";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:2;}}i:4;a:4:{s:1:"a";i:5;s:1:"b";s:9:"edit-user";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:2;}}i:5;a:4:{s:1:"a";i:6;s:1:"b";s:11:"delete-user";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:2;}}i:6;a:4:{s:1:"a";i:7;s:1:"b";s:14:"create-product";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:2;i:1;i:3;}}i:7;a:4:{s:1:"a";i:8;s:1:"b";s:12:"edit-product";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:2;i:1;i:3;}}i:8;a:4:{s:1:"a";i:9;s:1:"b";s:14:"delete-product";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:2;i:1;i:3;}}i:9;a:4:{s:1:"a";i:10;s:1:"b";s:15:"create-category";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:2;i:1;i:3;}}i:10;a:4:{s:1:"a";i:11;s:1:"b";s:13:"edit-category";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:2;i:1;i:3;}}i:11;a:4:{s:1:"a";i:12;s:1:"b";s:15:"delete-category";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:2;i:1;i:3;}}i:12;a:4:{s:1:"a";i:13;s:1:"b";s:15:"create-location";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:2;i:1;i:3;}}i:13;a:4:{s:1:"a";i:14;s:1:"b";s:13:"edit-location";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:2;i:1;i:3;}}i:14;a:4:{s:1:"a";i:15;s:1:"b";s:15:"delete-location";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:2;i:1;i:3;}}}s:5:"roles";a:2:{i:0;a:3:{s:1:"a";i:2;s:1:"b";s:5:"Admin";s:1:"c";s:3:"web";}i:1;a:3:{s:1:"a";i:3;s:1:"b";s:4:"User";s:1:"c";s:3:"web";}}}', 1743237401);

-- Dumping structure for table laravel-spatie.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-spatie.cache_locks: ~0 rows (approximately)

-- Dumping structure for table laravel-spatie.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-spatie.categories: ~0 rows (approximately)
INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'HP', 'Kategori untuk semua jenis smartphone dan handphone.', '2025-03-27 20:54:30', '2025-03-27 20:54:30'),
	(2, 'Laptop', 'Kategori untuk semua jenis laptop, baik gaming maupun bisnis.', '2025-03-27 20:54:30', '2025-03-27 21:31:40'),
	(17, 'Smartphone', 'Kategori untuk semua jenis smartphone dan handphone.', '2025-03-27 21:31:40', '2025-03-27 21:31:40'),
	(18, 'Audio', 'Kategori untuk headphone, speaker, dan perangkat audio lainnya.', '2025-03-27 21:31:40', '2025-03-27 21:31:40'),
	(19, 'Aksesoris Komputer', 'Kategori untuk mouse, keyboard, dan perangkat pendukung komputer lainnya.', '2025-03-27 21:31:40', '2025-03-27 21:31:40'),
	(20, 'Kamera', 'Kategori untuk kamera digital, action camera, dan perangkat fotografi lainnya.', '2025-03-27 21:31:40', '2025-03-27 21:31:40'),
	(21, 'E-Reader', 'Kategori untuk perangkat e-reader seperti Kindle.', '2025-03-27 21:31:40', '2025-03-27 21:31:40'),
	(22, 'Gaming', 'Kategori untuk konsol game dan perangkat gaming lainnya.', '2025-03-27 21:31:40', '2025-03-27 21:31:40');

-- Dumping structure for table laravel-spatie.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-spatie.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table laravel-spatie.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-spatie.jobs: ~0 rows (approximately)

-- Dumping structure for table laravel-spatie.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-spatie.job_batches: ~0 rows (approximately)

-- Dumping structure for table laravel-spatie.locations
CREATE TABLE IF NOT EXISTS `locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pos` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `negara` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-spatie.locations: ~5 rows (approximately)
INSERT INTO `locations` (`id`, `nama`, `alamat`, `kota`, `provinsi`, `kode_pos`, `negara`, `created_at`, `updated_at`) VALUES
	(1, 'Gudang Pontianak', 'Jl. Gajah Mada No. 51', 'Pontianak', 'Kalimantan Barat', '78121', 'Indonesia', '2025-03-28 01:17:02', '2025-03-28 01:27:19'),
	(2, 'Gudang Singkawang', 'Jl. Alianyang No. 12', 'Singkawang', 'Kalimantan Barat', '79123', 'Indonesia', '2025-03-28 01:17:02', '2025-03-28 01:17:02'),
	(4, 'Gudang Sambas', 'Jl. Pahlawan No. 45', 'Sambas', 'Kalimantan Barat', '79453', 'Indonesia', '2025-03-28 01:17:02', '2025-03-28 01:17:02'),
	(5, 'Gudang Sintang', 'Jl. Ahmad Yani No. 78', 'Sintang', 'Kalimantan Barat', '78612', 'Indonesia', '2025-03-28 01:17:02', '2025-03-28 01:17:02');

-- Dumping structure for table laravel-spatie.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-spatie.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2025_03_23_085201_create_permission_tables', 1),
	(5, '2025_03_23_085321_create_products_table', 1),
	(6, '2025_03_23_091928_create_personal_access_tokens_table', 1),
	(7, '2025_03_28_034602_create_categories_table', 2),
	(8, '2025_03_28_035556_add_category_id_to_products_table', 3),
	(9, '2025_03_28_075004_create_locations_table', 4),
	(10, '2025_03_28_080248_add_location_id_to_products_table', 5);

-- Dumping structure for table laravel-spatie.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-spatie.model_has_permissions: ~0 rows (approximately)

-- Dumping structure for table laravel-spatie.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-spatie.model_has_roles: ~3 rows (approximately)
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\User', 1),
	(2, 'App\\Models\\User', 2),
	(3, 'App\\Models\\User', 3);

-- Dumping structure for table laravel-spatie.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-spatie.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table laravel-spatie.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-spatie.permissions: ~9 rows (approximately)
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'create-role', 'web', '2025-03-25 05:52:49', '2025-03-25 05:52:49'),
	(2, 'edit-role', 'web', '2025-03-25 05:52:49', '2025-03-25 05:52:49'),
	(3, 'delete-role', 'web', '2025-03-25 05:52:49', '2025-03-25 05:52:49'),
	(4, 'create-user', 'web', '2025-03-25 05:52:49', '2025-03-25 05:52:49'),
	(5, 'edit-user', 'web', '2025-03-25 05:52:49', '2025-03-25 05:52:49'),
	(6, 'delete-user', 'web', '2025-03-25 05:52:49', '2025-03-25 05:52:49'),
	(7, 'create-product', 'web', '2025-03-25 05:52:49', '2025-03-25 05:52:49'),
	(8, 'edit-product', 'web', '2025-03-25 05:52:49', '2025-03-25 05:52:49'),
	(9, 'delete-product', 'web', '2025-03-25 05:52:49', '2025-03-25 05:52:49'),
	(10, 'create-category', 'web', '2025-03-27 20:40:12', '2025-03-27 20:40:12'),
	(11, 'edit-category', 'web', '2025-03-27 20:40:12', '2025-03-27 20:40:12'),
	(12, 'delete-category', 'web', '2025-03-27 20:40:12', '2025-03-27 20:40:12'),
	(13, 'create-location', 'web', '2025-03-28 00:55:11', '2025-03-28 00:55:11'),
	(14, 'edit-location', 'web', '2025-03-28 00:55:11', '2025-03-28 00:55:11'),
	(15, 'delete-location', 'web', '2025-03-28 00:55:11', '2025-03-28 00:55:11');

-- Dumping structure for table laravel-spatie.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-spatie.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table laravel-spatie.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `stock` int NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `sold` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  KEY `products_location_id_foreign` (`location_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  CONSTRAINT `products_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-spatie.products: ~10 rows (approximately)
INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `stock`, `price`, `sold`, `created_at`, `updated_at`, `location_id`) VALUES
	(1, 1, 'iPhone 14', 'Apple iPhone 14 with 128GB storage and A15 Bionic chip.', 10, 12000000.00, 2, '2025-03-27 21:19:50', '2025-03-28 01:18:16', 5),
	(2, 1, 'Samsung Galaxy S23', 'Samsung Galaxy S23 with 256GB storage and Snapdragon 8 Gen 2.', 15, 14000000.00, 5, '2025-03-27 21:19:50', '2025-03-28 01:15:52', 5),
	(3, 2, 'MacBook Air M2', 'Apple MacBook Air with M2 chip and 256GB SSD.', 5, 18000000.00, 1, '2025-03-27 21:19:50', '2025-03-28 01:18:07', 4),
	(4, 2, 'ASUS ROG Zephyrus G14', 'ASUS ROG gaming laptop with Ryzen 9 and RTX 4060.', 9, 22000000.00, 3, '2025-03-27 21:19:50', '2025-03-27 21:28:28', 1),
	(5, 1, 'Sony WH-1000XM5', 'Sony noise-canceling headphones with superior sound quality.', 20, 5000000.00, 8, '2025-03-27 21:19:50', '2025-03-27 21:19:50', 4),
	(6, 19, 'Logitech MX Master 3', 'Advanced wireless mouse with ergonomic design.', 12, 1500000.00, 6, '2025-03-27 21:19:50', '2025-03-27 21:31:55', 4),
	(7, 2, 'Dell XPS 13', 'Premium ultrabook with Intel Core i7 and 16GB RAM.', 4, 25000000.00, 2, '2025-03-27 21:19:50', '2025-03-27 21:32:25', 2),
	(8, 20, 'GoPro Hero 11', 'Latest GoPro action camera with 5.3K recording capability.', 10, 8000000.00, 4, '2025-03-27 21:19:50', '2025-03-27 21:32:43', 2),
	(9, 21, 'Amazon Kindle Paperwhite', 'E-reader with high-resolution display and waterproof design.', 30, 2500000.00, 15, '2025-03-27 21:19:50', '2025-03-27 21:32:58', 5),
	(10, 18, 'Bose SoundLink Revolve+', 'Portable Bluetooth speaker with 360-degree sound.', 8, 4500000.00, 3, '2025-03-27 21:19:50', '2025-03-27 21:33:11', 2);

-- Dumping structure for table laravel-spatie.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-spatie.roles: ~3 rows (approximately)
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'Super Admin', 'web', '2025-03-25 05:52:49', '2025-03-25 05:52:49'),
	(2, 'Admin', 'web', '2025-03-25 05:52:49', '2025-03-25 05:52:49'),
	(3, 'User', 'web', '2025-03-25 05:52:49', '2025-03-27 21:13:11');

-- Dumping structure for table laravel-spatie.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-spatie.role_has_permissions: ~9 rows (approximately)
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(4, 2),
	(5, 2),
	(6, 2),
	(7, 2),
	(8, 2),
	(9, 2),
	(10, 2),
	(11, 2),
	(12, 2),
	(13, 2),
	(14, 2),
	(15, 2),
	(7, 3),
	(8, 3),
	(9, 3),
	(10, 3),
	(11, 3),
	(12, 3),
	(13, 3),
	(14, 3),
	(15, 3);

-- Dumping structure for table laravel-spatie.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-spatie.sessions: ~3 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('kAiF5orz8Q2H9LJoe85MUGrHqaFuD8ODOTc6AHgt', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQ3dWT3llZWFVWWlRVFBEakI0Q0hMOWwyRHBNb3NjNFJXR2N2Q01WQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzQzMTUxMTUwO319', 1743151154),
	('yqlQAESNbfPN7sI2rCQOoqc6ugtsyKGLBoIIbFQ0', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNWVZVmJUc1ZOT2dkNXllblVSV2hqbjZPNWVyMjNYV0h5czhvNFNxYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3NDMxNTMwOTg7fX0=', 1743153110);

-- Dumping structure for table laravel-spatie.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-spatie.users: ~3 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Agil Sujito', 'superadmin@roles.id', '2025-03-28 04:15:32', '$2y$12$xY09GV3GRHpCNySPydJyq.rpobdj0gh3xbuxjypMt1qth338aa5CO', NULL, '2025-03-25 05:52:50', '2025-03-25 05:52:50'),
	(2, 'Habibi Januarta', 'admin@roles.id', '2025-03-28 04:15:33', '$2y$12$n1CBwgGkwd3zlNEjGIg/MuAWnBzC1pi5WmMk6p4MVCPR58BVvnhTi', NULL, '2025-03-25 05:52:50', '2025-03-25 05:52:50'),
	(3, 'Roihan', 'user@roles.id', '2025-03-28 04:15:35', '$2y$12$xCxehh9KcsfsP3pRUmO6xeVLzq5YjeeIF/sfUnvrkpACrPBuWxSR.', NULL, '2025-03-25 05:52:51', '2025-03-25 05:52:51');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
