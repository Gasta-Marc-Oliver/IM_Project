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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `Student_ID` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `F_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `L_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `LRN` int DEFAULT NULL,
  `Level` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Section` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Gender` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Street` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Lot` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Block` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Baranggay` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `City` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Zip_code` int NOT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Student_ID`, `F_name`, `L_name`, `LRN`, `Level`, `Section`, `Age`, `Gender`, `Street`, `Lot`, `Block`, `Baranggay`, `City`, `Zip_code`) VALUES
('S-001', 'Ayesha Faith', 'Aclan', 2147483647, 'Kindergarten', 'Yellow Bell', 0, 'F', '', '', '', '', '', 0),
('S-002', 'Princess Gabrielle', ' Nardo', 2147483647, 'Kindergarten', 'Yellow Bell', 0, 'F', '', '', '', '', '', 0),
('S-003', 'Ethan', 'Lionel', 2147483647, 'Kindergarten', 'Yellow Bell', NULL, 'M', '', '', '', '', '', 0),
('S-004', 'Liam Clint', 'Tan', 2147483647, 'Kindergarten', 'Blue Bell', NULL, 'M', '', '', '', '', '', 0),
('S-005', 'Chelsea', 'Toledo', 2147483647, 'Kindergarten', 'Blue Bell', NULL, 'F', '', '', '', '', '', 0),
('S-006', 'Vince Godfrey', 'Loar', 2147483647, 'Kindergarten', 'Blue Bell', NULL, 'M', '', '', '', '', '', 0),
('S-007', 'Janelle', 'Basas', NULL, 'Pre-Kindergarten', 'Dhalia', NULL, 'F', '', '', '', '', '', 0),
('S-008', 'Zhein Alexander', 'Jacob', NULL, 'Pre-Kindergarten', 'Dhalia', NULL, 'M', '', '', '', '', '', 0),
('S-009', 'Mira Claire', 'Piller', NULL, 'Pre-Kindergarten', 'Dhalia', NULL, 'F', '', '', '', '', '', 0),
('S-010', 'Matthew Ezekiel', 'Fernandez', NULL, 'Pre-Kindergarten', 'Lily', NULL, 'M', '', '', '', '', '', 0),
('S-011', 'Ethan Azrael', 'Orata', NULL, 'Pre-Kindergarten', 'Lily', NULL, 'M', '', '', '', '', '', 0),
('S-012', 'Gywneth Alexandra', 'Luay', NULL, 'Pre-Kindergarten', 'Lily', NULL, 'F', '', '', '', '', '', 0),
('S-013', 'Prince Xaiden', 'Adora', NULL, 'Nursery', 'Daisy', NULL, 'M', '', '', '', '', '', 0),
('S-014', 'Aiana Kaela', 'Reyes', NULL, 'Nursery', 'Daisy', NULL, 'F', '', '', '', '', '', 0),
('S-015', 'Eros Autumn', 'Casingal', NULL, 'Nursery', 'Daisy', NULL, 'M', '', '', '', '', '', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
