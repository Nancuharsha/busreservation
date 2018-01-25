-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2016 at 05:36 PM
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
-- Table structure for table `applied`
--

CREATE TABLE `applied` (
  `Txn_id` int(11) NOT NULL,
  `Cpn_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applied`
--

INSERT INTO `applied` (`Txn_id`, `Cpn_code`) VALUES
(1, 'RED200'),
(2, 'RED200'),
(1000, 'RED200'),
(1001, 'RED200'),
(1002, 'RED200'),
(1003, 'RED200'),
(1004, 'RED200'),
(1005, 'RED200'),
(1006, 'RED200'),
(1007, 'RED200'),
(1008, 'RED200'),
(1009, 'RED200'),
(1010, 'RED200'),
(1011, 'RED200'),
(1012, 'RED200'),
(1013, 'RED200'),
(1014, 'RED200'),
(1015, 'RED200'),
(1016, 'RED200'),
(1019, 'RED200'),
(1020, 'RED200'),
(1021, 'RED200'),
(1022, 'RED200'),
(1023, 'RED200'),
(1024, 'RED200'),
(1025, 'RED200'),
(1026, 'RED200'),
(1017, 'WEL100'),
(1018, 'WEL100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applied`
--
ALTER TABLE `applied`
  ADD PRIMARY KEY (`Txn_id`),
  ADD KEY `Cpn_code` (`Cpn_code`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applied`
--
ALTER TABLE `applied`
  ADD CONSTRAINT `Applied-To_C_fkey` FOREIGN KEY (`Cpn_code`) REFERENCES `coupons` (`Cpn_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Applied-To_fkey` FOREIGN KEY (`Txn_id`) REFERENCES `payment` (`Txn_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
