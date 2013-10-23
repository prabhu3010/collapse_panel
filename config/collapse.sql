-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 23, 2013 at 05:35 PM
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `branch_id`) VALUES
(2, 'Account Name 1', 1),
(3, 'Account 2', 1),
(4, 'Account 3', 1),
(5, 'Account 4', 1),
(6, 'Account 5', 1),
(7, 'Account 6', 2),
(8, 'Account 7', 2),
(9, 'Account 8', 2),
(10, 'Account 9', 2),
(11, 'Account 10', 2),
(12, 'Account 11', 3),
(13, 'Account 12', 3),
(14, 'Account 13', 3),
(15, 'Account 14', 3),
(16, 'Account 15', 3);

-- --------------------------------------------------------

--
-- Table structure for table `acc_types`
--

CREATE TABLE IF NOT EXISTS `acc_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `account_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `acc_types`
--

INSERT INTO `acc_types` (`id`, `name`, `account_id`) VALUES
(1, 'Checking', 2),
(2, 'Savings', 2),
(3, 'Join Account', 2),
(4, 'Checking', 3),
(5, 'Savings', 3),
(6, 'Join Account', 3),
(7, 'Checking', 4),
(8, 'Savings', 4),
(9, 'Join Account', 4),
(10, 'Checking', 5),
(11, 'Savings', 5),
(12, 'Join Account', 5),
(13, 'Checking', 6),
(14, 'Savings', 6),
(15, 'Join Account', 6),
(16, 'Checking', 7),
(17, 'Savings', 7),
(18, 'Join Account', 7),
(19, 'Checking', 8),
(20, 'Savings', 8),
(21, 'Join Account', 8),
(22, 'Checking', 9),
(23, 'Savings', 9),
(24, 'Join Account', 9),
(25, 'Checking', 10),
(26, 'Savings', 10),
(27, 'Join Account', 10),
(28, 'Checking', 11),
(29, 'Savings', 11),
(30, 'Join Account', 11),
(31, 'Checking', 12),
(32, 'Savings', 12),
(33, 'Join Account', 12),
(34, 'Checking', 13),
(35, 'Savings', 13),
(36, 'Join Account', 13),
(37, 'Checking', 14),
(38, 'Savings', 14),
(39, 'Join Account', 14),
(40, 'Checking', 15),
(41, 'Savings', 15),
(42, 'Join Account', 15),
(43, 'Checking', 16),
(44, 'Savings', 16),
(45, 'Join Account', 16);

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
