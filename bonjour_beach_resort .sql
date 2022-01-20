-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 12, 2021 at 12:49 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bonjour_beach_resort`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `bookingID` int(11) NOT NULL,
  `questID` int(11) NOT NULL,
  `roomID` int(11) NOT NULL,
  `number_of_days` int(11) NOT NULL,
  `price` varchar(10) NOT NULL,
  PRIMARY KEY (`bookingID`),
  KEY `questID` (`questID`),
  KEY `roomID` (`roomID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookingID`, `questID`, `roomID`, `number_of_days`, `price`) VALUES
(1, 103, 114, 2, 'GHs1984.00'),
(2, 101, 112, 1, 'GHs899.00'),
(3, 100, 113, 1, 'GHs2200.00');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `emp_ID` int(11) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `salary` varchar(50) NOT NULL,
  `jobID` int(11) NOT NULL,
  PRIMARY KEY (`emp_ID`),
  KEY `jobID` (`jobID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_ID`, `emp_name`, `address`, `location`, `email`, `phone`, `salary`, `jobID`) VALUES
(130, 'Jasmine Adams', 'Box KT69 Awoshie', 'Accra', 'ja01@gmail.com', '+233233880808', 'GHs 1000.00', 101),
(131, 'Benedicta Kwasi', 'No. F37/4, Anahor Street', 'Takoradi', 'benek07@gmail.com', '+23324129564', 'GHs 3500.00', 100),
(132, 'Edem Mathew', '1167/10, Koteiman Close', 'Nugua', 'edemmat@gmail.com', '+233573172125', 'GHs 800.00', 102),
(133, 'Gertrude Appiah', 'Oak Lane,', 'Accra', 'gertrudeapp@gmail.com', '+233264589357', 'GHs 800.00', 103),
(134, 'Derick Quansah', '37 Avenue, BK Street', 'Accra', 'dquansah@gmail.com', '+233205394601', 'GHs 700.00', 104);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
CREATE TABLE IF NOT EXISTS `job` (
  `jobId` int(11) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  PRIMARY KEY (`jobId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`jobId`, `job_title`) VALUES
(100, 'Manager'),
(101, 'Receptionist'),
(102, 'Porter'),
(103, 'Cleaner'),
(104, 'Janitor');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `paymentID` int(11) NOT NULL,
  `bookingID` int(11) NOT NULL,
  `questID` int(11) NOT NULL,
  `total_price` varchar(10) NOT NULL,
  `payment_status` varchar(30) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  PRIMARY KEY (`paymentID`),
  KEY `bookingID` (`bookingID`),
  KEY `questID` (`questID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentID`, `bookingID`, `questID`, `total_price`, `payment_status`, `payment_date`) VALUES
(1001, 2, 101, 'GHs899.00', 'paid', '25-11-2021 10:30:00 AM'),
(1002, 3, 100, 'GHs2200.00', 'unpaid', '02-12-2021 12:30:00 PM'),
(1003, 1, 103, 'GHs1984.00', 'paid', '11-12-2021 08:20:00 AM');

-- --------------------------------------------------------

--
-- Table structure for table `quest`
--

DROP TABLE IF EXISTS `quest`;
CREATE TABLE IF NOT EXISTS `quest` (
  `questId` int(11) NOT NULL,
  `quest_name` varchar(13) NOT NULL,
  `age` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(13) NOT NULL,
  PRIMARY KEY (`questId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quest`
--

INSERT INTO `quest` (`questId`, `quest_name`, `age`, `location`, `address`, `phone`) VALUES
(100, 'Codi Leslie', 35, 'Spintex', 'Hk Plaza Shek Tong Tsui', '+233243684351'),
(101, 'Adams Rose', 40, 'Teshie', '123 Dale Hall Lane_Ipswich IP1 4LS', '+233548214090'),
(102, 'Willy Mensah', 25, 'Takoradi', '3920 Bailey Drive', '+23324731564'),
(103, 'Senyo Phaith', 20, 'Tema', 'Ghana House', '+233268869901'),
(104, 'Jamal Collins', 30, 'Accra', 'Ghana Multi-Media Centre', '+233248524376');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `roomID` int(11) NOT NULL,
  `room_typeID` int(11) NOT NULL,
  `room_number` int(11) NOT NULL,
  `number_of_person` int(11) NOT NULL,
  PRIMARY KEY (`roomID`),
  KEY `room_typeID` (`room_typeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomID`, `room_typeID`, `room_number`, `number_of_person`) VALUES
(111, 101, 1001, 2),
(112, 102, 1002, 2),
(113, 103, 1003, 4),
(114, 104, 1004, 2);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
CREATE TABLE IF NOT EXISTS `room_type` (
  `room_typeID` int(11) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `room_price` varchar(50) NOT NULL,
  `acommodate` int(11) NOT NULL,
  PRIMARY KEY (`room_typeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_typeID`, `room_type`, `room_price`, `acommodate`) VALUES
(101, 'Standard', 'GHs837.00', 2),
(102, 'Standard Charlet', 'GHs899.00', 2),
(103, 'Family Charlet', 'GHs2200.00', 4),
(104, 'Deluxe', 'GHs992.00', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
