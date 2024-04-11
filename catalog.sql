-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 11, 2024 at 03:14 AM
-- Server version: 8.0.30
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catalog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_config`
--

CREATE TABLE `admin_config` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_config`
--

INSERT INTO `admin_config` (`id`, `name`, `value`, `description`, `created_at`, `updated_at`) VALUES
(1, 'general.logo', 'images/3cb4f0817350a477d3eec996e17b46ea.svg', NULL, '2024-04-11 01:54:52', '2024-04-11 01:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Bảng tin', 'fa-bar-chart', '/', NULL, NULL, '2024-04-03 09:03:11'),
(2, 0, 7, 'Quản lý tài khoản', 'fa-tasks', NULL, NULL, NULL, '2024-04-03 09:03:31'),
(3, 2, 8, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2024-04-03 09:02:31'),
(4, 2, 9, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2024-04-03 09:02:31'),
(5, 2, 10, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2024-04-03 09:02:31'),
(6, 2, 11, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2024-04-03 09:02:31'),
(7, 2, 12, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2024-04-03 09:02:31'),
(8, 2, 13, 'Helpers', 'fa-gears', '', NULL, '2024-04-03 08:24:11', '2024-04-03 09:03:47'),
(9, 8, 14, 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', NULL, '2024-04-03 08:24:11', '2024-04-03 09:02:31'),
(10, 8, 15, 'Database terminal', 'fa-database', 'helpers/terminal/database', NULL, '2024-04-03 08:24:11', '2024-04-03 09:02:31'),
(11, 8, 16, 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', NULL, '2024-04-03 08:24:11', '2024-04-03 09:02:31'),
(12, 8, 17, 'Routes', 'fa-list-alt', 'helpers/routes', NULL, '2024-04-03 08:24:11', '2024-04-03 09:02:31'),
(13, 0, 5, 'Bộ sưu tập', 'fa-file', 'media', NULL, '2024-04-03 08:24:40', '2024-04-03 09:02:59'),
(14, 0, 6, 'Cài đặt', 'fa-gears', 'admin-config', NULL, '2024-04-03 08:37:43', '2024-04-03 09:02:42'),
(15, 0, 2, 'Sliders', 'fa-camera', 'sliders', '*', '2024-04-03 09:00:52', '2024-04-03 09:02:31'),
(16, 0, 4, 'Sản phẩm', 'fa-product-hunt', 'products', '*', '2024-04-03 09:01:15', '2024-04-03 09:04:02'),
(17, 0, 3, 'Danh mục sản phẩm', 'fa-list', 'product-categories', '*', '2024-04-03 09:02:09', '2024-04-03 09:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-03 01:10:42', '2024-04-03 01:10:42'),
(2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-03 01:11:18', '2024-04-03 01:11:18'),
(3, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 01:11:39', '2024-04-03 01:11:39'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-03 01:11:45', '2024-04-03 01:11:45'),
(5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-03 01:12:22', '2024-04-03 01:12:22'),
(6, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-03 01:12:34', '2024-04-03 01:12:34'),
(7, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 01:12:41', '2024-04-03 01:12:41'),
(8, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 08:26:37', '2024-04-03 08:26:37'),
(9, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$qOzF3s\\/TFnLd0KMi7sZ35.WRjzyXaUFK4wGUFSdrGjj86bySu9GUm\",\"password_confirmation\":\"$2y$10$qOzF3s\\/TFnLd0KMi7sZ35.WRjzyXaUFK4wGUFSdrGjj86bySu9GUm\",\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\"}', '2024-04-03 08:26:47', '2024-04-03 08:26:47'),
(10, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-04-03 08:26:47', '2024-04-03 08:26:47'),
(11, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 08:26:52', '2024-04-03 08:26:52'),
(12, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-03 08:26:54', '2024-04-03 08:26:54'),
(13, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 08:27:39', '2024-04-03 08:27:39'),
(14, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 08:27:40', '2024-04-03 08:27:40'),
(15, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 08:27:42', '2024-04-03 08:27:42'),
(16, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 08:27:43', '2024-04-03 08:27:43'),
(17, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 08:27:43', '2024-04-03 08:27:43'),
(18, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-03 08:31:33', '2024-04-03 08:31:33'),
(19, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-03 08:38:07', '2024-04-03 08:38:07'),
(20, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-03 08:38:32', '2024-04-03 08:38:32'),
(21, 1, 'admin/admin-config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 08:38:43', '2024-04-03 08:38:43'),
(22, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 08:39:00', '2024-04-03 08:39:00'),
(23, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 08:39:07', '2024-04-03 08:39:07'),
(24, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 08:39:08', '2024-04-03 08:39:08'),
(25, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 08:39:10', '2024-04-03 08:39:10'),
(26, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 08:39:11', '2024-04-03 08:39:11'),
(27, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 08:39:12', '2024-04-03 08:39:12'),
(28, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 08:39:14', '2024-04-03 08:39:14'),
(29, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 08:39:20', '2024-04-03 08:39:20'),
(30, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"product_categories\",\"model_name\":\"App\\\\Models\\\\ProductCategory\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProductCategoryController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"picture\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"key\":\"unique\",\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\"}', '2024-04-03 08:43:15', '2024-04-03 08:43:15'),
(31, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-03 08:43:16', '2024-04-03 08:43:16'),
(32, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"product_categories\",\"model_name\":\"App\\\\Models\\\\ProductCategory\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProductCategoryController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"picture\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"key\":\"unique\",\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\"}', '2024-04-03 08:43:38', '2024-04-03 08:43:38'),
(33, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-03 08:43:38', '2024-04-03 08:43:38'),
(34, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"products\",\"model_name\":\"App\\\\Models\\\\Product\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProductController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"key\":\"unique\",\"default\":null,\"comment\":null},{\"name\":\"desciption\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"body\",\"type\":\"longText\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"picture\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"pictures\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\"}', '2024-04-03 08:47:17', '2024-04-03 08:47:17'),
(35, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-03 08:47:17', '2024-04-03 08:47:17'),
(36, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"sliders\",\"model_name\":\"App\\\\Models\\\\Slider\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\SliderController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\"],\"fields\":[{\"name\":\"title\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"picture\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"link\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"order\",\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\"}', '2024-04-03 08:53:29', '2024-04-03 08:53:29'),
(37, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-03 08:53:29', '2024-04-03 08:53:29'),
(38, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 08:59:06', '2024-04-03 08:59:06'),
(39, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Sliders\",\"icon\":\"fa-camera\",\"uri\":\"sliders\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\"}', '2024-04-03 09:00:52', '2024-04-03 09:00:52'),
(40, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-03 09:00:52', '2024-04-03 09:00:52'),
(41, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"S\\u1ea3n ph\\u1ea9m\",\"icon\":\"fa-product-hunt\",\"uri\":\"products\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\"}', '2024-04-03 09:01:15', '2024-04-03 09:01:15'),
(42, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-03 09:01:15', '2024-04-03 09:01:15'),
(43, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\",\"icon\":\"fa-list\",\"uri\":\"product-categories\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\"}', '2024-04-03 09:02:09', '2024-04-03 09:02:09'),
(44, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-03 09:02:09', '2024-04-03 09:02:09'),
(45, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":15},{\\\"id\\\":16},{\\\"id\\\":17},{\\\"id\\\":13},{\\\"id\\\":14},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]}]\"}', '2024-04-03 09:02:31', '2024-04-03 09:02:31'),
(46, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:02:31', '2024-04-03 09:02:31'),
(47, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:02:36', '2024-04-03 09:02:36'),
(48, 1, 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"C\\u00e0i \\u0111\\u1eb7t\",\"icon\":\"fa-gears\",\"uri\":\"admin-config\",\"roles\":[null],\"permission\":null,\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/auth\\/menu\"}', '2024-04-03 09:02:42', '2024-04-03 09:02:42'),
(49, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-03 09:02:43', '2024-04-03 09:02:43'),
(50, 1, 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:02:46', '2024-04-03 09:02:46'),
(51, 1, 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"B\\u1ed9 s\\u01b0u t\\u1eadp\",\"icon\":\"fa-file\",\"uri\":\"media\",\"roles\":[null],\"permission\":null,\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/auth\\/menu\"}', '2024-04-03 09:02:59', '2024-04-03 09:02:59'),
(52, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-03 09:02:59', '2024-04-03 09:02:59'),
(53, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":15},{\\\"id\\\":16},{\\\"id\\\":17},{\\\"id\\\":13},{\\\"id\\\":14},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]}]\"}', '2024-04-03 09:03:02', '2024-04-03 09:03:02'),
(54, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:03:02', '2024-04-03 09:03:02'),
(55, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:03:05', '2024-04-03 09:03:05'),
(56, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"B\\u1ea3ng tin\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/auth\\/menu\"}', '2024-04-03 09:03:11', '2024-04-03 09:03:11'),
(57, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-03 09:03:12', '2024-04-03 09:03:12'),
(58, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:03:22', '2024-04-03 09:03:22'),
(59, 1, 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Qu\\u1ea3n l\\u00fd t\\u00e0i kho\\u1ea3n\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/auth\\/menu\"}', '2024-04-03 09:03:31', '2024-04-03 09:03:31'),
(60, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-03 09:03:32', '2024-04-03 09:03:32'),
(61, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":15},{\\\"id\\\":16},{\\\"id\\\":17},{\\\"id\\\":13},{\\\"id\\\":14},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]}]}]\"}', '2024-04-03 09:03:47', '2024-04-03 09:03:47'),
(62, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:03:48', '2024-04-03 09:03:48'),
(63, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-03 09:03:50', '2024-04-03 09:03:50'),
(64, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":15},{\\\"id\\\":17},{\\\"id\\\":16},{\\\"id\\\":13},{\\\"id\\\":14},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]}]}]\"}', '2024-04-03 09:04:02', '2024-04-03 09:04:02'),
(65, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:04:02', '2024-04-03 09:04:02'),
(66, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-03 09:04:04', '2024-04-03 09:04:04'),
(67, 1, 'admin/product-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:04:06', '2024-04-03 09:04:06'),
(68, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:04:08', '2024-04-03 09:04:08'),
(69, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:04:10', '2024-04-03 09:04:10'),
(70, 1, 'admin/product-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:25:34', '2024-04-03 09:25:34'),
(71, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:25:34', '2024-04-03 09:25:34'),
(72, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2024-04-03 09:25:39', '2024-04-03 09:25:39'),
(73, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:25:44', '2024-04-03 09:25:44'),
(74, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '[]', '2024-04-03 09:26:56', '2024-04-03 09:26:56'),
(75, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '[]', '2024-04-03 09:30:52', '2024-04-03 09:30:52'),
(76, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:31:02', '2024-04-03 09:31:02'),
(77, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:31:06', '2024-04-03 09:31:06'),
(78, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:31:12', '2024-04-03 09:31:12'),
(79, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:31:13', '2024-04-03 09:31:13'),
(80, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2024-04-03 09:32:21', '2024-04-03 09:32:21'),
(81, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:34:32', '2024-04-03 09:34:32'),
(82, 1, 'admin/product-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:34:39', '2024-04-03 09:34:39'),
(83, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:34:41', '2024-04-03 09:34:41'),
(84, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '[]', '2024-04-03 09:35:11', '2024-04-03 09:35:11'),
(85, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '[]', '2024-04-03 09:35:32', '2024-04-03 09:35:32'),
(86, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '[]', '2024-04-03 09:35:59', '2024-04-03 09:35:59'),
(87, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '[]', '2024-04-03 09:40:03', '2024-04-03 09:40:03'),
(88, 1, 'admin/product-categories', 'POST', '127.0.0.1', '{\"name\":\"Danh m\\u1ee5c 1\",\"description\":\"\\u00e1dsad\",\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\"}', '2024-04-03 09:40:19', '2024-04-03 09:40:19'),
(89, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2024-04-03 09:40:19', '2024-04-03 09:40:19'),
(90, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2024-04-03 09:40:39', '2024-04-03 09:40:39'),
(91, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2024-04-03 09:40:54', '2024-04-03 09:40:54'),
(92, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2024-04-03 09:41:02', '2024-04-03 09:41:02'),
(93, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2024-04-03 09:41:11', '2024-04-03 09:41:11'),
(94, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2024-04-03 09:43:57', '2024-04-03 09:43:57'),
(95, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:44:33', '2024-04-03 09:44:33'),
(96, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:46:24', '2024-04-03 09:46:24'),
(97, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-04-03 09:46:51', '2024-04-03 09:46:51'),
(98, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-04-03 09:47:18', '2024-04-03 09:47:18'),
(99, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"S\\u1ea3n ph\\u1ea9m 1\",\"desciption\":\"sadsad\",\"body\":\"<p>&aacute;dsad<\\/p>\",\"product_category_id\":\"1\",\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\"}', '2024-04-03 09:47:52', '2024-04-03 09:47:52'),
(100, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-03 09:47:52', '2024-04-03 09:47:52'),
(101, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-03 09:49:32', '2024-04-03 09:49:32'),
(102, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:49:39', '2024-04-03 09:49:39'),
(103, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"name\":\"S\\u1ea3n ph\\u1ea9m 1\",\"desciption\":\"sadsad\",\"body\":\"<p>&aacute;dsad<\\/p>\",\"product_category_id\":\"1\",\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/products\"}', '2024-04-03 09:49:47', '2024-04-03 09:49:47'),
(104, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-03 09:49:48', '2024-04-03 09:49:48'),
(105, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-03 09:52:49', '2024-04-03 09:52:49'),
(106, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"name\":\"S\\u1ea3n ph\\u1ea9m 1\",\"desciption\":\"sadsad\",\"body\":\"<p>&aacute;dsad<\\/p>\",\"product_category_id\":\"1\",\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\",\"_method\":\"PUT\"}', '2024-04-03 09:53:08', '2024-04-03 09:53:08'),
(107, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-03 09:53:08', '2024-04-03 09:53:08'),
(108, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 09:54:07', '2024-04-03 09:54:07'),
(109, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"name\":\"S\\u1ea3n ph\\u1ea9m 1\",\"desciption\":\"sadsad\",\"body\":\"<p>&aacute;dsad<\\/p>\",\"product_category_id\":\"1\",\"_token\":\"rBf2Xei6yVVdakrFcmILcTHArVcwmUk2wFMXT5Oz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/products\"}', '2024-04-03 09:54:16', '2024-04-03 09:54:16'),
(110, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-03 09:54:17', '2024-04-03 09:54:17'),
(111, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-04 09:12:58', '2024-04-04 09:12:58'),
(112, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-04 09:14:49', '2024-04-04 09:14:49'),
(113, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-04 09:14:49', '2024-04-04 09:14:49'),
(114, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-04 09:14:52', '2024-04-04 09:14:52'),
(115, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2024-04-04 09:16:23', '2024-04-04 09:16:23'),
(116, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-04 09:16:25', '2024-04-04 09:16:25'),
(117, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2024-04-04 09:17:38', '2024-04-04 09:17:38'),
(118, 1, 'admin/sliders', 'POST', '127.0.0.1', '{\"title\":\"sadsadsad\",\"link\":null,\"order\":\"1\",\"_token\":\"MyWLZ4QanO0qSkJBpHLbfXJlkwUW1FIlR0tDhGF7\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/sliders\"}', '2024-04-04 09:17:54', '2024-04-04 09:17:54'),
(119, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2024-04-04 09:17:55', '2024-04-04 09:17:55'),
(120, 1, 'admin/product-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-04 09:18:06', '2024-04-04 09:18:06'),
(121, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2024-04-04 09:18:54', '2024-04-04 09:18:54'),
(122, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2024-04-04 09:19:07', '2024-04-04 09:19:07'),
(123, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-08 03:41:27', '2024-04-08 03:41:27'),
(124, 1, 'admin/product-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-08 06:38:56', '2024-04-08 06:38:56'),
(125, 1, 'admin/product-categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-08 06:39:03', '2024-04-08 06:39:03'),
(126, 1, 'admin/product-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-08 06:39:08', '2024-04-08 06:39:08'),
(127, 1, 'admin/product-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-08 06:39:12', '2024-04-08 06:39:12'),
(128, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-08 06:39:13', '2024-04-08 06:39:13'),
(129, 1, 'admin/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-08 06:39:19', '2024-04-08 06:39:19'),
(130, 1, 'admin/products/1', 'GET', '127.0.0.1', '[]', '2024-04-08 06:39:20', '2024-04-08 06:39:20'),
(131, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-08 06:39:24', '2024-04-08 06:39:24'),
(132, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-08 06:39:26', '2024-04-08 06:39:26'),
(133, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-09 09:09:35', '2024-04-09 09:09:35'),
(134, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-10 06:35:53', '2024-04-10 06:35:53'),
(135, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 06:36:04', '2024-04-10 06:36:04'),
(136, 1, 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"storage:link\",\"_token\":\"jwWknbaMz75BMrZpVoTZL19FF30kG70QyJApV7iL\"}', '2024-04-10 06:36:10', '2024-04-10 06:36:10'),
(137, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-11 01:49:03', '2024-04-11 01:49:03'),
(138, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-11 01:49:07', '2024-04-11 01:49:07'),
(139, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-11 01:49:07', '2024-04-11 01:49:07'),
(140, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 01:52:40', '2024-04-11 01:52:40'),
(141, 1, 'admin/sliders/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 01:52:44', '2024-04-11 01:52:44'),
(142, 1, 'admin/sliders/1', 'PUT', '127.0.0.1', '{\"title\":\"Slider 1\",\"link\":null,\"order\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"after-save\":\"2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/sliders\"}', '2024-04-11 01:53:07', '2024-04-11 01:53:07'),
(143, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2024-04-11 01:53:07', '2024-04-11 01:53:07'),
(144, 1, 'admin/sliders', 'POST', '127.0.0.1', '{\"title\":\"Slider 2\",\"link\":null,\"order\":\"2\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/sliders\\/1\\/edit\"}', '2024-04-11 01:53:20', '2024-04-11 01:53:20'),
(145, 1, 'admin/sliders/create', 'GET', '127.0.0.1', '[]', '2024-04-11 01:53:20', '2024-04-11 01:53:20'),
(146, 1, 'admin/sliders', 'POST', '127.0.0.1', '{\"title\":\"Slider 3\",\"link\":null,\"order\":\"3\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\"}', '2024-04-11 01:53:34', '2024-04-11 01:53:34'),
(147, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2024-04-11 01:53:35', '2024-04-11 01:53:35'),
(148, 1, 'admin/admin-config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 01:53:43', '2024-04-11 01:53:43'),
(149, 1, 'admin/admin-config', 'GET', '127.0.0.1', '[]', '2024-04-11 01:54:46', '2024-04-11 01:54:46'),
(150, 1, 'admin/admin-config', 'POST', '127.0.0.1', '{\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\"}', '2024-04-11 01:54:52', '2024-04-11 01:54:52'),
(151, 1, 'admin/admin-config', 'GET', '127.0.0.1', '[]', '2024-04-11 01:54:52', '2024-04-11 01:54:52'),
(152, 1, 'admin/product-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:07:15', '2024-04-11 02:07:15'),
(153, 1, 'admin/product-categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:07:18', '2024-04-11 02:07:18'),
(154, 1, 'admin/product-categories/1', 'PUT', '127.0.0.1', '{\"name\":\"N\\u00fat b\\u00f2\",\"description\":\"N\\u00fat b\\u00f2\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/product-categories\"}', '2024-04-11 02:07:33', '2024-04-11 02:07:33'),
(155, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2024-04-11 02:07:33', '2024-04-11 02:07:33'),
(156, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:07:55', '2024-04-11 02:07:55'),
(157, 1, 'admin/product-categories', 'POST', '127.0.0.1', '{\"name\":\"\\u0110inh g\\u00f3c t\\u00fai\",\"description\":\"\\u0110inh g\\u00f3c t\\u00fai\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/product-categories\"}', '2024-04-11 02:08:04', '2024-04-11 02:08:04'),
(158, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '[]', '2024-04-11 02:08:04', '2024-04-11 02:08:04'),
(159, 1, 'admin/product-categories', 'POST', '127.0.0.1', '{\"name\":\"N\\u00fat k\\u1ebft kim lo\\u1ea1i\",\"description\":null,\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"after-save\":\"2\"}', '2024-04-11 02:09:07', '2024-04-11 02:09:07'),
(160, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '[]', '2024-04-11 02:09:08', '2024-04-11 02:09:08'),
(161, 1, 'admin/product-categories', 'POST', '127.0.0.1', '{\"name\":\"N\\u00fat b\\u00f3p\",\"description\":null,\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\"}', '2024-04-11 02:09:47', '2024-04-11 02:09:47'),
(162, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2024-04-11 02:09:47', '2024-04-11 02:09:47'),
(163, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:10:16', '2024-04-11 02:10:16'),
(164, 1, 'admin/product-categories', 'POST', '127.0.0.1', '{\"name\":\"N\\u00fat b\\u1ea5m 5 ch\\u1ea5u\",\"description\":null,\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/product-categories\"}', '2024-04-11 02:10:22', '2024-04-11 02:10:22'),
(165, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2024-04-11 02:10:23', '2024-04-11 02:10:23'),
(166, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:11:28', '2024-04-11 02:11:28'),
(167, 1, 'admin/product-categories', 'POST', '127.0.0.1', '{\"name\":\"M\\u00f3c \\u00e1o d\\u00e0i\",\"description\":null,\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/product-categories\"}', '2024-04-11 02:11:35', '2024-04-11 02:11:35'),
(168, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2024-04-11 02:11:36', '2024-04-11 02:11:36'),
(169, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:11:58', '2024-04-11 02:11:58'),
(170, 1, 'admin/product-categories', 'POST', '127.0.0.1', '{\"name\":\"M\\u00f3c \\u0111\\u00f3ng\",\"description\":null,\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/product-categories\"}', '2024-04-11 02:12:05', '2024-04-11 02:12:05'),
(171, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2024-04-11 02:12:05', '2024-04-11 02:12:05'),
(172, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:12:35', '2024-04-11 02:12:35'),
(173, 1, 'admin/product-categories', 'POST', '127.0.0.1', '{\"name\":\"N\\u00fat b\\u00f3p 2 ph\\u1ea7n\",\"description\":null,\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/product-categories\"}', '2024-04-11 02:12:47', '2024-04-11 02:12:47'),
(174, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2024-04-11 02:12:47', '2024-04-11 02:12:47'),
(175, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:13:13', '2024-04-11 02:13:13'),
(176, 1, 'admin/product-categories', 'POST', '127.0.0.1', '{\"name\":\"N\\u00fat k\\u1ebft v\\u1ea3i\",\"description\":null,\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/product-categories\"}', '2024-04-11 02:13:22', '2024-04-11 02:13:22'),
(177, 1, 'admin/product-categories', 'GET', '127.0.0.1', '[]', '2024-04-11 02:13:22', '2024-04-11 02:13:22'),
(178, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:13:59', '2024-04-11 02:13:59'),
(179, 1, 'admin/product-categories', 'POST', '127.0.0.1', '{\"name\":\"N\\u00fat Rivet\",\"description\":null,\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/product-categories\"}', '2024-04-11 02:14:06', '2024-04-11 02:14:06'),
(180, 1, 'admin/product-categories/create', 'GET', '127.0.0.1', '[]', '2024-04-11 02:14:06', '2024-04-11 02:14:06'),
(181, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:17:01', '2024-04-11 02:17:01'),
(182, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"1\",\"_model\":\"App_Models_Product\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2024-04-11 02:17:08', '2024-04-11 02:17:08'),
(183, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:17:08', '2024-04-11 02:17:08'),
(184, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:17:12', '2024-04-11 02:17:12'),
(185, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"N\\u00fat qu\\u1ea7n Jean\",\"desciption\":\"N\\u00fat qu\\u1ea7n Jean\",\"body\":\"<p>N&uacute;t qu\\u1ea7n Jean<\\/p>\",\"product_category_id\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/products\"}', '2024-04-11 02:17:36', '2024-04-11 02:17:36'),
(186, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2024-04-11 02:17:37', '2024-04-11 02:17:37'),
(187, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"N\\u00fat qu\\u1ea7n t\\u00e2y\",\"desciption\":\"N\\u00fat qu\\u1ea7n t\\u00e2y\",\"body\":\"<p>N&uacute;t qu\\u1ea7n t&acirc;y<\\/p>\",\"product_category_id\":\"3\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\"}', '2024-04-11 02:18:03', '2024-04-11 02:18:03'),
(188, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:18:04', '2024-04-11 02:18:04'),
(189, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:18:09', '2024-04-11 02:18:09'),
(190, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"N\\u00fat kim lo\\u1ea1i\",\"desciption\":\"sad\",\"body\":\"<p>sad<\\/p>\",\"product_category_id\":\"4\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/products\"}', '2024-04-11 02:18:31', '2024-04-11 02:18:31'),
(191, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:18:32', '2024-04-11 02:18:32'),
(192, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:22:13', '2024-04-11 02:22:13'),
(193, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:22:18', '2024-04-11 02:22:18'),
(194, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"name\":\"S\\u1ea3n ph\\u1ea9m 1\",\"desciption\":\"sadsad\",\"body\":\"<p>&aacute;dsad<\\/p>\",\"product_category_id\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/products\"}', '2024-04-11 02:22:34', '2024-04-11 02:22:34'),
(195, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:22:34', '2024-04-11 02:22:34'),
(196, 1, 'admin/products/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:22:40', '2024-04-11 02:22:40'),
(197, 1, 'admin/products/5', 'PUT', '127.0.0.1', '{\"name\":\"S\\u1ea3n ph\\u1ea9m 1 1\",\"desciption\":\"sadsad\",\"body\":\"<p>&aacute;dsad<\\/p>\",\"product_category_id\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/products\"}', '2024-04-11 02:22:48', '2024-04-11 02:22:48'),
(198, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:22:48', '2024-04-11 02:22:48'),
(199, 1, 'admin/products/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:22:51', '2024-04-11 02:22:51'),
(200, 1, 'admin/products/8', 'PUT', '127.0.0.1', '{\"name\":\"N\\u00fat kim lo\\u1ea1i 2\",\"desciption\":\"sad\",\"body\":\"<p>sad<\\/p>\",\"product_category_id\":\"4\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/products\"}', '2024-04-11 02:23:06', '2024-04-11 02:23:06'),
(201, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:23:06', '2024-04-11 02:23:06'),
(202, 1, 'admin/products/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:23:13', '2024-04-11 02:23:13'),
(203, 1, 'admin/products/6', 'PUT', '127.0.0.1', '{\"name\":\"N\\u00fat qu\\u1ea7n Jean\",\"desciption\":\"N\\u00fat qu\\u1ea7n Jean 1\",\"body\":\"<p>N&uacute;t qu\\u1ea7n Jean<\\/p>\",\"product_category_id\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/products\"}', '2024-04-11 02:23:20', '2024-04-11 02:23:20'),
(204, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:23:20', '2024-04-11 02:23:20'),
(205, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:31:41', '2024-04-11 02:31:41'),
(206, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:32:18', '2024-04-11 02:32:18'),
(207, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:32:49', '2024-04-11 02:32:49'),
(208, 1, 'admin/products/4', 'PUT', '127.0.0.1', '{\"hot_dell\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2024-04-11 02:32:52', '2024-04-11 02:32:52'),
(209, 1, 'admin/products/8', 'PUT', '127.0.0.1', '{\"hot_dell\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2024-04-11 02:32:54', '2024-04-11 02:32:54'),
(210, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"hot_dell\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2024-04-11 02:32:55', '2024-04-11 02:32:55'),
(211, 1, 'admin/products/7', 'PUT', '127.0.0.1', '{\"hot_dell\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2024-04-11 02:32:56', '2024-04-11 02:32:56'),
(212, 1, 'admin/products/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:32:59', '2024-04-11 02:32:59'),
(213, 1, 'admin/products/4', 'PUT', '127.0.0.1', '{\"name\":\"N\\u00fat kim lo\\u1ea1i\",\"hot_sell\":\"off\",\"desciption\":\"sad\",\"body\":\"<p>sad<\\/p>\",\"product_category_id\":\"4\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/products\"}', '2024-04-11 02:33:07', '2024-04-11 02:33:07'),
(214, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:33:07', '2024-04-11 02:33:07'),
(215, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:35:22', '2024-04-11 02:35:22'),
(216, 1, 'admin/products/4', 'PUT', '127.0.0.1', '{\"hot_dell\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2024-04-11 02:35:23', '2024-04-11 02:35:23'),
(217, 1, 'admin/products/8', 'PUT', '127.0.0.1', '{\"hot_dell\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2024-04-11 02:35:25', '2024-04-11 02:35:25'),
(218, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:35:27', '2024-04-11 02:35:27'),
(219, 1, 'admin/products/4', 'PUT', '127.0.0.1', '{\"hot_dell\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2024-04-11 02:35:28', '2024-04-11 02:35:28'),
(220, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:36:07', '2024-04-11 02:36:07'),
(221, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:36:40', '2024-04-11 02:36:40'),
(222, 1, 'admin/products/4', 'PUT', '127.0.0.1', '{\"hot_dell\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2024-04-11 02:36:42', '2024-04-11 02:36:42'),
(223, 1, 'admin/products/8', 'PUT', '127.0.0.1', '{\"hot_dell\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2024-04-11 02:36:44', '2024-04-11 02:36:44'),
(224, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"hot_dell\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2024-04-11 02:36:56', '2024-04-11 02:36:56'),
(225, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:37:19', '2024-04-11 02:37:19'),
(226, 1, 'admin/products/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:37:24', '2024-04-11 02:37:24'),
(227, 1, 'admin/products/4', 'PUT', '127.0.0.1', '{\"name\":\"N\\u00fat kim lo\\u1ea1i\",\"hot_sell\":\"on\",\"desciption\":\"sad\",\"body\":\"<p>sad<\\/p>\",\"product_category_id\":\"4\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/catalog.test\\/admin\\/products\"}', '2024-04-11 02:37:27', '2024-04-11 02:37:27'),
(228, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:37:27', '2024-04-11 02:37:27'),
(229, 1, 'admin/products/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:37:30', '2024-04-11 02:37:30'),
(230, 1, 'admin/products/4/edit', 'GET', '127.0.0.1', '[]', '2024-04-11 02:37:57', '2024-04-11 02:37:57'),
(231, 1, 'admin/products/4/edit', 'GET', '127.0.0.1', '[]', '2024-04-11 02:37:59', '2024-04-11 02:37:59'),
(232, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:38:03', '2024-04-11 02:38:03'),
(233, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:38:46', '2024-04-11 02:38:46'),
(234, 1, 'admin/products/4', 'PUT', '127.0.0.1', '{\"hot_dell\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2024-04-11 02:38:48', '2024-04-11 02:38:48'),
(235, 1, 'admin/products/8', 'PUT', '127.0.0.1', '{\"hot_dell\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2024-04-11 02:38:49', '2024-04-11 02:38:49'),
(236, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:38:50', '2024-04-11 02:38:50'),
(237, 1, 'admin/products/4', 'PUT', '127.0.0.1', '{\"hot_dell\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2024-04-11 02:38:52', '2024-04-11 02:38:52'),
(238, 1, 'admin/products/8', 'PUT', '127.0.0.1', '{\"hot_dell\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2024-04-11 02:39:04', '2024-04-11 02:39:04'),
(239, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:39:24', '2024-04-11 02:39:24'),
(240, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"hot_sell\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2024-04-11 02:39:27', '2024-04-11 02:39:27'),
(241, 1, 'admin/products/6', 'PUT', '127.0.0.1', '{\"hot_sell\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2024-04-11 02:39:34', '2024-04-11 02:39:34'),
(242, 1, 'admin/products/5', 'PUT', '127.0.0.1', '{\"hot_sell\":\"1\",\"_token\":\"jesQvX2vd709hnyOsSQ3nRTZKcv8IboPcSc0PekU\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2024-04-11 02:39:37', '2024-04-11 02:39:37'),
(243, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2024-04-11 02:39:38', '2024-04-11 02:39:38'),
(244, 1, 'admin/sliders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-11 02:46:13', '2024-04-11 02:46:13'),
(245, 1, 'admin/sliders', 'GET', '127.0.0.1', '[]', '2024-04-11 02:46:34', '2024-04-11 02:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2024-04-03 08:24:11', '2024-04-03 08:24:11'),
(7, 'Media manager', 'ext.media-manager', '', '/media*', '2024-04-03 08:24:40', '2024-04-03 08:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-04-03 01:10:22', '2024-04-03 01:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 15, NULL, NULL),
(1, 16, NULL, NULL),
(1, 17, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$qOzF3s/TFnLd0KMi7sZ35.WRjzyXaUFK4wGUFSdrGjj86bySu9GUm', 'Administrator', 'images/314741056_2167238693456972_5846913736209919980_n.jpg', 'nyNqbZfSva6cJ1sFyC0ukrNaE2tKCHrbWa7Tig7JcK3TEPwIOxkfPPY3YgCq', '2024-04-03 01:10:22', '2024-04-03 08:26:47');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2017_07_17_040159_create_config_table', 2),
(5, '2024_04_03_154338_create_product_categories_table', 3),
(6, '2024_04_03_154717_create_products_table', 4),
(7, '2024_04_03_155329_create_sliders_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_sell` tinyint(1) NOT NULL DEFAULT '0',
  `desciption` text COLLATE utf8mb4_unicode_ci,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pictures` text COLLATE utf8mb4_unicode_ci,
  `product_category_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `hot_sell`, `desciption`, `body`, `picture`, `pictures`, `product_category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sản phẩm 1', 'san-pham-1', 0, 'sadsad', '<p>&aacute;dsad</p>', 'images/unnamed (1).jpg', '[\"images\\/1d16c73dbcfd9f7140a5e20cec6a17fd.jpg\",\"images\\/879c916a8e0c9dd0ba908cbe80c68671.jpg\"]', 1, '2024-04-03 09:47:52', '2024-04-11 02:22:34', NULL),
(2, 'Nút quần Jean', 'nut-quan-jean', 0, 'Nút quần Jean', '<p>N&uacute;t quần Jean</p>', 'images/930248d316e285de1cc65a6c3fe20a25.jpg_720x720q80.jpg', NULL, 1, '2024-04-11 02:17:36', '2024-04-11 02:17:36', NULL),
(3, 'Nút quần tây', 'nut-quan-tay', 1, 'Nút quần tây', '<p>N&uacute;t quần t&acirc;y</p>', 'images/vn-11134207-7qukw-lhr5us8ifw01ca.jpg', NULL, 3, '2024-04-11 02:18:03', '2024-04-11 02:39:27', NULL),
(4, 'Nút kim loại', 'nut-kim-loai', 1, 'sad', '<p>sad</p>', 'images/cuc-ao-so-mi-2.jpg', NULL, 4, '2024-04-11 02:18:31', '2024-04-11 02:37:27', NULL),
(5, 'Sản phẩm 1 1', 'san-pham-1-1', 1, 'sadsad', '<p>&aacute;dsad</p>', 'images/xinhan-nut-ao-252-slide-products-55dd622b0a143.jpg', '[\"images\\/1d16c73dbcfd9f7140a5e20cec6a17fd.jpg\",\"images\\/879c916a8e0c9dd0ba908cbe80c68671.jpg\"]', 1, '2024-04-03 09:47:52', '2024-04-11 02:39:37', NULL),
(6, 'Nút quần Jean', 'nut-quan-jean-1', 1, 'Nút quần Jean 1', '<p>N&uacute;t quần Jean</p>', 'images/cf39ba870c66ce1dc95b5ee95a222ba0.jpg', NULL, 1, '2024-04-11 02:17:36', '2024-04-11 02:39:34', NULL),
(7, 'Nút quần tây 1', 'nut-quan-tay-1', 0, 'Nút quần tây', '<p>N&uacute;t quần t&acirc;y</p>', 'images/vn-11134207-7qukw-lhr5us8ifw01ca.jpg', NULL, 3, '2024-04-11 02:18:03', '2024-04-11 02:18:03', NULL),
(8, 'Nút kim loại 2', 'nut-kim-loai-2', 0, 'sad', '<p>sad</p>', 'images/a2bf0eb3383625e71187f0c4cc92dc74.jpg', NULL, 4, '2024-04-11 02:18:31', '2024-04-11 02:23:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `picture`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Nút bò', 'images/Tay-nam-tu-da-bo-nut-dong-cao-cap-JJ0045-3.jpg', 'danh-muc-1', 'Nút bò', '2024-04-03 09:40:19', '2024-04-11 02:07:33'),
(2, 'Đinh góc túi', 'images/sg-11134201-7rcey-lssgmhnd6dlw71.jpg', 'dinh-goc-tui', 'Đinh góc túi', '2024-04-11 02:08:04', '2024-04-11 02:08:04'),
(3, 'Nút kết kim loại', 'images/lovepik-metal-texture-gradient-button-png-image_401317234_wh1200.png', 'nut-ket-kim-loai', NULL, '2024-04-11 02:09:08', '2024-04-11 02:09:08'),
(4, 'Nút bóp', 'images/abc4c1777e2449d048bf93e30454a5c3.jpg', 'nut-bop', NULL, '2024-04-11 02:09:47', '2024-04-11 02:09:47'),
(5, 'Nút bấm 5 chấu', 'images/vn-11134207-7r98o-lp2l37lw0bx784.jpg', 'nut-bam-5-chau', NULL, '2024-04-11 02:10:23', '2024-04-11 02:10:23'),
(6, 'Móc áo dài', 'images/unnamed.png', 'moc-ao-dai', NULL, '2024-04-11 02:11:36', '2024-04-11 02:11:36'),
(7, 'Móc đóng', 'images/Moc-treo-tuong-bang-dinh-ghim-4.jpg', 'moc-dong', NULL, '2024-04-11 02:12:05', '2024-04-11 02:12:05'),
(8, 'Nút bóp 2 phần', 'images/084e16b0-d264-11eb-a768-0fc6a425329e.webp', 'nut-bop-2-phan', NULL, '2024-04-11 02:12:47', '2024-04-11 02:12:47'),
(9, 'Nút kết vải', 'images/nút-nón-két_s1307.png', 'nut-ket-vai', NULL, '2024-04-11 02:13:22', '2024-04-11 02:13:22'),
(10, 'Nút Rivet', 'images/3c08205ce9483846adaa6d3e192708d0.jpg_720x720q80.jpg', 'nut-rivet', NULL, '2024-04-11 02:14:06', '2024-04-11 02:14:06'),
(11, 'Nút Rivet', 'images/3c08205ce9483846adaa6d3e192708d0.jpg_720x720q80.jpg', 'nut-rivet-1', NULL, '2024-04-11 02:14:06', '2024-04-11 02:14:06'),
(12, 'Nút kết vải', 'images/nút-nón-két_s1307.png', 'nut-ket-vai1', NULL, '2024-04-11 02:13:22', '2024-04-11 02:13:22'),
(13, 'Nút bấm 5 chấu', 'images/vn-11134207-7r98o-lp2l37lw0bx784.jpg', 'nut-bam-5-chau1', NULL, '2024-04-11 02:10:23', '2024-04-11 02:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `picture`, `link`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Slider 1', 'images/39248d771e2134798cefce4639d8e408.jpg', NULL, 1, '2024-04-04 09:17:54', '2024-04-11 01:53:07', NULL),
(2, 'Slider 2', 'images/slider2.png', NULL, 2, '2024-04-11 01:53:20', '2024-04-11 01:53:20', NULL),
(3, 'Slider 3', 'images/slider3.jpg', NULL, 3, '2024-04-11 01:53:34', '2024-04-11 01:53:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_config`
--
ALTER TABLE `admin_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_config_name_unique` (`name`);

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `product_category_id` (`product_category_id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_categories_slug_unique` (`slug`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_config`
--
ALTER TABLE `admin_config`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
