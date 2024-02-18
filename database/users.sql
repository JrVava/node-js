-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2024 at 05:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node_js`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `password` varchar(70) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `username` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `role_exp` text DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `registration_number` varchar(255) DEFAULT NULL,
  `expected_salary` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `username`, `gender`, `phone_number`, `nationality`, `role_exp`, `area`, `role`, `company_name`, `registration_number`, `expected_salary`) VALUES
(1, 'ashish', 'admin@gamil.com', '$2b$10$UdnwQvDhUKcnkIfbZc9Fceq1KPqTkQ7V60Q/W.9QLqWpOH0WYbaZu', '2024-02-07 22:43:37', '2024-02-07 22:43:37', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(3, 'ashish', 'ashish@gamil.com', '$2b$10$LpNn5jJa415b9PRA7NuQGeAu9dIN/jj1TAdILSy750Qm39lS.hdfG', '2024-02-07 23:30:53', '2024-02-07 23:30:53', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(4, 'ashish', 'ashish1@gamil.com', '$2b$10$jbY8CSOE8ozFcAX./Js99ekGc6irWOGxeWWNHQ.ovlp81hCNBGNr6', '2024-02-08 23:10:54', '2024-02-08 23:10:54', 'vava', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(5, NULL, NULL, '$2b$10$MhEiDXj03Q0zmmgspxCcfu6kg.DFgOj0k5PIW5K34w4ZJALNI6V8q', '2024-02-11 01:13:26', '2024-02-11 01:13:26', 'abc', NULL, '1111111', NULL, NULL, NULL, 2, 'abc', '123456789', NULL),
(6, 'kailash', 'kailash@gmail.com', '$2b$10$Zeg6x5EUGKFg5tNrVImPqeKmAvoLWKCkZl3DHjcOWMgjBs.fiNw2a', '2024-02-18 22:04:48', '2024-02-18 22:04:48', 'kailash', 'male', '(444) 444-4444', 'indian', 'Cashier', 'Satwa', 3, NULL, NULL, '7777777777');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
