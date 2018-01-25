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
-- Table structure for table `operator`
--

CREATE TABLE `operator` (
  `O_id` int(11) NOT NULL,
  `O_name` varchar(40) NOT NULL,
  `O_email` varchar(40) NOT NULL,
  `O_contact` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`O_id`, `O_name`, `O_email`, `O_contact`) VALUES
(1, 'Khurana', 'khurana@gmail.com', '9999999999'),
(2, 'Hans', 'hans@gmail.com', '8888888888'),
(3, 'SRS Travels', 'srstravels@gmail.com', '9876543210'),
(4, 'Orange Tours', 'orangetravels@hotmail.com', '8881234999'),
(5, 'VRL Travles ', 'vrltravels@gmail.com', '7123456789'),
(6, 'KPN Travles', 'kpntravels@hotmail.com', '8123498765'),
(7, 'Kallada Travels', 'kallada@gmail.com', '9696123428');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`O_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
