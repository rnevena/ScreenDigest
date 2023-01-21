-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2022 at 09:53 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `screendigest`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `activity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `activity`, `ip`, `date`, `created_at`, `updated_at`) VALUES
(1, 3, 'Log In', '127.0.0.1', '2022-03-11 15:54:02', '2022-03-11 14:54:02', '2022-03-11 14:54:02'),
(2, 3, 'Log In', '127.0.0.1', '2022-03-11 16:13:43', '2022-03-11 15:13:43', '2022-03-11 15:13:43'),
(3, 3, 'Log Out', '127.0.0.1', '2022-03-11 16:13:47', '2022-03-11 15:13:47', '2022-03-11 15:13:47'),
(4, 3, 'Log In', '127.0.0.1', '2022-03-11 16:14:12', '2022-03-11 15:14:12', '2022-03-11 15:14:12'),
(5, 3, 'Log Out', '127.0.0.1', '2022-03-11 16:14:20', '2022-03-11 15:14:20', '2022-03-11 15:14:20'),
(6, 3, 'Log In', '127.0.0.1', '2022-03-11 16:25:17', '2022-03-11 15:25:17', '2022-03-11 15:25:17'),
(7, 3, 'Log Out', '127.0.0.1', '2022-03-11 16:25:21', '2022-03-11 15:25:21', '2022-03-11 15:25:21'),
(8, 1, 'Log In', '127.0.0.1', '2022-03-11 16:29:01', '2022-03-11 15:29:01', '2022-03-11 15:29:01'),
(9, 1, 'Log In', '127.0.0.1', '2022-03-11 16:29:43', '2022-03-11 15:29:43', '2022-03-11 15:29:43'),
(10, 1, 'Log Out', '127.0.0.1', '2022-03-11 16:30:01', '2022-03-11 15:30:01', '2022-03-11 15:30:01'),
(11, 3, 'Log In', '127.0.0.1', '2022-03-11 16:30:20', '2022-03-11 15:30:20', '2022-03-11 15:30:20'),
(12, 3, 'Log Out', '127.0.0.1', '2022-03-11 16:31:00', '2022-03-11 15:31:00', '2022-03-11 15:31:00'),
(13, 1, 'Log In', '127.0.0.1', '2022-03-11 16:31:15', '2022-03-11 15:31:15', '2022-03-11 15:31:15'),
(14, 1, 'Log Out', '127.0.0.1', '2022-03-11 16:31:32', '2022-03-11 15:31:32', '2022-03-11 15:31:32'),
(15, 3, 'Log In', '127.0.0.1', '2022-03-11 17:12:41', '2022-03-11 16:12:41', '2022-03-11 16:12:41'),
(16, 3, 'Log Out', '127.0.0.1', '2022-03-11 17:17:59', '2022-03-11 16:18:00', '2022-03-11 16:18:00'),
(17, 1, 'Log In', '127.0.0.1', '2022-03-11 17:18:16', '2022-03-11 16:18:16', '2022-03-11 16:18:16'),
(18, 1, 'Log In', '127.0.0.1', '2022-03-11 18:17:07', '2022-03-11 17:17:07', '2022-03-11 17:17:07'),
(19, 1, 'Log In', '127.0.0.1', '2022-03-11 18:36:23', '2022-03-11 17:36:23', '2022-03-11 17:36:23'),
(20, 1, 'Log Out', '127.0.0.1', '2022-03-11 19:00:18', '2022-03-11 18:00:18', '2022-03-11 18:00:18'),
(21, 3, 'Log In', '127.0.0.1', '2022-03-11 19:00:26', '2022-03-11 18:00:26', '2022-03-11 18:00:26'),
(22, 1, 'Log In', '127.0.0.1', '2022-03-11 19:04:04', '2022-03-11 18:04:04', '2022-03-11 18:04:04'),
(23, 1, 'Log Out', '127.0.0.1', '2022-03-11 19:17:45', '2022-03-11 18:17:45', '2022-03-11 18:17:45'),
(24, 1, 'Log In', '127.0.0.1', '2022-03-12 00:42:44', '2022-03-11 23:42:44', '2022-03-11 23:42:44'),
(25, 1, 'Log In', '127.0.0.1', '2022-03-12 01:13:17', '2022-03-12 00:13:17', '2022-03-12 00:13:17'),
(26, 1, 'Log Out', '127.0.0.1', '2022-03-12 01:13:57', '2022-03-12 00:13:57', '2022-03-12 00:13:57'),
(27, 6, 'Registered', '127.0.0.1', '2022-03-12 01:14:21', '2022-03-12 00:14:21', '2022-03-12 00:14:21'),
(28, 6, 'Log In', '127.0.0.1', '2022-03-12 01:14:30', '2022-03-12 00:14:30', '2022-03-12 00:14:30'),
(29, 6, 'Log Out', '127.0.0.1', '2022-03-12 01:14:33', '2022-03-12 00:14:33', '2022-03-12 00:14:33'),
(30, 1, 'Log In', '127.0.0.1', '2022-03-12 01:14:55', '2022-03-12 00:14:55', '2022-03-12 00:14:55'),
(31, 1, 'Log In', '127.0.0.1', '2022-03-12 01:24:19', '2022-03-12 00:24:19', '2022-03-12 00:24:19'),
(32, 1, 'Log In', '127.0.0.1', '2022-03-12 09:33:22', '2022-03-12 08:33:22', '2022-03-12 08:33:22'),
(33, 1, 'Posted comment', '127.0.0.1', '2022-03-12 10:10:31', '2022-03-12 09:10:31', '2022-03-12 09:10:31'),
(34, 1, 'Deleted comment', '127.0.0.1', '2022-03-12 10:11:24', '2022-03-12 09:11:24', '2022-03-12 09:11:24'),
(35, 1, 'Log Out', '127.0.0.1', '2022-03-12 10:18:45', '2022-03-12 09:18:45', '2022-03-12 09:18:45'),
(36, 2, 'Log In', '127.0.0.1', '2022-03-12 10:19:02', '2022-03-12 09:19:02', '2022-03-12 09:19:02'),
(37, 2, 'Log Out', '127.0.0.1', '2022-03-12 10:19:10', '2022-03-12 09:19:10', '2022-03-12 09:19:10'),
(38, 1, 'Log In', '127.0.0.1', '2022-03-12 10:22:06', '2022-03-12 09:22:06', '2022-03-12 09:22:06'),
(39, 1, 'Log In', '127.0.0.1', '2022-03-12 10:36:49', '2022-03-12 09:36:49', '2022-03-12 09:36:49'),
(40, 1, 'Log Out', '127.0.0.1', '2022-03-12 10:38:19', '2022-03-12 09:38:19', '2022-03-12 09:38:19'),
(41, 2, 'Log In', '127.0.0.1', '2022-03-12 10:38:32', '2022-03-12 09:38:32', '2022-03-12 09:38:32'),
(42, 2, 'Log Out', '127.0.0.1', '2022-03-12 10:39:12', '2022-03-12 09:39:12', '2022-03-12 09:39:12'),
(43, 3, 'Log In', '127.0.0.1', '2022-03-12 10:39:22', '2022-03-12 09:39:22', '2022-03-12 09:39:22'),
(44, 3, 'Posted comment', '127.0.0.1', '2022-03-12 10:42:28', '2022-03-12 09:42:28', '2022-03-12 09:42:28'),
(45, 3, 'Log Out', '127.0.0.1', '2022-03-12 10:48:15', '2022-03-12 09:48:15', '2022-03-12 09:48:15'),
(46, 1, 'Log In', '127.0.0.1', '2022-03-12 10:48:29', '2022-03-12 09:48:29', '2022-03-12 09:48:29'),
(47, 1, 'Log In', '127.0.0.1', '2022-03-12 11:26:13', '2022-03-12 10:26:13', '2022-03-12 10:26:13'),
(48, 1, 'Log Out', '127.0.0.1', '2022-03-12 11:27:30', '2022-03-12 10:27:30', '2022-03-12 10:27:30'),
(49, 2, 'Log In', '127.0.0.1', '2022-03-12 11:27:52', '2022-03-12 10:27:52', '2022-03-12 10:27:52'),
(50, 2, 'Log Out', '127.0.0.1', '2022-03-12 11:27:59', '2022-03-12 10:27:59', '2022-03-12 10:27:59'),
(51, 1, 'Log In', '127.0.0.1', '2022-03-12 11:28:20', '2022-03-12 10:28:20', '2022-03-12 10:28:20'),
(52, 1, 'Log In', '127.0.0.1', '2022-03-12 12:44:25', '2022-03-12 11:44:25', '2022-03-12 11:44:25'),
(53, 1, 'User info updated', '127.0.0.1', '2022-03-12 12:54:19', '2022-03-12 11:54:19', '2022-03-12 11:54:19'),
(54, 1, 'User info updated', '127.0.0.1', '2022-03-12 12:54:55', '2022-03-12 11:54:55', '2022-03-12 11:54:55'),
(55, 1, 'User deleted', '127.0.0.1', '2022-03-12 13:05:07', '2022-03-12 12:05:07', '2022-03-12 12:05:07'),
(56, 7, 'Registered', '127.0.0.1', '2022-03-12 13:20:02', '2022-03-12 12:20:02', '2022-03-12 12:20:02'),
(57, 8, 'User added', '127.0.0.1', '2022-03-12 13:28:52', '2022-03-12 12:28:52', '2022-03-12 12:28:52'),
(58, 9, 'User added', '127.0.0.1', '2022-03-12 13:29:36', '2022-03-12 12:29:36', '2022-03-12 12:29:36'),
(59, 1, 'Category updated', '127.0.0.1', '2022-03-12 14:21:23', '2022-03-12 13:21:23', '2022-03-12 13:21:23'),
(60, 1, 'Category added', '127.0.0.1', '2022-03-12 14:34:05', '2022-03-12 13:34:05', '2022-03-12 13:34:05'),
(61, 1, 'Category updated', '127.0.0.1', '2022-03-12 14:34:34', '2022-03-12 13:34:34', '2022-03-12 13:34:34'),
(62, 1, 'Log In', '127.0.0.1', '2022-03-12 15:03:01', '2022-03-12 14:03:01', '2022-03-12 14:03:01'),
(63, 1, 'Category deleted', '127.0.0.1', '2022-03-12 15:04:19', '2022-03-12 14:04:19', '2022-03-12 14:04:19'),
(64, 1, 'Log Out', '127.0.0.1', '2022-03-12 15:04:43', '2022-03-12 14:04:43', '2022-03-12 14:04:43'),
(65, 2, 'Log In', '127.0.0.1', '2022-03-12 15:06:28', '2022-03-12 14:06:28', '2022-03-12 14:06:28'),
(66, 2, 'Log Out', '127.0.0.1', '2022-03-12 15:14:06', '2022-03-12 14:14:06', '2022-03-12 14:14:06'),
(67, 1, 'Log In', '127.0.0.1', '2022-03-12 15:14:22', '2022-03-12 14:14:22', '2022-03-12 14:14:22'),
(68, 1, 'Log Out', '127.0.0.1', '2022-03-12 15:15:18', '2022-03-12 14:15:18', '2022-03-12 14:15:18'),
(69, 2, 'Log In', '127.0.0.1', '2022-03-12 15:15:29', '2022-03-12 14:15:29', '2022-03-12 14:15:29'),
(70, 2, 'Log In', '127.0.0.1', '2022-03-12 16:19:05', '2022-03-12 15:19:05', '2022-03-12 15:19:05'),
(71, 2, 'Log In', '127.0.0.1', '2022-03-12 16:44:13', '2022-03-12 15:44:13', '2022-03-12 15:44:13'),
(72, 2, 'Log In', '127.0.0.1', '2022-03-12 16:51:26', '2022-03-12 15:51:26', '2022-03-12 15:51:26'),
(73, 2, 'Log Out', '127.0.0.1', '2022-03-12 17:24:47', '2022-03-12 16:24:47', '2022-03-12 16:24:47'),
(74, 1, 'Log In', '127.0.0.1', '2022-03-12 17:25:01', '2022-03-12 16:25:01', '2022-03-12 16:25:01'),
(75, 1, 'User info updated', '127.0.0.1', '2022-03-12 17:25:23', '2022-03-12 16:25:23', '2022-03-12 16:25:23'),
(76, 1, 'Log Out', '127.0.0.1', '2022-03-12 17:25:40', '2022-03-12 16:25:40', '2022-03-12 16:25:40'),
(77, 2, 'Log In', '127.0.0.1', '2022-03-12 17:26:05', '2022-03-12 16:26:05', '2022-03-12 16:26:05'),
(78, 2, 'Log In', '127.0.0.1', '2022-03-12 17:52:25', '2022-03-12 16:52:25', '2022-03-12 16:52:25'),
(79, 2, 'Log In', '127.0.0.1', '2022-03-12 18:00:14', '2022-03-12 17:00:14', '2022-03-12 17:00:14'),
(80, 2, 'Post updated', '127.0.0.1', '2022-03-12 18:00:40', '2022-03-12 17:00:40', '2022-03-12 17:00:40'),
(81, 2, 'Log Out', '127.0.0.1', '2022-03-12 19:16:24', '2022-03-12 18:16:24', '2022-03-12 18:16:24'),
(82, 1, 'Log In', '127.0.0.1', '2022-03-12 19:16:43', '2022-03-12 18:16:43', '2022-03-12 18:16:43'),
(83, 1, 'Log Out', '127.0.0.1', '2022-03-12 19:19:46', '2022-03-12 18:19:46', '2022-03-12 18:19:46'),
(84, 2, 'Log In', '127.0.0.1', '2022-03-12 19:20:19', '2022-03-12 18:20:19', '2022-03-12 18:20:19'),
(85, 2, 'Log Out', '127.0.0.1', '2022-03-12 19:41:19', '2022-03-12 18:41:19', '2022-03-12 18:41:19'),
(86, 1, 'Log In', '127.0.0.1', '2022-03-12 19:41:38', '2022-03-12 18:41:38', '2022-03-12 18:41:38'),
(87, 1, 'Log Out', '127.0.0.1', '2022-03-12 19:43:17', '2022-03-12 18:43:17', '2022-03-12 18:43:17'),
(88, 2, 'Log In', '127.0.0.1', '2022-03-12 19:43:42', '2022-03-12 18:43:42', '2022-03-12 18:43:42'),
(89, 2, 'Log In', '127.0.0.1', '2022-03-12 19:52:54', '2022-03-12 18:52:54', '2022-03-12 18:52:54'),
(90, 2, 'Post added', '127.0.0.1', '2022-03-12 19:56:17', '2022-03-12 18:56:17', '2022-03-12 18:56:17'),
(91, 2, 'Post deleted', '127.0.0.1', '2022-03-12 19:57:04', '2022-03-12 18:57:04', '2022-03-12 18:57:04'),
(92, 2, 'Post deleted', '127.0.0.1', '2022-03-12 19:57:09', '2022-03-12 18:57:09', '2022-03-12 18:57:09'),
(93, 2, 'Post updated', '127.0.0.1', '2022-03-12 19:57:25', '2022-03-12 18:57:25', '2022-03-12 18:57:25'),
(94, 2, 'Post updated', '127.0.0.1', '2022-03-12 20:00:28', '2022-03-12 19:00:28', '2022-03-12 19:00:28'),
(95, 2, 'Post updated', '127.0.0.1', '2022-03-12 20:02:53', '2022-03-12 19:02:53', '2022-03-12 19:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Movie news', NULL, NULL),
(2, 'TV news', NULL, NULL),
(3, 'Reviews', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `category_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 1, 4, NULL, NULL),
(5, 3, 5, NULL, NULL),
(6, 3, 6, NULL, NULL),
(7, 2, 7, NULL, NULL),
(8, 2, 8, NULL, NULL),
(9, 1, 9, NULL, NULL),
(10, 1, 10, NULL, NULL),
(11, 1, 11, NULL, NULL),
(12, 2, 12, NULL, NULL),
(13, 3, 13, NULL, NULL),
(14, 2, 14, NULL, NULL),
(15, 1, 15, NULL, NULL),
(16, 3, 16, NULL, NULL),
(17, 2, 17, NULL, NULL),
(18, 3, 18, NULL, NULL),
(19, 2, 19, NULL, NULL),
(20, 2, 20, NULL, NULL),
(21, 1, 21, NULL, NULL),
(22, 2, 22, NULL, NULL),
(23, 3, 23, NULL, NULL),
(24, 1, 24, NULL, NULL),
(25, 3, 25, NULL, NULL),
(32, 1, 32, NULL, NULL),
(33, 2, 32, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(2, 4, 2, 'But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? ', '2022-03-03 17:00:00', '2022-03-03 17:00:00'),
(5, 4, 1, 'But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', '2022-03-11 18:06:46', '2022-03-11 18:06:46'),
(8, 1, 3, 'Here is the rule to remember in the future, when anything tempts you to be bitter: not, \'This is a misfortune\' but \'To bear this worthily is good fortune.\'', '2022-03-12 09:42:28', '2022-03-12 09:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_03_06_194227_create_categories_table', 1),
(5, '2022_03_06_194311_create_posts_table', 1),
(6, '2022_03_06_194403_create_roles_table', 1),
(7, '2022_03_06_194444_create_comments_table', 1),
(8, '2022_03_06_200011_create_users_table', 1),
(9, '2022_03_06_202337_create_category_post_table', 1),
(10, '2022_03_11_154108_create_activities_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `img`, `content`, `user_id`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Could Joaquin Phoenix’s Joker Crossover With The Batman? Here’s What Director Matt Reeves Thinks', 'joker.png', 'Joker was a massive success when it hit theaters back in 2019, with Joaquin Phoenix earning an Academy Award for his portrayal of Arthur Fleck. Since then fans have been hoping for a sequel, and The Batman’s release seemingly made the way for an awesome crossover event. Director Matt Reeves was recently asked about the potential of that pairing, responding honestly with: \"I was finishing the Planet of the Apes movies when I first came on board [Batman], in 2017. It\'s been five years in the making. When I was working on the script, and got deep into the script, Joker hadn\'t come out yet. I didn\'t know what Joker was or what it was going to be\". \r\n\r\nWhile there seems to be a connection between the two DC movies for fans, that’s not necessarily the case for the filmmakers behind The Batman and Joker. Matt Reeves has been attached to his project about the Caped Crusader for years before Joker became a reality, so it was just never in the cards.\r\n\r\nWhile Marvel Studios is a stickler for serialized storytelling, Warner Bros. is allowing filmmakers to work with DC stories that aren’t connected to the shared universe. This allows filmmakers like Todd Phillips and Matt Reeves to make bold narrative choices, without worrying about how it might affect the greater DCEU. In the same interview, the latter filmmaker further explained why a crossover is unlikely, saying: \"I became aware of [Joker] once we were very deep into [The Batman], and the fact that they were grounding things in a way that was reminiscent of things that we were doing, that wasn\'t planned. Joker was always meant to be a very specific standalone that Joaquin and Todd were doing. There was never really any discussion of crossover\".\r\n\r\nWhile Matt Reeves seemingly has a ton of ideas for his vision of Gotham City after The Batman, it doesn’t seem to include a crossover with Joker. Instead, he’ll be expanding the franchise with a spinoff series for HBO Max. As for The Batman’s future on the big screen, that’ll likely depend on how the movie performs at the box office now that it’s in theaters. Fans are already theorizing about what a sequel might contain, and which villains might pop up.', 1, '2022-03-07 20:34:37', NULL, NULL),
(2, 'Where Are Freydis & Harald Going At The End Of Vikings: Valhalla?', 'vikings.png', 'The finale of Vikings: Valhalla season 1 left viewers with the image of Freydis Eiríksdóttir (Frida Gustavsson) and Harald Sigurdsson (Leo Suter) departing from Kattegat, begging the question of where they\'re going. Vikings: Valhalla features a brand new set of Norse heroes, based on real Vikings warriors, jarls, and kings. Alongside Leif Eriksson (Sam Corlett), the aforementioned Freydis and Harald now feature as the show\'s primary protagonists.\r\n\r\nAfter the final episode in Vikings: Valhalla season 1 saw Kattegat fall to Jarl Olaf Haraldsson (Jóhannes Haukur Jóhannesson), Freydis and a badly injured Harald decided to cut their losses, leaving the port town and heading away from the besieged Viking stronghold. Their departure resulted in them only just missing the quick end to Olaf\'s reign as ruler of Kattegat, with King Sweyn Forkbeard (Søren Pilmark) arriving en masse with the Danish fleet to reclaim the town as punishment for Olaf\'s betrayal. It seems likely that Harald and Freydis\' decision to leave at the ending of Vikings: Valhalla season 1 will be a major plot point of season 2, although it is not yet clear where their destination lies.\r\n\r\nHarald Sigurdsson is based on the legendary Viking king, Harald Hardrada, who would go on to become King of Norway, as well as having unsuccessful bids for the thrones of both Denmark and England. With this in mind, it could be that Harald intends to make his way to Denmark next. King Canute (Bradley Freegard), who rules Denmark at the time of their departure, is a friend and ally of Harald\'s, with the two capturing London together earlier in the season, alongside Leif and Olaf. In the latter half of Vikings: Valhalla season 1, Canute is called back to Denmark in order to defend his country from an impending invasion by a people referred to as the Wends. It may be that Harald seeks to be reunited with his comrade-in-arms, whose army he could use to materialize his dream of becoming King of Norway.\r\n\r\nA second possibility is that Freydis and Harald are simply looking for somewhere to lay low while Harald recovers from his wounds. The future king of Norway suffered a vicious ax blow to his side while fighting Jarl Kare\'s berserkers, and though he was able to escape Kattegat with the help of Freydis, it is still a serious wound that likely requires medical attention. Vikings: Valhalla has not yet explored much of Norway outside of Kattegat and Uppsala. This could be the ideal opportunity to introduce future allies or rivals, for when Harald\'s inevitable push for the throne of Norway finally comes to fruition. Alternatively, Harald and Freydis could journey to England, potentially allying with, or opposing, the recently reinstated Queen Emma of Normandy (Laura Berlin).\r\n\r\nOut of the three potential destinations mentioned above, a return to England is arguably the most unlikely. Apart from the forces of Mercia, there is little in terms of military might in England at this time, with Forkbeard\'s armies having set sail for Kattegat with the goal of wreaking vengeance on Olaf. Neither Freydis nor Harald have any particular friendship with Queen Emma or any of the Mercians, so it does not appear to be a logical choice for them to make.\r\n\r\nVenturing into mainland Norway or journeying to Denmark appear to be equally appealing options for destination countries in Vikings: Valhalla season 2. Each offers the two lovers a chance to begin life anew, opening up a route to potential future kingship for Harald while Freydis can further explore her new mysterious title as \"The Last.\" Denmark has not yet received the same level of attention as Norway in both Vikings and Vikings: Valhalla, so this may be the perfect opportunity to delve into the land of the Danes. Season 2 of Vikings: Valhalla will no doubt answer all the questions viewers have about the future of Freydis and Harald, as it continues to explore the lives of these historical figures whose actions would go on to impact all of Europe for many years to come.', 2, '2022-03-06 20:34:37', NULL, NULL),
(3, 'Creation Stories Review: Uneven Alan McGee Biopic Is Trainspotting Lite', 'trainspottinglite.png', 'The adaptation of the fantastical rise and fall of Creation Records\' founder attempts to capture the topsy-turvy vibe of its era, but falls short.\r\n\r\nCreation Stories tells the tale of Alan McGee, the man who helped change up the music scene in the UK with Brit Pop, which brought forth a cultural renaissance known as Cool Britannia. The film adaptation — based on the autobiography Creation Stories: Riots Raves & Running a Label — of the somewhat fantastical rise and fall of Creation Records\' founder attempts to capture the topsy-turvy vibe of its era, but falls short.\r\n\r\nCreation Stories flounders for nearly two hours and could have been tightened up to be a solid hour and 15 minutes long. Its ultimate downfall lies with the writing. Viewers unfamiliar with any of the people referenced in the film will be left scratching their heads or scrambling to Google who they are. There is also very little learned or understood about Alan McGee as a person beyond a collection of quirks and ambition. There is no subtlety to the story, which leaves viewers with a film that is style over substance. There is a great deal of effort put into the aesthetic — the frenetic intercutting with lively imagery lift the film a bit, but as the runtime stretches on the lack of a coherent story sinks the film.\r\n\r\nThere will certainly be an audience for Creation Stories that will fancy Welsh’s particular writing style, that slick, brash no-holds-barred dialogue that is quintessential for the Scottish icon. There is also an audience that is already deeply entrenched in this era of music and will be encouraged to see the story of one of its key figures regardless. All in all, Creation Stories is by no means a loss, it\'s just missing that special ingredient that would transform it into a film worth being excited about. Instead, it could have simply been a spirited documentary narrated by Bremner.', 2, '2022-03-06 20:34:37', NULL, NULL),
(4, 'Robert Pattinson Wants to Star in Planet of the Apes Sequel', 'pattinson.png', 'The Batman\'s Robert Pattinson says that there are only a few franchises he\'d want to be in a sequel to, but Planet of the Apes is one of them.\r\n\r\nRobert Pattinson says he would love to be cast in a Planet of the Apes sequel. The actor, who has appeared in a variety of projects that range from Twilight to Tenet, is currently lighting up the big screen as Bruce Wayne in The Batman, which hit theaters on March 4, 2022, and is on its way to being the best DCEU opening weekend since Suicide Squad in 2016. The film features a brand new cast playing an ensemble of familiar characters, including Zoë Kravitz as Catwoman, Paul Dano as The Riddler, Jeffrey Wright as Commissioner Gordon, Andy Serkis as Alfred, and Colin Farrell as The Penguin.\r\n\r\nThe film was directed by Matt Reeves, who first struck gold as a feature director with the 2008 giant monster film Cloverfield. After following that up with the 2010 horror remake Let Me In, he was swept up into the blockbuster franchise big leagues. He was tasked with directing 2014\'s Dawn of the Planet of the Apes, the follow-up to the 2011 Apes reboot/prequel Rise of the Planet of the Apes. That film was such a success, both critically and commercially, that he returned to helm 2017\'s War for the Planet of the Apes as well.\r\n\r\nWhen Pattinson was speaking with Variety recently, he was asked why he decided to say yes to working on The Batman with Reeves. Pattinson revealed that he signed on partially because he loves Reeves\' Planet of the Apes films, adding that there are only three franchises he\'d want to appear in a sequel to, with Apes being one of them. He said \"I just thought what he could do with mo-cap was just so unbelievable. If he could do that with a monkey\'s face, then he can get a performance out of me as well.\" Read his full quote below:\r\n\r\nI love those Apes movies so much. There’s only been two movies — well, three now — where I wanted to do a sequel: the Apes movies, Sicario, and Dune. I saw both of the Apes movies in the cinema and I just thought what he could do with mo-cap was just so unbelievable. If he could do that with a monkey’s face, then he can get a performance out of me as well.\r\n\r\nLuckily for Pattinson, that opportunity might be on the horizon for him. Recently, 20th Century Studios president Steve Asbell said that they were making progress on a fourth Planet of the Apes film, which is expected to begin filming later this year. The Maze Runner\'s Wes Ball is expected to take over directorial duties, so Pattinson wouldn\'t be working with Reeves, but things are looking good if he wants to appear in that franchise down the line.\r\n\r\nPlanet of the Apes would certainly be an interesting move for Pattinson to make at this point in his career. There\'s even already a precedent for the move, considering that his Harry Potter and the Goblet of Fire co-star Tom Felton already held a role in Rise of the Planet of the Apes. The actor has recently bounced back and forth between well-received independent projects and bigger blockbusters, but should he choose to stay in the big-budget arena (and should his commitments to a potential The Batman 2 allow him to fit it into his schedule), it would be about as far from his role as Bruce Wayne as it\'s possible to get.', 2, '2022-03-06 20:34:37', NULL, NULL),
(5, 'Against The Ice Review: Coster-Waldau Leads Gritty, Searing Arctic Adventure', 'againsttheice.png', 'Based on the autobiography of Ejnar Mikkelsen, Against The Ice shows the grim reality of what it takes to cross an arctic tundra & does a smooth job.\r\n\r\nDirector Peter Flinth’s (Eye of the Eagle) arctic adventure — starring and co-written by Nikolaj Coster-Waldau (Game of Thrones) — is a harsh look at Greenland\'s complex history through the lens of the men who almost died trying to reach it. The supporting cast is anchored by fellow Game of Thrones alum Charles Dance and Peaky Blinders actor Joe Cole. The picture was filmed in Greenland and Iceland, making the location impeccably accurate. Based on the autobiography of Ejnar Mikkelsen, Against The Ice shows the grim reality of what it takes to cross an arctic tundra.\r\n\r\nIn the early 1900s, a Danish explorer, Mikkelsen, leads a small expedition to claim North-Eastern Greenland before The United States of America plants its flag. After several unsuccessful attempts that lead to crew members dying and getting injured, Captain Mikkelsen (Coster-Waldau) takes on the journey himself. But he needs a volunteer and no one in their right mind would accompany him — except for mechanic Ivr Iverson (Cole), who is as green as he is eager. The two embark on their journey and immediately lose half their tea, a lead dog, and two weeks\' worth of rations. Almost a hundred days into their journey they finally come across a semblance of hope in the form of a note and map left by the explorers who came before them. Faced with the elements, deciding to eat questionable meat, and surviving polar bear attacks, the duo is forced to make a decision: move forward with the information and maps the old crew left behind or turn around and sled two hundred miles back to camp.\r\n\r\nAlongside scribe Joe Derrick (The Second Home), Coster-Waldau has a perfect roadmap in Mikkelsen’s autobiography and the movie never deviates from its central goal — exploration and safety. Twenty minutes in, the film settles into its comfort zone as a two-hander survival story. The performances of Coster-Waldau and Cole bring a sense of realism to the situation and time period. The third act begins with Coster-Waldau entering a state of pure madness as they have been alone in the frozen wilderness for nearly three years. The actor does not overplay his loss of sanity, nor does the film stretch the limits of his hallucinations. When he thinks all hope is lost, a bright red hot air balloon crescendoes onto the polar ice cap, which begs the question as to whether help has arrived or if his mind is playing tricks on him.\r\n\r\nCole plays the eager, yet naïve mechanic who can’t wait to get a taste of the action, a decision he almost dies regretting. It is a refreshing change of pace for Cole, who plays an English bruiser on multiple shows airing simultaneously. However, the Gangs of London lead is purely empathetic in Against The Ice. The crew the audience meets in the film’s opening is not only jaded from their time away from home, but some of them have lost toes to frostbite. Cole’s presence brings a glass half full mentality that is necessary throughout. Later in the film, his willingness to understand keeps him and Coster-Waldau alive when tempers flare; and make no mistake because tempers do flare. In the only scene where Iverson breaks character, Cole explodes with that same Peaky Blinders energy viewers know and love. His casting is a great addition to the film.\r\n\r\nCharles Dance is only in the few scenes that take place in government buildings instead of Greenland, but it\'s those jarring edits that make the viewer question whether this is worth it. Dance is hellbent on stopping the U.S. from claiming parts of Greenland. Paired with Coster-Waldau’s insistence that the mission must continue, juxtaposed with Cole’s survival instinct, the answer feels like it\'s not. At least, that\'s what Flinth and Coster-Waldau were seemingly aiming to highlight. Conquest in the name of human life is nothing new, but as technology and time move forward, a Danish government demanding territory while willing to leave those explorers stranded is objectively in the wrong.\r\n\r\nShooting on location is a great look for any picture, but with elements this aggressive, everyone involved in the production should be commended. It looks like Greenland because it is. The actors look cold because they are. The simplicity of the story is in perfect concert with the film\'s goals and does a smooth job of offering interesting themes of colonialization in a movie where Jamie Lannister fights a polar bear. Charles Dance and Joe Cole are integrated just as seamlessly and feel totally lived-in as characters, without unnecessary backstory and exposition. Against the Ice is a searing portrayal of the cost to explore in the early 20th century.', 2, '2022-03-06 20:34:37', NULL, NULL),
(6, 'Cyrano Review: Peter Dinklage Is Awards-Worthy In Musical Romance Adaptation', 'cyrano.png', 'In the hands of Joe Wright, Cyrano becomes a magnetic, musical romance that peels back the layers of its title character in new, exciting ways.\r\n\r\nCyrano is one of the most unexpected and gently handled films in recent memory. The film — an adaptation of Edmond Rostand\'s play Cyrano de Bergerac — is unlike any live-action that has brought the title character to life in the past. In the hands of Joe Wright, who directed the film from a screenplay by Erica Schmidt (who also wrote the stage production the film draws from), Cyrano is a magnetic, musical romance that peels back the layers of its title character in new, exciting ways.\r\n\r\nCyrano de Bergerac (Peter Dinklage) is a poet and soldier who is deeply in love with Roxanne (Haley Bennett) and has been since their youth. However, Cyrano doesn\'t think he\'s good enough to be with her and, crucially, fears she won\'t feel the same way if he tells her the truth. When Christian (Kelvin Harrison Jr.), a new soldier, is assigned to Cyrano\'s unit, Roxanne, who has fallen for Christian, asks Cyrano to ensure no harm befalls him. Christian has also fallen in love with Roxanne, but things get complicated when Cyrano agrees to write love letters to Roxanne on behalf of Christian without her knowledge. Meanwhile, Roxanne must fend off the affections of the forceful De Guiche (Ben Mendelsohn), a man she\'s being pushed to marry for money.\r\n\r\nCyrano’s greatest triumphs emerge when the adaptation veers from the source material. The titular character is insecure about his physical appearance (though it\'s not an overly large nose), which fuels his sense of unworthiness in the eyes of Roxanne. The film touches upon themes of social status as well, with Cyrano attributing his pride to his role as a soldier and a poet, a talented wordsmith who is nothing more to anyone. What Wright and Schmidt have crafted transcends the original play, adding layers to Cyrano’s pain that is ultimately less about Roxanne and more about how he perceives himself. Cyrano’s final line is all the more devastating because of his journey, a true moment of self-awareness that underlines the reasons for his actions in hindsight.\r\n\r\nThe film itself is romantic and lyrical thanks to the music by Bryce Dessner and Aaron Dessner. The songs boost Cyrano, lifting the story to enthralling, sentimental heights, even if they aren\'t necessarily memorable after viewing the film. Wright gives the film a sense of whimsicality that elevates the material; it’s over the top in the best of ways, accentuating cinematographer Seamus McGarvey’s sweeping camera work and gentle, earthy color palette. The costume design is of high value, detailed and aesthetically beautiful, blending seamlessly with the grandeur of the film’s production design. It all works together to elevate the lush romance of the film — of which there is delightfully plenty — without sacrificing Cyrano’s personal journey. Cyrano’s theatricality acts in its favor. At its core, however, the film is grounded by a well of emotion, the consequences of ego, and the complexity of a warped love triangle.\r\n\r\nPeter Dinklage\'s performance is layered, nuanced, and achingly beautiful. Dinklage really digs into Cyrano\'s interiority, allowing him to wear his heart and hurt on his sleeve while keeping up appearances like a suit of armor guarding his fear of facing the truth and potential rejection. A master of words and swords, Dinklage portrays Cyrano with frustrated impatience, tenderness, and pride that colors just about everything he does. It\'s a masterful performance and definitely one to watch. Haley Bennett and Kelvin Harrison Jr. are also great in their roles, wonderfully playing two people who are obviously smitten with each other, their pining and attraction to one another believable in their facial expressions.\r\n\r\nBringing together music, choreography, and love-struck characters together organically is no easy feat, but Cyrano makes it look as such. There\'s wonder, passion, and layers to the story that distinguish it from its source material. Dinklage in the role of Cyrano does wonders for the narrative and his final line is a reflection of the inner turmoil and truth that cuts right into the heart of the story. Cyrano more deeply explores the title character in all his flaws and it works on almost every level.', 1, '2022-03-06 20:34:37', NULL, NULL),
(7, 'Doctor Who: Christopher Eccleston Says His Absence Made 50th Anniversary Better', 'drwho.png', 'Former Doctor Who, Christopher Eccleston, says that his lack of interest in returning for the show\'s 50th anniversary made the story better.\r\n\r\nNinth Doctor actor Christopher Eccleston elaborated on his decision not to return for the Doctor Who 50th anniversary special and claimed that his absence made the story better. 2005 saw the return of Doctor Who after its cancellation in 1989, with doubts amongst the general public that what was remembered as a silly low-budget sci-fi show would have a place in the modern landscape of television. Season 1 of Doctor Who\'s revival almost immediately disproved all of these notions via well-written, dramatic scripts, modern production values, and an incredibly strong lead performance from Eccleston as the Ninth Doctor.\r\n\r\nEccleston signed onto Doctor Who after being impressed enough with Russell T. Davies\' prior written work to take on the role of the time lord, despite not having been a fan 0f the original series. Eccleston was quickly accepted into the hearts of classic fans and the new generation discovering Doctor Who, as his brooding, damaged incarnation spent the season recovering from the effects of the Time War, bringing him back to a wide-eyed traveler of time and space. Despite the reception, Eccleston quit the role after one season for reasons related to how the production was run and the treatment of certain crew members. Since then, Eccleston has re-embraced the part by starring in full-cast audio dramas from Big Finish and appearing more frequently at fan conventions.\r\n\r\nFans who wanted Eccleston to return in the 50th anniversary special will likely disagree with his comments as it was fairly clear, even before behind the scenes politics were revealed, that the story was written with him in mind with Hurt\'s War Doctor being a last minute replacement. However, the actor may be right in how his omission made the story more interesting by introducing a brand new Doctor into the pantheon who, due to his participation in the Time War, was a source of conflict from the Tenth (David Tennant) and Eleventh (Matt Smith) Doctors who looked back on him in shame. It\'s hard to imagine the script would\'ve had this storytelling conflict with Eccleston as there would likely have been a natural impulse to treat his character with reverence and affection, as opposed to Hurt\'s Doctor, whom the audience has no prior attachment to.\r\n\r\nEccleston\'s general opinions on multi-Doctor stories once again seem to quell any hopes for a return in the upcoming 60th anniversary. This was always doubtful though since it was announced that Davies would be returning as showrunner from the 60th onwards, along with several key figures from the early seasons of modern Doctor Who, who Eccleston would\'ve inevitably butted heads with. However, Eccleston\'s engagement with the fans and with the show\'s mythology in this quote shows that Doctor Who is still an important part of his career to him and that he\'ll continue to bring new solo audio adventures for the Ninth Doctor, much to the fanbases delight.', 1, '2022-03-06 20:34:37', NULL, NULL),
(8, 'Bridgerton Season 2\'s Most Exciting Story Isn\'t From The Books', 'bridgerton.png', 'The Queen is a welcome addition to the popular Bridgerton series, and the inclusion of her Majesty will be one of season 2\'s most exciting stories. \r\n\r\nQueen Charlotte (played by Golda Rosheuvel) was an exciting addition to season 1 of hit Netflix TV series Bridgerton. She was a bombastic character and quickly became a fan favorite amongst viewers. Though the Queen had a smaller role in the books, Shondaland\'s decision to have her as part of the main cast was revolutionary in a period drama series and will continue to do so in season 2.\r\n\r\nAt the time the series was set in - Regency London - society was very much ruled by the patriarchy, with the definition and role of a woman being affiliated with raising children. Moreover, there was a clear divide between people of color and those not of color, with people of color being of a lower social status. This perception was very much illustrated in period dramas that stick close to the source material with little to no deviations or changes.\r\n\r\nContrastingly, The Queen\'s role in season 2 will be one of the most exciting, as the series will further explore her feud with Lady Whistledown and her quest to see the author\'s identity revealed, which the viewers already know is Penelope Featherington. This change will add a layer of suspense and intrigue to the romance series. Moreover, the decision to have the Queen portrayed by an actress of color will further break down the divide between color and race that was already established in season 1.\r\n\r\nThe ongoing feud between the Queen and Lady Whistledown will be one of season 2\'s highlights. Since the Queen\'s plan to oust Lady Whistledown was foiled by Eloise at the end of season 1, it will be interesting to see the lengths she will go to in order to reveal the columnist\'s identity. From what viewers have already seen, it can be expected that Queen Charlotte will be more tenacious than ever to see her plan succeed. Moreover, seeing the Queen\'s detective skills is quite thrilling, and will also add a layer of suspense to the series. The battle between strong female characters such as the Queen and Lady Whistledown in season 2 will also be a welcome sight, as it will highlight the intelligence of women in a world where it was generally thought men had superior thinking.\r\n\r\nThe decision to have the Queen played by an actress of color will further collapse the divide between race and color. There is a theory that the real Queen Charlotte might have had black ancestry (via Insider). Though this theory was debunked by historians, the implications of this and what it might have meant for society in Regency London are mind-boggling. This divide was explored in season 1 of Bridgerton, with people of color having titles - such as Lady Danbury, and Simon, the Duke of Hastings - and being of the same social status as people of non-color. In one of the episodes, Lady Danbury tells Simon, \"we were two separate societies divided by color until a king fell in love with one of us.\" Moreover, this creative decision allows the show to explore issues on a deeper level, as series creator Chris Van Dusen explained (via Salon). \r\n\r\nNow that season 2\'s female lead Kate will also be portrayed by an actress of color (Simone Ashley), it will be interesting to see how the series will further explore this. The Queen\'s storyline in season 2 of Bridgerton will be an exciting addition for viewers. Her ongoing battle with Lady Whistledown will be entertaining and thrilling to watch. Furthermore, the creative decision to have the Queen played by an actress of color will revolutionize the series as it progresses.', 1, '2022-03-06 20:34:37', NULL, NULL),
(9, 'Mel Gibson Stars In New Trailer For Spy Thriller Agent Game', 'melgibson.png', 'The new trailer for the spy thriller Agent Game sees Mel Gibson and Dermot Mulroney dealing with a black site interrogation gone horribly wrong.\r\n\r\nMel Gibson stars in the new trailer for the spy thriller Agent Game. Grant S. Johnson, who previously helmed smaller films, Frat Star and Nighthawks, directs Agent Game from a script by Tyler W. Konney and Mike Langer. Gibson shares the screen with fellow actors Jason Isaacs, Dermot Mulroney, Adan Canto, Katie Cassidy, Barkhad Abdi, and Annie Ilonzeh.\r\n\r\nThe action-packed trailer, shared on YouTube by Saban Films, highlights Agent Game\'s tense plot. Mulroney\'s Harris, a black site CIA interrogator, becomes the target of a rendition operation after being blamed for an interrogation that went terribly wrong. As the team tasked with bringing him in begins to question their orders, Gibson\'s Olsen, a senior intelligence officer, turns up the heat, forcing Harris to discover the truth.\r\n\r\nAgent Game sees Gibson in his action movie comfort zone, with the trailer featuring plenty of explosions and gunplay set to satiate fans of the genre. The tensions between characters look to be heightened as allegiances are tested, making for what could be a twist-filled thriller. Agent Game also reunites Gibson and Isaacs, who previously starred together in Roland Emmerich\'s Revolutionary War film, The Patriot. The bulk of the cast also has experience in the action genre, with Cassidy playing Black Canary on Arrow, Mulroney starring in the Hanna TV series, and Isaacs previously starring in Black Hawk Down. Agent Game is currently slated for release in theaters on April 8, when it will also be available digitally and on-demand.', 1, '2022-03-06 20:34:37', NULL, NULL),
(10, 'Future DC Movies Will Be Filmmaker Driven Like The Batman', 'futuredcmovies.png', 'Warner Bros. president Toby Emmerich says that the strength of DC Comics movies like The Batman lies in their filmmaker-driven approach.\r\n\r\nThe President of Warner Bros. says that future DC movies are going to be filmmaker-forward like The Batman. The latest cinematic outing for the caped crusader - this time with Robert Pattinson in the title role - came to theaters this weekend. The film, which also features Zoë Kravitz as Catwoman, Paul Dano as The Riddler, Jeffrey Wright as Commissioner Gordon, Andy Serkis as Alfred, and Colin Farrell as The Penguin, has already raked in so much money at the box office that it beat Batman Begins\' opening weekend in one day.\r\n\r\nThe Batman was directed by Matt Reeves, who has made his career from unique blockbusters. Most recently he helmed the Rise of the Planet of the Apes follow-ups Dawn of the Planet of the Apes and War for the Planet of the Apes, a blockbuster trilogy that received near-universal acclaim. However, he also directed the 2008 runaway hit Cloverfield (which became a massive success off the back of an unprecedented viral marketing campaign) and the vampire remake Let Me In starring Chloë Grace Moretz and Kodi Smit-McPhee, who has been nominated for Best Supporting Actor in this year\'s Oscars for his work opposite Benedict Cumberbatch in The Power of the Dog.\r\n\r\nWarner Bros. President and Chief Content Officer Toby Emmerich spoke with Deadline this morning about the massive success of The Batman. Although these projects are born from massive IPs, he reminded them that \"quality is the most important factor for a studio.\" He followed that up by saying \"the biggest thing you can do to influence quality is the filmmaker that you hire.\"\r\n\r\nWith this comment, Emmerich is clearly drawing a line in the sand between DC and Marvel film projects. The MCU does hire interesting directors, including Oscar-winner Chloé Zhao who directed Eternals, but it is an open secret that the studio doesn\'t have those directors helm the action scenes, which are designed by an in-house pre-viz team. As such, there is a limited opportunity for those filmmakers to truly put their own auteur stamp on their projects.\r\n\r\nWhile studio tentpole films like The Batman certainly have influence from more people than just the director, it\'s true that DC has been hiring some very interesting people to helm their projects. They certainly gave free rein to James Gunn to explore the depths of his sophomoric humor instincts in his The Suicide Squad spinoff series Peacemaker, which was just renewed for season 2. Coming up, they will also be featuring projects from interesting personages like The Shallows\' Jaume Collet-Serra, It\'s Andy Muschietti, and of course returning directors James Wan and David F. Sandberg, who put their own stamp on their previous efforts Aquaman and Shazam!.', 2, '2022-03-06 20:34:37', NULL, NULL),
(11, 'How Nirvana Influenced The Batman\'s Riddler, According to Paul Dano', 'nirvana.png', 'According to Paul Dano, the 90s grunge band Nirvana played a part in influencing his portrayal of The Riddler in The Batman, now in theaters.\r\n\r\nAccording to Paul Dano, the 90s grunge band Nirvana played a part in influencing his portrayal of the Riddler in The Batman. The Batman presents the latest incarnation of the famed DC superhero and is the first iteration of the character to exist outside of the DCEU since Christopher Nolan\'s Dark Knight trilogy ended in 2012. The film, helmed by Cloverfield director Matt Reeves, follows Batman (Robert Pattinson) in his second year of crime-fighting, as he tracks down a mysterious serial killer known as The Riddler. The Batman is in theatres now and has so far received largely rave reviews from both critics and fans.\r\n\r\nThe Riddler has been reimagined several times for live-action adaptations over the years. Audiences have been waiting in anticipation for Dano\'s portrayal, as trailers for The Batman have teased a Riddler who is much darker and more sinister than any seen on the big screen before. The last incarnation of the Riddler was played by Jim Carrey in 1995\'s Batman Forever, which was a distinctly campy portrayal. While Dano\'s character remains hidden in shadow or behind a mask for much of The Batman\'s nearly three-hour run time, Dano gives the Riddler a truly terrifying edge that many fans have been hoping to see from the character.\r\n\r\nIn a recent interview with NME, Dano discusses his process of becoming the Riddler. While he is cryptic about many elements that make up his interpretation of the character, Dano has stated that he listens to music between takes to keep himself in character. When asked about what music he would listen to, Dano pointed to the song \"Something in the Way\" by Nirvana. According to Dano, the song is actually mentioned directly in Reeve\'s script, so it \"became hugely important\" to his Riddler. Dano eluded to the refrain \"the animals I\'ve trapped have all become my pets\" as part of the song he would come back to in particular. \r\n\r\nDano\'s gravitation towards this Nirvana song makes quite a lot of sense. As well as being part of Reeve\'s script, the song was also used in many of the early trailers for The Batman, as it was mixed together with the new Batman theme composed by Michael Giacchino. It also plays throughout the film. The song has since become linked to The Batman for fans, and perhaps in the future will be synonymous with Dano\'s Riddler.\r\n\r\nDano has certainly done some memorable work with his interpretation of The Riddler. As the film gets released across the world, many reviews have hailed his performance as one of the most frightening Batman villains ever, which is certainly saying something as there have been some terrifying ones in the past. Dano has been careful to not give away too much about his interpretation of the character, so if fans really want to see what Dano\'s Riddler has done with all the \"animals he\'s trapped,\" they will have to see The Batman in theatres now.', 2, '2022-03-06 20:34:37', NULL, NULL),
(12, 'Peaky Blinders Season 6 Is Already Replacing Polly', 'peaky.png', 'Peaky Blinders season 6 sadly said goodbye to Polly Gray, but the central character’s role in the family is already being inherited by others.\r\n\r\nIn Peaky Blinders season 6, episode 1, it is revealed that Polly Gray is dead, but the show is already working to replace Polly’s role in the narrative. From Peaky Blinders season 1, Polly Gray (Helen McCrory) played an important role in the show as one of the few people who could match Tommy Shelby and persuade him to back down. After Helen McCrory’s unfortunate passing in 2021, Polly Gray will not be seen in Peaky Blinders season 6.\r\n\r\nPeaky Blinders season 6 picks up where the dramatic end of season 5 left off, but when Tommy Shelby (Cillian Murphy) returns to his house he learns that Polly Gray has been killed. After a funeral, Peaky Blinders jumps four years into the future to 1933 and shows the new dynamics of the Shelby family in England. Lizzie (Natasha O’Keefe) and Ada (Sophie Rundle) are both at Tommy’s house for Christmas with their children, and Rudy (Orla McDonagh), Lizzie and Tommy’s daughter takes ill and has visions while reciting Romani words.\r\n\r\nPolly McCrory played a central role in Peaky Blinders and the Shelby family dynamic, and with her gone the family has lost their matriarch and Tommy Shelby has lost his crutch. However, these primary roles are being filled in for by other characters in the cast to keep the family and Peaky Blinders afloat. Ada Shelby’s handling of Arthur (Paul Anderson) marks her transition towards a leadership role in the same matriarch position that Polly once held. While Ada notes that she feels the loss of Polly, saying that Arthur wouldn’t have been allowed to get so bad if Polly had been around, Ada’s handling of the situation in the opium den demonstrates that she will step up in Peaky Blinders season 6. Polly was also always the person that Tommy would go to with questions about Romani spiritual matters and history, with this only getting more intense after Polly’s near-death experience and her belief that she was having visions. In season 6 episode 1, the introduction of Ruby Shelby’s visions and use of the Romani language highlights how she can fill that need for Tommy, allowing him to lean on those superstitions, for better or for worse.\r\n\r\nThe other major role that Polly Gray served in Peaky Blinders was as a moderating force on Tommy’s ambition and aggression. While Polly’s death could have seen Tommy spiral out of control he has sought to improve himself instead. In many ways, Polly’s death has forced him to reign himself in, making him his own moderating force to a degree as he has stopped drinking and attempts to abstain from violence. This is all foreshadowed by Peaky Blinders season 6 not including Nick Cave and the Bad Seeds’ “Red Right Hand” as its episode 1 theme song. However, it remains to be seen how long Tommy can be his own restraining force.\r\n\r\nIt is a testament to how important Helen McCrory’s Polly Gray was to Peaky Blinders that even with three different characters picking up parts of her role, Polly’s absence will still play a huge role in the final season of Peaky Blinders. While Tommy seeks vengeance against those who murdered Polly, her son, Michael Gray (Finn Cole), now blames Tommy for her death. Polly’s absence has caused a massive rift between Tommy and Michael, one which, if it was ever going to end peacefully, would have required Polly to play her games and get each of them to settle down. It is perhaps fitting, that even with Polly Gray and Helen McCrory absent from the screen, Peaky Blinders will still head towards the movie defined by her character.', 2, '2022-03-06 20:34:37', NULL, NULL),
(13, 'Chris Evans and Ana de Armas Set Photos Reveal First Look At Their New Movie', 'evans.png', 'New photos provide a first look at the new Apple TV+ film starring Chris Evans and Ana De Armas, called Ghosted, a romantic action-adventure story. \r\n\r\nNew photos of Knives Out co-stars show Chris Evans and Ana de Armas laughing on set in Atlanta, Georgia as production begins for their new romantic action-adventure film Ghosted. An Apple TV+ original, the film is being directed by Rocketman\'s Dexter Fletcher. Although few details have been released about the film, Rhett Reese and Paul Wernick are behind the script, which could mean the story will share the same outlandish, bold humor as the pair\'s other projects, like Deadpool and Zombieland. Adrien Brody (The Pianist) is also set to join the cast, though it is unclear what role he will take on.\r\n\r\nWhen the film was first announced, Black Widow star Scarlett Johansson held the leading role opposite Evans. However, by the end of 2021, it was announced that due to personal scheduling conflicts, she would amicably leave the project which made room for the Blade Runner 2049 star to take over. David Ellison\'s company Skydance is responsible for getting Ghosted off the ground, with Dana Goldberg and Don Granger assisting Ellison and Evans as producers, while de Armas is credited as an executive producer.\r\n\r\nPhotos shared by E! News show the Ghosted stars joyfully working on set in Atlanta this week. This will be the third project de Armas and Evans work on together, and from these first look photos, they appear to be having fun. Neither Evans nor de Armas seem too beat up by the supposed action-adventure elements in this story, but they are looking romantic with sweet costumes and well-groomed hair.\r\n\r\nThe Skydance team purchased Ghosted when Reese and Wernick approached them with the idea, describing it as a high concept romance action-adventure story. Apple TV+ quickly acquired the title soon thereafter. Production began in February 2022, and as of now this brief glimpse of their day in Atlanta is the only hint as to what can be expected from the film.\r\n\r\nIn addition to Knives Out, Evans and de Armas have worked together on the Netflix film The Gray Man from directors Anthony and Joe Russo, an action-thriller set to premiere in 2022. These two are making a habit out of working together, and audiences seem to enjoy their on-screen chemistry. Ghosted will bring these much-adored co-stars together for an interesting story no doubt. But, until new information is released, these photos are the only clues for now about what to expect from the upcoming production.', 1, '2022-03-06 20:34:37', NULL, NULL),
(14, 'Criminal Minds Star Hints At Paramount+ Revival In Reunion Post', 'criminalminds.png', 'Kirsten Vangsness and the rest of the Criminal Minds cast recently gathered for a reunion as the Paramount+ revival continues to sit in development.\r\n\r\nCriminal Minds star Kirsten Vangsness heavily hints at the in-development Paramount+ revival in a post reuniting her with the rest of the original cast. CBS\' Criminal Minds enjoyed a successful 15-season run from 2005 to 2020, and it still remains rather popular even two years after it ended. The series, which followed the gruesome cases of the FBI\'s Behavioral Analysis Unit, has been a major player on streaming, even being deemed one of Netflix\'s top shows in 2021. It also speaks to Criminal Minds\' enduring popularity that Paramount+ announced the development of a revival just one year after the series concluded.\r\n\r\nThe Criminal Minds revival has so far endured a bit of a shaky road to creation. After it was initially announced in February 2021, there were few updates beyond the fact that the original cast and showrunner Erica Messer would be involved. It got to the point where star Paget Brewster said in July that she and the rest of the cast believed the revival to be dead. However, Paramount+ stated last month that Criminal Minds is still in development; days later, 6 original cast members were confirmed to be on board to return for what could also be dubbed as Criminal Minds season 16.\r\n\r\nFans are now waiting for more concrete confirmation, and it sounds like the stars could be too. Recently, Kirsten Vangsness shared a delightful picture on social media where she and the rest of the Criminal Minds cast gathered with Messer. Vangsness\' post includes all the cast members currently expected to return for the Criminal Minds revival: Adam Rodriguez, AJ Cook, Joe Mantegna, Aisha Tyler, Vangsness herself, and Brewster. Last spring, Brewster said the plan was to bring back the cast that had been present for the final seasons of Criminal Minds, and that\'s largely remained the case. The only two stars to not re-up just yet are Spencer Reid actor Matthew Gray Gubler and Daniel Henney, whose involvement with Amazon\'s The Wheel of Time impacts his availability.\r\n\r\nVangsness\' post is both a heartwarming reminder that the Criminal Minds cast is like a family, and a not-so-subtle hint that everyone is ready to return for the revival. Based on the phrasing of her caption, it sounds like Vangness was trying to convince Paramount+ to let them do so, which could hint that negotiations are ongoing. Still, fans can rest assured that the Criminal Minds cast is just as interested in a revival as they are, so hopefully a new, promising update will arrive soon.', 2, '2022-03-06 20:34:37', NULL, NULL),
(15, 'ABC Threatened to Cancel The Oscars If Categories Were Not Cut', 'abc.png', 'The controversial decision to cut eight Oscar categories from the live broadcast appears to have come from ABC, as they threatened to cancel the show.\r\n\r\nABC threatened to cancel the Oscars if they did not cut awards from the broadcast. The 94th Academy Awards are set to be held on March 27, 2022, at the Dolby Theater in Los Angeles, California, and will see films like Dune, West Side Story, Power of the Dog, and Licorice Pizza, just to name a few compete for the top prize. This year\'s ceremony though has been a highly publicized show after multiple controversies have sprung up.\r\n\r\nThe biggest has been the decision to not broadcast all the awards live, with eight categories - documentary short, film editing, makeup/hairstyling, original score, production design, animated short, live-action short, and sound - set to be filmed earlier and cut into the broadcast. Since the announcement, there has been talk of a boycott of the Oscars show in solitary with the cut nominees. The decision was apparently made to try to shorten the award show, hoping to draw in more viewers to this year\'s telecast.\r\n\r\nWhile originally believed to be a decision made solely by the Academy of Motion Pictures Arts and Science, it appears the decision actually came because of pressure from ABC. According to THR, an unnamed member of one of the boards of governors for one of the branches said that ABC threatened to cancel the Oscars via a clause in the deal the Academy and ABC\'s made for the Oscars\' broadcasting rights if 12 categories were not removed from the show. A compromise was reached that satisfied ABC. The unnamed Governor said, \"We were told we\'d have to sacrifice something or we were going to lose the whole show.\"\r\n\r\nABC has been home to the Academy Awards telecast since 1976, and in 2016 they renewed their contract with them broadcasting the awards until 2028. ABC also is one of the few networks that does not take part in the Super Bowl rotation, as they have not broadcast a Super Bowl since 2006, making the Academy Awards one of the network\'s biggest live broadcast events. After last year\'s Oscars, which were a record low in viewership, dropping below 10 million viewers, it appears ABC is desperate to try and bring audiences back at any means necessary.\r\n\r\nHowever, those attempts to bring in audience members who don\'t have an interest in the Oscars may come at the risk of alienating the loyal viewers they already have for the show. The audience wants to see the various crafts of films celebrated and watch the event due to the historical legacy. It is a chance to expose an audience to films they may never have heard of or thought to watch and can introduce people to aspects of movie-making they never thought about and pursue a career in those fields. Many people may disagree about the films that win or don\'t get nominated. However, the Oscars are part of film preservation, and making cuts to chase ratings is a depressing reality, one that may signal that when the time comes, the Oscars may need to find a new network to call home.\r\n\r\n', 1, '2022-03-06 20:34:37', NULL, NULL);
INSERT INTO `posts` (`id`, `title`, `img`, `content`, `user_id`, `date`, `created_at`, `updated_at`) VALUES
(16, 'The Long Walk Review: A Contemplative, Genre-Defying Ghost Story', 'longwalk.png', 'With a stellar ensemble cast and a challenging, emotionally-driven narrative, The Long Walk is an atypical ghost story that will nestle in your mind.\r\n\r\nMattie Do, the Laotian director who became the first and only woman director from Laos with her film Dearest Sister, returns with The Long Walk (original title Bor Mi Vanh Chark), her third film. In her latest, which was written by Christopher Larsen, Do blends genres together to craft a subtle and impactful tale about the human condition.\r\n\r\nThe Long Walk tells the story of a middle-aged Laotian farmer (Yannawoutthi Chanthalungsy) who witnessed a fatal car accident near his home in rural Laos many years ago. After losing his mother to illness, he spent many years making bad choices which resulted in him being left alone. He\'s left with only his regret and the spirit of the woman who died (Noutnapha Soydara) — who walks the road where she lost her life — by his side.\r\n\r\nDo’s film is a carefully considered drama that blends genre with an intimate exploration of the socio-economic hardships of rural Laos and the farmer\'s complicated past. It is not your typical ghost story as it does not engage with the terror that comes with facing a ghost. Rather, it uses the framework of a ghost story to delve into the ghosts that may lurk in one\'s mind. As a woman behind the camera, the expectation to deliver a great film are much higher, and Do has already solidified herself as a bold and integral creative whose vision will help create a solid foundation for Laotion cinema. With so much mounted on her shoulders, Do once again delivers a film that is teeming with her vision and ambition.\r\n\r\nThe Long Walk is a labor of love that is beautifully captured on camera by cinematographer Matthew Macar. It is deliberately paced to get the best out of the time-traveling aspects of the story. Such a story cannot be rushed nor be swayed by conventions. It is too deeply entrenched in a cultural context that any choice to make it palatable would diminish Do and Larsen’s goals for the film. The Long Walk moves at a steady pace, asking its audience to trust the journey as the narrative and thematic pieces fall into place. In the meantime, the ensemble cast carries much of the emotional heft of the film, pulling viewers in with their considerable screen presence. In addition to the leads, the cast includes the adorable young Por Silatsa and the enigmatic Chansamone Inoudom. Each of them brings an earnest and genuine quality to the film.', 1, '2022-03-06 20:34:37', NULL, NULL),
(17, 'The Terminal List Trailer Teaser Reveals Chris Pratt As Navy SEAL James Reece', 'theterminal.png', 'The Terminal List trailer teaser shows the first live-action footage of the Prime Video series adaptation of Jack Carr\'s novel starring Chris Pratt.\r\n\r\nThe Terminal List trailer teaser reveals the first live-action look at Chris Pratt portraying author Jack Carr\'s Navy SEAL protagonist James Reece. Based on the novel by Carr, The Terminal List is the first book in the James Reece series, which follows the former Navy SEAL on a series of conflicts, from deeply personal battles to wide-ranging government conspiracies. The character utilizes his skills as a weapon of war, just as his own time in the service has finished.\r\n\r\nPratt is perhaps best known for his role as Peter Quill a.k.a. Star-Lord in James Gunn\'s Guardians of the Galaxy franchise, as well as portraying Owen Grady in the Jurassic World series. The actor got his start in mostly comedic roles, from the sitcom Parks and Recreation, Everwoood, and The O.C. to films like The Five-Year Engagement and Bride Wars. Pratt famously leaned up for his role in Guardians of the Galaxy Vol. 1, which altered the course of his career from funny-man to leading man, having since appeared in films like Passengers, The Magnificent Seven, and most recently The Tomorrow War.\r\n\r\nNow, the first look at the new live-action adaptation of The Terminal List has debuted (via Prime Video), which gives the first look at Pratt in live-action form as James Reece. Reece is best known for his geared-up look from the novels, typically wearing a ball cap, combat rack, and carrying his trademark Winkler/Sayoc RnD Tomahawk. The Terminal List story follows an ambush on Reece and his SEAL team, leaving all but him dead. He struggles to uncover what happened, learning that it was a deeper conspiracy by his own government, forcing him to seek revenge while still trying to protect those he loves. The Terminal List will debut all eight episodes on Prime Video on July 1, 2022. \r\n\r\nThe Terminal List also stars Constance Wu, Taylor Kitsch, Jeanne Tripplehorn, Riley Keough, Arlo Mertz, Jai Courtney, JD Pardo, Patrick Schwarzenegger, LaMonica Garrett, Stephen Bishop, and Sean Gunn, with David DiGilio, Daniel Shattuck, and Carr serving as showrunners. There\'s no indication as of yet if there are plans to adapt Carr\'s other books, but no doubt the success or failure of The Terminal List will determine that. In the meantime, Pratt will also appear in Jurassic World: Dominion on June 10, 2022, as well as Thor: Love and Thunder on July 8, placing The Terminal List smack in the middle of those franchise premieres.', 1, '2022-03-06 20:34:37', NULL, NULL),
(18, 'Family Squares Review: All-Star Dramedy Is Unfocused But Occasionally Sincere', 'familysquares.png', 'The family dramedy has all the right pieces, but, like any dysfunctional family, they don’t come together in the most cohesive of ways.\r\n\r\nDirected by Stephanie Laing from a screenplay by Laing and Brad Morris, Family Squares sees June Squibb playing Worth Family matriarch Mabel. The family has been somewhat estranged for a number of years, but they gather via Zoom after Grandma Mabel passes away. Naturally, chaos ensues. The family consists of Ann Dowd, Henry Winkler, Margo Martindale, Casey Wilson, Judy Greer, Timothy Simons, Scott McArthur, and Elsie Fisher. While gathered for a final goodbye to Mabel, the family descends into madness when long-buried family secrets are revealed. The moral of the story is that, while one cannot choose their family — at least not blood relatives — one can choose to be friends with them.\r\n\r\nThe ensemble cast is, in a word, wild. This film is 90 minutes long and suffers under the crushing weight of this uniquely gifted and expansive group. With little time to flesh out the character arcs and follow certain subplots, the cast is tasked with the inevitable job of breathing some semblance of life into their characters. Some actors manage to draw from the collective experiences from living through an ongoing pandemic by feeling very relatable. Others feel like they are at a virtual table read, just saying their lines. The cast is perhaps three people too many and honestly could have featured just the women.\r\n\r\nJudy Greer’s particular brand of stressed is precisely the energy needed for this story and is something only she can articulate without exhausting the audience. Casey Wilson is pitch-perfect in the shtick she has perfected over the years. Ann Dowd and Margo Martindale are giants in the film industry, highly respected actresses who have proven to be amongst the best of the best, but they are somewhat undercut by the setup in Family Squares. In any case, the women of the ensemble are perhaps the most interesting and are the source of the biggest laughs and the hardest cries.\r\n\r\nFamily Squares sports an impressive cast, and the epic pairing of Ann Dowd and Margo Martindale, but it cannot quite live up to its potential. The film is not without its moments of joy and emotion, but with a short enough run time, it shouldn\'t feel like it is straining to keep the audience\'s attention. As a film birthed from the pandemic, the presentation already feels outdated. There is an attempt to revitalize the format, but it falls flat. All in all, the family dramedy has all the right pieces, but, like any dysfunctional family, they don’t come together in the most cohesive of ways.', 1, '2022-03-06 20:34:37', NULL, NULL),
(19, 'Rosario Dawson Has Hilarious Response To Ahsoka’s Whereabouts In The Galaxy', 'ashoka.png', 'Live-action Ahsoka actress Rosario Dawson provides her own take as to why the Star Wars character was absent from the galaxy\'s important battles.\r\n\r\nRosario Dawson has offered a hilarious response to a meme about Ahsoka Tano\'s whereabouts throughout Star Wars history. Ahsoka has appeared across several Star Wars entities, both animated (voiced by Ashley Eckstein) and live-action. The character made her debut in the latter, with Dawson stepping into the role for The Mandalorian season 2. The Mandalorian episode \"Chapter 13: The Jedi,\" written and directed by Dave Filoni, paved the way for the upcoming Ahsoka series and her journey into the live-action world.\r\n\r\nAhsoka\'s appearance in The Mandalorian is the only hint viewers have been given as to what Ahsoka has been up to following the events of the Galactic Civil War. Star Wars: Rebels provided answers as to what the Togruta was doing after she left the Jedi Order in The Clone Wars, before the final season of the latter animated series premiered on Disney+ in 2020. The final episode of Rebels, however, revealed that Ahsoka had reemerged only to join Sabine Wren on a journey to find Jedi Ezra Bridger, who had gone missing after an encounter with Grand Admiral Thrawn. This name was dropped by Ahsoka in The Mandalorian as she asked about his location, which proves her search for the Jedi has not yet been fruitful. This has still left viewers wondering what Ahsoka was doing while war ravaged the galaxy once again during the events of the original Star Wars trilogy.\r\n\r\nStar Wars has found a lot of unique and effective ways to explain why characters such as Ahsoka and Captain Rex don\'t appear in the stories of the films made before the characters were created. For example, many viewers wondered what the aforementioned duo were up to during the events of Star Wars: Episode III - Revenge of the Sith, and they received their answer when the final season of The Clone Wars released and showed their participation in the intense Siege of Mandalore drew them away from the events that transpired on Coruscant. After barely surviving Order 66 aboard a cruiser, there\'s no wonder why Ahsoka and Rex went into hiding for a good part of the next few years, and thus remained under the radar of other Star Wars stories.', 2, '2022-03-06 20:34:37', NULL, NULL),
(20, 'DMZ Trailer: Rosario Dawson Searches For Her Son In Active War Zone', 'dmz.png', 'Rosario Dawson\'s new trailer for DMZ shows her entering an active war zone filled with gangsters and militias to search for her lost son.\r\n\r\nDC\'s limited series, DMZ, has released its trailer starring Rosario Dawson searching for her son in an active war zone. DMZ is based on an eponymous comic that ran from November 2005 to February 2012. The story is set to follow a medic named Alma (Dawson) searching for her son in a post-Second Civil War America within the demilitarized Manhattan Island.\r\n\r\nIn the DMZ comics, the main writer Brian Woods was inspired by the American political climate of the post 9-11 era and created a bleak portrayal of the anti-authoritarian youth culture of the time. Woods\' version primarily followed a reporter who had arrived in a semi-abandoned Manhattan. However, it was clear the miniseries had taken a few liberties when it was announced that Dawson would be the lead of this particular version. DMZ was initially planned to be aired on Syfy with a different crew, but on October 1, 2019, it was announced that it will instead air on HBO Max.\r\n\r\nThis is a great sign seeing DC projects taking advantage of streaming sites and exploring more standalone stories that may not be household names to audiences yet. Fans will certainly be on the lookout as early reactions of DMZ trickle in from the critics and audiences alike. The show\'s topic and impression also give off a very resonant ambiance that may subtly match today\'s climate, so it will be interesting to see if the fans not only enjoy the miniseries, but find even more beneath the surface of the main story.', 2, '2022-03-06 20:34:37', NULL, NULL),
(21, 'Hocus Pocus 2 Star Teases Sanderson Sisters’ Incredible Return', 'hocuspocus.png', 'Actor Sam Richardson teases the “incredible” return of the Sanderson sisters in the upcoming, highly anticipated Disney+ film Hocus Pocus 2.\r\n\r\nActor Sam Richardson teases the “incredible” comeback of the Sanderson sisters in the upcoming Hocus Pocus 2. The comedy character-actor has appeared in films such as We’re The Millers, Spy, and Mike and Dave Need Wedding Dates. On the small screen, he played recurring roles in comedy series Veep and Detroiters, starred in The Afterparty season 1, and has also led his voice talents to Star Trek: Lower Decks and Marvel’s MODOK.\r\n\r\nNext up, Richardson has joined the ensemble cast of the highly anticipated Hocus Pocus 2. The film is a sequel to the original 1993 Halloween classic, which respectively starred Sarah Jessica Parker, Kathy Najimy, and Bette Midler as the witch sisters Sarah, Mary, and Winifred Sanderson. All three are set to return to their roles in the new movie, which is heading to Disney+ later this year. Also returning after the near 30-year wait is Doug Jones, who played Billy Butcherson, an ex-boyfriend revived by the witches as a zombie. New cast members include Ted Lasso’s Hannah Waddingham and Richardson’s fellow-Veep alum Tony Hale.\r\n\r\nHype for the Disney sequel has continued to build in recent weeks, with a new behind-the-scenes Hocus Pocus 2 video showcasing a look at the Sanderson house back in its full glory. More musical fun is on its way, with recent pictures showcasing the filming of a dance number involving the villainous sisters. Filming on the feature wrapped in January, with producer Adam Shankman teasing a Halloween release date for the straight-to-streaming movie.', 1, '2022-03-06 20:34:37', NULL, NULL),
(22, 'Mandalorian\'s Bill Burr Will Write & Star In Directorial Debut Old Dads', 'mandalorian.png', 'Famed actor and comedian Bill Burr is set to star, write, and make his feature film directorial debut with the upcoming comedy Old Dads.Actor and Comedian Bill Burr is set to star, write, and direct the upcoming comedy film Old Dads. The Grammy-nominated comic’s packed resumé spreads anywhere from comedy albums and stand-up specials, to the Netflix hit animated series F Is for Family, Breaking Bad, and Disney+’s The Mandalorian. Burr has continued to prove throughout his career that he can dominate any role that’s thrown his direction. While the comedian’s impressive career has spanned all over the entertainment board, Burr had yet to make his feature film directorial debut, until now.Burr is set to star, write and direct the upcoming comedy film, Old Dads, according to Deadline. Old Dads will see a father (Burr) and his two best friends who discover that they\'re out-of-touch with the current times after selling their business to a millennial and hilariously attempting to navigate fatherhood and their personal lives in the ever-evolving world. Burr and Ben Tishler co-wrote Old Dads based on their own life experiences, with slices of cultural commentary blended throughout. Along with Burr, Bobby Cannavale and Bokeem Woodbine are also set to star in the upcoming comedy film.Miramax and Burr’s own All Things Comedy are currently set to back the upcoming project, with Bill Block (Bad Moms, Dirty Grandpa) Monica Levinson (Borat), and Mike Bertolina on board as the film’s producers. Production for the upcoming comedy film began earlier this week in Los Angeles. Fans of Burr are already highly anticipating the comedian’s feature film directorial debut with Old Dads, as it is sure to be yet another hit among Burr’s already impressive career. ', 1, '2022-03-06 20:34:37', NULL, NULL),
(23, 'No Exit Review: Havana Rose Liu Leads An Effective, Compelling Thriller', 'noexit.png', 'A lean screenplay & a terrific performance by Havana Rose Liu help shape a compelling thriller as it subverts expectations & holds viewers\' attention.\r\n\r\nNo Exit, based on the novel of the same name by Taylor Adams, is an impressive survival thriller that doesn’t overexert itself by being too flashy. With the story unfolding in one location, a lean screenplay and a terrific lead performance by Havana Rose Liu help shape this compelling thriller as it subverts expectations and holds viewers\' attention until the very end.\r\n\r\nThe story follows Darby (Liu), a college student undergoing rehab for drug addiction. Darby is obviously not thrilled by the experience and is eager to leave, but that’s when an earth-shattering call reaches her — her mother is in the hospital. Desperate to reach her mother in time, Darby escapes the facility but a blizzard forces her to seek shelter in a mountain rest stop. Darby enters thinking her family drama and personal demons were her biggest problems. Little does she know that to leave this shelter she will have to fight for her life.\r\n\r\nIn her feature film debut as a lead, Havana Rose Liu proves to be an impressive rising star. Liu carries No Exit with an emotive performance that needs little words, with the actress expertly utilizing her eyes to convey a range of emotions and thoughts. With a short window of time to set up who Darby is, Liu’s performance is layered, giving the character a complexity that will have the audience resonating with her. Viewers aren’t rooting for her to survive just because she\'s the protagonist, but because we want her to overcome her troubles. Joining Liu on this thrilling fight for survival are Danny Ramirez, David Rysdahl, Dennis Haysbert and Dale Dickey, each of whom bring a little something to add to the suspense and drama.\r\n\r\nWith the film confined to one space, the film needs compelling characters to be invested in to uncover the bad guys. For the most part, No Exit does subvert expectations regarding the ensemble, but it could have used an extra person or two to really mess with the audience. The enjoyment is due, in large part, to Liu’s expressive performance. Marco Beltrami and Miles Hakins\' pitch-perfect score elevates the film as well, never letting up on the tension. However, Andrew Barrer and Gabriel Ferrari’s screenplay adaptation of Adams\' book deserves a ton of credit. It is a lean, tight script that cuts out a lot of fat that normally botches book-to-film adaptations.', 2, '2022-03-06 20:34:37', NULL, NULL),
(24, 'Barb & Star Go To Vista Del Mar Director’s New Movie Casts Randall Park', 'barbandstar.png', 'The director of Barb & Star Go To Vista Del Mar\'s next film, Strays, adds Randall Park to a cast that also includes Will Ferrell and Jamie Foxx.\r\n\r\nThe upcoming adult comedy film, Strays, from Barb and Star Go to Vista Del Mar director Josh Greenbaum has officially added Randall Park to the movie’s insanely packed cast. Strays is currently set to be released on June 9, 2023 and will offer viewers a live-action and CGI hybrid experience, as it dives into the story of an abandoned dog and his team of fellow strays who are seeking out revenge on the abandoned dog’s former owner. Comedy legend Will Ferrell is set to take on the role of the deserted pooch who was abandoned by Will Forte’s character, with Jamie Foxx portraying one of the strays.\r\n\r\nNow, Randall Park has officially been added to the comedic cast of Strays, via The Hollywood Reporter. While character details about the rest this insanely packed cast’s roles have already been released, the character details about Park’s role in the upcoming film are currently being kept a secret. \r\n\r\nDan Perrault is credited as the script writer for Stray, with Louis Leterrier, Phil Lord and Chris Miller acting as producers on the upcoming project. Stray will be Greenbaum\'s first film since his 2021 breakout hit, Barb and Star Go to Vista Del Mar, that took comedy fans by storm. The humorous director is already looking to make another loud splash in the comedy genre with his upcoming star-packed film Stray, which is currently set to be released on June 9, 2023. ', 1, '2022-03-06 20:34:37', NULL, NULL),
(25, 'The Changed Review: Low-Budget Alien Invasion Flick Completely Misses The Mark', 'thechanged.png', 'The Changed tries to breathe life into an overdone premise, but lacks the drive to veer it into fresh directions, and ends up being an utter misfire.\r\n\r\nFew films can craft compelling narratives around a high-concept sci-fi premise on a shoe-string budget, with the exception of films such as Primer, which is a masterclass in sci-fi storytelling. Michael Mongillo’s The Changed hinges upon the premise of humans being essentially overtaken by extraterrestrials, a concept executed remarkably well by sci-fi staples such as Invasion of the Body Snatchers. Unfortunately, Mongillo’s film is nowhere close to these films in quality, lacking the conviction to pull off its goofy, underdeveloped plot. The Changed tries to breathe life into an overdone premise, but lacks the drive to veer it into fresh directions, and ends up being an utter misfire.\r\n\r\nThe Changed opens with rather confusing shots of a green, pulsating void juxtaposed against a person dreaming, which is, perhaps, the first sign of an alien species invading people\'s psyches. Cut to Mac (Jason Alan Smith) having a conversation with neighbor Bill (Tony Todd), who seems to be acting unlike himself while emphasizing the fact that change is an inevitable element of human existence. He also leans in to kiss Mac, prompting the latter to be taken aback, but Bill laughs it off at the last minute, saying it was just a joke (this action holds importance in terms of the big reveal). Mac and his wife Jane (Carlee Avers) consistently feel that something is off kilter as everyone in their neighborhood seems fundamentally changed and acting quite out of the ordinary. Dismissing this feeling as paranoia, the duo go about their day.\r\n\r\nApart from the couple, their neighbor Kim (Claire Foley) also feels the same: being a teenager, she sees her friends act strange in school, which strengthens her belief that something is amiss. Things escalate when the area loses network coverage and emergency sirens go off while a broadcast on the radio warns residents to head to the nearest shelter for undisclosed reasons. These events develop without conviction or atmosphere, and although nothing unbelievable has occurred as of yet, the very nature of the dialogue and the awkward dynamic between the characters make the scenario wholly unbelievable. Jane, who works at the hospital, is harassed by her co-worker, who tries to kiss her out of the blue, and she storms back home, furious because of the incident. Kim is at Mac and Jane’s house, too, basically on her own now (her mother remains absent and her uncle lives far away), and the three of them chance upon a military broadcast warning that they should not trust anyone: humans are not who they seem to be anymore.\r\n\r\nIt is soon revealed that some sort of single-minded organism has taken over humanity, and is hell-bent on taking over every last one in order to “perfect” the human race and bring about a state of harmony. This, obviously, negates the idea of individuality and free will as the alien race is a hive mind aiming to erase what makes us human in the first place, deeming human flaws as imperfections that need to be remedied. The way the transmission or the process of being changed works is through a kiss — this seems to be the only way humans are taken over by the mysterious species. This, without a doubt, does not work in favor of the film, as the narrative lacks the confidence and requisite aura for pulling off such an outlandish concept.\r\n\r\nThe presence of Todd’s Bill, who wishes to take over the survivors by force, grants some semblance of agency to the plot, which is slowly ripped away after he disappears halfway through the film. In terms of themes, The Changed explores the ideas of human resilience and identity in an exhaustingly superficial way, with characters acting in ways unbefitting of the situation at hand. The conversations that take place, for the most part, are repetitive, reaffirming the same premise of being “changed”, wherein the survivors are asked to join the collective, so as to free themselves from the pain of human expectations, disappointments, and setbacks. This is executed in the most unimaginative way possible and adds virtually nothing to the already threadbare plot.\r\n\r\nWhile Todd and Foley are obvious standouts, in the sense that they play their roles fairly well, the same cannot be said of the rest of the cast, limited as they are by the wooden dialogue and the awkward emotional setups. This makes everything that occurs in The Changed look like a sham, right from what should have been a jaw-dropping reveal to the death of certain characters, as none of the inhabitants of the film’s world are invested with depth or meaning. As the plot drags on without notable events or meaningful exchanges, it is difficult to care about the fates of the survivors, as they fail to establish a genuine connection to the audience, and even amongst themselves. The Changed is a poorly-executed alien invasion riff-off, bereft of any sci-fi elements worth delving into or relatable characters worth rooting for.', 1, '2022-03-06 20:34:37', NULL, NULL),
(32, 'Fantastic Beasts 3 Secures Chinese Release Date', 'fantasticbeasts.png', 'Fantastic Beasts: The Secrets of Dumbledore, the third film in the Fantastic Beasts franchise, confirms a release date in China.A Chinese release date for Fantastic Beasts: Secrets of Dumbledore has been confirmed. The third installment of the Fantastic Beasts franchise, which is an exploration into the past of the wizarding world from the Harry Potter films, will see many of the stars from the first two films returning. Previous reports had noted that Fantastic Beasts 3 would get a China release, although the number of Hollywood films being cleared for release in the country is being reduced. This may be partially down to the censorship of foreign entertainment that China has been known to do, with older releases still being edited down for domestic viewing. Within the last month alone, reports of the censorship of Friends and Fight Club in China have surfaced as examples of this. According to The Hollywood Reporter, Fantastic Beasts 3 will be released in Chinese theatres on April 8. This is the same date as the UK — although China will have the film before North America, which gets it April 15. The report also highlights how successful the franchise had previously proven to be in China, with Fantastic Beasts and Where To Find Them earning $86 million, while Fantastic Beasts: The Crimes of Grindelwald took $57.3 million. While love for Harry Potter seems universal, China\'s connection to the franchise is especially apparent from the launch of the Wizarding World of Harry Potter attraction in Beijing. Fantastic Beasts: The Secrets of Dumbledore will continue to follow the adventures of magical zoologist Newt Scamander (Eddie Redmayne), and brings back an ensemble of recognizable faces from the first two films. This will include Tina Goldstein, portrayed by Katherine Waterston, despite fan fears after her absence from the film\'s trailer. However, Mads Mikkelsen will be new to the franchise, replacing Johnny Depp as Grindelwald.', 2, '2022-03-08 20:34:37', NULL, '2022-03-12 19:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'editor', NULL, NULL),
(3, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `role_id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 1, 'screendigestadm@gmail.com ', 'b0b28cb19597c5d5e4dc1f43a007864a', NULL, NULL),
(2, 'John', 'Doe', 2, 'john@theeditor.com', 'dac13ededea0c52ab9eed85689861f48', NULL, NULL),
(3, 'User', 'User', 3, 'user@mailinator.com', '5cc32e366c87c4cb49e4309b75f57d64', '2022-03-11 13:44:59', '2022-03-11 13:44:59'),
(5, 'Userr', 'Userr', 2, 'userrr@mailinator.com', 'b408f18d15ee6107f79a400f831afbe1', '2022-03-11 13:50:38', '2022-03-12 16:25:23'),
(6, 'Novi', 'User', 3, 'noviuser@mailinator.com', '3db25cf0fa0020881fe1820055f10aeb', '2022-03-12 00:14:21', '2022-03-12 00:14:21'),
(7, 'Insert', 'Test', 3, 'insert@aaaaaa.com', 'b115861a9e92a9336b454245b0161a7e', '2022-03-12 12:20:02', '2022-03-12 12:20:02'),
(8, 'Insert', 'Testttt', 3, 'fvsvadf@mail.com', '4bbde07660e5eff90873642cfae9a8dd', '2022-03-12 12:28:50', '2022-03-12 12:28:50'),
(9, 'Another', 'Insert', 3, 'edfwf@mail.com', 'c80949e46291b94546cdc210589730bb', '2022-03-12 12:29:35', '2022-03-12 12:29:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_post_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
