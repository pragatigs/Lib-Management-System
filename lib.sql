-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2023 at 07:45 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lib`
--

-- --------------------------------------------------------

--
-- Table structure for table `allbooks`
--

CREATE TABLE `allbooks` (
  `bid` varchar(20) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `publication` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `allbooks`
--

INSERT INTO `allbooks` (`bid`, `bname`, `author`, `publication`) VALUES
('B001', 'ADA-ED 4', 'Anany Levitin', 'Pearson'),
('B002', 'OS-ED 4', 'Peter Galvin', 'John Wiley and Sons Inc'),
('B003', 'Java-ED 7', 'Herbert Schildt', 'Pearson');

-- --------------------------------------------------------

--
-- Table structure for table `issued`
--

CREATE TABLE `issued` (
  `usn` varchar(10) NOT NULL,
  `sname` text NOT NULL,
  `bid` varchar(20) NOT NULL,
  `bn` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `publication` varchar(100) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allbooks`
--
ALTER TABLE `allbooks`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `issued`
--
ALTER TABLE `issued`
  ADD PRIMARY KEY (`usn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
