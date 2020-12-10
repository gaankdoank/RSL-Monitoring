-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 192.168.30.5
-- Generation Time: Dec 10, 2020 at 04:57 AM
-- Server version: 10.4.12-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trm_apps`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblrsl`
--

CREATE TABLE `tblrsl` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `hostname` varchar(100) NOT NULL,
  `interface` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `rsl` varchar(10) NOT NULL,
  `thrs_high_alarm` varchar(10) NOT NULL,
  `thrs_high_warn` varchar(10) NOT NULL,
  `thrs_low_warn` varchar(10) NOT NULL,
  `thrs_low_alarm` varchar(10) NOT NULL,
  `state` int(1) NOT NULL,
  `post_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrsl`
--

INSERT INTO `tblrsl` (`id`, `ip_address`, `hostname`, `interface`, `description`, `rsl`, `thrs_high_alarm`, `thrs_high_warn`, `thrs_low_warn`, `thrs_low_alarm`, `state`, `post_date`) VALUES
(3834085, '172.31.111.4', 'JKT-IBS_HO-AGGR-01', 'Gi0/0/0', '.::JKT-IBS_HO-AGG-01_Gig0/0/0-To-JKT-SML_BII-C-01_Gig0/0/1/1::.', '-3.9', '-2.0', '-3.0', '-28.5', '-28.8', 1, '2020-12-01 00:06:27'),
(3928009, '172.31.111.31', 'JKT-ITC_ROXY-AGG-01', 'Te0/0/26', '.::JKT-ITC_ROXY-AGG-01-Te0/0/26-To-JKT-SIMAS-FACHRUDIN-ACC-01-Te0/0/12::.', '-40.0', '3.5', '0.5', '-14.1', '-18.4', 3, '2020-12-10 11:06:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblrsl`
--
ALTER TABLE `tblrsl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblrsl`
--
ALTER TABLE `tblrsl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3928012;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
