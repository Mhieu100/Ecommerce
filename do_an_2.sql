-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2022 at 09:05 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `do_an_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Iphone', 0, '2022-11-20 01:22:52', '2022-11-20 01:22:52', 1),
(2, 'Samsung', 0, '2022-11-20 01:23:04', '2022-11-20 01:23:04', 1),
(3, 'Vivo', 0, '2022-11-20 01:23:13', '2022-11-20 01:23:13', 1),
(4, 'Oppo', 0, '2022-11-20 01:23:28', '2022-11-20 01:23:28', 1),
(5, 'Realme', 0, '2022-11-20 01:23:37', '2022-11-20 01:23:37', 1),
(6, 'Mi', 0, '2022-11-20 01:23:49', '2022-11-20 01:23:49', 1),
(11, 'Casio ', 0, '2022-11-22 08:53:17', '2022-11-22 08:53:17', 3);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=visible, 1=hidden',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Điện Thoại', 'uploads/category/1668932556.jpg', 0, '2022-11-20 01:22:36', '2022-11-22 09:31:14'),
(3, 'Đồng Hồ', 'uploads/category/1669132332.jpg', 0, '2022-11-22 08:52:12', '2022-11-22 08:52:12'),
(8, 'Tablet', 'uploads/category/1669383578.jpg', 0, '2022-11-25 06:39:38', '2022-11-25 06:39:38'),
(9, 'Laptop', 'uploads/category/1669383658.jpg', 0, '2022-11-25 06:40:58', '2022-11-25 07:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Red', 'Red', 0, '2022-11-20 01:26:01', '2022-11-20 01:26:01'),
(2, 'Blue', 'Blue', 0, '2022-11-20 01:26:08', '2022-11-20 01:26:08'),
(3, 'Black', 'Black', 0, '2022-11-20 01:26:15', '2022-11-20 01:26:15'),
(4, 'Purple', 'Purple', 0, '2022-11-20 01:26:26', '2022-11-20 01:26:26'),
(5, 'Green', 'Green', 0, '2022-11-20 01:26:33', '2022-11-20 01:26:33');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_30_165455_add_details_to_user_table', 1),
(6, '2022_10_30_173718_create_categories_table', 1),
(7, '2022_10_31_070309_create_brands_table', 1),
(8, '2022_11_01_200626_create_products_table', 1),
(9, '2022_11_01_200632_create_product_images_table', 1),
(10, '2022_11_03_140016_create_colors_table', 1),
(11, '2022_11_03_161542_create_product_colors_table', 1),
(12, '2022_11_04_153828_create_sliders_table', 1),
(13, '2022_11_06_084716_add_category_id_to_brands_table', 1),
(14, '2022_11_06_131555_create_wishlists_table', 1),
(15, '2022_11_06_164201_create_carts_table', 1),
(16, '2022_11_08_160227_create_orders_table', 1),
(17, '2022_11_08_160704_create_order_items_table', 1),
(18, '2022_11_25_164752_create_user_details_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tracking_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `tracking_no`, `fullname`, `email`, `phone`, `pincode`, `address`, `status_message`, `payment_mode`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'cod-HUytuN19SR', 'admin', 'admin@gmail.com', '0388335845', '123456', 'Da Nang, Viet Nam', 'is progress', 'Cash on Delivery', NULL, '2022-11-20 03:38:57', '2022-11-25 08:31:51'),
(2, 3, 'cod-50ljmBy2s8', 'Duy Bao', 'bao@gmail.com', '0388335845', '123123', 'Ngu Hanh Son, Da Nang', 'is progress', 'Cash on Delivery', NULL, '2022-11-25 09:01:24', '2022-11-25 09:01:24'),
(3, 4, 'cod-6Ju3YLDYXt', 'Cong Toan', 'toan@gmail.com', '0388335845', '123454', 'Hoa Phuoc, Da Nang', 'is progress', 'Paid By Paypal', '3YT79334VG191340L', '2022-11-25 09:06:51', '2022-11-25 09:06:51'),
(4, 4, 'cod-AuVKLpOChN', 'Cong Toan', 'toan@gmail.com', '0904041765', '123213', 'Thanh Khe, Da Nang', 'is progress', 'Cash on Delivery', NULL, '2022-11-25 10:33:16', '2022-11-25 10:33:16'),
(5, 4, 'cod-Pj56i7V4j8', 'Cong Toan', 'toan@gmail.com', '0904041765', '312311', 'Thanh Khe, Da Nang', 'is progress', 'Paid By Paypal', '4K038629HB8368349', '2022-11-25 10:35:08', '2022-11-25 10:35:08'),
(6, 2, 'cod-ew4udtrTOX', 'Admin', 'admin@gmail.com', '0388335845', '123123', 'Hoa Vang, Da Nang', 'is progress', 'Cash on Delivery', NULL, '2022-11-25 11:52:39', '2022-11-25 11:52:39'),
(7, 5, 'cod-NYbQSKWofn', 'Thien', 'hieuvn201103it@gmail.com', '0904041765', '312323', 'Hoa Khanh,  Da Nang', 'is progress', 'Cash on Delivery', NULL, '2022-11-25 21:44:11', '2022-11-25 21:44:11'),
(8, 2, 'cod-g87o5GGpLT', 'Admin', 'admin@gmail.com', '0388335845', '123123', 'Hoa Vang, Da Nang', 'is progress', 'Paid By Paypal', '86K108972G898073R', '2022-11-25 21:51:43', '2022-11-25 21:51:43');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_color_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, '14', '41', '2', '3000', '2022-11-20 03:38:57', '2022-11-20 03:38:57'),
(2, 2, '47', '132', '2', '490', '2022-11-25 09:01:24', '2022-11-25 09:01:24'),
(3, 2, '47', '133', '1', '490', '2022-11-25 09:01:24', '2022-11-25 09:01:24'),
(4, 2, '36', NULL, '3', '800', '2022-11-25 09:01:24', '2022-11-25 09:01:24'),
(5, 2, '30', '86', '2', '590', '2022-11-25 09:01:24', '2022-11-25 09:01:24'),
(6, 3, '34', '99', '2', '900', '2022-11-25 09:06:51', '2022-11-25 09:06:51'),
(7, 3, '34', '98', '1', '900', '2022-11-25 09:06:51', '2022-11-25 09:06:51'),
(8, 3, '45', '128', '1', '460', '2022-11-25 09:06:51', '2022-11-25 09:06:51'),
(9, 4, '46', '131', '1', '600', '2022-11-25 10:33:16', '2022-11-25 10:33:16'),
(10, 4, '35', '101', '2', '900', '2022-11-25 10:33:16', '2022-11-25 10:33:16'),
(11, 5, '34', '97', '1', '900', '2022-11-25 10:35:08', '2022-11-25 10:35:08'),
(12, 6, '35', '101', '1', '900', '2022-11-25 11:52:39', '2022-11-25 11:52:39'),
(13, 7, '2', '5', '2', '4000', '2022-11-25 21:44:11', '2022-11-25 21:44:11'),
(14, 7, '34', '99', '1', '900', '2022-11-25 21:44:12', '2022-11-25 21:44:12'),
(15, 8, '47', '134', '1', '490', '2022-11-25 21:51:43', '2022-11-25 21:51:43');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `trending` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=trending,0=not-trending',
  `featured` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=featured,0=not-featured',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hidden ,0=visible',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `brand`, `description`, `original_price`, `selling_price`, `quantity`, `trending`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'iPhone 13 Pro Max', 'Iphone', 'iPhone 13 Pro Max 256GB - siêu phẩm mang trên mình bộ vi xử lý Apple A15 Bionic hàng đầu, màn hình Super Retina XDR 120 Hz, cụm camera khẩu độ f/1.5 cực lớn, tất cả sẽ mang lại cho bạn những trải nghiệm tuyệt vời chưa từng có.', 5000, 4000, 10, 1, 1, 0, '2022-11-20 01:28:29', '2022-11-20 01:28:29'),
(3, 1, 'iPhone 14 Pro Max', 'Iphone', 'Cuối cùng thì chiếc iPhone 14 Pro Max cũng đã chính thức lộ diện tại sự kiện ra mắt thường niên vào ngày 08/09 đến từ nhà Apple, kết thúc bao lời đồn đoán bằng một bộ thông số cực kỳ ấn tượng cùng vẻ ngoài đẹp mắt sang trọng.', 6000, 5500, 9, 1, 0, 0, '2022-11-20 01:32:15', '2022-11-20 01:32:15'),
(4, 1, 'iPhone 14', 'Iphone', 'Sau bao khoảng thời gian dài chờ đợi thì vào ngày 08/09 chiếc điện thoại iPhone 14 cũng đã chính thức được lộ diện, với hàng loạt thông số kỹ thuật ấn tượng từ camera cho đến hiệu năng cực khủng.', 3000, 2500, 7, 0, 1, 0, '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(5, 1, 'iPhone SE', 'Iphone', 'Như vậy là sau bao ngày chờ đợi thì iPhone SE 64GB (2022) cũng đã được giới thiệu tại sự kiện Apple Peek Performance. Thiết bị nổi bật với cấu hình mạnh mẽ, chạy chip hiện đại nhất của Apple hiện tại nhưng giá bán lại rất phải chăng.', 1000, 800, 5, 1, 0, 0, '2022-11-20 01:37:25', '2022-11-20 01:37:25'),
(6, 1, 'iPhone 12', 'Iphone', 'Trong những tháng cuối năm 2020, Apple đã chính thức giới thiệu đến người dùng cũng như iFan thế hệ iPhone 12 series mới với hàng loạt tính năng bứt phá, thiết kế được lột xác hoàn toàn.', 2000, 1800, 5, 0, 1, 0, '2022-11-20 01:40:35', '2022-11-20 01:40:35'),
(7, 1, 'Samsung Galaxy Z Flip4', 'Samsung', 'Samsung Galaxy Z Flip4 128GB đã chính thức ra mắt thị trường công nghệ, đánh dấu sự trở lại của Samsung trên con đường định hướng người dùng về sự tiện lợi trên những chiếc điện thoại gập.', 6000, 5900, 20, 1, 0, 0, '2022-11-20 01:42:14', '2022-11-20 01:45:00'),
(8, 1, 'Samsung Galaxy S22', 'Samsung', 'Galaxy S22 Ultra 5G chiếc smartphone cao cấp nhất trong bộ 3 Galaxy S22 series mà Samsung đã cho ra mắt. Tích hợp bút S Pen hoàn hảo trong thân máy, trang bị vi xử lý mạnh mẽ cho các tác vụ sử dụng vô cùng mượt mà.', 5000, 4500, 20, 0, 1, 0, '2022-11-20 01:44:39', '2022-11-20 03:37:10'),
(9, 1, 'Samsung Galaxy A23', 'Samsung', 'Samsung Galaxy A23 4GB sở hữu bộ thông số kỹ thuật khá ấn tượng trong phân khúc, máy có một hiệu năng ổn định, cụm 4 camera thông minh cùng một diện mạo trẻ trung phù hợp cho mọi đối tượng.', 2000, 1500, 10, 1, 0, 0, '2022-11-20 01:46:29', '2022-11-20 01:46:29'),
(10, 1, 'Samsung Galaxy Z Fold4', 'Samsung', 'Samsung Galaxy Z Fold4 256GB chính thức được trình làng thị trường công nghệ, mang trên mình nhiều cải tiến đáng giá giúp Galaxy Z Fold trở thành dòng điện thoại gập đã tốt nay càng tốt hơn.', 5000, 4900, 8, 0, 1, 0, '2022-11-20 01:47:38', '2022-11-20 01:48:06'),
(11, 1, 'Samsung Galaxy S22+', 'Samsung', 'Samsung Galaxy S22+ 5G 128GB được Samsung cho ra mắt với ngoại hình không có quá nhiều thay đổi nhưng được nâng cấp đáng kể về thông số cấu hình bên trong và thời gian sử dụng.', 3000, 2900, 8, 1, 0, 0, '2022-11-20 01:49:40', '2022-11-20 01:49:40'),
(12, 1, 'Samsung Galaxy M53', 'Samsung', 'Có lẽ 2022 là một năm bùng nổ của nhà Samsung, khi hãng liên tục trình làng nhiều sản phẩm có cấu hình mạnh mẽ cùng một mức giá bán hợp lý trên thị trường smartphone tầm trung và giá rẻ, tiêu biểu trong số đó có Samsung Galaxy M53 được xem là cái tên được cộng đồng người dùng tích cực quan tâm và săn đón kể cả khi chưa ra mắt.', 2000, 1500, 20, 0, 1, 0, '2022-11-20 01:51:41', '2022-11-20 01:51:41'),
(13, 1, 'OPPO Reno8', 'Oppo', 'OPPO Reno8 Pro 5G ra mắt với sự đột phá về phần camera khi đây là thiết bị đầu tiên thuộc dòng Reno được tích hợp NPU MariSilicon X, được xem là NPU cao cấp nhất đến từ OPPO (2022) có khả năng xử lý hình ảnh đỉnh cao.', 3000, 2000, 7, 0, 1, 0, '2022-11-20 01:53:08', '2022-11-20 01:53:08'),
(14, 1, 'OPPO Find X5 Pro', 'Oppo', 'OPPO Find X5 Pro 5G có lẽ là cái tên sáng giá được xướng tên trong danh sách điện thoại có thiết kế ấn tượng trong năm 2022. Máy được hãng cho ra mắt với một diện mạo độc lạ chưa từng có.', 4000, 3000, 10, 1, 0, 0, '2022-11-20 01:54:26', '2022-11-20 02:36:11'),
(15, 1, 'OPPO Reno7', 'Oppo', 'OPPO đã trình làng mẫu Reno7 Z 5G với thiết kế OPPO Glow độc quyền, camera mang hiệu ứng như máy DSLR chuyên nghiệp cùng viền sáng kép, máy có một cấu hình mạnh mẽ và đạt chứng nhận xếp hạng A về độ mượt.', 2000, 1800, 7, 0, 1, 0, '2022-11-20 03:41:57', '2022-11-20 03:41:57'),
(16, 1, 'OPPO A95', 'Oppo', 'Bên cạnh phiên bản 5G, OPPO còn bổ sung phiên bản OPPO A95 4G với giá thành phải chăng tập trung vào thiết kế năng động, sạc nhanh và hiệu năng đa nhiệm ấn tượng sẽ giúp cho cuộc sống của bạn thêm phần hấp dẫn, ngập tràn niềm vui.', 1000, 700, 5, 1, 0, 0, '2022-11-20 03:42:40', '2022-11-20 03:42:40'),
(17, 1, 'OPPO A17K', 'Oppo', 'OPPO A17K là chiếc điện thoại được kế thừa thiết kế tinh tế của OPPO A16K, được nâng cấp về dung lượng pin, đồng thời cũng sở hữu màn hình chi tiết cùng một hiệu năng ổn định được nhà OPPO cho ra mắt vào những tháng cuối năm 2022.', 800, 500, 4, 1, 0, 0, '2022-11-20 03:48:45', '2022-11-20 03:48:45'),
(18, 1, 'OPPO Reno6', 'Oppo', 'Sau khi ra mắt OPPO Reno5 chưa lâu thì OPPO lại cho ra mẫu smartphone mới mang tên OPPO Reno6 với hàng loạt cải tiến mới về ngoại hình bên ngoài lẫn hiệu năng bên trong, mang đến trải nghiệm vượt bật cho người dùng.', 4000, 3000, 8, 1, 1, 0, '2022-11-20 03:49:51', '2022-11-20 03:49:51'),
(19, 1, 'Vivo X80', 'Vivo', 'Vivo X80 được xem là thiết bị hướng đến đối tượng người dùng chuyên nhiếp ảnh trên điện thoại, bằng việc hợp tác cùng nhà sản xuất ống kính nổi tiếng mang thương hiệu ZEISS.', 2000, 1600, 7, 0, 1, 0, '2022-11-20 03:51:24', '2022-11-20 03:51:24'),
(20, 1, 'Vivo Y53s', 'Vivo', 'Vivo mang đến niềm vui cho mọi người tin dùng khi hãng chính thức tung ra chiếc điện thoại Vivo Y53s với những tính năng tiên tiến đi cùng hiệu năng mạnh mẽ. Đặc biệt, smartphone lại còn sở hữu mức giá hấp dẫn trong phân khúc tầm trung đầy hứa hẹn.', 1500, 1200, 6, 1, 0, 0, '2022-11-20 03:52:22', '2022-11-20 03:52:22'),
(21, 1, 'Vivo V25', 'Vivo', 'Dường như 2022 là một năm bùng nổ cho điện thoại V series khi nhiều sản phẩm được cho ra mắt với thông số và thiết kế rất ấn tượng, trong đó có Vivo V25 vừa được giới thiệu vào tháng 10/2022', 800, 600, 3, 0, 1, 0, '2022-11-20 03:53:43', '2022-11-20 03:53:43'),
(22, 1, 'Vivo Y22s', 'Vivo', 'Vivo dường như ngày càng chú trọng vào vẻ đẹp của từng sản phẩm khi có khá nhiều mẫu smartphone mới được trình làng với bề ngoài hết sức đẹp mắt, nổi bật trong khoảng thời gian gần đây (09/2022)', 700, 600, 8, 1, 1, 0, '2022-11-20 03:55:42', '2022-11-20 03:55:42'),
(23, 1, 'Vivo Y16', 'Vivo', 'Vivo Y16 64GB tiếp tục sẽ là cái tên được hãng bổ sung cho bộ sưu tập điện thoại Vivo dòng Y trong thời điểm cuối năm 2022, với mục tiêu mang đến nhiều trải nghiệm tốt hơn đối với dòng sản phẩm giá rẻ', 750, 700, 4, 0, 0, 0, '2022-11-20 03:57:16', '2022-11-20 03:57:16'),
(24, 1, 'Vivo Y33s', 'Oppo', 'Vivo Y33s - chiếc điện thoại này có thiết kế khá tương đồng với các sản phẩm tầm trung mà Vivo cho ra mắt gần đây, vẫn là một sản phẩm có thiết kế trẻ trung với màu đen tráng gương và xanh mộng mơ.', 900, 8600, 5, 0, 1, 0, '2022-11-20 03:58:29', '2022-11-20 03:58:29'),
(25, 1, 'Realme C33', 'Realme', 'Trong tháng 10/2022, Realme C33 (3GB/32GB) là cái tên thu hút được nhiều sự chú ý trên các diễn đàn công nghệ, sở hữu trên máy là một thiết kế hợp xu hướng đi kèm với màn hình to rõ giúp bạn có thể sử dụng các tác vụ giải trí được tốt hơn', 900, 880, 6, 1, 0, 0, '2022-11-20 04:00:17', '2022-11-20 04:20:56'),
(26, 1, 'Realme 8 Pro', 'Realme', 'Bên cạnh Realme 8, Realme 8 Pro cũng được giới thiệu đến người dùng với điểm nhấn chính là sự xuất hiện của camera 108 MP siêu nét cùng công nghệ sạc SuperDart 50 W và đi kèm mức giá bán tầm trung rất lý tưởng.', 1000, 900, 8, 1, 1, 0, '2022-11-20 04:02:08', '2022-11-20 04:02:08'),
(27, 1, 'Realme 9i', 'Realme', 'Realme đang ngày càng cải thiện hơn rất nhiều ở các sản phẩm của họ và sản phẩm gần đây nhất đó là dòng điện thoại Realme 9i. Chiếc điện thoại này được sở hữu con chip Snapdragon 680.', 1300, 1000, 4, 1, 1, 0, '2022-11-20 04:03:33', '2022-11-20 04:03:33'),
(28, 1, 'Realme C35', 'Realme', 'Điện thoại Realme C35 thuộc phân khúc giá rẻ được nhà Realme cho ra mắt với thiết kế trẻ trung, dung lượng pin lớn cùng camera hỗ trợ nhiều tính năng .Đây sẽ là thiết bị liên lạc, giải trí và làm việc ổn định,… cho các nhu cầu sử dụng của bạn.', 600, 590, 6, 1, 1, 0, '2022-11-20 04:04:43', '2022-11-20 04:04:43'),
(29, 1, 'Realme C33', 'Realme', 'Trong tháng 10/2022, Realme C33 (3GB/32GB) là cái tên thu hút được nhiều sự chú ý trên các diễn đàn công nghệ, sở hữu trên máy là một thiết kế hợp xu hướng đi kèm với màn hình to rõ giúp bạn có thể sử dụng các tác vụ giải trí được tốt hơn.', 700, 450, 5, 1, 0, 0, '2022-11-20 04:05:41', '2022-11-20 04:05:41'),
(30, 1, 'Realme C30s', 'Realme', 'Mới đây thì chiếc điện thoại Realme C30s (2GB/32GB) cũng đã chính thức lộ diện đúng như dự kiến của người dùng với bộ thông số kỹ thuật khá ấn tượng cùng mức giá hợp lý. Điều này giúp nâng cao trải nghiệm một cách tốt hơn đối với những dòng sản phẩm thuộc phân khúc giá rẻ.', 600, 590, 5, 1, 1, 0, '2022-11-20 04:06:46', '2022-11-20 04:06:46'),
(31, 1, 'Xiaomi Redmi Note 11', 'Mi', 'Điện thoại Redmi được mệnh danh là dòng sản phẩm quốc dân ngon - bổ  - rẻ của Xiaomi và Redmi Note 11 (4GB/64GB) cũng không phải ngoại lệ, máy sở hữu một hiệu năng ổn định, màn hình 90 Hz mượt mà, cụm camera AI đến 50 MP cùng một mức giá vô cùng tốt.', 1400, 1200, 6, 0, 1, 0, '2022-11-20 04:08:38', '2022-11-20 04:08:38'),
(32, 1, 'Xiaomi 12T Pro', 'Mi', 'Cuối cùng Xiaomi 12T Pro 5G cũng đã chính thức lộ diện trên thị trường sau hàng loạt thông tin rò rỉ về thông số, đúng như dự đoán thì độ phân giải trên camera của phiên bản này được nhà sản xuất nâng cấp lên đến 200 MP', 900, 800, 4, 1, 0, 0, '2022-11-20 04:09:47', '2022-11-20 04:09:47'),
(33, 1, 'Xiaomi 12', 'Mi', 'Điện thoại Xiaomi đang dần khẳng định chỗ đứng của mình trong phân khúc flagship bằng việc ra mắt Xiaomi 12 với bộ thông số ấn tượng, máy có một thiết kế gọn gàng, hiệu năng mạnh mẽ, màn hình hiển thị chi tiết cùng khả năng chụp ảnh sắc nét nhờ trang bị ống kính đến từ Sony.', 1500, 1450, 8, 0, 1, 0, '2022-11-20 04:10:48', '2022-11-20 04:10:48'),
(34, 1, 'Xiaomi 11T Pro', 'Mi', 'Điện thoại Xiaomi 11T Pro 5G 8GB sử dụng con chip Snapdragon 888 mạnh mẽ, camera chính 108 MP, hỗ trợ sạc nhanh 120 W, màn hình rộng với tốc độ làm tươi lên đến 120 Hz, tận hưởng trải nghiệm tuyệt vời trong từng khoảnh khắc.', 1000, 900, 5, 1, 0, 0, '2022-11-20 04:11:47', '2022-11-20 04:11:47'),
(35, 1, 'Xiaomi 11 Lite', 'Mi', 'Xiaomi 11 Lite 5G NE một phiên bản có ngoại hình rất giống với Xiaomi Mi 11 Lite được ra mắt trước đây. Chiếc smartphone này của Xiaomi mang trong mình một hiệu năng ổn định, thiết kế sang trọng và màn hình lớn đáp ứng tốt các tác vụ hằng ngày của bạn một cách dễ dàng.', 1000, 900, 6, 1, 0, 0, '2022-11-20 04:13:07', '2022-11-20 04:13:07'),
(36, 1, 'Xiaomi Redmi 10C', 'Mi', 'Xiaomi Redmi 10C 64GB ra mắt với một cấu hình mạnh mẽ nhờ trang bị con chip 6 nm đến từ Qualcomm, màn hình hiển thị đẹp mắt, pin đáp ứng nhu cầu sử dụng cả ngày, hứa hẹn mang đến trải nghiệm tuyệt vời so với mức giá mà nó trang bị.', 900, 800, 0, 0, 1, 0, '2022-11-20 04:14:10', '2022-11-25 09:01:24'),
(44, 3, 'Casio LTP-VT01L', 'Casio', '• Đây là món phụ kiện thời trang lý tưởng đến từ hãng đồng hồ Casio nổi tiếng của Nhật Bản. Nổi bật với thiết kế đơn giản và tinh tế phù hợp với mọi cô nàng.\r\n\r\n• Đồng hồ Casio 34 mm nữ LTP-VT01L-5BUDF sở hữu đường kính mặt 34 mm.\r\n\r\n• Khung viền được làm từ thép không gỉ bền bỉ với thời gian, chống oxi hoá, chống chịu mọi thời tiết. Dây đeo đồng hồ được làm từ da tổng hợp, tạo cảm giác thoải mái khi đeo, ôm sát cổ tay.\r\n\r\n• Thoải mái khi rửa tay mà không lo hư hỏng vì đồng hồ nữ này có hệ số kháng nước là 1 ATM. Không nên đeo khi đi tắm, đi bơi, lặn.', 400, 380, 10, 1, 0, 0, '2022-11-22 08:55:39', '2022-11-22 09:24:53'),
(45, 3, 'Casio Unisex A168W', 'Casio', '• Đồng hồ Casio 36.3 mm Unisex A168WER-2ADF là món phụ kiện thời trang lý tưởng đến từ hãng đồng hồ Casio nổi tiếng của Nhật Bản. \r\n\r\n• Đồng hồ có đường kính mặt 38.6 x 36.3 mm.\r\n\r\n• Chất liệu của khung viền được làm từ nhựa resin và dây đeo của đồng hồ được làm từ thép không gỉ cứng cáp, bền bỉ với thời gian.\r\n\r\n• Đồng hồ unisex sở hữu độ chống nước 1 ATM: An toàn khi rửa tay. Không nên sử dụng khi đi mưa, đi tắm hay bơi, lặn.', 500, 460, 8, 0, 1, 0, '2022-11-22 08:58:02', '2022-11-22 09:25:08'),
(46, 3, 'CASIO W-96H-1BVD', 'Casio', 'Thương hiệu đồng hồ nổi tiếng đến từ Nhật Bản không ngừng cải tiến và cho ra mắt những dòng sản phẩm chất lượng phù hợp với nhiều đối tượng khách hàng. Những dòng sản phẩm nổi tiếng của Casio là: G-Shock với thiết kế mạnh mẽ cùng độ bền cao, Edifice thiết kế hiện đại cùng nhiều tính năng vượt trội, Sheen với thiết kế cổ điển và sang trọng,…', 700, 600, 5, 0, 1, 0, '2022-11-22 09:00:23', '2022-11-22 09:25:19'),
(47, 3, 'CASIO W-219H-2A', 'Casio', 'Thương hiệu đồng hồ nổi tiếng đến từ Nhật Bản không ngừng cải tiến và cho ra mắt những dòng sản phẩm chất lượng phù hợp với nhiều đối tượng khách hàng. Những dòng sản phẩm nổi tiếng của Casio là: G-Shock với thiết kế mạnh mẽ cùng độ bền cao, Edifice thiết kế hiện đại cùng nhiều tính năng vượt trội, Sheen với thiết kế cổ điển và sang trọng,…', 500, 490, 6, 1, 0, 0, '2022-11-22 09:03:05', '2022-11-22 09:25:29'),
(48, 3, 'CASIO MTS-100L-1A', 'Casio', 'Thương hiệu đồng hồ nổi tiếng đến từ Nhật Bản không ngừng cải tiến và cho ra mắt những dòng sản phẩm chất lượng phù hợp với nhiều đối tượng khách hàng. Những dòng sản phẩm nổi tiếng của Casio là: G-Shock với thiết kế mạnh mẽ cùng độ bền cao, Edifice thiết kế hiện đại cùng nhiều tính năng vượt trội, Sheen với thiết kế cổ điển và sang trọng,…', 500, 460, 9, 0, 1, 0, '2022-11-22 09:05:21', '2022-11-22 09:05:21');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `quantity`, `created_at`, `updated_at`) VALUES
(4, 2, 1, 3, '2022-11-20 01:28:29', '2022-11-20 01:28:29'),
(5, 2, 2, 0, '2022-11-20 01:28:29', '2022-11-25 21:44:12'),
(6, 2, 4, 1, '2022-11-20 01:28:29', '2022-11-20 01:28:29'),
(7, 3, 2, 2, '2022-11-20 01:32:15', '2022-11-20 01:32:15'),
(8, 3, 3, 3, '2022-11-20 01:32:15', '2022-11-20 01:32:15'),
(9, 4, 2, 3, '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(10, 4, 3, 2, '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(11, 4, 4, 1, '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(12, 4, 5, 1, '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(13, 5, 1, 3, '2022-11-20 01:37:25', '2022-11-20 03:30:47'),
(14, 5, 2, 2, '2022-11-20 01:37:25', '2022-11-20 01:37:25'),
(15, 5, 3, 1, '2022-11-20 01:37:25', '2022-11-20 01:37:25'),
(16, 6, 1, 4, '2022-11-20 01:40:35', '2022-11-20 01:40:35'),
(17, 6, 2, 1, '2022-11-20 01:40:35', '2022-11-20 01:40:35'),
(18, 7, 1, 5, '2022-11-20 01:42:14', '2022-11-20 01:42:14'),
(19, 7, 2, 4, '2022-11-20 01:42:14', '2022-11-20 01:42:14'),
(20, 7, 3, 8, '2022-11-20 01:42:14', '2022-11-20 01:42:14'),
(21, 7, 4, 2, '2022-11-20 01:42:14', '2022-11-20 01:42:14'),
(22, 8, 1, 5, '2022-11-20 01:44:39', '2022-11-20 01:44:39'),
(23, 8, 2, 2, '2022-11-20 01:44:39', '2022-11-20 01:44:39'),
(24, 8, 4, 7, '2022-11-20 01:44:39', '2022-11-20 01:44:39'),
(25, 9, 1, 2, '2022-11-20 01:46:29', '2022-11-20 01:46:29'),
(26, 9, 2, 2, '2022-11-20 01:46:29', '2022-11-20 01:46:29'),
(27, 9, 3, 2, '2022-11-20 01:46:29', '2022-11-20 01:46:29'),
(28, 9, 5, 2, '2022-11-20 01:46:29', '2022-11-20 01:46:29'),
(29, 10, 2, 3, '2022-11-20 01:47:38', '2022-11-20 01:47:38'),
(30, 10, 3, 1, '2022-11-20 01:47:38', '2022-11-20 01:47:38'),
(31, 10, 4, 2, '2022-11-20 01:47:38', '2022-11-20 01:47:38'),
(32, 11, 2, 3, '2022-11-20 01:49:40', '2022-11-20 01:49:40'),
(33, 11, 3, 3, '2022-11-20 01:49:40', '2022-11-20 01:49:40'),
(34, 11, 5, 3, '2022-11-20 01:49:40', '2022-11-20 01:49:40'),
(35, 12, 1, 8, '2022-11-20 01:51:41', '2022-11-20 01:51:41'),
(36, 12, 2, 34, '2022-11-20 01:51:41', '2022-11-20 01:51:41'),
(37, 12, 3, 0, '2022-11-20 01:51:41', '2022-11-20 01:51:41'),
(38, 13, 1, 2, '2022-11-20 01:53:08', '2022-11-20 01:53:08'),
(39, 13, 2, 2, '2022-11-20 01:53:08', '2022-11-20 01:53:08'),
(40, 13, 3, 2, '2022-11-20 01:53:08', '2022-11-20 01:53:08'),
(41, 14, 1, 0, '2022-11-20 01:54:26', '2022-11-20 03:38:57'),
(42, 14, 2, 3, '2022-11-20 01:54:26', '2022-11-20 01:54:26'),
(43, 14, 4, 4, '2022-11-20 01:54:26', '2022-11-20 01:54:26'),
(44, 15, 2, 2, '2022-11-20 03:41:57', '2022-11-20 03:41:57'),
(45, 15, 3, 2, '2022-11-20 03:41:57', '2022-11-20 03:41:57'),
(46, 15, 4, 1, '2022-11-20 03:41:57', '2022-11-20 03:41:57'),
(47, 16, 1, 2, '2022-11-20 03:42:40', '2022-11-20 03:42:40'),
(48, 16, 2, 1, '2022-11-20 03:42:40', '2022-11-20 03:42:40'),
(49, 16, 3, 2, '2022-11-20 03:42:40', '2022-11-20 03:42:40'),
(50, 17, 1, 2, '2022-11-20 03:48:45', '2022-11-20 03:48:45'),
(51, 17, 2, 2, '2022-11-20 03:48:45', '2022-11-20 03:48:45'),
(52, 18, 1, 3, '2022-11-20 03:49:51', '2022-11-20 03:49:51'),
(53, 18, 2, 1, '2022-11-20 03:49:51', '2022-11-20 03:49:51'),
(54, 18, 3, 2, '2022-11-20 03:49:51', '2022-11-20 03:49:51'),
(55, 19, 1, 2, '2022-11-20 03:51:24', '2022-11-20 03:51:24'),
(56, 19, 2, 3, '2022-11-20 03:51:24', '2022-11-20 03:51:24'),
(57, 19, 5, 1, '2022-11-20 03:51:24', '2022-11-20 03:51:24'),
(58, 20, 3, 2, '2022-11-20 03:52:22', '2022-11-20 03:52:22'),
(59, 20, 4, 1, '2022-11-20 03:52:22', '2022-11-20 03:52:22'),
(60, 20, 5, 3, '2022-11-20 03:52:22', '2022-11-20 03:52:22'),
(61, 21, 2, 1, '2022-11-20 03:53:43', '2022-11-20 03:53:43'),
(62, 21, 3, 1, '2022-11-20 03:53:43', '2022-11-20 03:53:43'),
(63, 21, 5, 1, '2022-11-20 03:53:43', '2022-11-20 03:53:43'),
(64, 22, 2, 3, '2022-11-20 03:55:42', '2022-11-20 03:55:42'),
(65, 22, 3, 1, '2022-11-20 03:55:42', '2022-11-20 03:55:42'),
(66, 23, 1, 2, '2022-11-20 03:57:16', '2022-11-20 03:57:16'),
(67, 23, 2, 1, '2022-11-20 03:57:16', '2022-11-20 03:57:16'),
(68, 24, 2, 2, '2022-11-20 03:58:29', '2022-11-20 03:58:29'),
(69, 24, 4, 3, '2022-11-20 03:58:29', '2022-11-20 03:58:29'),
(70, 25, 1, 2, '2022-11-20 04:00:17', '2022-11-20 04:00:17'),
(71, 25, 2, 2, '2022-11-20 04:00:17', '2022-11-20 04:00:17'),
(72, 25, 3, 1, '2022-11-20 04:00:17', '2022-11-20 04:00:17'),
(73, 25, 5, 1, '2022-11-20 04:00:17', '2022-11-20 04:00:17'),
(74, 26, 2, 3, '2022-11-20 04:02:08', '2022-11-20 04:02:08'),
(75, 26, 4, 3, '2022-11-20 04:02:08', '2022-11-20 04:02:08'),
(76, 26, 5, 2, '2022-11-20 04:02:08', '2022-11-20 04:02:08'),
(77, 27, 1, 2, '2022-11-20 04:03:33', '2022-11-20 04:03:33'),
(78, 27, 2, 2, '2022-11-20 04:03:33', '2022-11-20 04:03:33'),
(79, 28, 2, 2, '2022-11-20 04:04:43', '2022-11-20 04:04:43'),
(80, 28, 3, 1, '2022-11-20 04:04:43', '2022-11-20 04:04:43'),
(81, 29, 1, 2, '2022-11-20 04:05:41', '2022-11-20 04:05:41'),
(82, 29, 3, 2, '2022-11-20 04:05:41', '2022-11-20 04:05:41'),
(83, 29, 5, 1, '2022-11-20 04:05:41', '2022-11-20 04:05:41'),
(84, 30, 1, 2, '2022-11-20 04:06:46', '2022-11-20 04:06:46'),
(85, 30, 2, 1, '2022-11-20 04:06:46', '2022-11-20 04:06:46'),
(86, 30, 5, 0, '2022-11-20 04:06:46', '2022-11-25 09:01:24'),
(87, 31, 2, 1, '2022-11-20 04:08:38', '2022-11-20 04:08:38'),
(88, 31, 3, 2, '2022-11-20 04:08:38', '2022-11-20 04:08:38'),
(89, 31, 4, 2, '2022-11-20 04:08:38', '2022-11-20 04:08:38'),
(90, 32, 2, 1, '2022-11-20 04:09:47', '2022-11-20 04:09:47'),
(91, 32, 3, 1, '2022-11-20 04:09:47', '2022-11-20 04:09:47'),
(92, 32, 4, 1, '2022-11-20 04:09:47', '2022-11-20 04:09:47'),
(93, 32, 5, 1, '2022-11-20 04:09:47', '2022-11-20 04:09:47'),
(94, 33, 1, 2, '2022-11-20 04:10:48', '2022-11-20 04:10:48'),
(95, 33, 2, 2, '2022-11-20 04:10:48', '2022-11-20 04:10:48'),
(96, 33, 5, 2, '2022-11-20 04:10:48', '2022-11-20 04:10:48'),
(97, 34, 1, 0, '2022-11-20 04:11:47', '2022-11-25 10:35:08'),
(98, 34, 2, 0, '2022-11-20 04:11:47', '2022-11-25 09:06:51'),
(99, 34, 5, 0, '2022-11-20 04:11:47', '2022-11-25 21:44:12'),
(100, 35, 3, 2, '2022-11-20 04:13:07', '2022-11-20 04:13:07'),
(101, 35, 4, 0, '2022-11-20 04:13:07', '2022-11-25 11:52:39'),
(124, 44, 1, 2, '2022-11-22 08:55:39', '2022-11-22 08:55:39'),
(125, 44, 2, 2, '2022-11-22 08:55:39', '2022-11-22 08:55:39'),
(126, 44, 3, 2, '2022-11-22 08:55:39', '2022-11-22 08:55:39'),
(127, 45, 1, 2, '2022-11-22 08:58:02', '2022-11-22 08:58:02'),
(128, 45, 2, 0, '2022-11-22 08:58:02', '2022-11-25 09:06:51'),
(129, 46, 1, 2, '2022-11-22 09:00:23', '2022-11-22 09:00:23'),
(130, 46, 2, 2, '2022-11-22 09:00:23', '2022-11-22 09:00:23'),
(131, 46, 3, 0, '2022-11-22 09:00:23', '2022-11-25 10:33:16'),
(132, 47, 1, 0, '2022-11-22 09:03:05', '2022-11-25 09:01:24'),
(133, 47, 4, 0, '2022-11-22 09:03:05', '2022-11-25 09:01:24'),
(134, 47, 5, 1, '2022-11-22 09:03:05', '2022-11-25 21:51:43'),
(135, 48, 1, 2, '2022-11-22 09:05:21', '2022-11-22 09:05:21'),
(136, 48, 3, 2, '2022-11-22 09:05:21', '2022-11-22 09:05:21');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(6, 2, 'uploads/products/16689329091.jpg', '2022-11-20 01:28:29', '2022-11-20 01:28:29'),
(7, 2, 'uploads/products/16689329092.jpg', '2022-11-20 01:28:29', '2022-11-20 01:28:29'),
(8, 3, 'uploads/products/16689331351.jpg', '2022-11-20 01:32:15', '2022-11-20 01:32:15'),
(9, 3, 'uploads/products/16689331352.jpg', '2022-11-20 01:32:15', '2022-11-20 01:32:15'),
(10, 4, 'uploads/products/16689332531.jpg', '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(11, 4, 'uploads/products/16689332532.jpg', '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(12, 4, 'uploads/products/16689332533.jpg', '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(13, 4, 'uploads/products/16689332534.jpg', '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(14, 4, 'uploads/products/16689332535.jpg', '2022-11-20 01:34:13', '2022-11-20 01:34:13'),
(15, 5, 'uploads/products/16689334451.jpeg', '2022-11-20 01:37:25', '2022-11-20 01:37:25'),
(16, 5, 'uploads/products/16689334452.jpg', '2022-11-20 01:37:25', '2022-11-20 01:37:25'),
(17, 5, 'uploads/products/16689334453.jpg', '2022-11-20 01:37:25', '2022-11-20 01:37:25'),
(18, 6, 'uploads/products/16689336351.jpg', '2022-11-20 01:40:35', '2022-11-20 01:40:35'),
(19, 6, 'uploads/products/16689336352.jpg', '2022-11-20 01:40:35', '2022-11-20 01:40:35'),
(20, 6, 'uploads/products/16689336353.jpg', '2022-11-20 01:40:35', '2022-11-20 01:40:35'),
(21, 6, 'uploads/products/16689336354.jpg', '2022-11-20 01:40:35', '2022-11-20 01:40:35'),
(22, 7, 'uploads/products/16689337341.jpg', '2022-11-20 01:42:14', '2022-11-20 01:42:14'),
(23, 7, 'uploads/products/16689337342.jpg', '2022-11-20 01:42:14', '2022-11-20 01:42:14'),
(24, 7, 'uploads/products/16689337343.jpg', '2022-11-20 01:42:14', '2022-11-20 01:42:14'),
(25, 7, 'uploads/products/16689337344.jpg', '2022-11-20 01:42:14', '2022-11-20 01:42:14'),
(26, 8, 'uploads/products/16689338791.jpg', '2022-11-20 01:44:39', '2022-11-20 01:44:39'),
(27, 8, 'uploads/products/16689338792.jpg', '2022-11-20 01:44:39', '2022-11-20 01:44:39'),
(28, 8, 'uploads/products/16689338793.jpg', '2022-11-20 01:44:39', '2022-11-20 01:44:39'),
(29, 8, 'uploads/products/16689338794.jpg', '2022-11-20 01:44:39', '2022-11-20 01:44:39'),
(30, 9, 'uploads/products/16689339891.jpg', '2022-11-20 01:46:29', '2022-11-20 01:46:29'),
(31, 9, 'uploads/products/16689339892.jpg', '2022-11-20 01:46:29', '2022-11-20 01:46:29'),
(32, 9, 'uploads/products/16689339893.jpg', '2022-11-20 01:46:29', '2022-11-20 01:46:29'),
(33, 10, 'uploads/products/16689340581.jpg', '2022-11-20 01:47:38', '2022-11-20 01:47:38'),
(34, 10, 'uploads/products/16689340582.jpg', '2022-11-20 01:47:38', '2022-11-20 01:47:38'),
(35, 10, 'uploads/products/16689340583.jpg', '2022-11-20 01:47:38', '2022-11-20 01:47:38'),
(36, 11, 'uploads/products/16689341801.jpg', '2022-11-20 01:49:40', '2022-11-20 01:49:40'),
(37, 11, 'uploads/products/16689341802.jpg', '2022-11-20 01:49:40', '2022-11-20 01:49:40'),
(38, 11, 'uploads/products/16689341803.jpg', '2022-11-20 01:49:40', '2022-11-20 01:49:40'),
(39, 11, 'uploads/products/16689341804.jpg', '2022-11-20 01:49:40', '2022-11-20 01:49:40'),
(40, 12, 'uploads/products/16689343011.jpg', '2022-11-20 01:51:41', '2022-11-20 01:51:41'),
(41, 12, 'uploads/products/16689343012.jpg', '2022-11-20 01:51:41', '2022-11-20 01:51:41'),
(42, 12, 'uploads/products/16689343013.jpg', '2022-11-20 01:51:41', '2022-11-20 01:51:41'),
(43, 13, 'uploads/products/16689343881.jpg', '2022-11-20 01:53:08', '2022-11-20 01:53:08'),
(44, 13, 'uploads/products/16689343882.jpg', '2022-11-20 01:53:08', '2022-11-20 01:53:08'),
(45, 14, 'uploads/products/16689344661.jpg', '2022-11-20 01:54:26', '2022-11-20 01:54:26'),
(46, 14, 'uploads/products/16689344662.jpg', '2022-11-20 01:54:26', '2022-11-20 01:54:26'),
(47, 15, 'uploads/products/16689409171.jpg', '2022-11-20 03:41:57', '2022-11-20 03:41:57'),
(48, 15, 'uploads/products/16689409172.jpg', '2022-11-20 03:41:57', '2022-11-20 03:41:57'),
(49, 17, 'uploads/products/16689413251.jpg', '2022-11-20 03:48:45', '2022-11-20 03:48:45'),
(50, 17, 'uploads/products/16689413252.jpg', '2022-11-20 03:48:45', '2022-11-20 03:48:45'),
(51, 18, 'uploads/products/16689413911.jpg', '2022-11-20 03:49:51', '2022-11-20 03:49:51'),
(52, 19, 'uploads/products/16689414841.jpg', '2022-11-20 03:51:24', '2022-11-20 03:51:24'),
(53, 20, 'uploads/products/16689415421.jpg', '2022-11-20 03:52:22', '2022-11-20 03:52:22'),
(54, 21, 'uploads/products/16689416231.jpg', '2022-11-20 03:53:43', '2022-11-20 03:53:43'),
(55, 21, 'uploads/products/16689416232.jpg', '2022-11-20 03:53:43', '2022-11-20 03:53:43'),
(56, 22, 'uploads/products/16689417421.jpeg', '2022-11-20 03:55:42', '2022-11-20 03:55:42'),
(57, 22, 'uploads/products/16689417422.jpeg', '2022-11-20 03:55:42', '2022-11-20 03:55:42'),
(58, 23, 'uploads/products/16689418361.jpg', '2022-11-20 03:57:16', '2022-11-20 03:57:16'),
(59, 23, 'uploads/products/16689418362.jpg', '2022-11-20 03:57:16', '2022-11-20 03:57:16'),
(60, 26, 'uploads/products/16689421281.jpg', '2022-11-20 04:02:08', '2022-11-20 04:02:08'),
(61, 26, 'uploads/products/16689421282.jpg', '2022-11-20 04:02:08', '2022-11-20 04:02:08'),
(62, 26, 'uploads/products/16689421283.jpg', '2022-11-20 04:02:08', '2022-11-20 04:02:08'),
(63, 27, 'uploads/products/16689422131.jpg', '2022-11-20 04:03:33', '2022-11-20 04:03:33'),
(64, 27, 'uploads/products/16689422132.jpg', '2022-11-20 04:03:33', '2022-11-20 04:03:33'),
(65, 28, 'uploads/products/16689422831.jpg', '2022-11-20 04:04:43', '2022-11-20 04:04:43'),
(66, 28, 'uploads/products/16689422832.jpg', '2022-11-20 04:04:43', '2022-11-20 04:04:43'),
(67, 29, 'uploads/products/16689423411.jpg', '2022-11-20 04:05:41', '2022-11-20 04:05:41'),
(68, 29, 'uploads/products/16689423412.jpg', '2022-11-20 04:05:41', '2022-11-20 04:05:41'),
(69, 30, 'uploads/products/16689424061.jpg', '2022-11-20 04:06:46', '2022-11-20 04:06:46'),
(70, 30, 'uploads/products/16689424062.jpg', '2022-11-20 04:06:46', '2022-11-20 04:06:46'),
(71, 31, 'uploads/products/16689425181.jpg', '2022-11-20 04:08:38', '2022-11-20 04:08:38'),
(72, 31, 'uploads/products/16689425182.jpg', '2022-11-20 04:08:38', '2022-11-20 04:08:38'),
(73, 31, 'uploads/products/16689425183.jpeg', '2022-11-20 04:08:38', '2022-11-20 04:08:38'),
(74, 32, 'uploads/products/16689425871.jpg', '2022-11-20 04:09:47', '2022-11-20 04:09:47'),
(75, 32, 'uploads/products/16689425872.jpg', '2022-11-20 04:09:47', '2022-11-20 04:09:47'),
(76, 33, 'uploads/products/16689426481.jpg', '2022-11-20 04:10:48', '2022-11-20 04:10:48'),
(77, 33, 'uploads/products/16689426482.jpg', '2022-11-20 04:10:48', '2022-11-20 04:10:48'),
(78, 33, 'uploads/products/16689426483.jpg', '2022-11-20 04:10:48', '2022-11-20 04:10:48'),
(79, 34, 'uploads/products/16689427071.jpeg', '2022-11-20 04:11:47', '2022-11-20 04:11:47'),
(80, 35, 'uploads/products/16689427871.jpg', '2022-11-20 04:13:07', '2022-11-20 04:13:07'),
(81, 35, 'uploads/products/16689427872.jpg', '2022-11-20 04:13:07', '2022-11-20 04:13:07'),
(82, 35, 'uploads/products/16689427873.jpg', '2022-11-20 04:13:07', '2022-11-20 04:13:07'),
(83, 35, 'uploads/products/16689427874.jpg', '2022-11-20 04:13:07', '2022-11-20 04:13:07'),
(84, 35, 'uploads/products/16689427875.jpg', '2022-11-20 04:13:07', '2022-11-20 04:13:07'),
(85, 36, 'uploads/products/16689428501.jpg', '2022-11-20 04:14:10', '2022-11-20 04:14:10'),
(86, 36, 'uploads/products/16689428502.jpg', '2022-11-20 04:14:10', '2022-11-20 04:14:10'),
(87, 36, 'uploads/products/16689428503.jpg', '2022-11-20 04:14:10', '2022-11-20 04:14:10'),
(88, 24, 'uploads/products/16689430231.jpg', '2022-11-20 04:17:03', '2022-11-20 04:17:03'),
(89, 24, 'uploads/products/16689430232.jpg', '2022-11-20 04:17:03', '2022-11-20 04:17:03'),
(90, 24, 'uploads/products/16689430233.jpg', '2022-11-20 04:17:03', '2022-11-20 04:17:03'),
(91, 16, 'uploads/products/16689431341.jpg', '2022-11-20 04:18:54', '2022-11-20 04:18:54'),
(92, 16, 'uploads/products/16689431342.jpg', '2022-11-20 04:18:54', '2022-11-20 04:18:54'),
(93, 25, 'uploads/products/16689432561.jpg', '2022-11-20 04:20:56', '2022-11-20 04:20:56'),
(94, 25, 'uploads/products/16689432562.jpg', '2022-11-20 04:20:56', '2022-11-20 04:20:56'),
(124, 44, 'uploads/products/16691325393.jpg', '2022-11-22 08:55:39', '2022-11-22 08:55:39'),
(125, 44, 'uploads/products/16691325721.jpg', '2022-11-22 08:56:12', '2022-11-22 08:56:12'),
(126, 44, 'uploads/products/16691325722.jpg', '2022-11-22 08:56:12', '2022-11-22 08:56:12'),
(129, 45, 'uploads/products/16691326823.jpg', '2022-11-22 08:58:02', '2022-11-22 08:58:02'),
(130, 45, 'uploads/products/16691327051.jpg', '2022-11-22 08:58:25', '2022-11-22 08:58:25'),
(131, 45, 'uploads/products/16691327052.jpg', '2022-11-22 08:58:25', '2022-11-22 08:58:25'),
(137, 46, 'uploads/products/16691328643.jpg', '2022-11-22 09:01:04', '2022-11-22 09:01:04'),
(138, 46, 'uploads/products/16691328881.jpg', '2022-11-22 09:01:28', '2022-11-22 09:01:28'),
(139, 46, 'uploads/products/16691328882.jpg', '2022-11-22 09:01:28', '2022-11-22 09:01:28'),
(140, 47, 'uploads/products/16691329851.jpg', '2022-11-22 09:03:05', '2022-11-22 09:03:05'),
(141, 47, 'uploads/products/16691330121.jpg', '2022-11-22 09:03:32', '2022-11-22 09:03:32'),
(142, 47, 'uploads/products/16691330122.jpg', '2022-11-22 09:03:32', '2022-11-22 09:03:32'),
(143, 48, 'uploads/products/16691331211.jpg', '2022-11-22 09:05:21', '2022-11-22 09:05:21'),
(144, 48, 'uploads/products/16691331212.jpg', '2022-11-22 09:05:21', '2022-11-22 09:05:21'),
(145, 48, 'uploads/products/16691331213.jpg', '2022-11-22 09:05:21', '2022-11-22 09:05:21');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hidden,0=visible',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'World Cup 2022 bùng cháy khi sở hữu Vivo V25 Pro và những lý do bạn nên mua ngay!', 'Mùa World Cup 2022 đã cận kề, chắc hẳn nhiều bạn vẫn đang băn khoăn tìm kiếm cho mình một mẫu điện thoại có màn hình lớn sắc nét để thưởng thức những trận bóng mãn nhãn, cùng với đó là nhu cầu về một cấu hình mạnh mẽ để có thể chiến game trong phút giải lao căng thẳng.', 'uploads/slider/1668940524.png', 0, '2022-11-20 03:35:24', '2022-11-20 03:35:24'),
(2, 'Samsung Galaxy A series sale ngon đến cỡ nào trong dịp hotsale cuối tuần này', 'Galaxy A23 sở hữu vẻ ngoài năng động với thiết kế nguyên khối và mặt lưng được làm từ nhựa giúp tối ưu khối lượng máy. Điện thoại cũng được trang bị tấm nền PLS TFT LCD với kích thước 6.6 inch có độ phân giải Full HD+', 'uploads/slider/1668940574.png', 0, '2022-11-20 03:36:14', '2022-11-20 03:36:14');

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
  `role_as` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=user,1=admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_as`) VALUES
