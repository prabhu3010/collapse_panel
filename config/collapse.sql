-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 23, 2013 at 07:31 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.6-1ubuntu1.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `collapse`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `branch_id`, `status`) VALUES
(2, 'Account Name 1', 1, 1),
(3, 'Account 2', 1, 0),
(4, 'Account 3', 1, 1),
(5, 'Account 4', 1, 0),
(6, 'Account 5', 1, 1),
(7, 'Account 6', 2, 1),
(8, 'Account 7', 2, 0),
(9, 'Account 8', 2, 1),
(10, 'Account 9', 2, 0),
(11, 'Account 10', 2, 1),
(12, 'Account 11', 3, 0),
(13, 'Account 12', 3, 1),
(14, 'Account 13', 3, 0),
(15, 'Account 14', 3, 1),
(16, 'Account 15', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `acc_types`
--

CREATE TABLE IF NOT EXISTS `acc_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `account_id` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `acc_types`
--

INSERT INTO `acc_types` (`id`, `name`, `account_id`, `created_date`) VALUES
(1, 'Checking', 2, '2013-10-23 19:22:33'),
(2, 'Savings', 2, '2013-10-23 19:22:33'),
(3, 'Join Account', 2, '2013-10-23 19:22:33'),
(4, 'Checking', 3, '2013-10-23 19:22:33'),
(5, 'Savings', 3, '2013-10-23 19:22:33'),
(6, 'Join Account', 3, '2013-10-23 19:22:33'),
(7, 'Checking', 4, '2013-10-23 19:22:33'),
(8, 'Savings', 4, '2013-10-23 19:22:33'),
(9, 'Join Account', 4, '2013-10-23 19:22:33'),
(10, 'Checking', 5, '2013-10-23 19:22:33'),
(11, 'Savings', 5, '2013-10-23 19:22:33'),
(12, 'Join Account', 5, '2013-10-23 19:22:33'),
(13, 'Checking', 6, '2013-10-23 19:22:33'),
(14, 'Savings', 6, '2013-10-23 19:22:33'),
(15, 'Join Account', 6, '2013-10-23 19:22:33'),
(16, 'Checking', 7, '2013-10-23 19:22:33'),
(17, 'Savings', 7, '2013-10-23 19:22:33'),
(18, 'Join Account', 7, '2013-10-23 19:22:33'),
(19, 'Checking', 8, '2013-10-23 19:22:33'),
(20, 'Savings', 8, '2013-10-23 19:22:33'),
(21, 'Join Account', 8, '2013-10-23 19:22:33'),
(22, 'Checking', 9, '2013-10-23 19:22:33'),
(23, 'Savings', 9, '2013-10-23 19:22:33'),
(24, 'Join Account', 9, '2013-10-23 19:22:33'),
(25, 'Checking', 10, '2013-10-23 19:22:33'),
(26, 'Savings', 10, '2013-10-23 19:22:33'),
(27, 'Join Account', 10, '2013-10-23 19:22:33'),
(28, 'Checking', 11, '2013-10-23 19:22:33'),
(29, 'Savings', 11, '2013-10-23 19:22:33'),
(30, 'Join Account', 11, '2013-10-23 19:22:33'),
(31, 'Checking', 12, '2013-10-23 19:22:33'),
(32, 'Savings', 12, '2013-10-23 19:22:33'),
(33, 'Join Account', 12, '2013-10-23 19:22:33'),
(34, 'Checking', 13, '2013-10-23 19:22:33'),
(35, 'Savings', 13, '2013-10-23 19:22:33'),
(36, 'Join Account', 13, '2013-10-23 19:22:33'),
(37, 'Checking', 14, '2013-10-23 19:22:33'),
(38, 'Savings', 14, '2013-10-23 19:22:33'),
(39, 'Join Account', 14, '2013-10-23 19:22:33'),
(40, 'Checking', 15, '2013-10-23 19:22:33'),
(41, 'Savings', 15, '2013-10-23 19:22:33'),
(42, 'Join Account', 15, '2013-10-23 19:22:33'),
(43, 'Checking', 16, '2013-10-23 19:22:33'),
(44, 'Savings', 16, '2013-10-23 19:22:33'),
(45, 'Join Account', 16, '2013-10-23 19:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE IF NOT EXISTS `branches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`) VALUES
(1, 'Branch 1'),
(2, 'Branch 2'),
(3, 'Branch 3'),
(5, 'new branch');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
