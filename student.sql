-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2021 at 02:19 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spring`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `STUDENT_NO` int(11) NOT NULL,
  `STUDENT_NAME` text NOT NULL,
  `STUDENT_DOB` date NOT NULL,
  `STUDENT_DOJ` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`STUDENT_NO`, `STUDENT_NAME`, `STUDENT_DOB`, `STUDENT_DOJ`) VALUES
(1, 'Vaishali Mundleeee', '2015-01-07', '2021-10-19'),
(2, 'Vaishali Mundleeee', '2015-01-07', '2021-10-19'),
(3, 'Vaishali Mundleeee', '2015-01-07', '2021-10-19'),
(4, 'Sagar Thakare', '2021-10-05', '2021-11-25');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
