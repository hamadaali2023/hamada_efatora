-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2023 at 09:03 AM
-- Server version: 5.7.41
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u9ak0fjx_traccar`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buyerId` bigint(20) UNSIGNED NOT NULL,
  `address_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `buyerId`, `address_name`, `full_name`, `email`, `phone`, `city`, `state`, `full_address`, `created_at`, `updated_at`) VALUES
(1, 2, 'egypt', 'hemaaa', 'hema1@gmail.com', '0102295283', 'tge', '353y654', 'egypt mansoura', '2022-06-16 20:16:12', '2022-06-16 20:16:12');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pannar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productId` bigint(20) UNSIGNED NOT NULL,
  `buyerId` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `vendor_id`, `name_ar`, `name_en`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(7, 2, 'أطفال', 'child', 'تقدر ان تضعها كخلفية شخصية وايضا تصلح لك فى حالات المعايدة من فترة لاخرى، هذه الصور مختارة بعناية لتزين بها بروفايلك الشخصي. باقات زهور وورد اكثر من رائعة تزين بها البروفايل الشخصي.', 'https://elnamat.com/front/img/home-img2.png', 0, '2022-09-05 17:25:34', '2022-09-05 17:25:34'),
(8, 2, 'موبايلات', 'mobile', 'تقدر ان تضعها كخلفية شخصية وايضا تصلح لك فى حالات المعايدة من فترة لاخرى، هذه الصور مختارة بعناية لتزين بها بروفايلك الشخصي. باقات زهور وورد اكثر من رائعة تزين بها البروفايل الشخصي.', 'https://elnamat.com/front/img/home-img2.png', 0, '2022-09-05 17:25:50', '2022-09-05 17:25:50'),
(9, 2, 'الازياء', 'fashion', 'تقدر ان تضعها كخلفية شخصية وايضا تصلح لك فى حالات المعايدة من فترة لاخرى، هذه الصور مختارة بعناية لتزين بها بروفايلك الشخصي. باقات زهور وورد اكثر من رائعة تزين بها البروفايل الشخصي.', 'https://elnamat.com/front/img/home-img2.png', 0, '2022-09-05 17:25:51', '2022-09-05 17:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryId` bigint(20) UNSIGNED NOT NULL,
  `subCategoryId` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `top` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `countryId` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `client_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `vendor_id`, `name_ar`, `name_en`, `mobile`, `address`, `tax_date`, `tax_number`, `additional_mobile`, `notes`, `client_type`, `user_type`, `created_at`, `updated_at`) VALUES
(67, 2, 'plhdfgdfb', 'hamada', '12345536', '23422', '2', '2', '423423', 'evrvev', 'ver', 'erverve', '2022-09-05 21:09:56', '2022-09-05 21:09:56'),
(68, 2, 'plhdfgdfb', 'hamada', '12345536', '23422', '2', '2', '423423', 'evrvev', 'ver', 'erverve', '2022-09-05 21:10:24', '2022-09-05 21:10:24');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_27_054719_create_categories_table', 1),
(5, '2021_03_27_054745_create_sub_categories_table', 1),
(6, '2021_03_27_054758_create_child_categories_table', 1),
(7, '2021_04_27_054903_create_vendors_buyers_table', 1),
(8, '2021_05_27_054810_create_countries_table', 1),
(9, '2021_05_27_054823_create_cities_table', 1),
(10, '2021_05_27_054837_create_states_table', 1),
(11, '2021_05_27_054955_create_socials_table', 1),
(12, '2021_05_27_055152_create_addresses_table', 1),
(13, '2021_06_27_055022_create_shops_table', 1),
(14, '2021_06_28_055022_create_products_table', 1),
(15, '2021_06_29_055606_create_product_image_table', 1),
(16, '2021_06_30_055237_create_offers_table', 1),
(17, '2021_07_25_055050_create_orders_table', 1),
(18, '2021_07_26_055050_create_order_items_table', 1),
(19, '2021_07_26_055050_create_order_vendor_product_table', 1),
(20, '2021_07_27_055022_create_wishlists_table', 1),
(21, '2021_07_27_055107_create_payments_table', 1),
(22, '2021_07_27_055237_create_banks_table', 1),
(23, '2021_07_27_055308_create_reviews_table', 1),
(24, '2021_07_27_055329_create_coupons_table', 1),
(25, '2021_07_27_055414_create_banners_table', 1),
(26, '2021_07_27_055446_create_sliders_table', 1),
(27, '2021_07_27_055634_create_settings_table', 1),
(28, '2021_08_14_055036_create_carts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(1, 'App\\User', 3),
(1, 'App\\User', 4),
(2, 'App\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyerId` int(11) NOT NULL,
  `addressId` bigint(20) UNSIGNED NOT NULL,
  `status` enum('new','delete','cancel','processing','delivered','cancelled') CHARACTER SET utf8 NOT NULL DEFAULT 'new',
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `payment_method` enum('cash_on_delivery','paypal','stripe','card') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash_on_delivery',
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productId` int(11) NOT NULL,
  `orderId` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_vendor_product`
--

CREATE TABLE `order_vendor_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `vendor_buyer_id` int(11) NOT NULL,
  `order_productId` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `currency` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_vendor_product`
--

INSERT INTO `order_vendor_product` (`id`, `order_id`, `vendor_buyer_id`, `order_productId`, `price`, `currency`, `quantity`, `created_at`, `updated_at`) VALUES
(53, 80, 1, 7, 44.00, 'kir', 2, '2022-07-07 10:11:28', '2022-07-07 10:11:28'),
(54, 81, 1, 11, 44.00, 'kir', 2, '2022-07-09 17:55:54', '2022-07-09 17:55:54'),
(55, 84, 1, 11, 44.00, 'kir', 2, '2022-07-09 18:07:55', '2022-07-09 18:07:55'),
(56, 85, 1, 11, 44.00, 'kir', 2, '2022-07-09 18:08:01', '2022-07-09 18:08:01'),
(57, 86, 1, 11, 44.00, 'kir', 2, '2022-07-09 18:24:02', '2022-07-09 18:24:02');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderId` bigint(20) UNSIGNED NOT NULL,
  `vendorId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'المشاهدات', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(5, 'الدول', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(6, 'المدن', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(7, 'التخصصات العامة', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(8, 'التخصصات الفرعية', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(9, 'التخصصات الابناء', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(10, 'المستخدمين', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(11, 'قائمة المستخدمين', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(12, 'صلاحيات المستخدمين', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(13, 'الرئيسية', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(25, 'اضافة مستخدم', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(26, 'تعديل مستخدم', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(27, 'حذف مستخدم', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(28, 'عرض صلاحية', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(29, 'اضافة صلاحية', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(30, 'تعديل صلاحية', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(31, 'حذف صلاحية', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(37, 'السلايدر', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(38, 'الاشعارات', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `shop_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name_ar` mediumtext CHARACTER SET utf8,
  `name_en` longtext CHARACTER SET utf8,
  `serial_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` double(8,2) DEFAULT NULL,
  `buying_price` double(8,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT '0',
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `vendor_id`, `shop_id`, `name_ar`, `name_en`, `serial_number`, `selling_price`, `buying_price`, `quantity`, `tax`, `image`, `created_at`, `updated_at`) VALUES
(22, 7, 2, 4, '1234567', 'hamada@diughdf.com', 'الفيوم', 23422.00, 2.00, 423423, 2, 'https://elnamat.com/front/img/home-img2.png', '2022-09-05 19:27:28', '2022-09-05 19:27:28'),
(23, 7, 2, 4, '1234567', 'hamada@diughdf.com', 'الفيوم', 23422.00, 2.00, 423423, 2, 'https://elnamat.com/front/img/home-img2.png', '2022-09-05 19:31:38', '2022-09-05 19:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2021-01-03 03:43:48', '2021-01-03 03:43:48'),
(2, 'editor', 'web', '2021-07-20 03:56:23', '2021-07-14 03:56:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 4),
(2, 1),
(2, 4),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(4, 2),
(10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_kr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_kr` text COLLATE utf8mb4_unicode_ci,
  `privacy_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_kr` text COLLATE utf8mb4_unicode_ci,
  `terms_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_kr` text COLLATE utf8mb4_unicode_ci,
  `agreements_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `agreements_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `title_ar`, `title_en`, `title_kr`, `phone`, `email`, `address_ar`, `address_en`, `longitude`, `latitude`, `description_ar`, `description_en`, `description_kr`, `privacy_ar`, `privacy_en`, `privacy_kr`, `terms_ar`, `terms_en`, `terms_kr`, `agreements_ar`, `agreements_en`, `return_ar`, `return_en`, `version`, `created_at`, `updated_at`) VALUES
(1, '1657466826.png', 'vdfvdf vygd fjbvfdu vfdvd', 'Address English', 'العوان انجليزي', 'Adressera engelska', 'regerg', 'ewfuhern@eiurhg.com', 'dd', 'ddd', '454', '6546', '<p dir=\"RTL\"><strong>بداية نود أن نشكر&nbsp;</strong></p>\r\n\r\n<p><strong><span dir=\"RTL\">متجر طلباتي.كوم عنوان التميز في تقديم توزيعات المناسبات الخاصة والاجتماعية ( المواليد - الاستقبالات - هدايا الاعياد - الافراح ، ) بأفكار ابداعية مبتكرة و الوان جماليه فريدة من نوعها تُضيف تألق إلى مناسبتك</span></strong>&nbsp;<strong><span dir=\"RTL\">&nbsp;ويقدم منتجات محددة رغبة منها في التخصص وتقديم أفضل وأرقى جودة ممكنة وبأسعار تنافسية .</span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span dir=\"RTL\">&quot;طلباتي كوم&quot; استهدفت&nbsp; منتجات التوزيعات والهدايا وأدواتها , ويسعى متجر &quot;طلباتي كوم&quot; بإضافة العديد من المنتجات مستقبلاً ان شاء الله.</span></strong></p>\r\n\r\n<p dir=\"RTL\"><strong>بداية نود أن نشكر&nbsp;</strong></p>\r\n\r\n<p><strong><span dir=\"RTL\">متجر طلباتي.كوم عنوان التميز في تقديم توزيعات المناسبات الخاصة والاجتماعية ( المواليد - الاستقبالات - هدايا الاعياد - الافراح ، ) بأفكار ابداعية مبتكرة و الوان جماليه فريدة من نوعها تُضيف تألق إلى مناسبتك</span></strong>&nbsp;<strong><span dir=\"RTL\">&nbsp;ويقدم منتجات محددة رغبة منها في التخصص وتقديم أفضل وأرقى جودة ممكنة وبأسعار تنافسية .</span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span dir=\"RTL\">&quot;طلباتي كوم&quot; استهدفت&nbsp; منتجات التوزيعات والهدايا وأدواتها , ويسعى متجر &quot;طلباتي كوم&quot; بإضافة العديد من المنتجات مستقبلاً ان شاء الله.</span></strong></p>', '<p>First we would like to thank</p>\r\n\r\n<p>Talabati.com store is the title of excellence in providing distributions for special and social occasions (births - receptions - holiday gifts - weddings,) with innovative creative ideas and unique aesthetic colors that add brilliance to your event and offer specific products in its desire to specialize and provide the best and finest quality possible at competitive prices .</p>\r\n\r\n<p>&quot;Talabati com&quot; targeted the distribution products, gifts and tools, and the &quot;Talabati com&quot; store seeks to add many products in the future, God willing.</p>', '<p>F&ouml;rst vill vi tacka</p>\r\n\r\n<p>Talabati.com -butik &auml;r titeln p&aring; excellens n&auml;r det g&auml;ller att tillhandah&aring;lla distributioner f&ouml;r speciella och sociala tillf&auml;llen (f&ouml;delser - mottagningar - semesterg&aring;vor - br&ouml;llop,) med innovativa kreativa id&eacute;er och unika estetiska f&auml;rger som ger glans till ditt evenemang och erbjuder specifika produkter i dess &ouml;nskan att Specialisera och ge b&auml;sta och b&auml;sta kvalitet som m&ouml;jligt till konkurrenskraftiga priser.</p>\r\n\r\n<p>&quot;Talabati Com&quot; riktade till distributionsprodukter, g&aring;vor och verktyg, och &quot;Talabati Com&quot; -butiken f&ouml;rs&ouml;ker l&auml;gga till m&aring;nga produkter i framtiden, Gud vill.</p>', '<p dir=\"RTL\">توضح سياسة الخصوصيّة كيفية جمع واستخدام بياناتك الشخصية (تحت ظروفٍ معينةٍ). كما تذكرُ أيضاً الإجراءات المتبعة لضمان خصوصية معلوماتك. وأخيراً، تُحدّد هذه السياسة الخيارات المتاحة لكَ فيما يتعلّق بجمع البيانات الشخصية واستخدامها والكشف عنها. ومن خلال زيارتك للموقع مباشرةً أو عن طريق موقعٍ آخر، أنتَ توافق على التطبيقات المفصّلة في هذه السياسة.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"RTL\">إن حماية بياناتك أمرٌ هامٌ جداً بالنسبة لـ &quot;طلباتي كوم&quot;. وبالتالي، يتم استخدام إسمك وغيره من المعلومات التي تتعلّق بك وفقاً للّنحو المبيّن في سياسة الخصوصيّة. وسنقوم بجمع المعلومات عند الضّرورة أو إذا كانت ذات صلةٍ ضرورية مباشرةٍ بمعاملاتنا معكَ. وسنقوم بالاحتفاظ ببياناتك إذا طلب منا بوجوب القانون أو لاستخدامها للأغراض التي جمعت لأجلها . ويمكنك تصفح الموقع دون الحاجة إلى تقديم أيّة بيانات شخصيّة. وتبقى هويّتك الشخصية مجهولة طيلة زيارتك للموقع ولا يتم كشفها إلا إذا كنتَ تملك حساباً إلكترونياً خاصاً على الموقع تَنفذُ إليه بواسطة إسم المستخدم وكلمة المرور.</p>\r\n\r\n<p dir=\"RTL\">إذا كانت لديك أي ملاحظات أو اقتراحات، فيسعدنا استقبالها على البريد الالكتروني&nbsp;&nbsp;<span dir=\"LTR\">support@tlbate.com</span>، كما يمكنك مراسلتنا عبر الواتس أب&nbsp; 966+.</p>', '<p>The Privacy Policy explains how we collect and use your personal data (under certain circumstances). It also mentions the procedures used to ensure the privacy of your information. Finally, this policy sets out the choices available to you regarding the collection, use and disclosure of personal data. By visiting the Website directly or via another website, you agree to the applications detailed in this Policy.</p>\r\n\r\n<p>Protecting your data is very important to Talabati.com. Therefore, your name and other information relating to you is used in the manner described in the Privacy Policy. We will collect information as necessary or if it is directly necessary to our dealings with you. We will retain your data if required by law or to use it for the purposes for which it was collected. You can browse the site without having to provide any personal data. Your personal identity remains anonymous throughout your visit to the site and is not revealed unless you have a special electronic account on the site that you access using your username and password.</p>\r\n\r\n<p>If you have any comments or suggestions, we are happy to receive them at support@tlbate.com, and you can also write to us via WhatsApp +966.</p>', '<p>Sekretesspolicyn f&ouml;rklarar hur vi samlar in och anv&auml;nder dina personuppgifter (under vissa omst&auml;ndigheter). Det n&auml;mner ocks&aring; de f&ouml;rfaranden som anv&auml;nds f&ouml;r att s&auml;kerst&auml;lla integriteten f&ouml;r din information. Slutligen anger denna policy de val som &auml;r tillg&auml;ngliga f&ouml;r dig n&auml;r det g&auml;ller insamling, anv&auml;ndning och avsl&ouml;jande av personuppgifter. Genom att bes&ouml;ka webbplatsen direkt eller via en annan webbplats samtycker du till de applikationer som beskrivs i denna policy.</p>\r\n\r\n<p>Att skydda dina data &auml;r mycket viktigt f&ouml;r Talabati.com. D&auml;rf&ouml;r anv&auml;nds ditt namn och annan information som r&ouml;r dig p&aring; det s&auml;tt som beskrivs i sekretesspolicyn. Vi samlar in information vid behov eller om det &auml;r direkt n&ouml;dv&auml;ndigt f&ouml;r v&aring;ra aff&auml;rer med dig. Vi kommer att beh&aring;lla dina uppgifter om det kr&auml;vs enligt lag eller att anv&auml;nda dem f&ouml;r de syften som de samlades in f&ouml;r. Du kan surfa p&aring; webbplatsen utan att beh&ouml;va tillhandah&aring;lla personuppgifter. Din personliga identitet f&ouml;rblir anonym under hela ditt bes&ouml;k p&aring; webbplatsen och avsl&ouml;jas inte om du inte har ett speciellt elektroniskt konto p&aring; webbplatsen som du f&aring;r &aring;tkomst till med ditt anv&auml;ndarnamn och l&ouml;senord.</p>', '<p>قد نحتاج لجمع المعلومات الخاصة بكَ إذا أردت تسجيل طلبية شراءٍ لسلعةٍ من موقعنا.ونقوم بجمع بعض البيانات اللازمة لتأمين أية مطالب محتملة قد تظهر لاحقاً&shy;، ولتزويدكَ بالخدمات المتوفرة لدينا. مثال على ذلك ، الإسم والجنس وتاريخ الميلاد وعنوان البريد الإلكتروني والعنوان البريدي وعنوان التسليم (إذا كان مختلفاً) ورقم الجوّال وتفاصيل الدفع &quot;أي تفاصيل عن بطاقات&nbsp;الدفع أو تفاصيل عن الحساب المصرفي&quot;.<br />\r\nتستخدم المعلومات التي تقدّمها لتزويدكَ بمعلومات حول المنتجات والخدمات المتوفرة لدينا والتي تطلبها ، وللتحقّقَ من المعاملات المالية التي تُجريها على الإنترنت وإدارة حسابك الخاص لدى &quot;&#39;طلباتي&quot;. كما تستخدم هذه المعلومات في عمليات تدقّيقَ تحميل البيانات من الموقع وتحديد هويّة زائري الموقع ، وتطوير تصاميم صفحات الموقع و / أو محتوياته وتخصيصها للمستخدمين.<br />\r\nويتم التواصل عبر البريد الإلكتروني لتزويدكَ ببعض التفاصيل حول المنتجات والخدمات الأخرى إذا كنت ترغب في ذلك، وإذا كنتَ تفضّل عدم تلقي أية مراسلات ترويجية وتسويقيّةٍ ، فيُرجى الانسحاب من هذا الخيارفي أي وقتٍ من الأوقات.</p>', '<p>We may need to collect your information if you want to place an order for a commodity from our site. We collect some data necessary to secure any potential claims that may arise later, and to provide you with the services available to us. Examples are name, gender, date of birth, email address, postal address, delivery address (if different), mobile number, payment details &quot;any payment card details or bank account details&quot;.<br />\r\nThe information you provide is used to provide you with information about the products and services available to us that you request, to verify your online financial transactions and to manage your account with &ldquo;My Talabat&rdquo;. This information is also used in the processes of downloading data from the site, identifying visitors to the site, and developing and customizing the designs of site pages and/or content for users.<br />\r\nWe will contact you via e-mail to provide you with some details about other products and services if you wish, and if you would prefer not to receive any promotional and marketing communications, please opt out of this option at any time</p>', '<p>Vi kan beh&ouml;va samla in din information om du vill g&ouml;ra en best&auml;llning f&ouml;r en vara fr&aring;n v&aring;r webbplats. Vi samlar in vissa uppgifter som kr&auml;vs f&ouml;r att s&auml;kerst&auml;lla eventuella p&aring;st&aring;enden som kan uppst&aring; senare och f&ouml;r att ge dig de tj&auml;nster som &auml;r tillg&auml;ngliga f&ouml;r oss. Exempel &auml;r namn, k&ouml;n, f&ouml;delsedatum, e -postadress, postadress, leveransadress (om olika), mobilnummer, betalningsuppgifter &quot;Alla uppgifter om betalningskort eller bankkontouppgifter&quot;.<br />\r\nInformationen du tillhandah&aring;ller anv&auml;nds f&ouml;r att ge dig information om de produkter och tj&auml;nster som finns tillg&auml;ngliga f&ouml;r oss som du beg&auml;r, f&ouml;r att verifiera dina finansiella transaktioner online och f&ouml;r att hantera ditt konto med &quot;My Talabat&quot;. Denna information anv&auml;nds ocks&aring; i processerna f&ouml;r att ladda ner data fr&aring;n webbplatsen, identifiera bes&ouml;kare p&aring; webbplatsen och utveckla och anpassa designen p&aring; webbplatssidor och/eller inneh&aring;ll f&ouml;r anv&auml;ndare.<br />\r\nVi kommer att kontakta dig via e-post f&ouml;r att ge dig n&aring;gra detaljer om andra produkter och tj&auml;nster om du vill, och om du f&ouml;redrar att inte f&aring; n&aring;gon marknadsf&ouml;ring och marknadsf&ouml;ringskommunikation, v&auml;nligen v&auml;lj bort det h&auml;r alternativet n&auml;r som helst</p>', 'vfdv', 'vdfvfd', 'vfd', 'vfd', 33.00, NULL, '2022-08-29 17:21:55');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_number` int(11) DEFAULT NULL,
  `commercial_record` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name_ar`, `name_en`, `vendor_id`, `phone`, `email`, `adress`, `text_number`, `commercial_record`, `created_at`, `updated_at`) VALUES
(1, 'متجر التقوى', 'store tkwa', 1, NULL, NULL, NULL, NULL, NULL, '2022-02-28 06:22:51', '2022-07-01 12:24:21'),
(4, 'hamadaaaa', 'hamada', 2, '1234567', 'hamada@diughdf.com', 'الفيوم', 423423, 23422, '2022-09-05 19:15:14', '2022-09-05 19:15:14'),
(5, 'hamadaaaa', 'hamada', 2, '1234567', 'hamada@diughdf.com', 'الفيوم', 423423, 23422, '2022-09-27 10:31:59', '2022-09-27 10:31:59'),
(6, 'hamadaaaa', 'hamada', 2, '1234567', 'hamada@diughdf.com', 'الفيوم', 423423, 23422, '2022-09-27 10:32:09', '2022-09-27 10:32:09'),
(7, 'hamadaaaa', 'hamada', 2, '1234567', 'hamada@diughdf.com', 'الفيوم', 423423, 23422, '2022-09-27 10:33:20', '2022-09-27 10:33:20');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendorId` bigint(20) UNSIGNED NOT NULL,
  `face` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryId` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `top` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `roles_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=>active 1=>expire',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `dateOfBirth`, `mobile`, `address`, `photo`, `type`, `roles_name`, `Status`, `remember_token`, `expire`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$v8B8idYHemGAR9EflO7MhebBTSKNWhvmQuqpxrQm0lCUFrRRIcm2m', NULL, '023454', 'القاهره', '', 'admin', '[\"owner\"]', 'مفعل', NULL, 1, '2021-01-03 03:43:48', '2021-10-22 11:15:21'),
(2, 'hamada', 'hamada@hamada.com', '$2y$10$bOrXfCIhO5mCFWHeNoPNKuPHfpNxduJn4QDKGuZsnj72RPzSOTZK2', NULL, NULL, NULL, NULL, 'admin', '[\"employee\"]', 'مفعل', NULL, 1, '2021-01-03 07:02:34', '2021-10-22 11:15:21'),
(3, 'Diaa', 'diaa@gmail.com', '$2y$10$Yc7zKvx/Tf9Cc1jb3qhxre9V9KUOV3ntaWRq3J140n8zA.fSpmzeu', '2021-04-18', '0568645742', 'hail', '', 'admin', '[\"Admin\"]', 'مفعل', NULL, 1, '2021-04-17 19:30:44', '2021-10-22 11:14:46'),
(4, 'khalid', 'khalid@gmail.com', '$2y$10$cMTJJhsHX/NiuB/XH5wI8OaGjCi1dOXP0pnMXbU4EvAz8czIt.Yqq', NULL, '0568645742', 'alazeezia', '', 'admin', '[\"Admin\"]', 'مفعل', NULL, 1, '2021-07-01 06:33:56', '2021-10-22 11:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_activations`
--

CREATE TABLE `user_activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `countryId` int(11) DEFAULT NULL,
  `cityId` int(11) DEFAULT NULL,
  `tax_number` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `company_mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `blocked` int(11) NOT NULL DEFAULT '1',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'buyer',
  `token` text COLLATE utf8mb4_unicode_ci,
  `device_token` text COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `countryId`, `cityId`, `tax_number`, `name`, `email`, `password`, `mobile`, `address`, `photo`, `company_mobile`, `detail`, `status`, `blocked`, `type`, `token`, `device_token`, `is_activated`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'vendor', 'vendor@vendor.com', '$2y$10$v8B8idYHemGAR9EflO7MhebBTSKNWhvmQuqpxrQm0lCUFrRRIcm2m', '01150769418', 'vrdsovhf egre', 'profile.png', 'male', 'vdvihdf vdifugvdfv', 1, 1, 'vendor', 'vdfvfdv', NULL, 1, NULL, NULL),
(2, 1, 1, 25346456, 'hamadaaaa', 'user@user.com', '$2y$10$v8B8idYHemGAR9EflO7MhebBTSKNWhvmQuqpxrQm0lCUFrRRIcm2m', '1234567', 'الفيوم', '1662383588.png', '1234567', NULL, 1, 1, 'buyer', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvZWxuYW1hdC5jb21cL2VmYXRvcmFcL2FwaVwvdmVuZG9yc1wvbG9naW4iLCJpYXQiOjE2NjQzNDAyMjEsImV4cCI6MTY2NDM0MzgyMSwibmJmIjoxNjY0MzQwMjIxLCJqdGkiOiJ0Z2pNTTZRNWkyQk80cm5DIiwic3ViIjoyLCJwcnYiOiIwYzNlZjExYTU3NzgyMTc1NGFlZTllN2M4MGUyYmY3YTE5ODRmODc0In0.Trq20kruPu9yyo2Vs7Oih-fTaBziIzAmF1CE-qzv0L0', 'werty', 1, NULL, '2022-09-28 09:43:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_buyerid_foreign` (`buyerId`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_productid_foreign` (`productId`),
  ADD KEY `carts_buyerid_foreign` (`buyerId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_categories_categoryid_foreign` (`categoryId`),
  ADD KEY `child_categories_subcategoryid_foreign` (`subCategoryId`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_countryid_foreign` (`countryId`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_addressid_foreign` (`addressId`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_orderid_foreign` (`orderId`);

--
-- Indexes for table `order_vendor_product`
--
ALTER TABLE `order_vendor_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_orderid_foreign` (`orderId`),
  ADD KEY `payments_vendorid_foreign` (`vendorId`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_categoryid_foreign` (`category_id`),
  ADD KEY `products_shopid_foreign` (`shop_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shops_vendorid_foreign` (`vendor_id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `socials_vendorid_foreign` (`vendorId`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_categoryid_foreign` (`categoryId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_activations`
--
ALTER TABLE `user_activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_activations_id_user_foreign` (`id_user`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_buyers_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_vendor_product`
--
ALTER TABLE `order_vendor_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_activations`
--
ALTER TABLE `user_activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_buyerid_foreign` FOREIGN KEY (`buyerId`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_buyerid_foreign` FOREIGN KEY (`buyerId`) REFERENCES `vendors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD CONSTRAINT `child_categories_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `child_categories_subcategoryid_foreign` FOREIGN KEY (`subCategoryId`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_countryid_foreign` FOREIGN KEY (`countryId`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_addressid_foreign` FOREIGN KEY (`addressId`) REFERENCES `addresses` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_orderid_foreign` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_orderid_foreign` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_vendorid_foreign` FOREIGN KEY (`vendorId`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categoryid_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_shopid_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `shops_vendorid_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `socials`
--
ALTER TABLE `socials`
  ADD CONSTRAINT `socials_vendorid_foreign` FOREIGN KEY (`vendorId`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
