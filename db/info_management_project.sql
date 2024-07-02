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
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
CREATE TABLE IF NOT EXISTS `enrollment` (
  `Enrollment_ID` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Student_ID` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Subject_ID` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`Enrollment_ID`),
  KEY `Subject_ID` (`Subject_ID`),
  KEY `fk_student` (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `Subject_ID` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Subject_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Teachers_ID` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Subject_ID`),
  KEY `Teachers_ID` (`Teachers_ID`(250)),
  KEY `Teachers_ID_2` (`Teachers_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`Subject_ID`) REFERENCES `subject` (`Subject_ID`),
  ADD CONSTRAINT `fk_student` FOREIGN KEY (`Student_ID`) REFERENCES `students` (`Student_ID`);

--
-- Constraints for table `grade_level`
--
ALTER TABLE `grade_level`
  ADD CONSTRAINT `grade_level_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `students` (`Student_ID`);

--
-- Constraints for table `parents`
--
ALTER TABLE `parents`
  ADD CONSTRAINT `parents_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `students` (`Student_ID`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`Teachers_ID`) REFERENCES `teachers` (`Teachers_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
