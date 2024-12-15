-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2024 at 11:54 PM
-- Server version: 10.11.9-MariaDB-cll-lve
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techserv_shopmama`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name_en` varchar(191) NOT NULL,
  `brand_name_bn` varchar(191) NOT NULL,
  `brand_slug_en` varchar(191) NOT NULL,
  `brand_slug_bn` varchar(191) NOT NULL,
  `brand_image` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name_en`, `brand_name_bn`, `brand_slug_en`, `brand_slug_bn`, `brand_image`, `created_at`, `updated_at`) VALUES
(1, 'Clothing', 'ক্লোথিং', 'clothing', 'ক্লোথিং', 'uploads/brand/1768121200110467.png', '2023-06-08 02:09:36', NULL),
(2, 'Electronics', 'ইলেকট্রনিক্স', 'electronics', 'ইলেকট্রনিক্স', 'uploads/brand/1768121290149595.png', '2023-06-08 02:11:02', NULL),
(4, 'Shoes', 'সুস', 'shoes', 'সুস', 'uploads/brand/1768122767673632.png', '2023-06-08 02:34:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(191) NOT NULL,
  `category_name_bn` varchar(191) NOT NULL,
  `category_slug_en` varchar(191) NOT NULL,
  `category_slug_bn` varchar(191) NOT NULL,
  `category_icon` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name_en`, `category_name_bn`, `category_slug_en`, `category_slug_bn`, `category_icon`, `created_at`, `updated_at`) VALUES
