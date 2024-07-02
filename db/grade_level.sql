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
-- Table structure for table `grade_level`
--

DROP TABLE IF EXISTS `grade_level`;
CREATE TABLE IF NOT EXISTS `grade_level` (
  `Grade_level_ID` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Level` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Section` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Tuition_fee` int NOT NULL,
  `MOP` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Student_ID` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Grade_level_ID`),
  KEY `Student_ID` (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `grade_level`
--
ALTER TABLE `grade_level`
  ADD CONSTRAINT `grade_level_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `students` (`Student_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
