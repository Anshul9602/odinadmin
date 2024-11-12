-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2024 at 10:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adminodin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `role` text DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `pass`, `role`, `created_at`, `updated_at`, `status`) VALUES
(1, 'admin@gmail.com', '$2y$10$QSlQfRDVCk4wEFJrtHNBdOsPsSWXBXazHkwe7YHUCGHRkn5MxJFje', NULL, '2024-05-05 10:50:26', '2024-05-05 10:50:26', 'Active'),
(2, 'test@test.com', '', 'admin', '2024-09-23 17:52:47', '2024-09-23 17:52:47', 'Active'),
(3, 'test@test.com', '', 'admin', '2024-09-23 17:53:12', '2024-09-23 17:53:12', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `basic_table`
--

CREATE TABLE `basic_table` (
  `id` int(5) UNSIGNED NOT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `h_mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `hiw` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `basic_table`
--

INSERT INTO `basic_table` (`id`, `whatsapp`, `mobile`, `h_mobile`, `email`, `hiw`, `created_at`, `updated_at`) VALUES
(1, '+919909982425', '+919909982425 ', '+917600004297', 'enquiry@masterofjobs.in', 'dgdsghjgfhjklhgf', '12-02-2024', '12-02-2024');

-- --------------------------------------------------------

--
-- Table structure for table `job_listings`
--

CREATE TABLE `job_listings` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotelier_id` int(10) UNSIGNED NOT NULL,
  `job_type` varchar(255) DEFAULT NULL,
  `start_time` text DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `job_title` text DEFAULT NULL,
  `job_description` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `sub_department` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `off_salery` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `number_employees` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `job_listings`
--

INSERT INTO `job_listings` (`id`, `hotelier_id`, `job_type`, `start_time`, `end_time`, `job_title`, `job_description`, `department`, `sub_department`, `education`, `off_salery`, `experience`, `number_employees`, `created_at`, `updated_at`, `status`) VALUES
(33, 128, 'Full Time', '', '', '', 'need a manager', 'Kitchen,Front Office,Bar/Restaurant,Spa/Health club', 'juice maker, Ganral Manager, Bar Manager, Cashier, Masseuse', '12th', '20,000 - 30,000', 'fresher', '5', '2024-06-26 14:40:38', '2024-06-26 14:40:38', '1');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-04-12-061248', 'App\\Database\\Migrations\\CreateUsersTable', 'default', 'App', 1714847909, 1),
(2, '2024-04-12-061258', 'App\\Database\\Migrations\\CreateUserProfilesTable', 'default', 'App', 1714847909, 1),
(3, '2024-04-12-063832', 'App\\Database\\Migrations\\CreateHoteliersTable', 'default', 'App', 1714847909, 1),
(4, '2024-04-12-064812', 'App\\Database\\Migrations\\CreateJobListingsTable', 'default', 'App', 1714847909, 1),
(5, '2024-04-12-064848', 'App\\Database\\Migrations\\CreateJobApplicationsTable', 'default', 'App', 1714847909, 1),
(6, '2024-04-12-064913', 'App\\Database\\Migrations\\CreateMessagesTable', 'default', 'App', 1714847909, 1),
(7, '2024-04-17-111501', 'App\\Database\\Migrations\\CreateWorkingExperiencesTable', 'default', 'App', 1714847909, 1),
(8, '2024-04-18-115503', 'App\\Database\\Migrations\\CreateJobSavesTable', 'default', 'App', 1714847909, 1),
(9, '2024-04-26-171510', 'App\\Database\\Migrations\\CreateAdminTable', 'default', 'App', 1714847909, 1),
(10, '2024-04-29-094636', 'App\\Database\\Migrations\\CreateUsersEducationTable', 'default', 'App', 1714847909, 1),
(11, '2024-05-02-070953', 'App\\Database\\Migrations\\CreateUserProfileImage', 'default', 'App', 1714847909, 1),
(12, '2024-05-03-064516', 'App\\Database\\Migrations\\CreateBasicTable', 'default', 'App', 1714847909, 1),
(13, '2024-05-03-121837', 'App\\Database\\Migrations\\CreateResumes', 'default', 'App', 1714847909, 1),
(14, '2024-05-04-195609', 'App\\Database\\Migrations\\CreateJobPref', 'default', 'App', 1714852757, 2),
(15, '2024-05-04-203143', 'App\\Database\\Migrations\\CreateJobPrefUser', 'default', 'App', 1714856029, 3);

-- --------------------------------------------------------

--
-- Table structure for table `resumes`
--

CREATE TABLE `resumes` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `Resume` varchar(255) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `resumes`
--

INSERT INTO `resumes` (`id`, `user_id`, `Resume`, `created_at`) VALUES
(26, 130, '/uploads/130-resume/1719417174_d44070832aad20a205e0.pdf', '2024-06-26 21:22:54'),
(28, 132, '/uploads/132-resume/1719472170_1be42ff6f37c52b3893c.pdf', '2024-06-27 12:39:30'),
(29, 129, '/uploads/129-resume/1719489112_196de51c83e64197bc71.pdf', '2024-06-27 17:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `last_active` varchar(255) DEFAULT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `ref_id` int(11) DEFAULT NULL,
  `work_ex` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `mobile_number`, `created_at`, `updated_at`, `last_active`, `points`, `ref_id`, `work_ex`, `status`) VALUES
(128, '3030303030', '2024-06-26 14:37:10', '2024-06-26 14:37:10', '2024-06-26 14:37:10', 0, NULL, 'hotel', 'Enable'),
(129, '7600004297', '2024-06-26 21:15:55', '09-23-2024 02:55 PM', '2024-06-26 21:15:55', 0, NULL, 'experienced', 'Enable'),
(130, '7863086650', '2024-06-26 21:17:05', '2024-06-26 21:17:05', '2024-06-26 21:17:05', 0, NULL, 'fresher', 'Enable'),
(132, '9876543210', '2024-06-27 11:35:45', '09-23-2024 11:20 PM', '2024-06-27 11:35:45', 0, NULL, 'experienced', 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog`
--

CREATE TABLE `user_blog` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `author` text NOT NULL,
  `meta_title` text NOT NULL,
  `meta_des` text NOT NULL,
  `meta_tag` text NOT NULL,
  `content` text NOT NULL,
  `status` text NOT NULL,
  `created_at` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_blog`
--

INSERT INTO `user_blog` (`id`, `name`, `author`, `meta_title`, `meta_des`, `meta_tag`, `content`, `status`, `created_at`) VALUES
(1, 'anshul', 'Anant-Premium Petro Products', 'Unlocking the Potential of Bitumen Emulsion: A Comprehensive Guide', 'vsxbcvn', 'ncgfh', 'hcxgdhmg', 'Enable', '11-12-2024 11:54 AM'),
(2, 'anshul', 'Anant-Premium Petro Products', 'Unlocking the Potential of Bitumen Emulsion: A Comprehensive Guide', 'vsxbcvn', 'ncgfh', 'hcxgdhmg', 'Enable', '11-12-2024 11:34 AM'),
(3, 'anshul', 'Anant-Premium Petro Products', 'Unlocking the Potential of Bitumen Emulsion: A Comprehensive Guide', 'cghjb', 'vcxxcvbnhjmk', 'nbvcbnmk,l', 'Enable', '11-12-2024 11:37 AM'),
(4, 'anshul kumar', 'Anant-Premium Petro Products', 'fxzdgsc', 'xfzb', 'cbxz', 'bcxnv', 'Enable', '11-12-2024 11:40 AM'),
(5, 'Jagdish', 'fgd', 'dsghf', 'jjcg', 'fdhjgh', 'fhgjm', 'Enable', '11-12-2024 11:41 AM'),
(6, 'anshul', 'Anant-Premium Petro Products', 'Unlocking the Potential of Bitumen Emulsion: A Comprehensive Guide', 'jjcg', 'fdhjgh', 'dghfhn', 'Enable', '11-12-2024 11:43 AM');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `pin_code` text DEFAULT NULL,
  `dob` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `name`, `last_name`, `gender`, `email`, `role`, `address`, `pin_code`, `dob`, `state`, `city`, `country`, `created_at`, `updated_at`) VALUES
(91, 129, 'Jagdish', 'Jat', 'male', 'info.jagdishchaudhary@gmail.com', 'Job Seeker', 'Rajkot', '360007', '1973-01-14', 'Gujarat', 'RAJKOT', 'India', '06-26-2024 09:15 PM', '10-20-2024 04:55 PM'),
(92, 130, 'Jayesh', 'Narola', 'male', 'jayeshnarola.nimrajkot@gmail.com', 'Job Seeker', 'Jay Chamunda Krupa 3 Shyamnagar street behind Bileshwar Temple Gandhigram Rajkot ', '360007', '1986-08-07', 'Gujarat', 'RAJKOT', 'India', '06-26-2024 09:17 PM', '06-26-2024 09:17 PM'),
(93, 132, 'Rohit', 'Kumar', 'male', 'Treesddd@gmail.com', 'Job Seeker', 'Tr, cf, fdrtewr', '302022', '2020-06-10', 'Rajasthan', 'JAIPUR', 'India', '06-27-2024 11:35 AM', '06-27-2024 12:41 PM');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_images`
--

CREATE TABLE `user_profile_images` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_profile_images`
--

INSERT INTO `user_profile_images` (`id`, `user_id`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 1, '/uploads/profile/1-img/1731403439_e2ce1df15e074c7b6e17.jpg', '2024-11-12 14:53:59', '2024-11-12 14:53:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_table`
--
ALTER TABLE `basic_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_listings`
--
ALTER TABLE `job_listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_listings_hotelier_id_foreign` (`hotelier_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resumes`
--
ALTER TABLE `resumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resumes_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_blog`
--
ALTER TABLE `user_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_profile_images`
--
ALTER TABLE `user_profile_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `basic_table`
--
ALTER TABLE `basic_table`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_listings`
--
ALTER TABLE `job_listings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `resumes`
--
ALTER TABLE `resumes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `user_blog`
--
ALTER TABLE `user_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `user_profile_images`
--
ALTER TABLE `user_profile_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job_listings`
--
ALTER TABLE `job_listings`
  ADD CONSTRAINT `job_listings_hotelier_id_foreign` FOREIGN KEY (`hotelier_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resumes`
--
ALTER TABLE `resumes`
  ADD CONSTRAINT `resumes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `user_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
