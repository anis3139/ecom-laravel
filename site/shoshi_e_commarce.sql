-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2020 at 07:21 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoshi_e_commarce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`, `username`, `email`) VALUES
(1, 'shakil', '1234', 'shakil', 'shakil@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_des` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand_name`, `brand_des`, `brand_img`) VALUES
(1, 'Roma', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'http://127.0.0.1:4000/storage/HxVIgtZH67ghvzi69vsmqJdqK6h0ti8chxm6lFSg.jpeg'),
(2, 'spanish', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'http://127.0.0.1:4000/storage/e1F7141tcITdZAG64AqFtQaVmN86d94pLph7LF4j.jpeg'),
(3, 'Italina', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'http://127.0.0.1:4000/storage/keStx7VrB9krBiY8nd7TQYZTTmXOd9a1KJ7JBKlU.jpeg'),
(4, 'Gucci', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'http://127.0.0.1:4000/storage/3w8mwsGAif3kGYUD0EmJtzybPzSe8vmNXcNVNILT.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_des` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_des`, `category_img`) VALUES
(1, 'shirt', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'http://127.0.0.1:4000/storage/WeGyncCUfRufMBUes7J8LldpNroieuyLODZYd4DI.jpeg'),
(2, 'Jeans', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'http://127.0.0.1:4000/storage/yDUuG88Ceqzu5Lb4LfWcM4vW4H3dnKPSJgHyk7ud.jpeg'),
(3, 'Pant', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'http://127.0.0.1:4000/storage/f2ZS56wLqFfvunLhtDH5dxxP2Ws14tykl56kcRkw.jpeg'),
(4, 'Mobile', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'http://127.0.0.1:4000/storage/WjCSSrKY8mqiWbvolRtaS2kUX08eipiQsummB7cV.png'),
(5, 'Television', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'http://127.0.0.1:4000/storage/XboqHTkOwnYz3KMkawklWFAQf84ES5Qb1acExSGL.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_des` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_totalenroll` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_totalclass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_07_27_182012_create_visitor_tables_table', 1),
(4, '2020_07_27_211552_services_table', 1),
(5, '2020_07_28_185701_courses_table', 1),
(6, '2020_07_29_160210_projects_table', 1),
(7, '2020_07_29_200515_contact_table', 1),
(8, '2020_07_30_174700_review_table', 1),
(9, '2020_07_30_211358_admin_table', 1),
(10, '2020_07_30_223619_photo_table', 1),
(11, '2020_08_15_151747_category_table', 1),
(12, '2020_08_15_185106_brand_table', 1),
(13, '2020_08_16_105349_products_table', 1),
(14, '2020_08_18_151445_slider_table', 1),
(15, '2020_08_18_173124_create_others_models_table', 1),
(16, '2020_08_19_182627_social_link', 1),
(17, '2020_08_20_103411_user_login_table', 2),
(19, '2020_08_20_192721_cart_table', 3),
(20, '2019_05_03_000001_create_customer_columns', 4),
(21, '2019_05_03_000002_create_subscriptions_table', 4),
(22, '2019_05_03_000003_create_subscription_items_table', 4),
(24, '2020_09_06_172916_order_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `session_id`, `customer_id`, `product_id`, `product_name`, `quantity`, `price`, `image`, `date`, `status`, `created_at`, `updated_at`) VALUES
(10, '3sdSEPOXVntlzoFq4d8bAFI8ABsM5w6nezIe15G5', 2, '3', 'wwwwww', 1, 100, 'http://127.0.0.1:4000/storage/L1stwZqJO2zhkaGDw7NOR1lLrjZVfKFwYO7L5k6P.jpeg', '2020-09-06 07:38:29pm', 0, NULL, NULL),
(11, '3sdSEPOXVntlzoFq4d8bAFI8ABsM5w6nezIe15G5', 2, '4', 'qqqqqqqqqqq', 3, 300, 'http://127.0.0.1:4000/storage/BZxqc9ztilPyBu7SgbJB5QPzrozm15L8eKb502T7.png', '2020-09-07 01:41:41am', 1, NULL, NULL),
(12, 'JfBmp12gZVF5Bi1j1n1TqNKtsFV4iZkdux9YMjUC', 2, '2', 'eeeee', 3, 300, 'http://127.0.0.1:4000/storage/PCGtiCipumuHaEjRAHjuKd8MOEP4dSi0TYSQaDTE.jpeg', '2020-09-09 08:07:00pm', 0, NULL, NULL),
(13, 'JfBmp12gZVF5Bi1j1n1TqNKtsFV4iZkdux9YMjUC', 2, '2', 'eeeee', 2, 200, 'http://127.0.0.1:4000/storage/PCGtiCipumuHaEjRAHjuKd8MOEP4dSi0TYSQaDTE.jpeg', '2020-09-09 08:08:05pm', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `others`
--

CREATE TABLE `others` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gmap` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `others`
--

