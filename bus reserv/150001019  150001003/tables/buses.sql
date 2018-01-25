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
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `B_id` int(11) NOT NULL,
  `Seats_type` varchar(20) NOT NULL,
  `Bus_type` varchar(10) NOT NULL,
  `O_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`B_id`, `Seats_type`, `Bus_type`, `O_id`) VALUES
(1, 'Sleeper', 'NonA/C', 1),
(2, 'Sleeper', 'A/C', 1),
(1, 'Sleeper', 'NonA/C', 2),
(2, 'Sleeper', 'A/C', 2),
(1, 'Semi Sleeper', 'A/C', 3),
(2, 'VOLVO', 'NonA/C', 3),
(1, 'Sleeper', 'A/C', 4),
(2, 'Semi Sleeper', 'NonA/C', 4),
(1, 'VOLVO', 'NonA/C', 5),
(2, 'Semi Sleeper', 'NonA/C', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD KEY `O_id` (`O_id`),
  ADD KEY `B_id` (`B_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buses`
--
ALTER TABLE `buses`
  ADD CONSTRAINT `B_O_fkey` FOREIGN KEY (`O_id`) REFERENCES `operator` (`O_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
