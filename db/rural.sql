-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2023 at 05:54 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rural`
--

-- --------------------------------------------------------

--
-- Table structure for table `donars`
--

CREATE TABLE `donars` (
  `donar_id` varchar(10) NOT NULL,
  `donar_name` varchar(20) NOT NULL,
  `donation_type` varchar(40) NOT NULL,
  `details` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `contact_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donars`
--

INSERT INTO `donars` (`donar_id`, `donar_name`, `donation_type`, `details`, `date`, `contact_no`) VALUES
('d1', 'suraj', 'fund', 'dfsdgsd', '2023-09-04', '897908654'),
('11', 'suraj', 'fund', 'dffdfdf', '2023-09-18', '432423423'),
('78', 'suraj', 'fund', 'dfdsfsdfdsfdsfs', '2023-09-25', '7554258'),
('14', 'veeresh andmin', 'fund', 'sdfsdfsdfdsf24r5434433222', '2023-09-19', '9871212121');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Given_by` varchar(40) NOT NULL,
  `givan_to` varchar(40) NOT NULL,
  `Date` varchar(10) NOT NULL,
  `details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Given_by`, `givan_to`, `Date`, `details`) VALUES
('veeresh', 'admin', '2023-09-14', 'ther is  no proper road work nea r the basaveswara temple '),
('veeresh', 'admin', '2023-09-14', 'ther is  no proper road work nea r the basaveswara temple '),
('veeresh', 'veeresh andmin', '2023-09-20', 'fdfddfdsa');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(10) NOT NULL,
  `passward` varchar(8) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `passward`, `type`) VALUES
('veeresh4', 'hello123', 'admin'),
('veeresh48', 'hello123', 'admin'),
('manju420', 'manju407', 'user'),
('nik4', 'nik4', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE `problems` (
  `Problem_id` varchar(10) NOT NULL,
  `village_name` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `taluk` varchar(20) NOT NULL,
  `details` varchar(100) NOT NULL,
  `given_by` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`Problem_id`, `village_name`, `district`, `taluk`, `details`, `given_by`) VALUES
('1', 'yogikoppa', 'haveri', 'hirekerur', 'dfdsfsdfdsfdsfsd', 'veeresh'),
('4', 'yogikoppa', 'haveri', 'hirekerur', 'dfdsfsdsd tereesf adfd', 'sahana'),
('8', 'yogikoppa', 'haveri', 'hirekerur', 'there is a canal problem at basaveswara temple near goudra mane', 'sumanth');

-- --------------------------------------------------------

--
-- Table structure for table `solution`
--

CREATE TABLE `solution` (
  `Problem_id` varchar(10) NOT NULL,
  `solution` varchar(100) NOT NULL,
  `givan_by` varchar(50) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `solution`
--

INSERT INTO `solution` (`Problem_id`, `solution`, `givan_by`, `Date`) VALUES
('1', 'fund released ', 'veeresh', '2023-09-12'),
('1', 'fund released ', 'veeresh', '2023-09-18'),
('8', 'i will visit tomorrow', 'veeresh', '2023-09-21');

-- --------------------------------------------------------

--
-- Table structure for table `villagers`
--

CREATE TABLE `villagers` (
  `name` varchar(40) NOT NULL,
  `username` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile_number` varchar(10) NOT NULL,
  `passward` varchar(8) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `villagers`
--

INSERT INTO `villagers` (`name`, `username`, `email`, `mobile_number`, `passward`, `type`) VALUES
('veeresh', 'veeresh4', 'veeresh@gmail.com', '8861759896', 'hello123', 'admin'),
('veeresh', 'veeresh48', 'veeresh@gmail.com', '8861759896', 'hello123', 'admin'),
('manju', 'manju420', 'manju@gmail.com', '8979086540', 'manju407', 'user'),
('nikhil', 'nik4', 'nik@gmail.com', '232343242', 'nik4', 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
