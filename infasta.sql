-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2023 at 12:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infasta`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajax_staff`
--

CREATE TABLE `ajax_staff` (
  `Emp_ID` int(10) NOT NULL,
  `First_name` varchar(30) NOT NULL,
  `Last_name` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Upload` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `ID` int(10) NOT NULL,
  `First_name` varchar(30) NOT NULL,
  `Last_name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `Address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`ID`, `First_name`, `Last_name`, `Email`, `Phone`, `Address`) VALUES
(147, 'zds', 'xcv cxq', 'cn', 'fb', 'sdb'),
(148, 'tafay', 'tafay', 'tafay', 'tafay', 'tafay'),
(149, 'savaq', 'asv', 'asva', 'sav', 'sv'),
(150, 'as', 'qsa', 'qsa', 'qvd', 'dvs'),
(151, 'asusu', 'as[', 'ssjdq ', ' nasjf', 'dsanj'),
(152, 'svqsv', 'asvd', 'asvd', 'dsv', 'sdv'),
(153, 'tafayzul', 'pathan', 'tafayzuk@gmail.com', '788975', 'assv');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Emp_ID` int(10) NOT NULL,
  `First_name` varchar(20) NOT NULL,
  `Last_name` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`Emp_ID`, `First_name`, `Last_name`, `Email`, `Password`) VALUES
(1, 'Tafayzul', 'Pathan', 'tafa@gmail.com', 'not cool'),
(2, 'Tafayzull', 'pathan', 'tafay@gmail.com', 'Cool');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Sr_no` int(10) NOT NULL,
  `Full_name` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `City` varchar(15) NOT NULL,
  `Course` varchar(30) NOT NULL,
  `Time` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Sr_no`, `Full_name`, `Email`, `Phone`, `City`, `Course`, `Time`) VALUES
(23, 'asus1', 'asus@info.on', ' 788793024', 'hyderabad', 'course-type', '2023-04-26'),
(24, 'ahg', 'assa@gmail.com', ' j', 'i', 'featured-courses', '2023-04-26'),
(26, 'tafayzul', 'as@gma.com', 'asv', 'as', 'short-courses', '2023-04-26'),
(29, 'Tafazyul pathan', 's@gam.com', ' 456123689', 'hyd', 'featured-courses', '2023-04-26'),
(30, '', 'tafa@gam.com', '1456325789', 'sdd', 'featured-courses', '2023-04-26'),
(31, '', 'tafa@gam.com', '1456325789', 'sdd', 'featured-courses', '2023-04-26'),
(32, 'sdds', 'tafaz@gmail.com', '1234678902', 'hyd', 'course-type', '2023-04-26'),
(33, 'Tafayzul pathan', 'tafaz@gmail.com', '1234678902', 'hyd', 'postgraduate', '2023-04-26'),
(34, 'Tafayzul pathan', 'tafaz@gmail.com', '1234678902', 'hyd', 'postgraduate', '2023-04-26'),
(35, '', 'tafaz@gmail.com', '1234678902', 'hyd', 'postgraduate', '2023-04-26'),
(36, 'ajksbn', 'tafa@gmail.com', '7894561230', 'as', 'course-type', '2023-04-26'),
(37, 'Tafayzul', 'tafa@faf.com', '1234567890', 'sdv', 'short-courses', '2023-04-26'),
(38, 'Asus', 'Asusa@gmail.com', '1234567890', 'new', 'featured-courses', '2023-04-26'),
(39, 'Asus', 'Asusa@gmail.com', '1234567890', 'new', 'featured-courses', '2023-04-26'),
(40, 'New', 'new@gmail.com', '1234569807', 'hyd', 'featured-courses', '2023-04-26'),
(41, 'Sharper', 'shar@gma.cpom', '1234567890', 'as', 'undergraduate', '2023-04-26'),
(42, 'Newsa', 'asvas@ma.comm', '9876543210', 'svs', 'featured-courses', '2023-04-26'),
(43, 'User', 'suwe@ga.com', '7788994455', 'new', 'diploma', '2023-04-26'),
(45, 'Old', 'old@gmai.pm', '7894561230', 'sdvq', 'featured-courses', '2023-04-26'),
(46, 'Star', 'sta@gmail.com', '1234567890', 'sdv', 'featured-courses', '2023-04-26'),
(47, 'Qsafsd', 'assa@gam.co', '1234567890', 'ddg', 'featured-courses', '2023-04-26'),
(48, 'Tafay', 'afas@gmail.com', '1234567890', 'najs', 'featured-courses', '2023-04-26'),
(49, 'Tafay', 'tafa@gmai.com', '1234567890', 'hyd', 'featured-courses', '2023-04-26'),
(50, 'Hey', 'safa@ma.com', '1234567890', 'sv', 'featured-courses', '2023-04-26'),
(51, 'Measf', 'assa@gma.com', '7894561230', 'dsv', 'featured-courses', '2023-04-26'),
(52, 'Google', 'sfas@gmai.com', '1234567890', 'sdv', 'undergraduate', '2023-04-26'),
(53, 'Mew', 'asss@gmailc.om', '1234567890', 'sdvs', 'short-courses', '2023-04-26'),
(54, 'Fbasv', 'sdvs@shsd.bp', '1234567890', 'fbd', 'featured-courses', '2023-04-26'),
(55, 'Polestar', 'saa@fa.com', '1234567890', 'svd', 'featured-courses', '2023-04-26'),
(56, 'Ploesasf', 'svsz@va.com', '1234567890', 'qvs', 'short-courses', '2023-04-26'),
(57, 'Mesv', 'as@dvas.com', '1234567890', 'asc', 'featured-courses', '2023-04-26'),
(58, 'assfa', 'sdvs@fa.com', '1234567890', 'sdv', 'short-courses', '2023-04-26'),
(59, 'vasn', 'ssdvns@safa.com', 'skvns', 'vsd', 'featured-courses', '2023-04-26'),
(60, 'asc', 'sddv@asfa.com', 'fasvs', 'as', 'short-courses', '2023-04-26'),
(61, 'sdv', 'dvsd@afa.com', 'sfa', 'vsd', 'short-courses', '2023-04-26'),
(65, 'ztyre', 'jhhd@lj.bo', 'hjgghd', 'hgc', 'featured-courses', '2023-04-26'),
(66, 'asv', 'dsv@fas.com', 'sd', 'dv', 'short-courses', '2023-04-27');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Roll_no` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Class` varchar(100) NOT NULL,
  `Marks` int(100) NOT NULL,
  `Gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Roll_no`, `Name`, `Class`, `Marks`, `Gender`) VALUES
