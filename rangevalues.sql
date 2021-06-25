-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2021 at 05:56 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rangevalues`
--

-- --------------------------------------------------------

--
-- Table structure for table `motor_values`
--

CREATE TABLE `motor_values` (
  `id` int(11) NOT NULL,
  `Motor1` varchar(100) NOT NULL,
  `Motor2` varchar(100) NOT NULL,
  `Motor3` varchar(100) NOT NULL,
  `Motor4` varchar(100) NOT NULL,
  `Motor5` varchar(100) NOT NULL,
  `Motor6` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `motor_values`
--

INSERT INTO `motor_values` (`id`, `Motor1`, `Motor2`, `Motor3`, `Motor4`, `Motor5`, `Motor6`) VALUES
(1, '90', '90', '90', '90', '90', '90'),
(2, '0', '180', '180', '36', '172', '54'),
(3, '90', '180', '180', '36', '180', '180'),
(4, '170', '180', '180', '132', '180', '180'),
(5, '90', '180', '71', '132', '180', '180');

-- --------------------------------------------------------

--
-- Table structure for table `off_motors`
--

CREATE TABLE `off_motors` (
  `id` int(4) NOT NULL,
  `isOFF` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `off_motors`
--

INSERT INTO `off_motors` (`id`, `isOFF`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `on_motors`
--

CREATE TABLE `on_motors` (
  `id` int(11) NOT NULL,
  `isON` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `on_motors`
--

INSERT INTO `on_motors` (`id`, `isON`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `motor_values`
--
ALTER TABLE `motor_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `off_motors`
--
ALTER TABLE `off_motors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `on_motors`
--
ALTER TABLE `on_motors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `motor_values`
--
ALTER TABLE `motor_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `off_motors`
--
ALTER TABLE `off_motors`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `on_motors`
--
ALTER TABLE `on_motors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
