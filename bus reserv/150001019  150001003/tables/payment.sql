-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2016 at 05:37 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Txn_id` int(11) NOT NULL,
  `Mthd_payment` varchar(20) NOT NULL,
  `final_amnt` float NOT NULL,
  `card_no` varchar(30) NOT NULL,
  `Payment_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Txn_id`, `Mthd_payment`, `final_amnt`, `card_no`, `Payment_date`) VALUES
(1, 'Debit Card', 1827, '1234567890123456', '2016-11-17'),
(2, 'Debit Card', 914, '4134567890123452', '2016-11-17'),
(3, 'Debit Card', 1827, '5334567890123498', '2016-11-17'),
(4, 'Debit Card', 914, '7234567890123908', '2016-11-17'),
(5, 'Debit Card', 914, '0934567890123412', '2016-11-17'),
(6, 'Debit Card', 914, '1234567890123456', '2016-11-17'),
(7, 'Debit Card', 1827, '1234567890123456', '2016-11-17'),
(8, 'Debit Card', 914, '1234567890123456', '2016-11-25'),
(10, 'Debit Card', 1004.85, '1234567890123456', '2016-11-25'),
(11, 'Debit Card', 914, '98123456702456', '2016-11-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Txn_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Txn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
