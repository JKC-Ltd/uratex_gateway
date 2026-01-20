-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 20, 2026 at 11:26 AM
-- Server version: 11.8.3-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u565803524_uratex`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin@samrtpowerph.com|2001:fd8:418:e22f:edcf:773e:2f5c:6a04', 'i:1;', 1768368843),
('admin@samrtpowerph.com|2001:fd8:418:e22f:edcf:773e:2f5c:6a04:timer', 'i:1768368843;', 1768368843),
('test@example.com|127.0.0.1', 'i:1;', 1768553103),
('test@example.com|127.0.0.1:timer', 'i:1768553102;', 1768553102);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `customer_code` varchar(255) NOT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `gateway_code` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `location_id`, `customer_code`, `gateway`, `gateway_code`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Uratex', '1', 'GAT-01', 'Gateway on Admin Building', '2026-01-08 10:12:15', '2026-01-08 10:12:15', NULL),
(2, 4, 'Uratex', '2', 'GAT-02', 'Gateway on Building No. 18', '2026-01-08 10:12:15', '2026-01-08 10:12:15', NULL),
(3, 5, 'Uratex', '3', 'GAT-03', 'Gateway on Building No. 12', '2026-01-08 10:12:16', '2026-01-08 10:12:16', NULL),
(4, 6, 'Uratex', '4', 'GAT-04', 'Gateway on Building No.. 13', '2026-01-08 10:12:17', '2026-01-08 19:42:39', NULL),
(5, 7, 'Uratex', '5', 'GAT-05', 'Gateway on Building No. 11', '2026-01-08 10:12:17', '2026-01-08 10:12:17', NULL),
(6, 8, 'Uratex', '6', 'GAT-06', 'Gateway on Building No. 9', '2026-01-08 10:12:18', '2026-01-08 10:12:18', NULL),
(7, 9, 'Uratex', '7', 'GAT-07', 'Gateway on Building No. 17', '2026-01-08 10:12:19', '2026-01-08 10:12:19', NULL),
(8, 11, 'Uratex', '8', 'GAT-08', 'Gateway on Powerhouse 1', '2026-01-08 10:12:20', '2026-01-08 10:12:20', NULL),
(9, 12, 'Uratex', '9', 'GAT-09', 'Gateway on Powerhouse 2', '2026-01-08 10:12:21', '2026-01-08 10:12:21', NULL),
(10, 13, 'Uratex', '10', 'GAT-10', 'Gateway on Powerhouse 3', '2026-01-08 10:12:21', '2026-01-08 10:12:21', NULL),
(11, 14, 'Uratex', '11', 'GAT-11', 'Gateway on Powerhouse 4', '2026-01-08 10:12:22', '2026-01-08 10:12:22', NULL),
(12, 15, 'Uratex', '12', 'GAT-12', 'Gateway on Powerhouse 5', '2026-01-08 10:12:23', '2026-01-08 10:12:23', NULL),
(13, 17, 'Uratex', '13', 'GAT-13', 'Gateway on Powerhouse 1', '2026-01-08 10:12:23', '2026-01-08 10:12:23', NULL),
(14, 18, 'Uratex', '14', 'GAT-14', 'Gateway on Powerhouse 2', '2026-01-08 10:12:24', '2026-01-08 10:12:24', NULL),
(15, 19, 'Uratex', '15', 'GAT-15', 'Gateway on Powerhouse 3', '2026-01-08 10:12:25', '2026-01-08 10:12:25', NULL),
(16, 20, 'Uratex', '16', 'GAT-16', 'Gateway on Powerhouse 4', '2026-01-08 10:12:26', '2026-01-08 10:12:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(255) NOT NULL,
  `location_name` varchar(255) NOT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location_code`, `location_name`, `pid`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Uratex', 'Uratex', NULL, '2025-03-02 09:26:56', '2025-03-02 09:26:56', NULL),
