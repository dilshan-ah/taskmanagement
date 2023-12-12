-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 12:23 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`file_name`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `task_id`, `file_name`, `created_at`, `updated_at`) VALUES
(22, 3, '[\"license-67314614-3917376.pdf\",\"Esahara Dilshan_CV.pdf\",\"UAPAdmitCard_126_5_230927305 (1).pdf\",\"UAPAdmitCard_126_5_230927305.pdf\",\"UAPAdmitCard_126_5_230926464 (1).pdf\"]', '2023-12-12 03:25:30', '2023-12-12 03:25:30'),
(23, 3, '[\"license-67314614-3917376.pdf\"]', '2023-12-12 03:25:43', '2023-12-12 03:25:43'),
(24, 3, '[\"license-67314614-3917376.pdf\"]', '2023-12-12 03:25:49', '2023-12-12 03:25:49'),
(25, 2, '[\"Esahara Dilshan_CV.pdf\"]', '2023-12-12 03:27:33', '2023-12-12 03:27:33'),
(26, 2, '[\"license-67314614-3917376.pdf\"]', '2023-12-12 03:30:05', '2023-12-12 03:30:05'),
(27, 3, '[\"license-67314614-3917376.pdf\",\"Esahara Dilshan_CV.pdf\",\"UAPAdmitCard_126_5_230927305 (1).pdf\",\"UAPAdmitCard_126_5_230927305.pdf\",\"UAPAdmitCard_126_5_230926464 (1).pdf\"]', '2023-12-12 03:35:11', '2023-12-12 03:35:11'),
(28, 3, '[\"license-67314614-3917376.pdf\"]', '2023-12-12 03:35:34', '2023-12-12 03:35:34'),
(29, 3, '[\"license-67314614-3917376.pdf\",\"Esahara Dilshan_CV.pdf\"]', '2023-12-12 03:50:30', '2023-12-12 03:50:30'),
(30, 5, '[\"license-67314614-3917376.pdf\",\"Esahara Dilshan_CV.pdf\"]', '2023-12-12 03:52:20', '2023-12-12 03:52:20'),
(31, 3, '[\"license-67314614-3917376.pdf\"]', '2023-12-12 03:52:31', '2023-12-12 03:52:31'),
(32, 3, '[\"license-67314614-3917376.pdf\"]', '2023-12-12 04:04:28', '2023-12-12 04:04:28'),
(33, 8, '[\"license-67314614-3917376.pdf\",\"Esahara Dilshan_CV.pdf\",\"UAPAdmitCard_126_5_230927305 (1).pdf\",\"UAPAdmitCard_126_5_230927305.pdf\",\"UAPAdmitCard_126_5_230926464 (1).pdf\"]', '2023-12-12 04:08:40', '2023-12-12 04:08:40'),
(34, 8, '[\"license-67314614-3917376.pdf\",\"Esahara Dilshan_CV.pdf\",\"UAPAdmitCard_126_5_230927305 (1).pdf\",\"UAPAdmitCard_126_5_230927305.pdf\",\"Book 09-09-2023-2 (1).pdf\",\"Book 09-09-2023-2.pdf\"]', '2023-12-12 04:08:50', '2023-12-12 04:08:50'),
(35, 3, '[\"Patient questionnaire (1).pdf\",\"Web development path.pdf\",\"telephone.pdf\",\"Class_6.pdf\",\"Class_5.pdf\"]', '2023-12-12 04:11:12', '2023-12-12 04:11:12'),
(36, 2, '[\"license-67314614-3917376.pdf\"]', '2023-12-12 04:16:00', '2023-12-12 04:16:00'),
(37, 5, '[\"license-67314614-3917376.pdf\",\"Esahara Dilshan_CV.pdf\",\"UAPAdmitCard_126_5_230927305 (1).pdf\",\"UAPAdmitCard_126_5_230927305.pdf\",\"UAPAdmitCard_126_5_230926464 (1).pdf\"]', '2023-12-12 04:23:45', '2023-12-12 04:23:45'),
(38, 3, '[\"license-67314614-3917376.pdf\"]', '2023-12-12 04:27:36', '2023-12-12 04:27:36'),
(39, 6, '[\"Esahara Dilshan_CV.pdf\"]', '2023-12-12 04:28:42', '2023-12-12 04:28:42'),
(40, 2, '[\"license-67314614-3917376.pdf\",\"Esahara Dilshan_CV.pdf\"]', '2023-12-12 04:30:41', '2023-12-12 04:30:41'),
(41, 9, '[\"What_Happens_Osteoscan.pdf\",\"Book 09-09-2023-2 (1).pdf\"]', '2023-12-12 04:31:41', '2023-12-12 04:31:41'),
(42, 5, '[\"telephone - Copy.pdf\"]', '2023-12-12 04:32:53', '2023-12-12 04:32:53'),
(43, 6, '[\"license-67314614-3917376.pdf\",\"Esahara Dilshan_CV.pdf\"]', '2023-12-12 04:33:36', '2023-12-12 04:33:36'),
(44, 11, '[\"license-67314614-3917376.pdf\"]', '2023-12-12 04:49:38', '2023-12-12 04:49:38'),
(45, 11, '[\"license-67314614-3917376.pdf\",\"Esahara Dilshan_CV.pdf\",\"UAPAdmitCard_126_5_230927305 (1).pdf\",\"UAPAdmitCard_126_5_230927305.pdf\",\"UAPAdmitCard_126_5_230926464 (1).pdf\"]', '2023-12-12 04:49:53', '2023-12-12 04:49:53'),
(46, 11, '[\"Esahara Dilshan_CV.pdf\"]', '2023-12-12 04:51:12', '2023-12-12 04:51:12'),
(47, 3, '[\"Esahara Dilshan_CV.pdf\"]', '2023-12-12 04:53:08', '2023-12-12 04:53:08'),
(48, 2, '[\"license-67314614-3917376.pdf\"]', '2023-12-12 04:53:33', '2023-12-12 04:53:33'),
(49, 2, '[\"license-67314614-3917376.pdf\"]', '2023-12-12 04:55:13', '2023-12-12 04:55:13'),
(50, 6, '[\"license-67314614-3917376.pdf\"]', '2023-12-12 04:55:37', '2023-12-12 04:55:37'),
(51, 3, '[\"license-67314614-3917376.pdf\"]', '2023-12-12 05:02:20', '2023-12-12 05:02:20');

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
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(22, '2023_12_11_171229_create_todos_table', 1),
(23, '2023_12_11_201415_create_attachments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('Incomplete','To Do','Doing','Under Review','Completed','Over Due') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Completed', '2023-12-12 02:01:02', '2023-12-12 02:01:02'),
(2, 'To Do', '2023-12-12 02:01:02', '2023-12-12 02:01:02'),
(3, 'Incomplete', '2023-12-12 02:01:02', '2023-12-12 02:01:02'),
(4, 'Completed', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(5, 'To Do', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(6, 'Doing', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(7, 'Completed', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(8, 'Doing', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(9, 'To Do', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(10, 'To Do', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(11, 'Incomplete', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(12, 'Doing', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(13, 'Doing', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(14, 'Completed', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(15, 'Doing', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(16, 'To Do', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(17, 'Incomplete', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(18, 'Over Due', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(19, 'Over Due', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(20, 'Over Due', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(21, 'To Do', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(22, 'Doing', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(23, 'Over Due', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(24, 'To Do', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(25, 'Incomplete', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(26, 'To Do', '2023-12-12 02:01:03', '2023-12-12 02:01:03'),
(27, 'Completed', '2023-12-12 02:01:04', '2023-12-12 02:01:04'),
(28, 'Doing', '2023-12-12 02:01:04', '2023-12-12 02:01:04'),
(29, 'To Do', '2023-12-12 02:01:04', '2023-12-12 02:01:04'),
(30, 'Completed', '2023-12-12 02:01:04', '2023-12-12 02:01:04'),
(31, 'Doing', '2023-12-12 02:01:04', '2023-12-12 02:01:04'),
(32, 'Under Review', '2023-12-12 02:01:04', '2023-12-12 02:01:04'),
(33, 'To Do', '2023-12-12 02:01:04', '2023-12-12 02:01:04'),
(34, 'Doing', '2023-12-12 02:01:04', '2023-12-12 02:01:04'),
(35, 'Completed', '2023-12-12 02:01:04', '2023-12-12 02:01:04'),
(36, 'Completed', '2023-12-12 02:01:04', '2023-12-12 02:01:04'),
(37, 'To Do', '2023-12-12 02:01:04', '2023-12-12 02:01:04'),
(38, 'To Do', '2023-12-12 02:01:04', '2023-12-12 02:01:04'),
(39, 'Under Review', '2023-12-12 02:01:04', '2023-12-12 02:01:04'),
(40, 'To Do', '2023-12-12 02:01:04', '2023-12-12 02:01:04');

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachments_task_id_foreign` (`task_id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
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
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `todos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