INSERT INTO `others` (`id`, `logo`, `title`, `phone`, `email`, `address`, `gmap`, `created_at`, `updated_at`) VALUES
(1, 'http://127.0.0.1:4000/storage/KcyVEAGLDvh3gePHwTwxOffz8qBPDt3fZr2FHaLc.png', '1', '1', '1', '1', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_product` tinyint(4) NOT NULL DEFAULT 0,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `offer`, `quantity`, `slug`, `feature_product`, `category_id`, `brand_id`, `status`, `images`, `created_at`, `updated_at`) VALUES
(1, 'rrrrrrrrr', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '100', '10', 10, '1', 1, 4, 4, 1, 'http://127.0.0.1:4000/storage/7ZlOWPBF3FMgsfO6gOlUr5rpYwjWCNX9pYu5VPi2.jpeg', NULL, '2020-08-20 21:55:38'),
(2, 'eeeee', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '100', '10', 10, '1', 1, 4, 3, 1, 'http://127.0.0.1:4000/storage/PCGtiCipumuHaEjRAHjuKd8MOEP4dSi0TYSQaDTE.jpeg', NULL, '2020-08-20 21:55:32'),
(3, 'wwwwww', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '100', '10', 10, '1', 1, 2, 1, 1, 'http://127.0.0.1:4000/storage/L1stwZqJO2zhkaGDw7NOR1lLrjZVfKFwYO7L5k6P.jpeg', NULL, '2020-08-20 21:55:25'),
(4, 'qqqqqqqqqqq', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '100', '10', 10, '1', 1, 3, 1, 1, 'http://127.0.0.1:4000/storage/BZxqc9ztilPyBu7SgbJB5QPzrozm15L8eKb502T7.png', NULL, '2020-08-20 21:55:14'),
(5, 'aqaaaaaa', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '100', '10', 10, '1', 1, 5, 4, 1, 'http://127.0.0.1:4000/storage/atu8EXxTqxklN8ThrGcR9Ug7W9wFId9jNxwMGYCK.jpeg', NULL, '2020-08-20 21:55:07'),
(6, 'Revive', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '100', '10', 10, '1', 1, 5, 1, 1, 'http://127.0.0.1:4000/storage/S9leyewBcPuQO2OpBKuVF2gptiDrUr0uU7muczhZ.png', NULL, '2020-08-20 21:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_des` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_des` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image`, `title`, `sub_title`) VALUES
(1, 'http://127.0.0.1:4000/storage/hCaHAqGRqUsXx9sPf42UdZsxtSmutTstxOLeutZm.jpeg', 'shakil', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters');

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instragram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 1,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distric` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `massage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `name`, `password`, `username`, `email`, `phone`, `gender`, `address`, `shipping_address`, `distric`, `city`, `country`, `massage`) VALUES
(2, '1@gmail.com', '1', '1', '1', '0', 1, '1', '1', '1', '1', '1', '1'),
(3, 'mahamodul.shakil11@yahoo.com', '1', '2', '1', '0', 2, '1', '1', '1', '1', '1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_tables`
--

CREATE TABLE `visitor_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitor_tables`
--

INSERT INTO `visitor_tables` (`id`, `ip_address`, `visit_time`) VALUES
(1, '127.0.0.1', '2020-08-21 12:07:54am'),
(2, '127.0.0.1', '2020-08-21 12:13:43am'),
(3, '127.0.0.1', '2020-08-21 12:14:39am'),
(4, '127.0.0.1', '2020-08-21 12:15:43am'),
(5, '127.0.0.1', '2020-08-21 12:18:56am'),
(6, '127.0.0.1', '2020-08-21 12:48:58am'),
(7, '127.0.0.1', '2020-08-21 01:04:00am'),
(8, '127.0.0.1', '2020-08-21 01:08:20am'),
(9, '127.0.0.1', '2020-08-21 01:24:37am'),
(10, '127.0.0.1', '2020-08-21 01:42:37am'),
(11, '127.0.0.1', '2020-08-21 09:49:50am'),
(12, '127.0.0.1', '2020-08-21 09:50:04am'),
(13, '127.0.0.1', '2020-08-21 09:53:47am'),
(14, '127.0.0.1', '2020-08-21 09:55:41am'),
(15, '127.0.0.1', '2020-08-21 09:57:54am'),
(16, '127.0.0.1', '2020-08-21 09:58:17am'),
(17, '127.0.0.1', '2020-08-21 10:03:14am'),
(18, '127.0.0.1', '2020-08-21 10:24:36am'),
(19, '127.0.0.1', '2020-08-21 10:24:56am'),
(20, '127.0.0.1', '2020-08-21 10:24:56am'),
(21, '127.0.0.1', '2020-08-21 12:21:27pm'),
(22, '127.0.0.1', '2020-08-21 12:45:10pm'),
(23, '127.0.0.1', '2020-08-21 12:45:47pm'),
(24, '127.0.0.1', '2020-08-21 02:42:01pm'),
(25, '127.0.0.1', '2020-08-21 02:42:06pm'),
(26, '127.0.0.1', '2020-08-21 02:48:54pm'),
(27, '127.0.0.1', '2020-08-21 02:53:35pm'),
(28, '127.0.0.1', '2020-08-21 02:55:00pm'),
(29, '127.0.0.1', '2020-08-21 02:55:10pm'),
(30, '127.0.0.1', '2020-08-21 02:56:07pm'),
(31, '127.0.0.1', '2020-08-21 02:57:21pm'),
(32, '127.0.0.1', '2020-08-21 02:58:09pm'),
(33, '127.0.0.1', '2020-08-21 02:58:25pm'),
(34, '127.0.0.1', '2020-08-21 02:58:41pm'),
(35, '127.0.0.1', '2020-08-21 02:58:44pm'),
(36, '127.0.0.1', '2020-08-21 02:58:46pm'),
(37, '127.0.0.1', '2020-08-21 02:58:48pm'),
(38, '127.0.0.1', '2020-08-21 02:58:50pm'),
(39, '127.0.0.1', '2020-08-21 02:58:51pm'),
(40, '127.0.0.1', '2020-08-21 02:58:54pm'),
(41, '127.0.0.1', '2020-08-21 02:58:55pm'),
(42, '127.0.0.1', '2020-08-21 02:58:57pm'),
(43, '127.0.0.1', '2020-08-21 02:58:58pm'),
(44, '127.0.0.1', '2020-08-21 02:59:00pm'),
(45, '127.0.0.1', '2020-08-21 02:59:01pm'),
(46, '127.0.0.1', '2020-08-21 02:59:02pm'),
(47, '127.0.0.1', '2020-08-21 02:59:04pm'),
(48, '127.0.0.1', '2020-08-21 02:59:06pm'),
(49, '127.0.0.1', '2020-08-21 02:59:08pm'),
(50, '127.0.0.1', '2020-08-21 02:59:59pm'),
(51, '127.0.0.1', '2020-08-21 03:00:06pm'),
(52, '127.0.0.1', '2020-08-21 03:01:25pm'),
(53, '127.0.0.1', '2020-08-21 03:01:50pm'),
(54, '127.0.0.1', '2020-08-21 03:03:06pm'),
(55, '127.0.0.1', '2020-08-21 03:03:30pm'),
(56, '127.0.0.1', '2020-08-21 03:04:07pm'),
(57, '127.0.0.1', '2020-08-21 03:04:34pm'),
(58, '127.0.0.1', '2020-08-21 03:06:33pm'),
(59, '127.0.0.1', '2020-08-21 03:07:04pm'),
(60, '127.0.0.1', '2020-08-21 03:07:30pm'),
(61, '127.0.0.1', '2020-08-21 03:09:41pm'),
(62, '127.0.0.1', '2020-08-21 03:10:09pm'),
(63, '127.0.0.1', '2020-08-21 03:11:38pm'),
(64, '127.0.0.1', '2020-08-21 03:11:53pm'),
(65, '127.0.0.1', '2020-08-21 03:11:58pm'),
(66, '127.0.0.1', '2020-08-21 03:12:34pm'),
(67, '127.0.0.1', '2020-08-21 03:13:14pm'),
(68, '127.0.0.1', '2020-08-21 03:15:23pm'),
(69, '127.0.0.1', '2020-08-21 03:15:50pm'),
(70, '127.0.0.1', '2020-08-21 03:17:27pm'),
(71, '127.0.0.1', '2020-08-21 03:17:37pm'),
(72, '127.0.0.1', '2020-08-21 03:21:12pm'),
(73, '127.0.0.1', '2020-08-21 03:24:10pm'),
(74, '127.0.0.1', '2020-08-21 03:24:38pm'),
(75, '127.0.0.1', '2020-08-21 03:25:15pm'),
(76, '127.0.0.1', '2020-08-21 03:25:47pm'),
(77, '127.0.0.1', '2020-08-21 03:28:55pm'),
(78, '127.0.0.1', '2020-08-21 03:29:20pm'),
(79, '127.0.0.1', '2020-08-21 03:31:58pm'),
(80, '127.0.0.1', '2020-08-21 03:33:40pm'),
(81, '127.0.0.1', '2020-08-21 03:34:44pm'),
(82, '127.0.0.1', '2020-08-21 03:36:53pm'),
(83, '127.0.0.1', '2020-08-21 03:37:44pm'),
(84, '127.0.0.1', '2020-08-21 03:41:46pm'),
(85, '127.0.0.1', '2020-08-21 03:41:55pm'),
(86, '127.0.0.1', '2020-08-21 03:42:39pm'),
(87, '127.0.0.1', '2020-08-21 03:43:52pm'),
(88, '127.0.0.1', '2020-08-21 03:44:38pm'),
(89, '127.0.0.1', '2020-08-21 03:44:58pm'),
(90, '127.0.0.1', '2020-08-21 03:45:31pm'),
(91, '127.0.0.1', '2020-08-21 03:45:35pm'),
(92, '127.0.0.1', '2020-08-21 03:45:38pm'),
(93, '127.0.0.1', '2020-08-21 03:46:01pm'),
(94, '127.0.0.1', '2020-08-21 03:48:12pm'),
(95, '127.0.0.1', '2020-08-21 03:48:17pm'),
(96, '127.0.0.1', '2020-08-21 03:48:34pm'),
(97, '127.0.0.1', '2020-08-21 03:48:43pm'),
(98, '127.0.0.1', '2020-08-21 03:49:41pm'),
(99, '127.0.0.1', '2020-08-21 03:52:41pm'),
(100, '127.0.0.1', '2020-08-21 03:52:57pm'),
(101, '127.0.0.1', '2020-08-21 03:55:47pm'),
(102, '127.0.0.1', '2020-08-21 03:56:23pm'),
(103, '127.0.0.1', '2020-08-21 03:56:37pm'),
(104, '127.0.0.1', '2020-08-21 03:58:35pm'),
(105, '127.0.0.1', '2020-08-21 03:59:37pm'),
(106, '127.0.0.1', '2020-08-21 04:00:35pm'),
(107, '127.0.0.1', '2020-08-21 04:00:40pm'),
(108, '127.0.0.1', '2020-08-21 04:00:55pm'),
(109, '127.0.0.1', '2020-08-21 04:04:32pm'),
(110, '127.0.0.1', '2020-08-21 04:08:24pm'),
(111, '127.0.0.1', '2020-08-21 04:11:53pm'),
(112, '127.0.0.1', '2020-08-21 04:12:51pm'),
(113, '127.0.0.1', '2020-08-21 04:14:39pm'),
(114, '127.0.0.1', '2020-08-21 04:15:03pm'),
(115, '127.0.0.1', '2020-08-21 04:15:48pm'),
(116, '127.0.0.1', '2020-08-21 04:16:13pm'),
(117, '127.0.0.1', '2020-08-21 04:16:32pm'),
(118, '127.0.0.1', '2020-08-21 04:17:17pm'),
(119, '127.0.0.1', '2020-08-21 04:17:45pm'),
(120, '127.0.0.1', '2020-08-21 04:18:19pm'),
(121, '127.0.0.1', '2020-08-21 04:18:56pm'),
(122, '127.0.0.1', '2020-08-21 04:20:05pm'),
(123, '127.0.0.1', '2020-08-21 04:21:49pm'),
(124, '127.0.0.1', '2020-08-21 04:25:15pm'),
(125, '127.0.0.1', '2020-08-21 04:25:40pm'),
(126, '127.0.0.1', '2020-08-21 04:26:15pm'),
(127, '127.0.0.1', '2020-08-21 04:26:28pm'),
(128, '127.0.0.1', '2020-08-21 04:27:23pm'),
(129, '127.0.0.1', '2020-08-21 04:28:07pm'),
(130, '127.0.0.1', '2020-08-21 04:28:10pm'),
(131, '127.0.0.1', '2020-08-21 04:29:50pm'),
(132, '127.0.0.1', '2020-08-21 04:30:08pm'),
(133, '127.0.0.1', '2020-08-21 04:30:36pm'),
(134, '127.0.0.1', '2020-08-21 05:05:03pm'),
(135, '127.0.0.1', '2020-08-21 07:56:26pm'),
(136, '127.0.0.1', '2020-08-21 07:57:22pm'),
(137, '127.0.0.1', '2020-08-21 07:58:58pm'),
(138, '127.0.0.1', '2020-08-21 07:59:35pm'),
(139, '127.0.0.1', '2020-08-21 08:01:09pm'),
(140, '127.0.0.1', '2020-08-21 08:02:55pm'),
(141, '127.0.0.1', '2020-08-21 08:05:26pm'),
(142, '127.0.0.1', '2020-08-22 11:22:13pm'),
(143, '127.0.0.1', '2020-08-22 11:23:23pm'),
(144, '127.0.0.1', '2020-08-22 11:24:03pm'),
(145, '127.0.0.1', '2020-08-23 01:11:31am'),
(146, '127.0.0.1', '2020-08-23 01:12:52am'),
(147, '127.0.0.1', '2020-08-23 01:14:01am'),
(148, '127.0.0.1', '2020-08-23 01:14:22am'),
(149, '127.0.0.1', '2020-08-23 01:14:38am'),
(150, '127.0.0.1', '2020-08-23 10:25:23am'),
(151, '127.0.0.1', '2020-08-23 10:25:52am'),
(152, '127.0.0.1', '2020-08-23 10:26:35am'),
(153, '127.0.0.1', '2020-08-23 10:27:28am'),
(154, '127.0.0.1', '2020-08-23 10:28:05am'),
(155, '127.0.0.1', '2020-08-23 10:28:44am'),
(156, '127.0.0.1', '2020-08-30 08:44:48pm'),
(157, '127.0.0.1', '2020-08-30 08:44:50pm'),
(158, '127.0.0.1', '2020-08-30 08:45:20pm'),
(159, '127.0.0.1', '2020-08-30 08:46:14pm'),
(160, '127.0.0.1', '2020-08-30 08:51:09pm'),
(161, '127.0.0.1', '2020-09-02 07:50:51pm'),
(162, '127.0.0.1', '2020-09-02 07:50:54pm'),
(163, '127.0.0.1', '2020-09-02 07:51:42pm'),
(164, '127.0.0.1', '2020-09-05 10:12:04pm'),
(165, '127.0.0.1', '2020-09-05 10:12:24pm'),
(166, '127.0.0.1', '2020-09-05 11:15:27pm'),
(167, '127.0.0.1', '2020-09-05 11:41:56pm'),
(168, '127.0.0.1', '2020-09-06 12:35:50am'),
(169, '127.0.0.1', '2020-09-06 10:10:00am'),
(170, '127.0.0.1', '2020-09-06 10:10:53am'),
(171, '127.0.0.1', '2020-09-06 11:16:12pm'),
(172, '127.0.0.1', '2020-09-07 01:04:40am'),
(173, '127.0.0.1', '2020-09-07 01:04:56am'),
(174, '127.0.0.1', '2020-09-07 01:05:18am'),
(175, '127.0.0.1', '2020-09-07 01:12:30am'),
(176, '127.0.0.1', '2020-09-07 01:13:08am'),
(177, '127.0.0.1', '2020-09-07 01:24:44am'),
(178, '127.0.0.1', '2020-09-07 01:27:27am'),
(179, '127.0.0.1', '2020-09-07 01:30:46am'),
(180, '127.0.0.1', '2020-09-07 01:37:55am'),
(181, '127.0.0.1', '2020-09-07 01:41:06am'),
(182, '127.0.0.1', '2020-09-09 10:05:25am'),
(183, '127.0.0.1', '2020-09-09 10:05:27am'),
(184, '127.0.0.1', '2020-09-09 10:08:37am'),
(185, '127.0.0.1', '2020-09-09 10:16:13am'),
(186, '127.0.0.1', '2020-09-09 10:18:44am'),
(187, '127.0.0.1', '2020-09-09 10:19:39am'),
(188, '127.0.0.1', '2020-09-09 10:19:54am'),
(189, '127.0.0.1', '2020-09-09 10:29:32am'),
(190, '127.0.0.1', '2020-09-09 07:16:32pm'),
(191, '127.0.0.1', '2020-09-09 07:22:59pm'),
(192, '127.0.0.1', '2020-09-09 08:06:07pm'),
(193, '127.0.0.1', '2020-09-09 08:07:27pm'),
(194, '127.0.0.1', '2020-09-09 08:10:27pm'),
(195, '127.0.0.1', '2020-09-09 08:18:24pm'),
(196, '127.0.0.1', '2020-09-09 08:27:46pm'),
(197, '127.0.0.1', '2020-09-09 08:29:00pm'),
(198, '127.0.0.1', '2020-09-09 08:31:06pm'),
(199, '127.0.0.1', '2020-09-09 08:32:21pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
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
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `others`
--
ALTER TABLE `others`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_plan_unique` (`subscription_id`,`stripe_plan`),
  ADD KEY `subscription_items_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_tables`
--
ALTER TABLE `visitor_tables`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `others`
--
ALTER TABLE `others`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visitor_tables`
--
ALTER TABLE `visitor_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
