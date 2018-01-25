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
-- Table structure for table `boarding_points`
--

CREATE TABLE `boarding_points` (
  `Bp_id` int(11) NOT NULL,
  `Bp_name` varchar(100) NOT NULL,
  `Bp_time` time NOT NULL,
  `O_id` int(11) NOT NULL,
  `R_id` int(11) NOT NULL,
  `B_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boarding_points`
--

INSERT INTO `boarding_points` (`Bp_id`, `Bp_name`, `Bp_time`, `O_id`, `R_id`, `B_id`) VALUES
(1, 'Old Palasia', '04:15:00', 1, 1, 2),
(2, 'Khandwa Road', '04:30:00', 1, 1, 2),
(3, 'Raddison', '16:35:00', 2, 1, 2),
(4, 'Thejaji', '17:05:00', 2, 1, 2),
(5, 'Suchtra', '16:05:00', 1, 2, 2),
(6, 'Secunderabad', '16:20:00', 1, 2, 2),
(7, 'Sharafa', '16:15:00', 2, 1, 2),
(8, 'Simrol', '17:00:00', 2, 1, 2),
(9, 'Bowenpally', '16:45:00', 2, 2, 2),
(10, 'Old Bus Stand', '16:20:00', 2, 2, 2),
(11, 'Ring Road ', '17:00:00', 1, 1, 2),
(12, 'Silver Springs', '16:30:00', 1, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boarding_points`
--
ALTER TABLE `boarding_points`
  ADD KEY `O_id` (`O_id`),
  ADD KEY `R_id` (`R_id`),
  ADD KEY `B_id` (`B_id`) USING BTREE;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `boarding_points`
--
ALTER TABLE `boarding_points`
  ADD CONSTRAINT `Bp_B_fkey` FOREIGN KEY (`B_id`) REFERENCES `buses` (`B_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Bp_O_fkey` FOREIGN KEY (`O_id`) REFERENCES `operator` (`O_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Bp_R_fkey` FOREIGN KEY (`R_id`) REFERENCES `routes` (`R_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
