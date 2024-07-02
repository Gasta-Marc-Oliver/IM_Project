-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 02, 2024 at 06:11 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `info_management_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
CREATE TABLE IF NOT EXISTS `teachers` (
  `Teachers_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `F_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `L_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Street` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Lot` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Block` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Baranggay` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `City` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Zip_code` int NOT NULL,
  PRIMARY KEY (`Teachers_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
