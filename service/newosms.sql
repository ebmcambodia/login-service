-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2022 at 04:58 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+07:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newosms`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin_tb`
--

CREATE TABLE `adminlogin_tb` (
  `a_login_id` int(11) NOT NULL,
  `a_name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `a_email` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `a_password` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `adminlogin_tb`
--

INSERT INTO `adminlogin_tb` (`a_login_id`, `a_name`, `a_email`, `a_password`) VALUES
(1, 'admin', 'admin@osms.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `assests_tb`
--

CREATE TABLE `assests_tb` (
  `pid` int(11) NOT NULL,
  `pname` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `pdop` date NOT NULL,
  `pava` int(11) NOT NULL,
  `ptotal` int(11) NOT NULL,
  `poriginalcost` int(11) NOT NULL,
  `psellingcost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `assests_tb`
--

INSERT INTO `assests_tb` (`pid`, `pname`, `pdop`, `pava`, `ptotal`, `poriginalcost`, `psellingcost`) VALUES
(4, 'keyboard', '2022-07-13', 1, 4, 400, 1000),
(5, 'Mouse', '2022-07-18', 2, 2, 300, 500);

-- --------------------------------------------------------

--
-- Table structure for table `assignwork_tb`
--

CREATE TABLE `assignwork_tb` (
  `rno` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `request_info` text COLLATE utf8mb4_bin NOT NULL,
  `request_desc` text COLLATE utf8mb4_bin NOT NULL,
  `requester_name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `requester_add1` text COLLATE utf8mb4_bin NOT NULL,
  `requester_add2` text COLLATE utf8mb4_bin NOT NULL,
  `requester_city` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `requester_state` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `requester_zip` int(11) NOT NULL,
  `requester_email` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `requester_mobile` bigint(20) NOT NULL,
  `assign_tech` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `assign_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `assignwork_tb`
--

INSERT INTO `assignwork_tb` (`rno`, `request_id`, `request_info`, `request_desc`, `requester_name`, `requester_add1`, `requester_add2`, `requester_city`, `requester_state`, `requester_zip`, `requester_email`, `requester_mobile`, `assign_tech`, `assign_date`) VALUES
(9, 10, 'Hard Disk Failed', 'Hard Disk Failed its functionality.', 'ankita', '56', 'south palace', 'maharashtra', 'Maharashtra', 422101, 'ankita@yahoo.com', 976432176, 'manan', '2022-07-14'),
(10, 10, 'Hard Disk Failed', 'Hard Disk Failed its functionality.', 'ankita', '56', 'south palace', 'maharashtra', 'Maharashtra', 422101, 'ankita@yahoo.com', 976432176, 'manan', '2022-07-14'),
(11, 6, 'screen not working ', 'screen not working properly', 'Naman', '21', 'Pullman Drive', 'Manchester', 'cheshire', 422101, 'user@yahoo.com', 7404012581, 'joe', '2022-07-14'),
(13, 12, 'issue with the speaker', 'issue with the speaker cannot hear properly', 'deepa', '8', 'sandiford square', 'Chester', 'Manchester', 422101, 'deepa@yahoo.com', 9746469781, 'Manan', '2022-07-18'),
(14, 13, 'issue with the monitor', 'Major issue with monitor ', 'yogita Bachhav', 'Staycity', 'SANDIFORD SQUARE', 'manchester', 'Maharashtra', 7859585, 'ybachhav135@gmail.com', 7405758485, 'Manan', '2022-07-18'),
(15, 14, 'Mobile  Issue', 'Mobile  Issue', 'geeta', '1', 'Pullman Drive', 'nashik', 'cheshire', 422121, 'geeta@gmail.com', 7404012581, 'manan', '2022-07-19');

-- --------------------------------------------------------

--
-- Table structure for table `customer_tb`
--

CREATE TABLE `customer_tb` (
  `custid` int(11) NOT NULL,
  `custname` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `custadd` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `cpname` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `cpquantity` int(11) NOT NULL,
  `cpeach` int(11) NOT NULL,
  `cptotal` int(11) NOT NULL,
  `cpdate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `customer_tb`
--

INSERT INTO `customer_tb` (`custid`, `custname`, `custadd`, `cpname`, `cpquantity`, `cpeach`, `cptotal`, `cpdate`) VALUES
(1, 'naman', 'Sandiford square', 'Keyboard', 2, 3000, 6000, 2022),
(2, 'naman', 'Sandiford square', 'Keyboard', 2, 3000, 6000, 2022),
(3, 'rohan', 'Sandiford square', 'keyboard', 2, 1000, 6000, 2022),
(4, 'naman', 'Sandiford square', 'keyboard', 1, 1000, 1000, 2022),
(5, 'deepa', '8', 'Mic', 1, 500, 500, 2022);

-- --------------------------------------------------------

--
-- Table structure for table `requesterlogin_tb`
--

CREATE TABLE `requesterlogin_tb` (
  `r_login_id` int(11) NOT NULL,
  `r_name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `r_email` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `r_password` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `requesterlogin_tb`
--

INSERT INTO `requesterlogin_tb` (`r_login_id`, `r_name`, `r_email`, `r_password`) VALUES
(29, 'yogita', 'user@yahoo.com', 'user123'),
(30, 'naman', 'naman@yahoo.com', '123456'),
(32, 'suman', 'suman@yahoo.com', 'suman123'),
(33, 'ankitaP', 'ankita@yahoo.com', 'ankita1234'),
(34, 'sam', 'sam@yahoo.com', 'sam123'),
(35, 'deepa', 'deepa@yahoo.com', 'deepa@123'),
(36, 'geeta', 'geeta@gmail.com', 'geeta123');

-- --------------------------------------------------------

--
-- Table structure for table `submitrequest_tb`
--

CREATE TABLE `submitrequest_tb` (
  `request_id` int(11) NOT NULL,
  `request_info` text COLLATE utf8mb4_bin NOT NULL,
  `request_desc` text COLLATE utf8mb4_bin NOT NULL,
  `requester_name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `requester_add1` text COLLATE utf8mb4_bin NOT NULL,
  `requester_add2` text COLLATE utf8mb4_bin NOT NULL,
  `requester_city` text COLLATE utf8mb4_bin NOT NULL,
  `requester_state` text COLLATE utf8mb4_bin NOT NULL,
  `requester_zip` int(11) NOT NULL,
  `requester_email` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `requester_mobile` bigint(11) NOT NULL,
  `request_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `submitrequest_tb`
--

INSERT INTO `submitrequest_tb` (`request_id`, `request_info`, `request_desc`, `requester_name`, `requester_add1`, `requester_add2`, `requester_city`, `requester_state`, `requester_zip`, `requester_email`, `requester_mobile`, `request_date`) VALUES
(7, 'Monitor Issue', 'Monitor not working Properly', 'yogita', '1', 'sandiford square', 'nashik', 'Maharashtra', 422101, 'user@yahoo.com', 7404012581, '2022-07-04'),
(8, 'Monitor Issue', 'Monitor not working Properly', 'Naman', '1', 'sandiford square', 'Manchester', 'cheshire', 21, 'user@yahoo.com', 7404012581, '2022-07-07'),
(14, 'Mobile  Issue', 'Mobile  Issue', 'geeta', '1', 'Pullman Drive', 'nashik', 'cheshire', 422121, 'geeta@gmail.com', 7404012581, '2022-07-19');

-- --------------------------------------------------------

--
-- Table structure for table `technician_tb`
--

CREATE TABLE `technician_tb` (
  `empid` int(11) NOT NULL,
  `empName` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `empCity` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `empMobile` bigint(20) NOT NULL,
  `empEmail` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `technician_tb`
--

INSERT INTO `technician_tb` (`empid`, `empName`, `empCity`, `empMobile`, `empEmail`) VALUES
(3, 'joe', 'nashik', 9764669789, 'joe@yahoo.com'),
(4, 'manan', 'nashik', 9769990000, 'manan@yahoo.com'),
(5, 'Asif', 'Aurangabad', 9765321111, 'Asif@gmail.com'),
(6, 'Saman', 'nashik', 9764645122, 'saman@yahoo.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin_tb`
--
ALTER TABLE `adminlogin_tb`
  ADD PRIMARY KEY (`a_login_id`);

--
-- Indexes for table `assests_tb`
--
ALTER TABLE `assests_tb`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `assignwork_tb`
--
ALTER TABLE `assignwork_tb`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `customer_tb`
--
ALTER TABLE `customer_tb`
  ADD PRIMARY KEY (`custid`);

--
-- Indexes for table `requesterlogin_tb`
--
ALTER TABLE `requesterlogin_tb`
  ADD PRIMARY KEY (`r_login_id`);

--
-- Indexes for table `submitrequest_tb`
--
ALTER TABLE `submitrequest_tb`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `technician_tb`
--
ALTER TABLE `technician_tb`
  ADD PRIMARY KEY (`empid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin_tb`
--
ALTER TABLE `adminlogin_tb`
  MODIFY `a_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assests_tb`
--
ALTER TABLE `assests_tb`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `assignwork_tb`
--
ALTER TABLE `assignwork_tb`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customer_tb`
--
ALTER TABLE `customer_tb`
  MODIFY `custid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `requesterlogin_tb`
--
ALTER TABLE `requesterlogin_tb`
  MODIFY `r_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `submitrequest_tb`
--
ALTER TABLE `submitrequest_tb`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `technician_tb`
--
ALTER TABLE `technician_tb`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
