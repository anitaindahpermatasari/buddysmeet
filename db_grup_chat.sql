-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2022 at 09:41 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_grup_chat`
--

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
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `code`, `admin_id`, `created_at`, `updated_at`) VALUES
(2, 'RPL', 'Y4e8kgC', 1, '2022-01-22 18:43:07', '2022-01-22 21:10:49'),
(5, 'Mobile Legends: Bang Bang', 'kqRiMYr', 3, '2022-02-04 23:52:12', '2022-02-05 00:53:14'),
(6, 'Arena of Valor (AOV)', 'aTh96Ds', 3, '2022-02-04 23:53:09', '2022-02-04 23:53:09'),
(8, 'PUBG', 'GLsJE9r', 3, '2022-02-04 23:54:00', '2022-02-04 23:54:00'),
(9, 'Fortnite', 'V9jCQDw', 3, '2022-02-04 23:54:39', '2022-02-04 23:54:39'),
(10, 'Dota 2', '9REJiBb', 3, '2022-02-04 23:55:46', '2022-02-04 23:55:46'),
(11, 'Counter-Strike: Global Offensive (CS:GO)', 'fD2bHn9', 3, '2022-02-04 23:56:10', '2022-02-04 23:56:10'),
(13, 'Point Blank', 'PpSJ7Vg', 4, '2022-02-05 00:05:37', '2022-02-05 00:05:37'),
(14, 'Clash Royal', 'Wg3mnBx', 4, '2022-02-05 00:32:40', '2022-02-05 00:32:40'),
(15, 'Heartstone', 'xAPwpbh', 4, '2022-02-05 00:32:54', '2022-02-05 00:32:54'),
(16, 'League of Legends', 'FrAkB6c', 4, '2022-02-05 00:33:09', '2022-02-05 00:33:09'),
(17, 'Starcraft', 'cUhCbOJ', 4, '2022-02-05 00:33:22', '2022-02-05 00:33:22');

-- --------------------------------------------------------

--
-- Table structure for table `group_participants`
--

CREATE TABLE `group_participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_participants`
--

INSERT INTO `group_participants` (`id`, `group_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 2, 1, NULL, NULL),
(5, 2, 2, NULL, NULL),
(9, 5, 3, NULL, NULL),
(10, 6, 3, NULL, NULL),
(12, 8, 3, NULL, NULL),
(13, 9, 3, NULL, NULL),
(14, 10, 3, NULL, NULL),
(15, 11, 3, NULL, NULL),
(17, 13, 4, NULL, NULL),
(18, 14, 4, NULL, NULL),
(19, 15, 4, NULL, NULL),
(20, 16, 4, NULL, NULL),
(21, 17, 4, NULL, NULL),
(23, 5, 4, NULL, NULL),
(24, 5, 6, NULL, NULL),
(25, 5, 7, NULL, NULL),
(26, 5, 5, NULL, NULL),
(27, 5, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `group_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'test', '2022-01-22 18:29:11', '2022-01-22 18:29:11'),
(2, 1, 1, 'sadsad', '2022-01-22 18:29:25', '2022-01-22 18:29:25'),
(3, 1, 1, 'test', '2022-01-22 18:30:40', '2022-01-22 18:30:40'),
(4, 1, 1, 'test2', '2022-01-22 18:31:31', '2022-01-22 18:31:31'),
(5, 2, 1, 'oii rezz', '2022-01-22 18:34:17', '2022-01-22 18:34:17'),
(6, 2, 1, 'otw boy', '2022-01-22 18:42:10', '2022-01-22 18:42:10'),
(7, 2, 2, 'oi rezz tugas rpl udah lom...', '2022-01-22 18:43:43', '2022-01-22 18:43:43'),
(8, 1, 2, 'belum uy', '2022-01-22 19:10:18', '2022-01-22 19:10:18'),
(9, 1, 2, 'kamu udah tah?', '2022-01-22 21:10:49', '2022-01-22 21:10:49'),
(10, 3, 5, 'Haii Guys ini adalah Group Forum Diskusi Mobile Legends: Bang Bang\nKenalin nama aku Anita Indah Permata Sari selaku admin di group ini', '2022-02-05 00:39:48', '2022-02-05 00:39:48'),
(11, 3, 5, 'Hai guys ini adalah group forum diskusi Mobile Legends: Bang Bang\nKenalin namaku Anita Indah Permata Sari selaku Admin di group ini', '2022-02-05 00:40:51', '2022-02-05 00:40:51'),
(12, 4, 5, 'Hai kenalin nama saya Didi Royadi dari Indramayu', '2022-02-05 00:46:13', '2022-02-05 00:46:13'),
(13, 6, 5, 'Hello guys namaku Nindy salam kenal yaa', '2022-02-05 00:47:53', '2022-02-05 00:47:53'),
(14, 7, 5, 'Salam kenal semua, nama aku Adelia dari Cirebon', '2022-02-05 00:49:29', '2022-02-05 00:49:29'),
(15, 5, 5, 'Hai teman-teman nama saya Ryan', '2022-02-05 00:50:19', '2022-02-05 00:50:19'),
(16, 5, 5, 'Saya lagi nyari team buat lomba e-sport\nAda yang mau join???', '2022-02-05 00:51:05', '2022-02-05 00:51:05'),
(17, 8, 5, 'Hai saya Joshua\nSalken ya guys', '2022-02-05 00:52:09', '2022-02-05 00:52:09'),
(18, 8, 5, 'Mau join team donk boleh ga?', '2022-02-05 00:52:31', '2022-02-05 00:52:31'),
(19, 3, 5, 'Wuih lomba e-sport dimana nih??', '2022-02-05 00:53:14', '2022-02-05 00:53:14');

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
(4, '2021_04_04_134613_create_groups_table', 1),
(5, '2021_04_04_154352_create_group_participants_table', 1),
(6, '2021_04_06_120621_create_messages_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'arez', 'arissetiana93@gmail.com', NULL, '$2y$10$YJabrj5JcJDRmk0rE68Z2.ER20grxBu4amojY8/jF.yhHy6yfi42C', NULL, '2022-01-22 18:23:41', '2022-01-22 18:23:41'),
(2, 'fajar', 'areuokayyy@gmail.com', NULL, '$2y$10$pVGNgeBIKc4lCRpzLcyiM.X16xcBJmNIY3Ny8/LYbLjOkvrNplxg2', NULL, '2022-01-22 18:33:55', '2022-01-22 18:33:55'),
(3, 'Anita Indah Permata Sari', 'nengitaanaknyaii25@gmail.com', NULL, '$2y$10$IFpFSO04MLV/DOoR.9krMe08SJ47yHH/sVkgk01d077OgWnyEnqoa', '4DFDMd2sqr3Es584hS8tAjwZFnVW8yih1QTdDzOSRT3y0TRQBRlfljZpfDHv', '2022-01-25 21:53:52', '2022-01-25 21:53:52'),
(4, 'Didi Royadi', 'didiroyadi123@gmail.com', NULL, '$2y$10$pgQ5gr6i2lhZzaJKOFVyYeRaTlOvN5Ib7Fl.K8uvVbNVCP/2zl9rG', NULL, '2022-02-05 00:04:34', '2022-02-05 00:04:34'),
(5, 'Ryan Nathanael', 'ryannathanael123@gmail.com', NULL, '$2y$10$i4neFyVRLuk4uu6xRu9m0O.SKFD3PP4KlUshD48J/sfMkDqAejmfO', NULL, '2022-02-05 00:43:01', '2022-02-05 00:43:01'),
(6, 'Putri Lestari W', 'nindy123@gmail.com', NULL, '$2y$10$yu2GQlrwr8EfsVgaAZ.j6OQC2xaBQQcKyEmhFKHuXsin3Fd7x9qfi', NULL, '2022-02-05 00:44:21', '2022-02-05 00:44:21'),
(7, 'Adelia Oktaviani', 'adeliaoktaviani123@gmail.com', NULL, '$2y$10$NTewiLhPULxDsbVnQNV82eLmn/IbEHHfOKW4m6r2ziD2aREd1Xy86', NULL, '2022-02-05 00:44:56', '2022-02-05 00:44:56'),
(8, 'Joshua', 'joshua123@gmail.com', NULL, '$2y$10$dGo74oASsvToepN.3ZPGzeSbmWAyERjfHJu2qq74PLvfQsRwSWz/O', NULL, '2022-02-05 00:45:24', '2022-02-05 00:45:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_code_unique` (`code`),
  ADD KEY `groups_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `group_participants`
--
ALTER TABLE `group_participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_participants_group_id_user_id_unique` (`group_id`,`user_id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `group_participants`
--
ALTER TABLE `group_participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
