-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2024 at 03:51 AM
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
-- Database: `event`
--

-- --------------------------------------------------------

--
-- Table structure for table `catering`
--

CREATE TABLE `catering` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) NOT NULL,
  `phoneno` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `category1` varchar(50) DEFAULT NULL,
  `category2` varchar(50) DEFAULT NULL,
  `category3` varchar(50) DEFAULT NULL,
  `category4` varchar(50) DEFAULT NULL,
  `category5` varchar(50) DEFAULT NULL,
  `category6` varchar(50) DEFAULT NULL,
  `people` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catering`
--

INSERT INTO `catering` (`id`, `fname`, `mname`, `lname`, `phoneno`, `email`, `address`, `pincode`, `date`, `time`, `category1`, `category2`, `category3`, `category4`, `category5`, `category6`, `people`) VALUES
(1, 'md', 'saim', 'islam', '0153434', 'saim@fh', 'sa', '3', '2024-06-04', '15:26:00', '', '', '', '', '', '', 3),
(2, 'md', 'saim', 'islam', '0153434', 'saim@fh', 'sa', '3', '2024-06-11', '16:05:00', '', '', '', '', '', '', 3),
(3, 'md', 'saim', 'islam', '0153434', 'saim@fh', 'sa', '3', '2024-06-07', '16:08:00', '', '', '', '', '', '', 545),
(4, 'md', 'saim', 'islam', '0153434', 'saim@fh', 'sa', '3', '2024-06-27', '17:21:00', '', '', '', '', '', '', 56),
(5, 'md', 'saim', 'islam', '0153434', 'saim@fh', 'sa', '3', '2024-05-30', '17:58:00', '', '', '', '', '', '', 76),
(6, 'md', 'saim', 'islam', '0153434', 'saim@fh', 'sa', '3', '2024-05-30', '17:57:00', '', '', '', '', '', '', 67);

-- --------------------------------------------------------

--
-- Table structure for table `catering1`
--

CREATE TABLE `catering1` (
  `id` int(11) NOT NULL,
  `selected_item` varchar(255) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'sai,', '221902122@student.green.edu.bd', 'asdsdfzsdfa', '2024-06-03 01:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `error`
--

CREATE TABLE `error` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phoneno` varchar(20) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `priority1` varchar(255) DEFAULT NULL,
  `priority2` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travels`
--

CREATE TABLE `travels` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) NOT NULL,
  `phoneno` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `category1` varchar(50) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `people` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `travels`
--

INSERT INTO `travels` (`id`, `fname`, `mname`, `lname`, `phoneno`, `email`, `address`, `pincode`, `date`, `time`, `category1`, `source`, `destination`, `people`) VALUES
(1, 'md', 'saim', 'islam', '0153434', 'saim@fh', 'sa', '3', '2024-06-06', '16:08:00', NULL, 'bogura', 'sherpure', 67867),
(2, 'md', 'saim', 'islam', '0153434', 'saim@fh', 'sa', '3', '2024-06-06', '16:08:00', NULL, 'bogura', 'sherpure', 678678),
(3, 'md', 'saim', 'islam', '0153434', 'saim@fh', 'sa', '3', '2024-06-04', '17:08:00', NULL, 'bogura', 'sherpure', 565),
(4, 'md', 'saim', 'islam', '0153434', 'saim@fh', 'sa', '3', '2024-05-30', '17:21:00', NULL, '56', '56', 56);

-- --------------------------------------------------------

--
-- Table structure for table `travels1`
--

CREATE TABLE `travels1` (
  `id` int(11) NOT NULL,
  `selected_car` varchar(255) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `distance` decimal(10,2) DEFAULT NULL,
  `booking_fees` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wedding`
--

CREATE TABLE `wedding` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) NOT NULL,
  `phoneno` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `people` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wedding`
--

INSERT INTO `wedding` (`id`, `fname`, `mname`, `lname`, `phoneno`, `email`, `address`, `pincode`, `date`, `time`, `category`, `people`) VALUES
(1, 'md', 'saim', 'islam', '0153434', 'saim@fh', 'sa', '3', '2024-05-29', '17:08:00', '', 454),
(2, 'md', 'saim', 'islam', '0153434', 'saim@fh', 'sa', '3', '2024-05-29', '17:08:00', '', 454),
(3, 'md', 'saim', 'islam', '0153434', 'saim@fh', 'sa', '3', '2024-06-05', '17:20:00', '', 56),
(4, 'md', 'saim', 'islam', '0153434', 'saim@fh', 'sa', '3', '2024-05-30', '17:56:00', '', 565),
(5, 'md', 'saim', 'islam', '0153434', 'saim@fh', 'sa', '3', '2024-05-29', '17:58:00', '', 3544),
(6, 'md', 'saim', 'islam', '0153434', 'saim@fh', 'sa', '3', '2024-05-31', '17:57:00', '', 4545),
(7, 'md', 'saim', 'islam', '0153434', 'saim@fh', 'sa', '3', '2024-06-13', '17:01:00', '', 5657);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catering`
--
ALTER TABLE `catering`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catering1`
--
ALTER TABLE `catering1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `error`
--
ALTER TABLE `error`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travels`
--
ALTER TABLE `travels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travels1`
--
ALTER TABLE `travels1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wedding`
--
ALTER TABLE `wedding`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catering`
--
ALTER TABLE `catering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `catering1`
--
ALTER TABLE `catering1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `error`
--
ALTER TABLE `error`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travels`
--
ALTER TABLE `travels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `travels1`
--
ALTER TABLE `travels1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wedding`
--
ALTER TABLE `wedding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
