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
-- Table structure for table `parents`
--

DROP TABLE IF EXISTS `parents`;
CREATE TABLE IF NOT EXISTS `parents` (
  `Parents_ID` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `F_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `L_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Student_ID` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Contact_num` int DEFAULT NULL,
  `Street` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Lot` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Block` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Baranggay` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `City` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Zip_code` int NOT NULL,
  PRIMARY KEY (`Parents_ID`),
  KEY `Student_ID` (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`Parents_ID`, `F_name`, `L_name`, `Student_ID`, `Contact_num`, `Street`, `Lot`, `Block`, `Baranggay`, `City`, `Zip_code`) VALUES
('P-001', 'Raphael', 'Fernandez', 'S-001', 2147483647, '', '', '', '', '', 0),
('P-002', 'Mary Chelle', 'Naldo', 'S-002', 2147483647, '', '', '', '', '', 0),
('P-003', 'Eric', 'Osea', 'S-003', 2147483647, '', '', '', '', '', 0),
('P-004', 'Raphael', 'Fernandez', 'S-004', 2147483647, '', '', '', '', '', 0),
('P-005', 'Rowena', 'Toledo', 'S-005', 2147483647, '', '', '', '', '', 0),
('P-006', 'Aileenita', 'Loar', 'S-006', 2147483647, '', '', '', '', '', 0),
('P-007', 'Jesseme', 'Basas', 'S-007', 2147483647, '', '', '', '', '', 0),
('P-008', 'Leah', 'Jacob', 'S-008', 2147483647, '', '', '', '', '', 0),
('P-009', 'Mary Ann', 'Bongat', 'S-009', 2147483647, '', '', '', '', '', 0),
('P-010', 'Edith', 'Fernandez', 'S-010', 2147483647, '', '', '', '', '', 0),
('P-011', 'Joshua Julious', 'Orata', 'S-011', 2147483647, '', '', '', '', '', 0),
('P-012', 'Myla', 'Luay', 'S-012', 2147483647, '', '', '', '', '', 0),
('P-013', 'Lovely', 'Adora', 'S-013', 2147483647, '', '', '', '', '', 0),
('P-014', 'Roldan Kevin', 'Reyes', 'S-014', 2147483647, '', '', '', '', '', 0),
('P-015', 'Rixi Lara', 'Quintana', 'S-015', 2147483647, '', '', '', '', '', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `parents`
--
ALTER TABLE `parents`
  ADD CONSTRAINT `parents_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `students` (`Student_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