(1, 'Nguyen Hieu', 'hieu@gmail.com', NULL, '$2y$10$eDW57D86FrFPDl2tF2DdnORA6SXBTXEjQRWOUw6OIu53DUFnzlLo2', 'dstYHd6w7k3QkWTynJmsANwXaHB4FQ9IeNmy2meQUAZTK0YydXKKMX1vVAUe', '2022-11-20 01:19:56', '2022-11-20 01:19:56', 0),
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$10$l4NtEKTRyRNP8vXcMrG/ROVI.0UdJMIB4Hu6z1nVJ7rmLvgdkx1xa', NULL, '2022-11-20 01:20:12', '2022-11-25 10:58:32', 1),
(3, 'Duy Bao', 'bao@gmail.com', NULL, '$2y$10$F/EfFTCl7cJL5bnyJTC9jemPJxtT3PViAhh/HPZ79r/Vo2NVHXzP.', NULL, '2022-11-25 08:58:01', '2022-11-25 08:58:01', 0),
(4, 'Cong Toan', 'toan@gmail.com', NULL, '$2y$10$kf9pnMcIxpLBGnAon9d98OcUztr7ZY/rmEUmRX/hEttki5LMiHfiu', NULL, '2022-11-25 08:58:52', '2022-11-25 08:58:52', 0),
(5, 'Thien', 'hieuvn201103it@gmail.com', NULL, '$2y$10$X5GGcFl3Yndjw/iC.hTtz.OJIovUdp8FZbe3RY7vBc40s.s6KFm.m', NULL, '2022-11-25 21:41:04', '2022-11-25 21:41:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `phone`, `pin_code`, `address`, `created_at`, `updated_at`) VALUES
(1, 2, '0388335845', '123123', 'Hoa Vang, Da Nang', '2022-11-25 10:22:06', '2022-11-25 10:22:06'),
(2, 1, '0388335845', '123123', 'Hoa Vang, Da Nang', '2022-11-25 10:27:04', '2022-11-25 10:27:04'),
(3, 3, '0904041765', '312323', 'Ngu Hanh Son, Da Nang', '2022-11-25 10:28:00', '2022-11-25 10:28:00'),
(4, 4, '0703046745', '657567', 'Thanh Khe, Da Nang', '2022-11-25 10:28:47', '2022-11-25 10:28:47'),
(5, 5, '0904041765', '312323', 'Hoa Khanh,  Da Nang', '2022-11-25 21:43:55', '2022-11-25 21:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
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
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_colors_product_id_foreign` (`product_id`),
  ADD KEY `product_colors_color_id_foreign` (`color_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

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
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_details_user_id_unique` (`user_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD CONSTRAINT `product_colors_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_colors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
