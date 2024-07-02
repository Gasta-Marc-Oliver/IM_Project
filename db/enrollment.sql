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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`Subject_ID`) REFERENCES `subject` (`Subject_ID`),
  ADD CONSTRAINT `fk_student` FOREIGN KEY (`Student_ID`) REFERENCES `students` (`Student_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
