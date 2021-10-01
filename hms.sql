-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2018 at 07:18 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `addappointment`
--

CREATE TABLE `addappointment` (
  `id` int(20) NOT NULL,
  `patient` varchar(25) NOT NULL,
  `doctor` varchar(25) NOT NULL,
  `app_date` varchar(100) NOT NULL,
  `starttime` varchar(100) DEFAULT NULL,
  `endtime` varchar(100) DEFAULT NULL,
  `remark` varchar(20) NOT NULL,
  `sms` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=REDUNDANT;

--
-- Dumping data for table `addappointment`
--

INSERT INTO `addappointment` (`id`, `patient`, `doctor`, `app_date`, `starttime`, `endtime`, `remark`, `sms`) VALUES
(1, '1', '', '2018-05-16', '07:00', '08:00', 'srtggt', '1'),
(2, '2', '', '2018-05-16', '08:15', '09:15', 'trhu', '1'),
(3, '3', '', '2018-05-28', '09:00', '10:00', 'dhanu', '1');

-- --------------------------------------------------------

--
-- Table structure for table `adddeposit`
--

CREATE TABLE `adddeposit` (
  `id` int(11) NOT NULL,
  `patient` int(11) NOT NULL,
  `invoice` int(20) NOT NULL,
  `depositammount` int(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adddeposit`
--

INSERT INTO `adddeposit` (`id`, `patient`, `invoice`, `depositammount`, `date`) VALUES
(1, 1, 150, 2000, '2018-02-05'),
(2, 1, 150, 6000, '2018-02-05'),
(3, 0, 450, 2000, '2018-02-06'),
(4, 0, 500, 3000, '2018-02-06'),
(5, 0, 910, 5000, '2018-02-14'),
(6, 0, 910, 5000, '2018-02-14'),
(7, 0, 6, 1000, '2018-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `addfiles`
--

CREATE TABLE `addfiles` (
  `id` int(20) NOT NULL,
  `doc_date` varchar(100) NOT NULL,
  `patient` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `file` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addfiles`
--

INSERT INTO `addfiles` (`id`, `doc_date`, `patient`, `title`, `file`) VALUES
(2, ' 2018-05-16', '2', 'Niku', 'Koala.jpg'),
(3, ' 2018-05-16', '1', 'Stitle', 'Tulips.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `addmedicalhistory`
--

CREATE TABLE `addmedicalhistory` (
  `id` int(20) NOT NULL,
  `date` date NOT NULL,
  `patient` varchar(30) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=REDUNDANT;

--
-- Dumping data for table `addmedicalhistory`
--

INSERT INTO `addmedicalhistory` (`id`, `date`, `patient`, `description`) VALUES
(1, '2018-04-17', ' 1', '<p>daddfds</p>');

-- --------------------------------------------------------

--
-- Table structure for table `addnewmedicine`
--

CREATE TABLE `addnewmedicine` (
  `id` int(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `genericname` varchar(30) NOT NULL,
  `company` varchar(30) NOT NULL,
  `effect` varchar(30) NOT NULL,
  `expiredate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addnewmedicine`
--

INSERT INTO `addnewmedicine` (`id`, `name`, `category`, `price`, `quantity`, `genericname`, `company`, `effect`, `expiredate`) VALUES
(2, 'snehal', '15', 500, 50, 'bhvf', 'dvfsfv', '1dsfvgsfg', '2020'),
(4, 'Nikita', '5', 200, 12, 'dfgdyt', 'Mr.Sagar Adhav', 'rttrt', '2022'),
(6, 'medicine', '6', 200, 12, 'dfgd', 'Mr.Sagar Adhav', 'hhgfh', '2222'),
(7, 'test medicine', '5', 6000, 50, 'test generic', 'test', 'sadasd', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `addnewpres`
--

CREATE TABLE `addnewpres` (
  `id` int(25) NOT NULL,
  `date` varchar(20) NOT NULL,
  `patient` varchar(30) NOT NULL,
  `history` text NOT NULL,
  `medication` text NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `addnewpres`
--

INSERT INTO `addnewpres` (`id`, `date`, `patient`, `history`, `medication`, `note`) VALUES
(1, '2018-03-22', '1', '<p>GHNGHTH</p>', '<p>GHNGHTH</p>', '<p>GHNGHTH</p>'),
(2, '2018-05-09', '2', '<p>aderwsrft</p>\r\n', '<p>ygrthyg</p>\r\n', '<p>thjfh&nbsp;</p>\r\n'),
(3, '2018-05-16', '3', '<p>fdzffvsf</p>\r\n', '<p>fgbdbh</p>\r\n', '<p>ghbgv</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `addpayment`
--

CREATE TABLE `addpayment` (
  `id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `patient` int(30) NOT NULL,
  `refdbydoctor` varchar(30) NOT NULL,
  `categoryselect` varchar(30) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `addp_discount` int(11) NOT NULL,
  `grosstotal` int(11) NOT NULL,
  `amountreceived` int(11) NOT NULL,
  `depositammount` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `vatper` int(100) NOT NULL,
  `discount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addpayment`
--

INSERT INTO `addpayment` (`id`, `invoice`, `patient`, `refdbydoctor`, `categoryselect`, `subtotal`, `addp_discount`, `grosstotal`, `amountreceived`, `depositammount`, `date`, `vatper`, `discount`) VALUES
(1, '', 1, '', '', 0, 0, 0, 0, '', '', 0, 0),
(2, 'INV-00000001', 1, '', '1,1,4,7', 2746, 25, 2060, 65000, '5000', '2018-05-16', 0, 0),
(3, '', 2, '', '', 0, 0, 0, 0, '', '', 0, 0),
(4, '', 3, '', '', 0, 0, 0, 0, '', '', 0, 0),
(5, '', 4, '', '', 0, 0, 0, 0, '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `profile`, `fname`, `lname`, `username`, `password`) VALUES
(1, 'download.jpg', 'Nikhil', 'Bhalerao', 'admin@admin.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `mainservices`
--

CREATE TABLE `mainservices` (
  `id` int(100) NOT NULL,
  `mainservicename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainservices`
--

INSERT INTO `mainservices` (`id`, `mainservicename`) VALUES
(1, 'E.C.G'),
(2, 'Admission fees'),
(3, 'Ambulance'),
(4, 'Oxyen'),
(5, 'USG-Pregnancy Pro'),
(7, 'Service'),
(8, 'services1'),
(9, 'test service');

-- --------------------------------------------------------

--
-- Table structure for table `medicinecategory`
--

CREATE TABLE `medicinecategory` (
  `id` int(20) NOT NULL,
  `category` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicinecategory`
--

INSERT INTO `medicinecategory` (`id`, `category`, `description`) VALUES
(5, 'tablet', 'abc'),
(6, 'capsule', 'gnghn'),
(9, 'bbb', 'dfsxf'),
(14, 'kkk', 'hhrt'),
(15, 'vitamin V', 'afsdf'),
(16, 'test', 'ESGAZ'),
(17, 'AAAA', 'sfsdef'),
(18, 'test category', 'tghhfgdhfdrft');

-- --------------------------------------------------------

--
-- Table structure for table `patientinfo`
--

CREATE TABLE `patientinfo` (
  `id` int(11) NOT NULL,
  `patient_id` int(20) NOT NULL,
  `profilepic` varchar(20) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodgroup` varchar(5) NOT NULL,
  `birthdate` date NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `patientinfo`
--

INSERT INTO `patientinfo` (`id`, `patient_id`, `profilepic`, `firstname`, `middlename`, `lastname`, `gender`, `bloodgroup`, `birthdate`, `phone`, `address`, `email`, `password`, `status`) VALUES
(1, 1, 'Tulips.jpg', 'snehal', '', '', 'Female', 'B+', '2018-02-19', '8484822137', 'K.Sukene', 'snehal@gmail.com', '', '0'),
(2, 2, 'Tulips.jpg', 'monika', 'raj', 'shinde', 'Female', 'AB+ ', '2018-02-12', '9552030527', 'Ozar', 'mona@yahoomail.com', 'mona', '0');

-- --------------------------------------------------------

--
-- Table structure for table `patientregister`
--

CREATE TABLE `patientregister` (
  `id` int(20) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `bloodgroup` varchar(5) NOT NULL,
  `imageupload` varchar(20) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `patientregister`
--

INSERT INTO `patientregister` (`id`, `doctor`, `name`, `email`, `password`, `address`, `phone`, `gender`, `birthdate`, `bloodgroup`, `imageupload`, `status`) VALUES
(1, '', '   sunita', 'sunita@gmail.com', 'sunita', 'pune', '8482838002', 'Female', '2018-05-07', 'A+', 'Lighthouse.jpg', '1'),
(2, '', ' Nikita', 'niku@gmail.com', '', 'Vani', '8482838002', 'Female', '2018-05-08', 'B+', 'Tulips.jpg', '1'),
(3, '', ' Dhanu', 'dhanu@gmail.com', '', 'Nashik', '8482838002', 'Female', '2018-05-01', 'B+', 'Chrysanthemum.jpg', '1'),
(4, '', ' Yogita', 'yogita@gmail.com', '', 'Shivaji Nagar', '8482838002', 'Female', '2018-05-05', 'A+', 'Hydrangeas.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `profileid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `changepassword` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`profileid`, `name`, `changepassword`, `email`) VALUES
(1, 'snehal', 'snehal', 'snehal@gmail.com'),
(2, 'Nisha', 'nisha', 'nisha@gmail.com'),
(3, 'Ashwini', 'ashwini', 'ashu@gmail.com'),
(4, 'kajal', 'kajal', 'kajal@gmail.com'),
(5, '', '', ''),
(6, 'Neha', '123', 'neha@gmail.com'),
(7, 'Dhanu', 'dhanu', 'dhanu@gmail.com'),
(8, 'Nikita ', 'nikita', 'nikita@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `subservices`
--

CREATE TABLE `subservices` (
  `service_id` int(100) NOT NULL,
  `sid` int(100) NOT NULL,
  `subservicename` varchar(100) NOT NULL,
  `Fee` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subservices`
--

INSERT INTO `subservices` (`service_id`, `sid`, `subservicename`, `Fee`) VALUES
(1, 1, 'aaa', 123),
(2, 3, 'bbb', 500),
(3, 3, 'sfedgtg', 500),
(4, 2, 'kkkkkk', 10000),
(5, 4, 'HbAlc', 1000),
(6, 5, 'USG-sub', 2000),
(7, 7, 'sub-service', 1500),
(9, 9, 'test sub service', 8000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addappointment`
--
ALTER TABLE `addappointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adddeposit`
--
ALTER TABLE `adddeposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addfiles`
--
ALTER TABLE `addfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addmedicalhistory`
--
ALTER TABLE `addmedicalhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addnewmedicine`
--
ALTER TABLE `addnewmedicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addnewpres`
--
ALTER TABLE `addnewpres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addpayment`
--
ALTER TABLE `addpayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainservices`
--
ALTER TABLE `mainservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicinecategory`
--
ALTER TABLE `medicinecategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patientinfo`
--
ALTER TABLE `patientinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patientregister`
--
ALTER TABLE `patientregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`profileid`);

--
-- Indexes for table `subservices`
--
ALTER TABLE `subservices`
  ADD PRIMARY KEY (`service_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addappointment`
--
ALTER TABLE `addappointment`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `adddeposit`
--
ALTER TABLE `adddeposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `addfiles`
--
ALTER TABLE `addfiles`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `addmedicalhistory`
--
ALTER TABLE `addmedicalhistory`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `addnewmedicine`
--
ALTER TABLE `addnewmedicine`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `addnewpres`
--
ALTER TABLE `addnewpres`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `addpayment`
--
ALTER TABLE `addpayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mainservices`
--
ALTER TABLE `mainservices`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `medicinecategory`
--
ALTER TABLE `medicinecategory`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `patientinfo`
--
ALTER TABLE `patientinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `patientregister`
--
ALTER TABLE `patientregister`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `profileid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `subservices`
--
ALTER TABLE `subservices`
  MODIFY `service_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
