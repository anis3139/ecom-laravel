-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 26, 2020 at 11:17 AM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asulsisc_sasi`
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
(1, 'Anis', '1d046aab02883ac31ce24c70890f3f5c', 'admin', 'anis904692@gmail.com');

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
(1, 'Arong', 'products', 'http://127.0.0.1:5000/storage/fS2pbDUb2zGmtg2EHwld6wg2uE9IJXek4BijbjRO.webp'),
(2, 'Nessle', 'products', 'http://login.asulsis.com/public/storage/uczq9nI2wrDiSKcvSVFDIbVlILQUykLrkbMjicTS.webp'),
(3, 'Apple', 'ddddddddddddddddd', 'http://admin.asulsis.com/public/storage/ITmR4KTyrFVhkbNjJ49sam4xYVywNydJk7kKgw3m.webp'),
(4, 'Samsung', 'Aaaaaa', 'http://admin.asulsis.com/public/storage/3DPvBqnlsfSILXoq0Rxqwfvd1vqW5eEkLkNrKJ9A.webp');

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

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `session_id`, `product_id`, `productName`, `price`, `quantity`, `image`, `created_at`, `updated_at`) VALUES
(1, 'EInqqMQ4oYeaTczeiXAumsNnO7Lgod8ViwRXlZWH', 1, 'Shirt', 30, 1, 'http://127.0.0.1:5000/storage/axQMj6xChgnfJ999ev5qzynj5eEh67b2OrfV5gj8.webp', NULL, NULL),
(2, '4NSkqp9pJ5pXIRui25xFrHOIY3Ql0El9GueZDIG1', 2, 'Shirt', 120, 4, 'http://admin.asulsis.com/public/storage/whNJg97Vw5645OvJG3iX9Z0AMhXRe5bmrmqTKa8n.png', NULL, '2020-11-14 11:37:54'),
(3, 'xdEzw2qoRKT6XxHxy8Qfr2apbUZun29C75Gj9SH1', 3, 'Samsung', 1500, 1, 'http://admin.asulsis.com/public/storage/tu7OQI3Kut9x8apv6u2izQFLS4kBctLXGMH54J9f.webp', NULL, NULL);

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
(5, 'Man', 'products', 'http://login.asulsis.com/public/storage/o6S9hAWZnI6FMPr10nVjhKWONCASamjcrcmvqxjd.webp'),
(6, 'Weman', 'Mobile Product', 'http://admin.asulsis.com/public/storage/0llyn5T12kRIOLaEeBLaYV4ItqmLYVxQVgNcB7Rj.jpeg'),
(7, 'Female', 'Mobile Product', 'http://admin.asulsis.com/public/storage/MNLh5c3bSFwt15gZkcTud5EEC8k9GpCh8dLnlCiG.jpeg'),
(9, 'Kids', 'Mobile Product', 'http://admin.asulsis.com/public/storage/vDn4krCOeIaKY7vd8F9eKuePiPBFy3C4zFODPgxU.jpeg'),
(10, 'Fashion', 'Mobile Product', 'http://admin.asulsis.com/public/storage/ZruojqT3CKBHv4XYiNmM3szTR26zvNBFmKzBWhXd.png'),
(11, 'Toiletries', 'Mobile Product', 'http://admin.asulsis.com/public/storage/LaWekGLq9i7YvExIe1AFB51ZAVYfYKIJ8WeiQTtJ.jpeg'),
(12, 'Consumer', 'Mobile Product', 'http://admin.asulsis.com/public/storage/Cd4M5jzzjAfXfGNovj3q90rPauaPZ4u6IQduwdpt.jpeg'),
(14, 'Mobile', 'Mobile Product', 'http://admin.asulsis.com/public/storage/4nt5tHa2GVZ9O019ANzUs5UIEZY4oYXg27qsICj3.svg'),
(15, 'Electronics', 'Mobile Product', 'http://admin.asulsis.com/public/storage/7it1UOdTmdVcHap8udSGf9Qwqlc4ux1euocMCpee.svg'),
(16, 'Electric', 'Mobile Product', 'http://admin.asulsis.com/public/storage/OrgTNAB1XZKmcNpy8hHMSpG3Jb1Nx3WiK0PKdYMQ.svg'),
(18, 'Computer', 'Mobile Product', 'http://admin.asulsis.com/public/storage/R7x79uOUtjxyVAeYMu40TjzghbxWZZGtbJRyPAew.svg'),
(21, 'Camiseta', 'Camiseta manga larga', 'http://www.admin.asulsis.com/public/storage/ki5DvtxBAExYsuynr4gY54LxFKQ7Ek4zW11xjR7R.jpeg');

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

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `mobile`, `email`, `msg`) VALUES
(9, 'cx', 'z', 'anis904692@gmail.com', 'z'),
(10, 'আ', 'আ', 'আ', 'আ');

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
(17, '2020_10_31_082845_create_sessions_table', 1),
(18, '2020_08_20_103411_user_login_table', 2),
(19, '2020_08_20_192721_cart_table', 2),
(20, '2020_09_06_172916_order_table', 2);

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
(1, 'http://admin.asulsis.com/public/storage/ONv0j6Bi3BMxVLBRyz5c4AtXxHvUGVbal8h4ZDXr.jpeg', NULL, '+34602157451', 'Asulsis.sasi@gmail.com', 'Calle Docter criado 4, \n3B.\nCp. 28021\nMadrid,España', NULL, NULL, NULL);

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
(2, 'Shirt', 'StoryNeha Massage Center is located in The Metropolis Tower, Floor no. 9, Room no. 914 - Dubai - United Arab Emirates. We are a professional massage therapist. in Dubai, we provide the most luxurious massage. Notable among the services we offer are-☑Thai Massage☑Thai Oil Massage☑Foot Massage☑Foot Spa Massage☑ Foot Compress Massage: Scrub – Milk Therapy Message☑Aroma Oil Massage☑ Massage Catching☑ Body Scrub☑Facial Massage: Cleanser – Scrub – Massage – Mask – Honey☑ Thai Hot Compress Massage: Full Body☑ Back & Shoulder☑ Foot Head & Back☑Top Package: Head – Shoulder – Back – Foot Massage and many moreContact Neha Massage today to get a reliable and trustworthy service. We give our client the Best spa & massage. Our well-trained staff pays extreme attention to clients from the moment they come, until they leave. So come to be in Neha Massage Center & Spa.', '30', '20', 1, 'shirt2', 1, 5, 1, 1, 'http://admin.asulsis.com/public/storage/whNJg97Vw5645OvJG3iX9Z0AMhXRe5bmrmqTKa8n.png', NULL, '2020-11-11 11:18:20'),
(3, 'Samsung', 'ass', '1500', '1200', 1, 'xaomi-noteas', 1, 5, 3, 1, 'http://admin.asulsis.com/public/storage/tu7OQI3Kut9x8apv6u2izQFLS4kBctLXGMH54J9f.webp', NULL, '2020-11-11 11:22:37'),
(4, 'Nokia-1100', 'StoryNeha Massage\n Center is located in T\nhe Metropolis Tower, Floor no. 9, Room no. 914 - Dubai - \nUnited Arab Emirates. We are a professional massage therapist. in Dubai, we provide the most luxurious massage. Notable among the services we offer are-☑Thai Massage\n☑Thai Oil Massage\n☑Foot Massage\n☑Foot Spa Massage\n☑ Foot Compress Massage: Scrub – Milk Therapy Message\n☑Aroma Oil Massage\n☑ Massage Catching\n☑ Body Scrub\n☑Facial Massage: Cleanser – Scrub – Massage – Mask – Honey\n☑ Thai Hot Compress Massage: Full Body\n☑ Back & Shoulder\n☑ Foot Head & Back\n☑Top Package: Head – Shoulder – Back – Foot Massage and many moreContact Neha Massage today to get a reliable and trustworthy service. We give our client the Best spa & massage. Our well-trained staff pays extreme attention to clients from the moment they come, until they leave. So come to be in Neha Massage Center & Spa.', '1', '1', 4, 'sadad', 1, 6, 3, 1, 'http://admin.asulsis.com/public/storage/9S1qvH86S3VbyfeY5F3lYhe4iRucsptLCEoj9V3A.webp', NULL, '2020-11-20 06:39:34'),
(5, 'nhhss', 'StoryNeha Massage Center is located in The Metropolis Tower, Floor no. 9, Room no. 914 - Dubai - United Arab Emirates. We are a professional massage therapist. in Dubai, we provide the most luxurious massage. Notable among the services we offer are-☑Thai Massage☑Thai Oil Massage☑Foot Massage☑Foot Spa Massage☑ Foot Compress Massage: Scrub – Milk Therapy Message☑Aroma Oil Massage☑ Massage Catching☑ Body Scrub☑Facial Massage: Cleanser – Scrub – Massage – Mask – Honey☑ Thai Hot Compress Massage: Full Body☑ Back & Shoulder☑ Foot Head & Back☑Top Package: Head – Shoulder – Back – Foot Massage and many moreContact Neha Massage today to get a reliable and trustworthy service. We give our client the Best spa & massage. Our well-trained staff pays extreme attention to clients from the moment they come, until they leave. So come to be in Neha Massage Center & Spa.', '500', '1200', 44, 'xaomi-note', 1, 6, 3, 1, 'http://admin.asulsis.com/public/storage/zCBoTBxVsgpNR61QOLWhPN0ITYbn1ekABdGjYg9N.jpeg', NULL, NULL);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('cY9G7hpH0sftjyw5dg4Yg0ysNjvDvMTzymlbhkSc', NULL, '209.222.97.206', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnBGNHl5WkpNRGNmbXFPWHFCQ3NBNzVzcndzakIyWm5YcG5oajdlRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly93d3cuYXN1bHNpcy5jb20vY2FydEluZm8iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1606327932),
('IBKz8czKRNBbQpfMYOBjfQ7SZ4npzULqSdmVTyw8', NULL, '209.222.97.206', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_4_9 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.2 Mobile/15E148 Safari/604.1', 'YTozOntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNDoiaHR0cDovL3d3dy5hZG1pbi5hc3Vsc2lzLmNvbS9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJZS0wzOGlUQ0s0S2Fpc0xRbEJmcW5HNERjQ0E1aEdqME91UUMyZjNhIjt9', 1606325661),
('iOZZZUQqgZcSpgqaNw7qvwVG4chlOYHqQCnbeZgu', NULL, '54.36.149.14', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1M4TFlDc3QxUVZ0T2xpT0FORm1iNWozNDZkeDVpd2hmQVBwYUtYcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vd3d3LmFzdWxzaXMuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1606358332),
('irvhP0IWMtrNfV0fiEQBWpzTRzNakZhIcuee7ymE', NULL, '209.222.97.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDZVWEx4M0V2eFM0aGpMV2MydUNRY3Blem9JbGNXZzQ0VDFnOFdEZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHA6Ly9hc3Vsc2lzLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1606346105),
('krzNpB0LEwMgRy1CDkIrYhnzFIgHpbng6lPmtEb4', NULL, '54.36.148.200', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVVvV3lLSGZtUkVHRm1NYXdMQ0xlaDBGZWZid3pyYXkweU11dzBrUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vd3d3LmFzdWxzaXMuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1606321570),
('LoK12XNVGBddIGNYWDBTH6eYu7JWh6iLRf0LrOOH', NULL, '209.222.97.206', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_4_9 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.2 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0czTWVVSkp1NVdUVG9YUXJobGhEYlhDNng2bnYwc2hkRTExdHpaSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly93d3cuYXN1bHNpcy5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1606345147),
('oe12intzA39QyrbMMTqif1hYvF7J3R0c1mfLhdGS', NULL, '209.222.97.206', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_4_9 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.2 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWJjS2FQUm1JeFNMSFV3VXptMlpSeE5OWTRXM1BKeVRvR0NlZGQwdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly93d3cuYWRtaW4uYXN1bHNpcy5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1606345145),
('uoezoY7xpDoVCD7y4sAaUkpezAGV5jX3iXw3cQ2O', NULL, '209.222.97.206', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_4_9 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.2 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRW1aQnhmNXd6enQ2WmlTb0tic3RMRG94bE1mRTZRcWhHRE1QQ0thNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly93d3cuYXN1bHNpcy5jb20vY2FydEluZm8iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1606345162),
('WScgPum63WQCYRiaydxgmcednfyChQ2KCRN9bRIQ', NULL, '209.222.97.206', 'Mozilla/5.0 (iPad; CPU OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWRNb0c5UUNKNXd4QlhtNVRORzR6TEtCN2hNY0RsZlQ2YmpGMWo5ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2dpbi5hc3Vsc2lzLmNvbS9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1606357012),
('YUnfBkEI5lYaQxQSDSJGlf7cNsNrPv26QzF3obmT', NULL, '209.222.97.206', 'Mozilla/5.0 (iPad; CPU OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDJ2OWhxeGRxeWxOdHpXTDVONndDaURwNlhLSThRdTJudW9YQzlFNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly93d3cubG9naW4uYXN1bHNpcy5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1606357012);

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
(1, 'http://admin.asulsis.com/public/storage/JUIs0nderpjdakAdBSEHo7WtVya3t2zKxZXXDvhA.webp', 'Slider 1', 'BAGISTO EBAY CONNECTOR'),
(2, 'http://admin.asulsis.com/public/storage/iCwYSOeGhrNwIFw5YeJfN0zjP3BuDBwJijqBTSaH.webp', 'Slider 2', 'BAGISTO EBAY CONNECTOR'),
(4, 'http://www.admin.asulsis.com/public/storage/lWjZwzWnMUJJOgWIUc2rmFXrVCc1ut9uYr8mFM0M.jpeg', 'Camisa', 'Camisa manga larga niña ');

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

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `facebook`, `twitter`, `google`, `instragram`, `youtube`, `linkin`, `created_at`, `updated_at`) VALUES
(1, 'aaa', 'aa', 'aa', 'aa', 'aaa', 'aa', NULL, NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '127.0.0.1', '2020-11-11 11:26:49am'),
(2, '127.0.0.1', '2020-11-11 11:29:37am'),
(3, '127.0.0.1', '2020-11-11 11:31:18am'),
(4, '209.222.97.206', '2020-11-11 03:01:40pm'),
(5, '209.222.97.206', '2020-11-11 03:19:02pm'),
(6, '209.222.97.206', '2020-11-11 03:22:19pm'),
(7, '209.222.97.206', '2020-11-11 03:40:56pm'),
(8, '209.222.97.206', '2020-11-11 03:41:16pm'),
(9, '209.222.97.206', '2020-11-11 03:41:23pm'),
(10, '209.222.97.206', '2020-11-11 03:41:28pm'),
(11, '209.222.97.206', '2020-11-11 03:41:31pm'),
(12, '209.222.97.206', '2020-11-11 03:42:56pm'),
(13, '209.222.97.206', '2020-11-11 04:04:55pm'),
(14, '209.222.97.206', '2020-11-11 04:22:49pm'),
(15, '209.222.97.206', '2020-11-11 06:47:34pm'),
(16, '209.222.97.206', '2020-11-11 06:47:42pm'),
(17, '209.222.97.206', '2020-11-11 06:48:01pm'),
(18, '209.222.97.206', '2020-11-11 06:48:06pm'),
(19, '209.222.97.206', '2020-11-11 09:46:48pm'),
(20, '209.222.97.206', '2020-11-11 11:03:33pm'),
(21, '209.222.97.206', '2020-11-11 11:18:24pm'),
(22, '209.222.97.206', '2020-11-11 11:20:53pm'),
(23, '209.222.97.206', '2020-11-11 11:22:08pm'),
(24, '209.222.97.206', '2020-11-11 11:22:47pm'),
(25, '209.222.97.206', '2020-11-11 11:24:05pm'),
(26, '209.222.97.206', '2020-11-11 11:28:19pm'),
(27, '209.222.97.206', '2020-11-11 11:29:04pm'),
(28, '209.222.97.206', '2020-11-11 11:31:25pm'),
(29, '209.222.97.206', '2020-11-11 11:37:48pm'),
(30, '209.222.97.206', '2020-11-11 11:38:53pm'),
(31, '209.222.97.206', '2020-11-11 11:40:52pm'),
(32, '209.222.97.206', '2020-11-11 11:41:24pm'),
(33, '209.222.97.206', '2020-11-11 11:42:00pm'),
(34, '209.222.97.206', '2020-11-11 11:43:32pm'),
(35, '209.222.97.206', '2020-11-11 11:43:36pm'),
(36, '209.222.97.206', '2020-11-11 11:43:40pm'),
(37, '209.222.97.206', '2020-11-11 11:43:45pm'),
(38, '209.222.97.206', '2020-11-11 11:46:52pm'),
(39, '209.222.97.206', '2020-11-11 11:47:31pm'),
(40, '209.222.97.206', '2020-11-11 11:47:39pm'),
(41, '209.222.97.206', '2020-11-11 11:47:45pm'),
(42, '209.222.97.206', '2020-11-11 11:49:32pm'),
(43, '209.222.97.206', '2020-11-11 11:51:22pm'),
(44, '209.222.97.206', '2020-11-11 11:51:25pm'),
(45, '209.222.97.206', '2020-11-11 11:51:33pm'),
(46, '209.222.97.206', '2020-11-11 11:51:39pm'),
(47, '209.222.97.206', '2020-11-11 11:52:45pm'),
(48, '209.222.97.206', '2020-11-11 11:54:33pm'),
(49, '209.222.97.206', '2020-11-11 11:55:33pm'),
(50, '209.222.97.206', '2020-11-11 11:55:52pm'),
(51, '209.222.97.206', '2020-11-11 11:56:00pm'),
(52, '209.222.97.206', '2020-11-12 12:03:48am'),
(53, '209.222.97.206', '2020-11-12 12:03:54am'),
(54, '209.222.97.206', '2020-11-12 12:04:16am'),
(55, '209.222.97.206', '2020-11-12 12:06:27am'),
(56, '209.222.97.206', '2020-11-12 12:08:07am'),
(57, '209.222.97.206', '2020-11-12 12:09:42am'),
(58, '209.222.97.206', '2020-11-12 12:09:45am'),
(59, '209.222.97.206', '2020-11-12 12:09:47am'),
(60, '209.222.97.206', '2020-11-12 12:33:01am'),
(61, '209.222.97.206', '2020-11-12 12:33:18am'),
(62, '209.222.97.206', '2020-11-12 01:06:12am'),
(63, '209.222.97.206', '2020-11-12 01:08:46am'),
(64, '209.222.97.206', '2020-11-12 01:10:19am'),
(65, '209.222.97.206', '2020-11-12 01:24:20am'),
(66, '209.222.97.206', '2020-11-12 04:06:39am'),
(67, '209.222.97.206', '2020-11-12 04:11:38am'),
(68, '209.222.97.206', '2020-11-12 01:47:04pm'),
(69, '209.222.97.206', '2020-11-12 03:34:50pm'),
(70, '209.222.97.206', '2020-11-12 06:14:47pm'),
(71, '209.222.97.206', '2020-11-12 08:04:06pm'),
(72, '209.222.97.206', '2020-11-12 08:06:33pm'),
(73, '209.222.97.206', '2020-11-12 09:51:39pm'),
(74, '209.222.97.206', '2020-11-12 09:56:40pm'),
(75, '209.222.97.206', '2020-11-12 09:58:36pm'),
(76, '173.252.83.17', '2020-11-12 10:01:17pm'),
(77, '209.222.97.206', '2020-11-12 11:57:52pm'),
(78, '209.222.97.206', '2020-11-12 11:57:52pm'),
(79, '209.222.97.206', '2020-11-12 11:59:12pm'),
(80, '209.222.97.206', '2020-11-13 12:01:45am'),
(81, '209.222.97.206', '2020-11-13 05:55:28pm'),
(82, '209.222.97.206', '2020-11-13 05:55:42pm'),
(83, '209.222.97.206', '2020-11-13 10:30:09pm'),
(84, '209.222.97.206', '2020-11-13 10:30:11pm'),
(85, '209.222.97.206', '2020-11-14 12:02:12pm'),
(86, '209.222.97.206', '2020-11-14 06:30:34pm'),
(87, '209.222.97.206', '2020-11-14 06:55:39pm'),
(88, '209.222.97.206', '2020-11-14 10:51:37pm'),
(89, '209.222.97.206', '2020-11-14 10:51:54pm'),
(90, '209.222.97.206', '2020-11-14 11:21:50pm'),
(91, '209.222.97.206', '2020-11-14 11:22:00pm'),
(92, '209.222.97.206', '2020-11-14 11:24:48pm'),
(93, '209.222.97.206', '2020-11-14 11:50:21pm'),
(94, '209.222.97.206', '2020-11-15 12:06:26am'),
(95, '209.222.97.206', '2020-11-15 04:14:56am'),
(96, '209.222.97.206', '2020-11-15 05:12:42am'),
(97, '209.222.97.206', '2020-11-15 05:31:03pm'),
(98, '209.222.97.206', '2020-11-15 05:31:06pm'),
(99, '209.222.97.206', '2020-11-15 05:51:22pm'),
(100, '209.222.97.206', '2020-11-15 10:15:13pm'),
(101, '209.222.97.206', '2020-11-16 11:20:23am'),
(102, '209.222.97.206', '2020-11-16 11:21:05am'),
(103, '209.222.97.206', '2020-11-16 11:22:24am'),
(104, '209.222.97.206', '2020-11-16 11:25:32am'),
(105, '209.222.97.206', '2020-11-16 11:27:24am'),
(106, '209.222.97.206', '2020-11-16 11:27:35am'),
(107, '209.222.97.206', '2020-11-16 11:28:30am'),
(108, '209.222.97.206', '2020-11-16 11:29:21am'),
(109, '209.222.97.206', '2020-11-16 11:30:33am'),
(110, '209.222.97.206', '2020-11-16 03:34:07pm'),
(111, '209.222.97.206', '2020-11-16 03:36:40pm'),
(112, '209.222.97.206', '2020-11-16 03:36:59pm'),
(113, '209.222.97.206', '2020-11-16 03:37:06pm'),
(114, '209.222.97.206', '2020-11-16 06:09:26pm'),
(115, '209.222.97.206', '2020-11-16 06:39:17pm'),
(116, '54.36.149.14', '2020-11-16 07:43:57pm'),
(117, '209.222.97.206', '2020-11-16 07:59:54pm'),
(118, '209.222.97.206', '2020-11-16 10:37:20pm'),
(119, '209.222.97.206', '2020-11-16 11:12:10pm'),
(120, '209.222.97.206', '2020-11-17 01:09:49am'),
(121, '209.222.97.206', '2020-11-17 01:10:09am'),
(122, '54.36.148.67', '2020-11-17 10:37:50am'),
(123, '209.222.97.206', '2020-11-17 12:48:28pm'),
(124, '209.222.97.206', '2020-11-17 12:48:33pm'),
(125, '209.222.97.206', '2020-11-17 01:18:41pm'),
(126, '209.222.97.206', '2020-11-17 04:24:08pm'),
(127, '54.36.148.33', '2020-11-17 07:25:09pm'),
(128, '209.222.97.206', '2020-11-17 11:33:17pm'),
(129, '209.222.97.206', '2020-11-17 11:46:43pm'),
(130, '209.222.97.206', '2020-11-17 11:46:43pm'),
(131, '54.36.148.104', '2020-11-18 12:19:54am'),
(132, '209.222.97.206', '2020-11-18 05:09:54am'),
(133, '54.36.148.92', '2020-11-18 05:39:55am'),
(134, '209.222.97.206', '2020-11-18 07:10:19am'),
(135, '209.222.97.206', '2020-11-18 07:10:37am'),
(136, '209.222.97.206', '2020-11-18 07:10:45am'),
(137, '54.36.149.64', '2020-11-18 11:47:14am'),
(138, '54.36.149.77', '2020-11-18 06:12:05pm'),
(139, '54.36.148.7', '2020-11-19 01:29:49am'),
(140, '209.222.97.206', '2020-11-19 02:25:40am'),
(141, '209.222.97.206', '2020-11-19 04:17:37am'),
(142, '54.36.148.34', '2020-11-19 10:53:49am'),
(143, '209.222.97.206', '2020-11-19 01:49:29pm'),
(144, '209.222.97.206', '2020-11-19 01:49:38pm'),
(145, '209.222.97.206', '2020-11-19 01:50:06pm'),
(146, '209.222.97.206', '2020-11-19 01:50:38pm'),
(147, '209.222.97.206', '2020-11-19 01:51:05pm'),
(148, '209.222.97.206', '2020-11-19 02:08:29pm'),
(149, '209.222.97.206', '2020-11-19 06:12:48pm'),
(150, '209.222.97.206', '2020-11-19 06:13:07pm'),
(151, '209.222.97.206', '2020-11-19 06:24:12pm'),
(152, '209.222.97.206', '2020-11-19 06:26:36pm'),
(153, '209.222.97.206', '2020-11-19 07:58:10pm'),
(154, '54.36.149.5', '2020-11-19 09:07:47pm'),
(155, '209.222.97.206', '2020-11-19 10:57:45pm'),
(156, '209.222.97.206', '2020-11-19 10:58:00pm'),
(157, '209.222.97.206', '2020-11-20 01:21:20am'),
(158, '209.222.97.206', '2020-11-20 05:38:18am'),
(159, '54.36.148.67', '2020-11-20 06:07:46am'),
(160, '209.222.97.206', '2020-11-20 11:12:11am'),
(161, '209.222.97.206', '2020-11-20 12:28:58pm'),
(162, '209.222.97.206', '2020-11-20 01:10:51pm'),
(163, '54.36.148.67', '2020-11-20 03:02:45pm'),
(164, '209.222.97.206', '2020-11-20 04:02:26pm'),
(165, '209.222.97.206', '2020-11-20 04:05:39pm'),
(166, '209.222.97.206', '2020-11-20 04:05:46pm'),
(167, '209.222.97.206', '2020-11-20 04:22:43pm'),
(168, '209.222.97.206', '2020-11-20 04:31:19pm'),
(169, '209.222.97.206', '2020-11-20 04:57:33pm'),
(170, '209.222.97.206', '2020-11-20 05:24:10pm'),
(171, '209.222.97.206', '2020-11-20 05:27:49pm'),
(172, '209.222.97.206', '2020-11-20 06:05:24pm'),
(173, '209.222.97.206', '2020-11-20 06:41:31pm'),
(174, '209.222.97.206', '2020-11-20 07:00:34pm'),
(175, '209.222.97.206', '2020-11-20 07:11:36pm'),
(176, '209.222.97.206', '2020-11-20 07:13:19pm'),
(177, '209.222.97.206', '2020-11-20 07:13:31pm'),
(178, '209.222.97.206', '2020-11-20 07:14:00pm'),
(179, '209.222.97.206', '2020-11-20 07:14:05pm'),
(180, '54.36.148.67', '2020-11-20 07:44:12pm'),
(181, '209.222.97.206', '2020-11-20 07:53:12pm'),
(182, '209.222.97.206', '2020-11-20 07:54:51pm'),
(183, '209.222.97.206', '2020-11-20 07:56:04pm'),
(184, '209.222.97.206', '2020-11-20 08:05:23pm'),
(185, '209.222.97.206', '2020-11-20 11:05:05pm'),
(186, '209.222.97.206', '2020-11-20 11:06:01pm'),
(187, '209.222.97.206', '2020-11-20 11:07:00pm'),
(188, '209.222.97.206', '2020-11-20 11:07:55pm'),
(189, '209.222.97.206', '2020-11-20 11:08:29pm'),
(190, '209.222.97.206', '2020-11-20 11:08:41pm'),
(191, '209.222.97.206', '2020-11-20 11:12:21pm'),
(192, '209.222.97.206', '2020-11-20 11:14:48pm'),
(193, '209.222.97.206', '2020-11-20 11:15:37pm'),
(194, '209.222.97.206', '2020-11-20 11:16:30pm'),
(195, '209.222.97.206', '2020-11-20 11:16:59pm'),
(196, '209.222.97.206', '2020-11-20 11:17:04pm'),
(197, '209.222.97.206', '2020-11-20 11:18:43pm'),
(198, '209.222.97.206', '2020-11-20 11:19:27pm'),
(199, '209.222.97.206', '2020-11-20 11:19:47pm'),
(200, '209.222.97.206', '2020-11-20 11:20:26pm'),
(201, '209.222.97.206', '2020-11-20 11:24:29pm'),
(202, '209.222.97.206', '2020-11-20 11:26:22pm'),
(203, '209.222.97.206', '2020-11-20 11:28:13pm'),
(204, '209.222.97.206', '2020-11-20 11:28:24pm'),
(205, '209.222.97.206', '2020-11-20 11:30:43pm'),
(206, '209.222.97.206', '2020-11-20 11:32:08pm'),
(207, '209.222.97.206', '2020-11-20 11:34:08pm'),
(208, '209.222.97.206', '2020-11-20 11:35:15pm'),
(209, '209.222.97.206', '2020-11-20 11:35:21pm'),
(210, '209.222.97.206', '2020-11-20 11:35:32pm'),
(211, '209.222.97.206', '2020-11-20 11:35:46pm'),
(212, '209.222.97.206', '2020-11-20 11:36:02pm'),
(213, '209.222.97.206', '2020-11-20 11:36:03pm'),
(214, '209.222.97.206', '2020-11-20 11:36:23pm'),
(215, '209.222.97.206', '2020-11-20 11:40:29pm'),
(216, '209.222.97.206', '2020-11-20 11:40:50pm'),
(217, '209.222.97.206', '2020-11-20 11:43:38pm'),
(218, '209.222.97.206', '2020-11-20 11:44:11pm'),
(219, '209.222.97.206', '2020-11-20 11:46:15pm'),
(220, '209.222.97.206', '2020-11-20 11:49:11pm'),
(221, '209.222.97.206', '2020-11-20 11:49:38pm'),
(222, '209.222.97.206', '2020-11-20 11:51:53pm'),
(223, '209.222.97.206', '2020-11-20 11:52:30pm'),
(224, '209.222.97.206', '2020-11-20 11:52:34pm'),
(225, '209.222.97.206', '2020-11-20 11:59:56pm'),
(226, '209.222.97.206', '2020-11-21 12:01:05am'),
(227, '209.222.97.206', '2020-11-21 12:01:48am'),
(228, '209.222.97.206', '2020-11-21 12:15:40am'),
(229, '209.222.97.206', '2020-11-21 12:16:19am'),
(230, '209.222.97.206', '2020-11-21 12:16:28am'),
(231, '209.222.97.206', '2020-11-21 12:18:29am'),
(232, '209.222.97.206', '2020-11-21 12:18:58am'),
(233, '209.222.97.206', '2020-11-21 12:20:21am'),
(234, '209.222.97.206', '2020-11-21 12:20:50am'),
(235, '209.222.97.206', '2020-11-21 12:26:21am'),
(236, '209.222.97.206', '2020-11-21 12:28:01am'),
(237, '209.222.97.206', '2020-11-21 12:30:28am'),
(238, '209.222.97.206', '2020-11-21 12:37:12am'),
(239, '209.222.97.206', '2020-11-21 12:41:08am'),
(240, '209.222.97.206', '2020-11-21 01:12:04am'),
(241, '209.222.97.206', '2020-11-21 01:12:58am'),
(242, '209.222.97.206', '2020-11-21 03:03:35am'),
(243, '54.36.149.27', '2020-11-21 03:33:41am'),
(244, '209.222.97.206', '2020-11-21 04:38:38am'),
(245, '209.222.97.206', '2020-11-21 05:12:39am'),
(246, '209.222.97.206', '2020-11-21 05:36:06am'),
(247, '209.222.97.206', '2020-11-21 05:40:22am'),
(248, '209.222.97.206', '2020-11-21 07:23:12am'),
(249, '54.36.148.9', '2020-11-21 10:54:28am'),
(250, '209.222.97.206', '2020-11-21 02:00:44pm'),
(251, '209.222.97.206', '2020-11-21 02:52:52pm'),
(252, '209.222.97.206', '2020-11-21 03:38:53pm'),
(253, '209.222.97.206', '2020-11-21 04:57:35pm'),
(254, '209.222.97.206', '2020-11-21 05:24:08pm'),
(255, '209.222.97.206', '2020-11-21 06:30:09pm'),
(256, '209.222.97.206', '2020-11-21 07:32:19pm'),
(257, '54.36.148.170', '2020-11-21 09:04:12pm'),
(258, '209.222.97.206', '2020-11-21 10:05:54pm'),
(259, '209.222.97.206', '2020-11-21 11:30:10pm'),
(260, '209.222.97.206', '2020-11-21 11:31:14pm'),
(261, '54.36.148.110', '2020-11-22 07:29:01am'),
(262, '209.222.97.206', '2020-11-22 08:50:27am'),
(263, '209.222.97.206', '2020-11-22 11:46:48am'),
(264, '209.222.97.206', '2020-11-22 12:03:01pm'),
(265, '54.36.148.133', '2020-11-22 03:09:41pm'),
(266, '209.222.97.206', '2020-11-22 03:46:28pm'),
(267, '209.222.97.206', '2020-11-22 04:40:51pm'),
(268, '54.36.149.62', '2020-11-22 09:08:34pm'),
(269, '209.222.97.206', '2020-11-22 09:20:44pm'),
(270, '209.222.97.206', '2020-11-22 09:58:44pm'),
(271, '209.222.97.206', '2020-11-23 12:31:12am'),
(272, '209.222.97.206', '2020-11-23 01:38:06am'),
(273, '209.222.97.206', '2020-11-23 05:15:56am'),
(274, '54.36.148.67', '2020-11-23 06:17:56am'),
(275, '209.222.97.206', '2020-11-23 08:30:58am'),
(276, '209.222.97.206', '2020-11-23 11:40:37am'),
(277, '54.36.148.67', '2020-11-23 12:49:38pm'),
(278, '209.222.97.206', '2020-11-23 01:08:50pm'),
(279, '54.36.149.28', '2020-11-23 08:10:53pm'),
(280, '209.222.97.206', '2020-11-23 11:09:17pm'),
(281, '209.222.97.206', '2020-11-23 11:22:51pm'),
(282, '54.36.149.88', '2020-11-24 01:31:09am'),
(283, '209.222.97.206', '2020-11-24 05:06:47am'),
(284, '54.36.148.67', '2020-11-24 07:52:34am'),
(285, '209.222.97.206', '2020-11-24 01:17:01pm'),
(286, '209.222.97.206', '2020-11-24 01:58:08pm'),
(287, '54.36.148.67', '2020-11-24 02:35:47pm'),
(288, '209.222.97.206', '2020-11-24 04:09:35pm'),
(289, '209.222.97.206', '2020-11-24 05:54:13pm'),
(290, '42.0.5.226', '2020-11-24 07:37:11pm'),
(291, '42.0.5.226', '2020-11-24 07:38:05pm'),
(292, '42.0.5.226', '2020-11-24 07:38:16pm'),
(293, '42.0.5.226', '2020-11-24 07:38:33pm'),
(294, '209.222.97.206', '2020-11-24 09:22:04pm'),
(295, '42.0.5.226', '2020-11-24 11:05:15pm'),
(296, '54.36.148.67', '2020-11-25 01:09:19am'),
(297, '209.222.97.206', '2020-11-25 02:03:53am'),
(298, '209.222.97.206', '2020-11-25 05:24:53am'),
(299, '209.222.97.206', '2020-11-25 05:24:56am'),
(300, '209.222.97.206', '2020-11-25 10:55:10am'),
(301, '54.36.148.212', '2020-11-25 11:12:57am'),
(302, '209.222.97.206', '2020-11-25 01:58:51pm'),
(303, '209.222.97.206', '2020-11-25 01:59:03pm'),
(304, '209.222.97.206', '2020-11-25 02:54:03pm'),
(305, '209.222.97.206', '2020-11-25 04:44:37pm'),
(306, '209.222.97.206', '2020-11-25 04:45:46pm'),
(307, '209.222.97.206', '2020-11-25 04:46:27pm'),
(308, '209.222.97.206', '2020-11-25 04:48:27pm'),
(309, '209.222.97.206', '2020-11-25 06:45:17pm'),
(310, '209.222.97.206', '2020-11-25 07:32:11pm'),
(311, '209.222.97.206', '2020-11-25 07:32:25pm'),
(312, '209.222.97.206', '2020-11-25 07:55:19pm'),
(313, '209.222.97.206', '2020-11-25 08:45:50pm'),
(314, '209.222.97.206', '2020-11-25 08:50:39pm'),
(315, '54.36.148.200', '2020-11-25 10:26:10pm'),
(316, '209.222.97.206', '2020-11-25 11:50:21pm'),
(317, '209.222.97.206', '2020-11-26 12:12:11am'),
(318, '209.222.97.206', '2020-11-26 04:59:07am'),
(319, '209.222.97.206', '2020-11-26 04:59:20am'),
(320, '209.222.97.206', '2020-11-26 05:15:05am'),
(321, '54.36.149.14', '2020-11-26 08:38:52am');

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_tables`
--
ALTER TABLE `visitor_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