(1, 'John', 'five', 90, 'male'),
(2, 'Max Ruin', 'Three', 85, 'male'),
(3, 'Arnold', 'Three', 55, 'male'),
(4, 'Krish Star', 'Four', 60, 'female'),
(5, 'John Mike', 'Four', 60, 'female'),
(6, 'Alex John', 'Four', 55, 'male'),
(7, 'My John Rob', 'Five', 78, 'male'),
(8, 'Asruid', 'Five', 85, 'male'),
(9, 'Tes Qry', 'Six', 78, 'male'),
(10, 'Big John', 'Four', 55, 'female'),
(11, 'Ronald pathan', 'Six', 89, 'female'),
(12, 'Recky', 'Six', 94, 'female'),
(13, 'Ketty ', 'Seven', 88, 'female'),
(14, 'Bigy', 'Seven', 88, 'female'),
(15, 'Tade Row', 'Four', 88, 'male'),
(16, 'Gimmy', 'Four', 88, 'male'),
(17, 'Tumyu', 'Six', 54, 'male'),
(18, 'Honny', 'Five', 75, 'male'),
(19, 'Tinny', 'Nine', 18, 'male'),
(20, 'Jackly', 'Nine', 65, 'female'),
(21, 'Babby John', 'Four', 69, 'female'),
(22, 'Reggid', 'Seven', 55, 'female'),
(23, 'Herod', 'Eight', 79, 'male'),
(24, 'Tiddy Now', 'Seven', 78, 'male'),
(25, 'Giff Tow', 'Seven', 88, 'male'),
(26, 'Crelea', 'Seven', 79, 'male'),
(27, 'Big Nose', 'Three', 81, 'female'),
(28, 'Rojj Base', 'Seven', 86, 'female'),
(29, 'Tess Played', 'Seven', 55, 'male'),
(30, 'Reppy Red', 'Six', 79, 'female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ajax_staff`
--
ALTER TABLE `ajax_staff`
  ADD PRIMARY KEY (`Emp_ID`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`Emp_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Sr_no`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Roll_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ajax_staff`
--
ALTER TABLE `ajax_staff`
  MODIFY `Emp_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `Emp_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `Sr_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
