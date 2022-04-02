-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2022 at 02:31 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be15_cr12_mount_everest_marko_bogdanovic`
--
CREATE DATABASE IF NOT EXISTS `be15_cr12_mount_everest_marko_bogdanovic` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be15_cr12_mount_everest_marko_bogdanovic`;

-- --------------------------------------------------------

--
-- Table structure for table `mount_everest`
--

DROP TABLE IF EXISTS `mount_everest`;
CREATE TABLE `mount_everest` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(260) NOT NULL,
  `price` varchar(260) NOT NULL,
  `description` varchar(260) NOT NULL,
  `longitude` varchar(260) NOT NULL,
  `latitude` varchar(260) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mount_everest`
--

INSERT INTO `mount_everest` (`ID`, `name`, `image`, `price`, `description`, `longitude`, `latitude`) VALUES
(1, 'Dubai', 'https://i.pinimg.com/564x/64/26/3b/64263be4fbac161186fe77f15cedc613.jpg', '659', 'Located in the eastern part of the Arabian Peninsula on the coast of the Persian Gulf, Dubai aims to be the business hub of Western Asia.', '55.2708', '25.2048');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mount_everest`
--
ALTER TABLE `mount_everest`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mount_everest`
--
ALTER TABLE `mount_everest`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
