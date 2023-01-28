-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2022 at 09:17 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `created_at`, `updated_at`) VALUES
(7, 'Pemerintah Desa Tanjung Eran', '082289299678', 'Jln. Mandi Angin, Desa Tanjung Eran, Kec. Pino', 'mandiangin.tepino@gmail.com', '2022-07-18 20:42:16', '2022-07-18 20:42:16'),
(8, 'Pemerintah Desa Tanah Rekah Kec. Kota Mukomuko', '082324856624', 'Jln. Lokan Desa Tanah Rekah. Kecamatan Kota Mukomuko. Kabupaten Mukomuko', 'Tanahrekah1234@gmail.com', '2022-07-18 20:58:52', '2022-07-18 21:03:34'),
(9, 'Pemerintah Desa Pondok Batu Kec. Kota Mukomuko', '082269993730', 'Jln.R.A.Kartini Desa Pondok Batu Kecamatan Kota Mukomuko', 'Batupondok241@gmail.com', '2022-07-18 21:01:24', '2022-07-18 21:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `customer_id`, `status`, `note`, `total`, `created_at`, `updated_at`) VALUES
(16, 7, 0, NULL, 2500000, '2022-07-18 20:43:39', '2022-07-18 20:43:46'),
(19, 9, 0, NULL, 2500000, '2022-07-18 21:26:59', '2022-07-18 21:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_id`, `product_id`, `price`, `qty`, `created_at`, `updated_at`) VALUES
(12, 16, 6, 2500000, 1, '2022-07-18 20:43:46', '2022-07-18 20:43:46'),
(17, 19, 12, 1000000, 1, '2022-07-18 21:27:11', '2022-07-18 21:27:11'),
(18, 19, 13, 250000, 1, '2022-07-18 21:27:30', '2022-07-18 21:27:30'),
(19, 19, 8, 250000, 1, '2022-07-18 21:27:54', '2022-07-18 21:27:54'),
(20, 19, 14, 800000, 1, '2022-07-18 21:29:41', '2022-07-18 21:29:41'),
(21, 19, 15, 200000, 1, '2022-07-18 21:31:56', '2022-07-18 21:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_31_032147_create_customers_table', 1),
(4, '2018_10_31_032158_create_products_table', 1),
(5, '2018_10_31_032210_create_invoices_table', 1),
(6, '2018_10_31_032218_create_invoice_details_table', 1),
(7, '2018_10_31_040338_add_relationships_to_invoices_table', 1),
(8, '2018_10_31_041544_add_relationships_to_invoice_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(5, 'Buku Tamu', 'http://bukutamu.desatulungbalak.id', 150000, 500, '2022-07-18 18:57:52', '2022-07-18 18:57:52'),
(6, 'Maintenance Opensid 1 Thn', 'Maintenance Opensid 1 Thn', 2500000, 200, '2022-07-18 18:59:17', '2022-07-18 20:43:13'),
(7, 'Maintenance 1 Tahun', 'Miantenance', 800000, 200, '2022-07-18 20:15:43', '2022-07-18 20:15:43'),
(8, 'Tema Batuah', 'Tema Pro Opensid Umum & Premium', 250000, 2000, '2022-07-18 20:16:28', '2022-07-18 20:16:28'),
(9, 'Tema Sijalu', 'Tema OpenSID Umum dan Premium', 250000, 2000, '2022-07-18 20:17:07', '2022-07-18 20:17:07'),
(10, 'Absensi Radius', 'Absensi Radium untuk All in One', 300000, 50, '2022-07-18 20:18:14', '2022-07-18 20:18:14'),
(11, 'Hosting Unlimited 1 Tahun', 'Hosting Unlimited 1 Tahun', 500000, 3000, '2022-07-18 21:21:57', '2022-07-18 21:24:04'),
(12, 'Hosting Unlimited 2 Thn', 'Hosting Unlimited 2 Thn', 1000000, 1000, '2022-07-18 21:24:33', '2022-07-18 21:24:33'),
(13, 'domain', 'Domain', 250000, 3000, '2022-07-18 21:25:58', '2022-07-18 21:25:58'),
(14, 'Install & Update OpenSID 1 Tahun', 'Install & Update OpenSID 1 Tahun', 800000, 2000, '2022-07-18 21:29:27', '2022-07-18 21:29:27'),
(15, 'Jasa Input Data Kependudukan', 'Jasa Input Data Kependudukan', 200000, 2000, '2022-07-18 21:30:57', '2022-07-18 21:30:57'),
(16, 'Jasa Pendaftaran domain desa.id', 'Jasa Pendaftaran domain desa.id', 350000, 2000, '2022-07-18 21:31:32', '2022-07-18 21:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rohman', 'admin@admin.com', NULL, '21232f297a57a5a743894a0e4a801fc3', 'tioOM5Bcb5mUo2PEqpc5NQvNFHuJ7MTuo1PLmMJaN34bi3bXFFptZbpGvQX0', NULL, NULL),
(2, 'Rokhmanudin', 'rohmanudin05@gmail.com', NULL, '0fcb94bf66b1a38cfe3fc77557f3ca0c', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_details_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_details_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `invoice_details_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