(1, 'Clothing', 'ক্লোথিং', 'clothing', 'ক্লোথিং', 'icon fa fa-shopping-bag', '2023-06-08 02:13:17', NULL),
(2, 'Electronics', 'ইলেকট্রনিক্স', 'electronics', 'ইলেকট্রনিক্স', 'icon fa fa-laptop', '2023-06-08 02:13:48', NULL),
(3, 'Shoes', 'সুস', 'shoes', 'সুস', 'icon fa fa-paw', '2023-06-08 02:14:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(191) NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(191) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL COMMENT 'own_id',
  `receiver_id` bigint(20) UNSIGNED NOT NULL COMMENT 'other_id',
  `product_id` int(11) DEFAULT NULL,
  `msg` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_29_161354_create_roles_table', 1),
(5, '2020_11_06_183046_create_brands_table', 1),
(6, '2020_11_08_185715_create_categories_table', 1),
(7, '2020_11_10_163648_create_subcategories_table', 1),
(8, '2020_11_10_175704_create_subsub_categories_table', 1),
(9, '2020_11_14_203250_create_products_table', 1),
(10, '2020_11_14_204618_create_multi_imgs_table', 1),
(11, '2020_11_23_182809_create_sliders_table', 1),
(12, '2020_12_25_164117_create_wishlists_table', 1),
(13, '2020_12_28_165322_create_coupons_table', 1),
(14, '2020_12_28_174907_create_ship_divisions_table', 1),
(15, '2020_12_28_174924_create_ship_districts_table', 1),
(16, '2020_12_28_174938_create_ship_states_table', 1),
(17, '2021_01_12_195206_create_orders_table', 1),
(18, '2021_01_12_195229_create_order_items_table', 1),
(19, '2021_05_08_185950_create_product_reviews_table', 1),
(20, '2021_06_09_181858_create_permissions_table', 1),
(21, '2021_10_22_184838_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/products/multi-image/1768122222965455.jpg', '2023-06-08 02:25:52', NULL),
(2, 2, 'uploads/products/multi-image/1768122369834121.jpeg', '2023-06-08 02:28:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `post_code` int(11) NOT NULL,
  `notes` varchar(191) DEFAULT NULL,
  `payment_type` varchar(191) NOT NULL,
  `payment_method` varchar(191) DEFAULT NULL,
  `transaction_id` varchar(191) NOT NULL,
  `currency` varchar(191) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `order_number` varchar(191) NOT NULL,
  `invoice_no` varchar(191) NOT NULL,
  `order_date` varchar(191) NOT NULL,
  `order_month` varchar(191) NOT NULL,
  `order_year` varchar(191) NOT NULL,
  `confirmed_date` varchar(191) DEFAULT NULL,
  `processing_date` varchar(191) DEFAULT NULL,
  `picked_date` varchar(191) DEFAULT NULL,
  `shipped_date` varchar(191) DEFAULT NULL,
  `delivered_date` varchar(191) DEFAULT NULL,
  `cancel_date` varchar(191) DEFAULT NULL,
  `return_date` varchar(191) DEFAULT NULL,
  `return_reason` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `state_id`, `name`, `email`, `phone`, `post_code`, `notes`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL, NULL, 'user', 'user@user.com', '01682180180', 1212, 'sds', 'Cash', 'Cash', 'cash', 'Money', 25.00, '1', 'SPM47713778', '08 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '2023-06-08 03:28:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(191) NOT NULL,
  `size` varchar(191) DEFAULT NULL,
  `qty` varchar(191) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Maxime obcaecati ips', 'Ratione eum ut imped', '1', 25.00, '2023-06-08 03:28:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `role_id`, `permission`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"slider\":{\"add\":\"1\",\"view\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"list\":\"1\"},\"brand\":{\"add\":\"1\",\"view\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"list\":\"1\"},\"cat\":{\"add\":\"1\",\"view\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"list\":\"1\"},\"subcat\":{\"add\":\"1\",\"view\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"list\":\"1\"},\"subsubcat\":{\"add\":\"1\",\"view\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"list\":\"1\"},\"product\":{\"add\":\"1\",\"view\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"list\":\"1\"}}', '2023-06-08 02:01:51', '2023-06-08 02:01:51');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_id` int(11) NOT NULL,
  `product_name_en` varchar(191) NOT NULL,
  `product_name_bn` varchar(191) NOT NULL,
  `product_slug_en` varchar(191) NOT NULL,
  `product_slug_bn` varchar(191) NOT NULL,
  `product_code` varchar(191) NOT NULL,
  `product_qty` varchar(191) NOT NULL,
  `product_tags_en` varchar(191) NOT NULL,
  `product_tags_bn` varchar(191) NOT NULL,
  `product_size_en` varchar(191) DEFAULT NULL,
  `product_size_bn` varchar(191) DEFAULT NULL,
  `product_color_en` varchar(191) NOT NULL,
  `product_color_bn` varchar(191) NOT NULL,
  `selling_price` varchar(191) NOT NULL,
  `discount_price` varchar(191) DEFAULT NULL,
  `short_descp_en` text NOT NULL,
  `short_descp_bn` text NOT NULL,
  `long_descp_en` text NOT NULL,
  `long_descp_bn` text NOT NULL,
  `product_thambnail` varchar(191) NOT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `brand_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `product_name_en`, `product_name_bn`, `product_slug_en`, `product_slug_bn`, `product_code`, `product_qty`, `product_tags_en`, `product_tags_bn`, `product_size_en`, `product_size_bn`, `product_color_en`, `product_color_bn`, `selling_price`, `discount_price`, `short_descp_en`, `short_descp_bn`, `long_descp_en`, `long_descp_bn`, `product_thambnail`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 2, 2, 'Damon Bradford', 'Blossom Pickett', 'damon-bradford', 'Blossom-Pickett', 'Ut', '214', 'Dolor inventore mole', 'Ipsa obcaecati mole', 'Voluptates molestias', 'Rerum perspiciatis', 'Minima reprehenderit', 'Magni consectetur a', '567', '900', '<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 13px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>', 'A hic volupta<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 13px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>te ut v.', '<span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 13px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 13px;\"><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 13px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 13px;\">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>', '<span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 13px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 13px;\"><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 13px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 13px;\">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>', 'uploads/products/thambnail/1768122222840089.jpg', 1, 1, 1, 1, 1, '2023-06-08 02:25:52', NULL),
(2, 1, 2, 2, 3, 3, 'Meghan Cantu', 'Logan Pratt', 'meghan-cantu', 'Logan-Pratt', 'Praesentium', '706', 'Nihil ex doloribus a,Vitae laborum tempor', 'Dolorum magni numqua,Occaecat enim saepe', 'Ratione eum ut imped,Qui voluptatem Ut d', 'Eos odit accusamus e,Rem quibusdam mollit', 'Maxime obcaecati ips,Aut culpa odio imped', 'Ad nulla anim suscip,Ut velit laboriosam', '438', '25', '<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 13px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>', '<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 13px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>', '{\"v\":1,\"matches_filters\":{\"current\":[]},\"meta\":{\"action\":\"added\",\"change_source\":\"app\",\"company_id\":10686294,\"host\":\"goodtrading.pipedrive.com\",\"id\":24,\"is_bulk_update\":false,\"matches_filters\":{\"current\":[]},\"object\":\"person\",\"permitted_user_ids\":[15403036],\"pipedrive_service_name\":false,\"timestamp\":1687838700,\"timestamp_micro\":1687838700534338,\"prepublish_timestamp\":1687838700829,\"trans_pending\":false,\"user_id\":15403036,\"v\":1,\"webhook_id\":\"327971\"},\"current\":{\"related_closed_deals_count\":0,\"delete_time\":null,\"email_messages_count\":0,\"cc_email\":\"goodtrading@pipedrivemail.com\",\"owner_id\":15403036,\"open_deals_count\":0,\"last_outgoing_mail_time\":null,\"active_flag\":true,\"picture_id\":null,\"last_activity_id\":null,\"next_activity_date\":null,\"update_time\":\"2023-06-27 04:05:00\",\"participant_open_deals_count\":0,\"activities_count\":0,\"id\":24,\"org_name\":null,\"first_name\":\"ff\",\"email\":[{\"label\":\"work\",\"value\":\"ff@gmail.com\",\"primary\":true}],\"won_deals_count\":0,\"owner_name\":\"Sagor\",\"files_count\":0,\"company_id\":10686294,\"related_won_deals_count\":0,\"last_incoming_mail_time\":null,\"first_char\":\"f\",\"undone_activities_count\":0,\"closed_deals_count\":0,\"last_name\":null,\"last_activity_date\":null,\"label\":null,\"next_activity_id\":null,\"related_lost_deals_count\":0,\"related_open_deals_count\":0,\"phone\":[{\"value\":null,\"primary\":true}],\"visible_to\":\"3\",\"org_id\":null,\"notes_count\":0,\"followers_count\":0,\"name\":\"ff\",\"participant_closed_deals_count\":0,\"primary_email\":\"ff@gmail.com\",\"lost_deals_count\":0,\"next_activity_time\":null,\"add_time\":\"2023-06-27 04:05:00\",\"done_activities_count\":0},\"previous\":null,\"event\":\"added.person\",\"retry\":0}', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div><div><br></div><div>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&nbsp;</div>', 'uploads/products/thambnail/1768122369726398.jpeg', 1, 1, 1, 1, 1, '2023-06-08 02:28:12', '2023-06-26 22:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL,
  `status` enum('pending','approve') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'User', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_districts`
--

CREATE TABLE `ship_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_districts`
--

INSERT INTO `ship_districts` (`id`, `division_id`, `district_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Liberty Branch', '2023-06-08 03:16:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_divisions`
--

CREATE TABLE `ship_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_divisions`
--

INSERT INTO `ship_divisions` (`id`, `division_name`, `created_at`, `updated_at`) VALUES
(1, 'Nelle Keller', '2023-06-08 03:15:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_states`
--

CREATE TABLE `ship_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_states`
--

INSERT INTO `ship_states` (`id`, `division_id`, `district_id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Marcia House', '2023-06-08 03:16:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `title_bn` varchar(191) DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `description_bn` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `title_en`, `title_bn`, `description_en`, `description_bn`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads/slider/1768120928364591.jpg', 'TOP BRANDS', 'টপ ব্র্যান্ডস', 'NEW COLLECTION', 'নিউ কালেকশন', 1, '2023-06-08 02:05:17', '2023-06-08 02:05:17'),
(2, 'uploads/slider/1768120985835339.jpg', 'SPRING 2023', 'স্প্রিং ট২৩', 'NEW COLLECTION', 'নিউ  কালেকশন', 1, '2023-06-08 02:06:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name_en` varchar(191) NOT NULL,
  `subcategory_name_bn` varchar(191) NOT NULL,
  `subcategory_slug_en` varchar(191) NOT NULL,
  `subcategory_slug_bn` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name_en`, `subcategory_name_bn`, `subcategory_slug_en`, `subcategory_slug_bn`, `created_at`, `updated_at`) VALUES
(1, 1, 'Men', 'মেন্', 'men', 'মেন্', '2023-06-08 02:14:42', NULL),
(2, 1, 'Women', 'ওমেন', 'women', 'ওমেন', '2023-06-08 02:14:55', NULL),
(3, 2, 'Laptops', 'ল্যাপটপস', 'laptops', 'ল্যাপটপস', '2023-06-08 02:15:26', NULL),
(4, 2, 'Desktops', 'ডেস্কটপস', 'desktops', 'ডেস্কটপস', '2023-06-08 02:15:46', NULL),
(5, 3, 'Sandals', 'সান্ডালস', 'sandals', 'সান্ডালস', '2023-06-08 02:16:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subsub_categories`
--

CREATE TABLE `subsub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_name_en` varchar(191) NOT NULL,
  `subsubcategory_name_bn` varchar(191) NOT NULL,
  `subsubcategory_slug_en` varchar(191) NOT NULL,
  `subsubcategory_slug_bn` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subsub_categories`
--

INSERT INTO `subsub_categories` (`id`, `category_id`, `subcategory_id`, `subsubcategory_name_en`, `subsubcategory_name_bn`, `subsubcategory_slug_en`, `subsubcategory_slug_bn`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Dresses', 'ড্রেসেস', 'dresses', 'ড্রেসেস', '2023-06-08 02:17:03', NULL),
(2, 1, 2, 'Handbags', 'হ্যান্ডবাজিস', 'handbags', 'হ্যান্ডবাজিস', '2023-06-08 02:17:40', NULL),
(3, 2, 3, 'Apple', 'আপেল', 'apple', 'আপেল', '2023-06-08 02:18:07', NULL),
(4, 2, 4, 'Gaming', 'গেমিং', 'gaming', 'গেমিং', '2023-06-08 02:18:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `isban` tinyint(4) NOT NULL DEFAULT 0,
  `last_seen` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `provider_id` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `isban`, `last_seen`, `phone`, `provider_id`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 1, 0, '2024-05-08 05:39:46', '01682180100', NULL, 'fontend/media/1768120382970975.png', 'admin@admin.com', NULL, '$2y$10$ESkSmmajiUmpqgWBqeQxQ./.Lpdjnkrn9SHRf17C7ZaLvULx6yvEe', NULL, '2023-06-08 01:20:31', '2024-05-07 23:39:46'),
(2, 'user', 2, 0, '2024-05-08 05:39:14', '01682180180', NULL, 'fontend/media/avatar.png', 'user@user.com', NULL, '$2y$10$wc3ygi/biaK4azIy0yhIYuXI50UxznBNcl6OwYCeHfwRblSKGj5oy', NULL, '2023-06-08 03:28:28', '2024-05-07 23:39:14');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_districts`
--
ALTER TABLE `ship_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_states`
--
ALTER TABLE `ship_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subsub_categories`
--
ALTER TABLE `subsub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ship_districts`
--
ALTER TABLE `ship_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ship_states`
--
ALTER TABLE `ship_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subsub_categories`
--
ALTER TABLE `subsub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
