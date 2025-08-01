-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2025 at 09:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robot_arm_control`
--

-- --------------------------------------------------------

--
-- Table structure for table `poses`
--

CREATE TABLE `poses` (
  `id` int(11) NOT NULL,
  `motor1` int(11) DEFAULT NULL,
  `motor2` int(11) DEFAULT NULL,
  `motor3` int(11) DEFAULT NULL,
  `motor4` int(11) DEFAULT NULL,
  `motor5` int(11) DEFAULT NULL,
  `motor6` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poses`
--

INSERT INTO `poses` (`id`, `motor1`, `motor2`, `motor3`, `motor4`, `motor5`, `motor6`, `created_at`) VALUES
(4, 90, 90, 90, 90, 90, 90, '2025-07-16 19:33:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `poses`
--
ALTER TABLE `poses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `poses`
--
ALTER TABLE `poses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
