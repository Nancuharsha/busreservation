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
-- Table structure for table `via`
--

CREATE TABLE `via` (
  `O_id` int(11) NOT NULL,
  `R_id` int(11) NOT NULL,
  `B_id` int(11) NOT NULL,
  `Fare` int(11) NOT NULL,
  `Dept_time` time NOT NULL,
  `Arr_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `via`
--

INSERT INTO `via` (`O_id`, `R_id`, `B_id`, `Fare`, `Dept_time`, `Arr_time`) VALUES
(1, 1, 2, 900, '16:15:00', '09:00:00'),
(1, 1, 2, 1215, '17:00:00', '09:45:00'),
(2, 1, 2, 915, '16:00:00', '10:00:00'),
(2, 1, 2, 1200, '17:00:00', '10:00:00'),
(1, 2, 2, 900, '15:45:00', '09:00:00'),
(1, 2, 2, 1300, '16:10:00', '09:30:00'),
(2, 2, 2, 1000, '16:00:00', '09:15:00'),
(2, 2, 2, 1250, '16:30:00', '10:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `via`
--
ALTER TABLE `via`
  ADD KEY `R_id` (`R_id`),
  ADD KEY `O_id` (`O_id`),
  ADD KEY `B_id` (`B_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `via`
--
ALTER TABLE `via`
  ADD CONSTRAINT `From_to_B_fkey` FOREIGN KEY (`B_id`) REFERENCES `buses` (`B_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `From_to_O_fkey` FOREIGN KEY (`O_id`) REFERENCES `operator` (`O_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `From_to_R_fkey` FOREIGN KEY (`R_id`) REFERENCES `routes` (`R_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
