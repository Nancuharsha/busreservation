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
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `O_id` int(11) NOT NULL,
  `R_id` int(11) NOT NULL,
  `B_id` int(11) NOT NULL,
  `Date` varchar(15) NOT NULL,
  `Seat_no` int(11) NOT NULL,
  `P_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`O_id`, `R_id`, `B_id`, `Date`, `Seat_no`, `P_id`) VALUES
(1, 1, 2, '2016-11-18', 12, 3),
(1, 1, 2, '2016-11-18', 3, 5),
(1, 1, 2, '2016-11-18', 7, 6),
(1, 1, 2, '2016-11-18', 4, 7),
(1, 1, 2, '2016-11-18', 4, 8),
(1, 1, 2, '2016-11-18', 9, 9),
(1, 1, 2, '2016-11-18', 14, 10),
(1, 1, 2, '2016-11-30', 1, 11),
(1, 1, 2, '2016-11-27', 7, 14),
(1, 1, 2, '2016-11-27', 3, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD KEY `O_id` (`O_id`),
  ADD KEY `R_id` (`R_id`),
  ADD KEY `B_id` (`B_id`) USING BTREE,
  ADD KEY `P_id` (`P_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_B_fkey` FOREIGN KEY (`B_id`) REFERENCES `buses` (`B_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seats_O_fkey` FOREIGN KEY (`O_id`) REFERENCES `operator` (`O_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seats_P_fkey` FOREIGN KEY (`P_id`) REFERENCES `passengers` (`P_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seats_R_fkey` FOREIGN KEY (`R_id`) REFERENCES `routes` (`R_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
