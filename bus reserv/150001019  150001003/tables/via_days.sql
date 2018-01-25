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
-- Table structure for table `via_days`
--

CREATE TABLE `via_days` (
  `O_id` int(11) NOT NULL,
  `R_id` int(11) NOT NULL,
  `B_id` int(11) NOT NULL,
  `Days` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `via_days`
--

INSERT INTO `via_days` (`O_id`, `R_id`, `B_id`, `Days`) VALUES
(1, 1, 1, 'sunday'),
(1, 1, 2, 'sunday'),
(1, 1, 1, 'monday'),
(1, 1, 2, 'monday'),
(1, 1, 1, 'tuesday'),
(1, 1, 2, 'tuesday'),
(1, 1, 1, 'wednesday'),
(1, 1, 2, 'wednesday'),
(1, 1, 1, 'thursday'),
(1, 1, 2, 'thursday'),
(1, 1, 1, 'friday'),
(1, 1, 2, 'friday'),
(1, 1, 1, 'saturday'),
(1, 1, 2, 'saturday'),
(1, 2, 1, 'monday'),
(1, 2, 2, 'monday'),
(1, 2, 1, 'tuesday'),
(1, 2, 2, 'tuesday'),
(1, 2, 1, 'wednesday'),
(1, 2, 2, 'wednesday'),
(1, 2, 1, 'thursday'),
(1, 2, 2, 'thursday'),
(1, 2, 1, 'friday'),
(1, 2, 2, 'friday'),
(1, 2, 1, 'saturday'),
(1, 2, 2, 'saturday'),
(1, 2, 1, 'sunday'),
(1, 2, 2, 'sunday'),
(2, 1, 1, 'monday'),
(2, 1, 2, 'monday'),
(2, 1, 1, 'tuesday'),
(2, 1, 2, 'tuesday'),
(2, 1, 1, 'wednesday'),
(2, 1, 2, 'wednesday'),
(2, 1, 1, 'thursday'),
(2, 1, 2, 'thursday'),
(2, 1, 1, 'friday'),
(2, 1, 2, 'friday'),
(2, 1, 1, 'saturday'),
(2, 1, 2, 'saturday'),
(2, 1, 1, 'sunday'),
(2, 1, 2, 'sunday'),
(2, 2, 1, 'monday'),
(2, 2, 2, 'monday'),
(2, 2, 1, 'tuesday'),
(2, 2, 2, 'tuesday'),
(2, 2, 1, 'wednesday'),
(2, 2, 2, 'wednesday'),
(2, 2, 1, 'thursday'),
(2, 2, 2, 'thursday'),
(2, 2, 1, 'friday'),
(2, 2, 2, 'friday'),
(2, 2, 1, 'saturday'),
(2, 2, 2, 'saturday'),
(2, 2, 1, 'sunday'),
(2, 2, 2, 'sunday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `via_days`
--
ALTER TABLE `via_days`
  ADD KEY `O_id` (`O_id`),
  ADD KEY `R_id` (`R_id`),
  ADD KEY `B_id` (`B_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `via_days`
--
ALTER TABLE `via_days`
  ADD CONSTRAINT `Days_B_fkey` FOREIGN KEY (`B_id`) REFERENCES `buses` (`B_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Days_O_fkey` FOREIGN KEY (`O_id`) REFERENCES `operator` (`O_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Days_R_fkey` FOREIGN KEY (`R_id`) REFERENCES `routes` (`R_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