(2, 'Valenzuela', 'Valenzuela', '1', '2025-03-02 09:28:08', '2025-03-02 09:28:08', NULL),
(3, 'Admin Building', 'Admin Building', '2', '2025-03-02 09:28:59', '2025-03-02 09:28:59', NULL),
(4, 'Building No. 18', 'Building No. 18', '2', '2025-03-02 09:29:11', '2025-03-02 09:29:11', NULL),
(5, 'Building No. 12', 'Building No. 12', '2', '2025-03-02 09:30:20', '2025-03-02 09:30:20', NULL),
(6, 'Building No. 13', 'Building No. 13', '2', '2025-03-02 09:30:32', '2025-03-02 09:30:32', NULL),
(7, 'Building No. 11', 'Building No. 11', '2', '2025-03-02 09:31:51', '2025-03-02 09:31:51', NULL),
(8, 'Building No. 9', 'Building No. 9', '2', '2025-03-02 09:32:04', '2025-03-02 09:32:04', NULL),
(9, 'Building No. 17', 'Building No. 17', '2', '2025-03-02 09:32:30', '2025-03-02 09:32:30', NULL),
(10, 'Alabang', 'Alabang', '1', '2025-03-02 09:32:30', '2025-03-02 09:32:30', NULL),
(11, 'Powerhouse 1', 'Powerhouse 1', '10', '2025-03-02 09:32:30', '2025-03-02 09:32:30', NULL),
(12, 'Powerhouse 2', 'Powerhouse 2', '10', '2025-03-02 09:32:30', '2025-03-02 09:32:30', NULL),
(13, 'Powerhouse 3', 'Powerhouse 3', '10', '2025-03-02 09:32:30', '2025-03-02 09:32:30', NULL),
(14, 'Powerhouse 4', 'Powerhouse 4', '10', '2025-03-02 09:32:30', '2025-03-02 09:32:30', NULL),
(15, 'Powerhouse 5', 'Powerhouse 5', '10', '2025-03-02 09:32:30', '2025-03-02 09:32:30', NULL),
(16, 'Plaridel', 'Plaridel', '1', '2025-03-02 09:32:30', '2025-03-02 09:32:30', NULL),
(17, 'Powerhouse 1', 'Powerhouse 1', '16', '2025-03-02 09:32:30', '2025-03-02 09:32:30', NULL),
(18, 'Powerhouse 2', 'Powerhouse 2', '16', '2025-03-02 09:32:30', '2025-03-02 09:32:30', NULL),
(19, 'Powerhouse 3', 'Powerhouse 3', '16', '2025-03-02 09:32:30', '2025-03-02 09:32:30', NULL),
(20, 'Powerhouse 4', 'Powerhouse 4', '16', '2025-03-02 09:32:30', '2025-03-02 09:32:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_29_090253_create_locations_table', 1),
(5, '2025_01_29_090317_create_gateways_table', 1),
(6, '2025_01_29_090335_create_sensor_types_table', 1),
(7, '2025_01_29_090336_create_sensor_models_table', 1),
(8, '2025_01_29_090340_create_sensors_table', 1),
(9, '2025_01_29_090520_create_sensor_logs_table', 1),
(10, '2025_01_30_050145_create_sensor_offlines_table', 1),
(11, '2025_02_14_042309_alter_sensor_offlines_table', 1),
(12, '2025_02_14_045008_alter_gateways_table', 1),
(13, '2025_02_17_071232_create_user_types_table', 1),
(14, '2025_12_17_042459_create_user_type_locations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sensors`
--

CREATE TABLE `sensors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slave_address` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` bigint(20) UNSIGNED NOT NULL,
  `sensor_model_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sensors`
--

INSERT INTO `sensors` (`id`, `slave_address`, `description`, `location_id`, `gateway_id`, `sensor_model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2', 'MDP 1', 3, 1, 1, '2026-01-08 10:12:26', '2026-01-08 10:12:26', NULL),
(2, '3', 'MDP 2', 4, 2, 1, '2026-01-08 10:12:27', '2026-01-08 10:12:27', NULL),
(3, '4', 'MDP 3', 5, 3, 1, '2026-01-08 10:12:28', '2026-01-08 10:12:28', NULL),
(4, '5', 'MDP 4', 6, 4, 1, '2026-01-08 10:12:28', '2026-01-08 10:12:28', NULL),
(5, '6', 'MDP 5', 7, 5, 1, '2026-01-08 10:12:29', '2026-01-08 10:12:29', NULL),
(6, '7', 'MDP 6 230V', 8, 6, 1, '2026-01-08 10:12:30', '2026-01-08 10:12:30', NULL),
(7, '8', 'MDP 7 400V', 8, 6, 1, '2026-01-08 10:12:30', '2026-01-08 10:12:30', NULL),
(8, '9', 'MDP 8', 9, 7, 1, '2026-01-08 10:12:31', '2026-01-08 10:12:31', NULL),
(9, '2', 'MDP Main', 11, 8, 1, '2026-01-08 10:12:32', '2026-01-08 10:12:32', NULL),
(10, '3', 'MDP Main', 12, 9, 1, '2026-01-08 10:12:32', '2026-01-08 10:12:32', NULL),
(11, '4', 'MDP Main 230 V', 13, 10, 1, '2026-01-08 10:12:33', '2026-01-08 10:12:33', NULL),
(12, '5', 'MDP Main 400 V', 13, 10, 1, '2026-01-08 10:12:34', '2026-01-08 10:12:34', NULL),
(13, '6', 'MDP Main', 14, 11, 1, '2026-01-08 10:12:35', '2026-01-08 10:12:35', NULL),
(14, '7', 'MDP Main', 15, 12, 1, '2026-01-08 10:12:35', '2026-01-08 10:12:35', NULL),
(15, '8', 'MDP Main', 15, 12, 1, '2026-01-08 10:12:36', '2026-01-08 10:12:36', NULL),
(16, '9', 'MDP Main', 15, 12, 1, '2026-01-08 10:12:37', '2026-01-08 10:12:37', NULL),
(17, '2', 'MDP 440 V', 17, 13, 1, '2026-01-08 10:12:37', '2026-01-08 10:12:37', NULL),
(18, '3', 'MDP 230 V', 17, 13, 1, '2026-01-08 10:12:38', '2026-01-08 10:12:38', NULL),
(19, '4', 'MDP Main', 18, 14, 1, '2026-01-08 10:12:39', '2026-01-08 10:12:39', NULL),
(20, '5', 'MDP Main', 18, 14, 1, '2026-01-08 10:12:39', '2026-01-08 10:12:39', NULL),
(21, '6', 'MDP Main', 19, 15, 1, '2026-01-08 10:12:40', '2026-01-08 10:12:40', NULL),
(22, '7', 'MDP Main', 19, 15, 1, '2026-01-08 10:12:41', '2026-01-20 07:08:49', NULL),
(23, '8', 'MDP Main', 20, 16, 1, '2026-01-08 10:12:41', '2026-01-08 10:12:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sensor_logs`
--

CREATE TABLE `sensor_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` bigint(20) UNSIGNED NOT NULL,
  `sensor_id` bigint(20) UNSIGNED NOT NULL,
  `voltage_ab` double DEFAULT NULL,
  `voltage_bc` double DEFAULT NULL,
  `voltage_ca` double DEFAULT NULL,
  `current_a` double DEFAULT NULL,
  `current_b` double DEFAULT NULL,
  `current_c` double DEFAULT NULL,
  `real_power` double DEFAULT NULL,
  `apparent_power` double DEFAULT NULL,
  `energy` double DEFAULT NULL,
  `temperature` double DEFAULT NULL,
  `humidity` double DEFAULT NULL,
  `volume` double DEFAULT NULL,
  `flow` double DEFAULT NULL,
  `pressure` double DEFAULT NULL,
  `co2` double DEFAULT NULL,
  `pm25_pm10` double DEFAULT NULL,
  `o2` double DEFAULT NULL,
  `nox` double DEFAULT NULL,
  `co` double DEFAULT NULL,
  `s02` double DEFAULT NULL,
  `datetime_created` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sensor_logs`
--
-- --------------------------------------------------------

--
-- Table structure for table `sensor_models`
--

CREATE TABLE `sensor_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sensor_model` varchar(255) NOT NULL,
  `sensor_brand` varchar(255) NOT NULL,
  `sensor_type_id` bigint(20) UNSIGNED NOT NULL,
  `sensor_reg_address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sensor_models`
--

INSERT INTO `sensor_models` (`id`, `sensor_model`, `sensor_brand`, `sensor_type_id`, `sensor_reg_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'CVM-C10', 'Circutor', 2, '62,64,66,2,18,34,48,54,220', '2026-01-08 10:12:14', '2026-01-12 08:14:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sensor_offlines`
--

CREATE TABLE `sensor_offlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `query` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `gateway_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sensor_offlines`
--

INSERT INTO `sensor_offlines` (`id`, `query`, `created_at`, `updated_at`, `deleted_at`, `gateway_id`) VALUES
(8, 'update `sensor_models` set `sensor_reg_address` = \'62,64,66,2,18,34,48,54,220\', `sensor_models`.`updated_at` = \'2026-01-12 08:14:29\' where `id` = 1', '2026-01-12 08:14:29', '2026-01-12 08:14:29', NULL, 7),
(19, 'update `sensors` set `location_id` = 19, `gateway_id` = 15, `sensors`.`updated_at` = \'2026-01-20 07:08:49\' where `id` = 22', '2026-01-20 07:08:49', '2026-01-20 07:08:49', NULL, 2),
(23, 'update `sensors` set `location_id` = 19, `gateway_id` = 15, `sensors`.`updated_at` = \'2026-01-20 07:08:49\' where `id` = 22', '2026-01-20 07:08:49', '2026-01-20 07:08:49', NULL, 6),
(24, 'update `sensors` set `location_id` = 19, `gateway_id` = 15, `sensors`.`updated_at` = \'2026-01-20 07:08:49\' where `id` = 22', '2026-01-20 07:08:49', '2026-01-20 07:08:49', NULL, 7),
(25, 'update `sensors` set `location_id` = 19, `gateway_id` = 15, `sensors`.`updated_at` = \'2026-01-20 07:08:49\' where `id` = 22', '2026-01-20 07:08:49', '2026-01-20 07:08:49', NULL, 8),
(26, 'update `sensors` set `location_id` = 19, `gateway_id` = 15, `sensors`.`updated_at` = \'2026-01-20 07:08:49\' where `id` = 22', '2026-01-20 07:08:49', '2026-01-20 07:08:49', NULL, 9),
(27, 'update `sensors` set `location_id` = 19, `gateway_id` = 15, `sensors`.`updated_at` = \'2026-01-20 07:08:49\' where `id` = 22', '2026-01-20 07:08:49', '2026-01-20 07:08:49', NULL, 10),
(28, 'update `sensors` set `location_id` = 19, `gateway_id` = 15, `sensors`.`updated_at` = \'2026-01-20 07:08:49\' where `id` = 22', '2026-01-20 07:08:49', '2026-01-20 07:08:49', NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `sensor_types`
--

CREATE TABLE `sensor_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `sensor_type_code` varchar(255) NOT NULL,
  `sensor_type_parameter` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sensor_types`
--

INSERT INTO `sensor_types` (`id`, `description`, `sensor_type_code`, `sensor_type_parameter`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Single Phase Meter', 'SPM', 'voltage_ab,current_a,real_power,apparent_power,energy', '2025-02-14 09:04:41', '2025-02-14 09:06:28', NULL),
(2, 'Three Phase Meter', 'TPM', 'voltage_ab,voltage_bc,voltage_ca,current_a,current_b,current_c,real_power,apparent_power,energy', '2025-02-14 09:05:34', '2025-02-14 09:06:21', NULL),
(3, 'Temperature & Humidity Sensor', 'THS', 'temperature,humidity', '2025-02-14 09:06:13', '2025-02-14 09:06:13', NULL),
(4, 'Flow Meter', 'FVM', 'volume,flow', '2025-02-14 09:07:05', '2025-02-14 09:07:05', NULL),
(5, 'Pressure Meter Guage', 'PMG', 'pressure', '2025-02-14 09:07:28', '2025-02-14 09:07:28', NULL),
(6, 'Air Quality Meter', 'AQM', 'co2,pm25_pm10,o2,nox,co,s02', '2025-02-14 09:08:48', '2025-02-14 09:08:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2VVKvKhrtdMDLK2v0hYEZWfe7COZxZ3BMXKvLyln', 1, '136.158.39.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV3hCR2tZTmE5M08wYnEwdnBPeXBVS3dNb0JDZHBETnptcFFHclVLciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vdXJhdGV4LnNtYXJ0cG93ZXJwaC5jb20vbG9jYXRpb25EYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1768893281),
('5ZWcouwg7hhJVEHbA9OMJRnShRbHYuRILes0SDdq', 1, '203.177.223.85', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTVcwVGEwSDNhOWtFbjNHVmhoeXdPNFdzV2g2a0RrUzg5ZEhwbUthZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vdXJhdGV4LnNtYXJ0cG93ZXJwaC5jb20vdm9sdGFnZUN1cnJlbnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1768880699),
('E6U44xDD1lsEcsZp8GDqBY3UhJuOjGoOKIIpxqRA', NULL, '2001:fd8:419:47e:bdee:4c89:2e8:9cd7', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMGtOOTNYbk1iTHN5TmQ2bUNneHBuRTNxeUlIblFLbU5FdldzYUdCaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768882487),
('GsJf40yEm63CAz6fyEptcFag98Nk9cSH1nLKEs83', 1, '2001:fd8:419:47e:fcdb:39dc:1472:8249', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiM3hzZ1VzeTd0YURibTFQV1AycVpTOHhLZWx4THFQWUp6VU13cmZkaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQzOiJodHRwczovL3VyYXRleC5zbWFydHBvd2VycGguY29tL2FjdGl2ZVBvd2VyIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1768889951),
('qzcgXCr2AcKiM8Xk5ju7Mtm3BhqQpOxKTMgdQkwb', NULL, '203.177.223.85', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNEZ0Y1g2cWRTWkdzdDRyS3JROWlwRmV2MG9GOTZkbThDc05BbnRObyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768880572),
('txXbHhHjMbIarquCKr46QFQlVMWe1waTvOaViC7V', NULL, '112.203.134.23', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmhLTmU5R05PYnpmZHBOMzJVU2Y3MTdyejE5eHJhaUZvU2xEWkE5eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vdXJhdGV4LnNtYXJ0cG93ZXJwaC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768886181),
('w7ray0t8B6jwG6CpAGLkXDsto6ckx9ljKi6tuAtE', 1, '2001:fd8:419:47e:f10c:c3ee:863e:9561', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQlhyVW0yN0dtU3RLMkNEVFI1bWFNWUMxeU51SlVacUl4VGR0VUNZaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQzOiJodHRwczovL3VyYXRleC5zbWFydHBvd2VycGguY29tL2FjdGl2ZVBvd2VyIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1768906379),
('WEBbStMlD4NCfLgSClrkHQZVvmlDkKNsKI8Af9SP', 1, '2001:fd8:419:47e:7019:f09c:4e4d:2ee4', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMmdoRlhKdXVIYks3a2ZDbjRpdHVEZzZseFFvV2U0Z3pSQUxhcVVzSiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQzOiJodHRwczovL3VyYXRleC5zbWFydHBvd2VycGguY29tL2FjdGl2ZVBvd2VyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1768888877);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `user_type_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'Admin', 1, 'admin@smartpowerph.com', NULL, '$2y$12$bHFKINqk.OYcl7HRmF2mZ.rew1R9DVWHcFULr0fXJt0pH2ojnZXoi', 'YAKPJiDMWygIqda1j08xnzNGMkUAO8d03Cy5PPqaIBAD0JQTYCBNzKSAXg0M', '2026-01-08 10:11:53', '2026-01-08 10:11:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `name`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, NULL, '2026-01-08 10:11:51', '2026-01-08 10:11:51', NULL),
(2, 'User', NULL, NULL, NULL, '2026-01-08 10:11:52', '2026-01-08 10:11:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_type_locations`
--

CREATE TABLE `user_type_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type_id` bigint(20) UNSIGNED NOT NULL,
  `locations_list` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gateways_gateway_code_unique` (`gateway_code`),
  ADD KEY `gateways_location_id_foreign` (`location_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sensors`
--
ALTER TABLE `sensors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sensors_location_id_foreign` (`location_id`),
  ADD KEY `sensors_gateway_id_foreign` (`gateway_id`),
  ADD KEY `sensors_sensor_model_id_foreign` (`sensor_model_id`);

--
-- Indexes for table `sensor_logs`
--
ALTER TABLE `sensor_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sensor_logs_gateway_id_foreign` (`gateway_id`),
  ADD KEY `sensor_logs_sensor_id_foreign` (`sensor_id`);

--
-- Indexes for table `sensor_models`
--
ALTER TABLE `sensor_models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sensor_models_sensor_model_unique` (`sensor_model`),
  ADD KEY `sensor_models_sensor_type_id_foreign` (`sensor_type_id`);

--
-- Indexes for table `sensor_offlines`
--
ALTER TABLE `sensor_offlines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sensor_offlines_gateway_id_foreign` (`gateway_id`);

--
-- Indexes for table `sensor_types`
--
ALTER TABLE `sensor_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sensor_types_sensor_type_code_unique` (`sensor_type_code`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_type_locations`
--
ALTER TABLE `user_type_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_type_locations_user_type_id_foreign` (`user_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sensors`
--
ALTER TABLE `sensors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sensor_logs`
--
ALTER TABLE `sensor_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7268;

--
-- AUTO_INCREMENT for table `sensor_models`
--
ALTER TABLE `sensor_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sensor_offlines`
--
ALTER TABLE `sensor_offlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sensor_types`
--
ALTER TABLE `sensor_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_type_locations`
--
ALTER TABLE `user_type_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gateways`
--
ALTER TABLE `gateways`
  ADD CONSTRAINT `gateways_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Constraints for table `sensors`
--
ALTER TABLE `sensors`
  ADD CONSTRAINT `sensors_gateway_id_foreign` FOREIGN KEY (`gateway_id`) REFERENCES `gateways` (`id`),
  ADD CONSTRAINT `sensors_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `sensors_sensor_model_id_foreign` FOREIGN KEY (`sensor_model_id`) REFERENCES `sensor_models` (`id`);

--
-- Constraints for table `sensor_logs`
--
ALTER TABLE `sensor_logs`
  ADD CONSTRAINT `sensor_logs_gateway_id_foreign` FOREIGN KEY (`gateway_id`) REFERENCES `gateways` (`id`),
  ADD CONSTRAINT `sensor_logs_sensor_id_foreign` FOREIGN KEY (`sensor_id`) REFERENCES `sensors` (`id`);

--
-- Constraints for table `sensor_models`
--
ALTER TABLE `sensor_models`
  ADD CONSTRAINT `sensor_models_sensor_type_id_foreign` FOREIGN KEY (`sensor_type_id`) REFERENCES `sensor_types` (`id`);

--
-- Constraints for table `sensor_offlines`
--
ALTER TABLE `sensor_offlines`
  ADD CONSTRAINT `sensor_offlines_gateway_id_foreign` FOREIGN KEY (`gateway_id`) REFERENCES `gateways` (`id`);

--
-- Constraints for table `user_type_locations`
--
ALTER TABLE `user_type_locations`
  ADD CONSTRAINT `user_type_locations_user_type_id_foreign` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
