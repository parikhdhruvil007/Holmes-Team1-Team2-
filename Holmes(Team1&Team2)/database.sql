-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2015 at 09:49 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `holmes`
--

-- --------------------------------------------------------

--
-- Table structure for table `holmes`
--

CREATE TABLE IF NOT EXISTS `holmes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phone_Number` varchar(255) NOT NULL,
  `Email_Id` varchar(255) NOT NULL,
  `PIN` int(10) NOT NULL,
  `user_type_id` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `holmes`
--

INSERT INTO `holmes` (`ID`, `First_Name`, `Last_Name`, `Address`, `Phone_Number`, `Email_Id`, `PIN`, `user_type_id`) VALUES
(1, 'dhruvil', 'parikh', 'NONE', '2015193216', 'parikh.dhruvil007@gmail.com', 1234, 1),
(2, 'Sarvesh', 'Shah', 'nanana	', '5512080796', 'sarvesh5594@gmail.com', 1111, 2),
(3, 'neel', 'patel', 'N/A	', '8484820749', 'neel.24patel@gmail.com', 7777, 2),
(4, 'Drasty', 'Patel', 'n/a	', '6262671398', 'drasty4@gmail.com', 406, 2),
(5, 'Sonali', 'Thakar', 'n/a', '2012499446', 'sonalithakar92@gmail.com', 4567, 2);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `Id` int(11) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`Id`, `Status`) VALUES
(3, 'In Progress'),
(4, 'Done'),
(3, 'Done'),
(4, 'Done');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
