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
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `P_id` int(11) NOT NULL,
  `P_name` varchar(40) NOT NULL,
  `P_gender` char(1) NOT NULL,
  `P_age` int(11) NOT NULL,
  `P_contact` varchar(15) DEFAULT NULL,
  `P_email` varchar(50) DEFAULT NULL,
  `journey_date` date NOT NULL,
  `Txn_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`P_id`, `P_name`, `P_gender`, `P_age`, `P_contact`, `P_email`, `journey_date`, `Txn_id`) VALUES
(3, 'asif', 'M', 13, '7324567133', 'komal@gmail.com', '2016-11-18', 2),
(4, 'Bharath', 'M', 25, '8562738421', 'dummy@gmail.com', '2016-11-18', 3),
(5, 'Harish', 'M', 23, NULL, NULL, '2016-11-18', 3),
(6, 'Naresh', 'M', 15, '7163459987', 'naresh@gmail.com', '2016-11-18', 4),
(7, 'ankitha', 'M', 21, '8097645321', 'gfhjkm@gmail.com', '2016-11-18', 5),
(8, 'Asima', 'M', 31, '9997680123', 'asima@gmail.com', '2016-11-18', 6),
(9, '3456', 'M', 12, '1234', 'trdfgyhuj@gmail.com', '2016-11-18', 7),
(10, 'asdxcf', 'M', 16, NULL, NULL, '2016-11-18', 7),
(11, 'name', 'M', 17, '9589017495', 'hjkl@gmail.com', '2016-11-30', 8),
(14, 'na5', 'M', 67, '1234', 'rtfyghu@gmail.com', '2016-11-27', 10),
(15, 'name', 'M', 25, '98760', 'asfgwer@gmail.com', '2016-11-27', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`P_id`),
  ADD KEY `Txn_id` (`Txn_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `passengers`
--
ALTER TABLE `passengers`
  MODIFY `P_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `passengers`
--
ALTER TABLE `passengers`
  ADD CONSTRAINT `Passengers_fkey` FOREIGN KEY (`Txn_id`) REFERENCES `payment` (`Txn_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
