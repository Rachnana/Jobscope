-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2022 at 05:13 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `applied`
--

CREATE TABLE `applied` (
  `applied_id` int(11) NOT NULL,
  `jobid` int(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Salary` int(255) NOT NULL,
  `Exprnce` int(255) NOT NULL,
  `Eligibility` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `EmpID` int(255) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `dob` date NOT NULL,
  `phone` int(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applied`
--

INSERT INTO `applied` (`applied_id`, `jobid`, `Title`, `Salary`, `Exprnce`, `Eligibility`, `City`, `Description`, `EmpID`, `cname`, `fname`, `lname`, `gender`, `dob`, `phone`, `email`) VALUES
(10, 30, 'system engineer ', 20000, 1, 'MTECH ', 'Mangalore  ', 'nnnn', 39, 'test_company  ', '', 'Nayak', 'Female', '2022-02-06', 56923, 'pinky@gmail.com'),
(11, 31, 'software engineer ', 30000, 8, 'engineering ', 'bangalore  ', 'aaaa', 39, 'test_company  ', '', 'Nayak', 'Female', '2022-02-06', 56923, 'pinky@gmail.com'),
(12, 28, 'assistant ', 10000, 2, 'engineering ', 'Mangalore  ', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 43, 'test_company_2  ', '', 'Shetty', 'Female', '2022-01-11', 9999999, 'prathijna123@gmail.com'),
(13, 29, 'tester ', 9000, 4, 'engineering ', 'Mangalore  ', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 43, 'test_company_2  ', '', 'Shetty', 'Female', '2022-01-11', 9999999, 'prathijna123@gmail.com'),
(14, 30, 'system engineer ', 20000, 1, 'MTECH ', 'Mangalore  ', 'nnnn', 43, 'test_company  ', '', 'Shetty', 'Female', '2022-01-11', 9999999, 'prathijna123@gmail.com'),
(15, 31, 'software engineer ', 30000, 8, 'engineering ', 'bangalore  ', 'aaaa', 43, 'test_company  ', '', 'Shetty', 'Female', '2022-01-11', 9999999, 'prathijna123@gmail.com'),
(16, 27, 'wwww ', 7896, 5, 'engineering ', 'Mangalore  ', 'bcnnn', 39, 'test_company_2  ', '', 'Nayak', 'Female', '2022-02-06', 56923, 'pinky@gmail.com'),
(20, 40, 'system admin ', 45000, 2, 'engineering ', 'bangalore  ', 'admin post', 46, 'TCS  ', 'assy', 's', 'Male', '2022-01-31', 2147483647, 'tcs@gmail.com'),
(21, 40, 'system admin ', 45000, 2, 'engineering ', 'bangalore  ', 'admin post', 46, 'TCS  ', 'assy', 's', 'Male', '2022-01-31', 2147483647, 'tcs@gmail.com'),
(22, 40, 'system admin ', 45000, 2, 'engineering ', 'bangalore  ', 'admin post', 46, 'TCS  ', 'assy', 's', 'Male', '2022-01-31', 2147483647, 'tcs@gmail.com'),
(23, 40, 'system admin ', 45000, 2, 'engineering ', 'bangalore  ', 'admin post', 46, 'TCS  ', 'assy', 's', 'Male', '2022-01-31', 2147483647, 'assy@gmail.com'),
(24, 40, 'system admin ', 45000, 2, 'engineering ', 'bangalore  ', 'admin post', 46, 'TCS  ', 'assy', 's', 'Male', '2022-01-31', 2147483647, 'assy@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `cid` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(500) NOT NULL,
  `location` varchar(500) NOT NULL,
  `sector` varchar(200) NOT NULL,
  `website` varchar(500) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `passwd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`cid`, `name`, `address`, `location`, `sector`, `website`, `phone`, `email`, `passwd`) VALUES
(10, 'test_company', 'test_address', 'test_location', 'Software', 'www.test_company.com', '2541654', 'test_company@gmail.com', '1234'),
(11, 'test_company_2', 'test_address_2', 'test_location_2', 'Hardware', 'www.test_company_2.com', '9876543297', 'test_company_2@gmail.com', '3333'),
(12, 'test_company_3', 'test_company_3address', 'location_test3', 'Advertising', 'www.test_company3.com', '2541654', 'test_company3@gmail.com', '34567'),
(13, 'Wipro', 'Bangalore', 'India', 'Software', 'www.wipro.com', '99876543297', 'wipro@gmai.com', 'wipro'),
(15, 'dell', 'mangalore', 'udupi', 'Software', 'www.dell.com', '941923305', 'dell@gmail.com', 'dell123'),
(16, 'test', 'test', 'test', 'Software', 'www.test.com', '1234567980', 'company@gmail.com', 'test123'),
(17, 'accenture', 'bangalore', 'whitefield', 'Software', 'www.accenture.com', '9876543219', 'accenture@gmail.com', 'accenture@123'),
(18, 'TCS', 'Bangalore', 'whitefield', 'Software', 'www.tcs.com', '99876543298', 'tcs@gmail.com', 'tcs');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmpID` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(500) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(20) NOT NULL,
  `age` int(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `TenthMarks` int(100) NOT NULL,
  `TwelthhMarks` int(100) NOT NULL,
  `Highest_qualification` varchar(50) NOT NULL,
  `Marks` float NOT NULL,
  `passwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmpID`, `fname`, `lname`, `dob`, `gender`, `age`, `address`, `phone`, `email`, `TenthMarks`, `TwelthhMarks`, `Highest_qualification`, `Marks`, `passwd`) VALUES
(43, 'prathijna', 'Shetty', '2022-01-11', 'Female', 23, 'onnala', '9999999', 'prathijna123@gmail.com', 98, 98, 'engineering', 98, 'abcde'),
(44, 'amlu', 'Shetty', '2022-01-22', 'Male', 24, 'udupi', '2541654', 'amlu@gmail.com', 23, 32, 'engineering', 32, 'amlu@123'),
(45, 'Palash', 'Chiplunkar', '2022-01-22', 'Male', 20, 'karkala', '9999999', 'pallu@gmail.com', 584, 563, 'puc', 9, '12233'),
(46, 'assy', 's', '2022-01-31', 'Male', 21, 'uppinkote', '9876543298', 'assy@gmail.com', 76, 87, 'engineering', 76, 'assy');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `jobid` int(100) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Hour` int(100) NOT NULL,
  `Salary` int(200) NOT NULL,
  `Exprnce` varchar(100) NOT NULL,
  `Eligibility` varchar(200) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `cid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`jobid`, `Title`, `Hour`, `Salary`, `Exprnce`, `Eligibility`, `City`, `Description`, `cid`, `name`) VALUES
(27, 'wwww', 5, 7896, '5', 'engineering', 'Mangalore ', 'bcnnn', 11, 'test_company_2'),
(30, 'system engineer', 3, 20000, '1', 'MTECH', 'Mangalore ', 'nnnn', 10, 'test_company'),
(31, 'software engineer', 7, 30000, '8', 'engineering', 'bangalore ', 'aaaa', 10, 'test_company'),
(39, 'data new', 7, 0, '4 ', 'engineering ', 'bangalore  ', 'abcd ', 17, 'accenture'),
(40, 'system admin', 9, 45000, '2', 'engineering', 'bangalore ', 'admin post', 18, 'TCS');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `EmpID` int(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`EmpID`, `name`, `status`, `message`) VALUES
(43, '', '', ''),
(43, 'test_company_2', '', ''),
(43, 'test_company_2', '', ''),
(43, 'test_company_2', '', ''),
(43, 'test_company_2', '', ''),
(43, 'test_company_2', '', ''),
(43, 'test_company_2', '', ''),
(43, 'test_company_2', '', ''),
(43, 'test_company_2', '', ''),
(43, 'test_company_2', '', ''),
(43, 'test_company_2', '', ''),
(43, 'test_company_2', '', ''),
(43, 'test_company_2', '', ''),
(43, 'test_company_2', '', ''),
(43, 'test_company_2', '', ''),
(0, 'test_company_2', 'Accepted', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(0, 'test_company_2', 'Accepted', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(0, 'test_company_2', 'Rejected', 'hhhhhhhhhhh'),
(0, 'test_company_2', 'Accepted', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(0, 'test_company_2', 'Accepted', 'bbbbbbb'),
(43, 'test_company_2', 'Accepted', 'bbbbbbbbbbbbbbbbbbbbbbb'),
(46, 'TCS', 'Accepted', 'see u soon'),
(46, 'TCS', 'Accepted', 'see u soon');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applied`
--
ALTER TABLE `applied`
  ADD PRIMARY KEY (`applied_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmpID`),
  ADD UNIQUE KEY `EmailID` (`email`);
ALTER TABLE `employee` ADD FULLTEXT KEY `password` (`passwd`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`jobid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applied`
--
ALTER TABLE `applied`
  MODIFY `applied_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `cid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmpID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `jobid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
