-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2019 at 07:19 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmsdb`
-- 
CREATE DATABASE pmsdb;
-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'test', 'admin', 7898799799, 'tester1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-07-08 04:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblcart`
--

CREATE TABLE `tblcart` (
  `id` int(11) NOT NULL,
  `PharmacistId` int(11) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `ProductQty` int(11) NOT NULL,
  `IsCheckOut` int(11) DEFAULT NULL,
  `CartDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcart`
--

INSERT INTO `tblcart` (`id`, `PharmacistId`, `ProductId`, `BillingId`, `ProductQty`, `IsCheckOut`, `CartDate`) VALUES
(2, 1, 2, 122562633, 1, 1, '2019-07-11 15:16:57'),
(3, 1, 1, 122562633, 1, 1, '2019-07-15 05:29:28'),
(4, 1, 1, 879665702, 5, 1, '2018-07-16 16:33:51'),
(5, 1, 4, 879665702, 7, 1, '2019-07-16 16:34:41'),
(6, 1, 1, 139516461, 3, 1, '2019-07-17 06:13:02'),
(7, 1, 1, 573840547, 1, 1, '2019-07-23 07:03:34'),
(8, 5, 5, 400595648, 5, 1, '2019-07-23 16:19:24'),
(9, 5, 6, 400595648, 10, 1, '2019-07-23 16:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `ID` int(10) NOT NULL,
  `CompanyName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`ID`, `CompanyName`, `CreationDate`) VALUES
(1, 'Johnson & Johnson', '2019-07-08 11:04:38'),
(2, 'Novartis', '2019-07-08 11:04:57'),
(3, 'Roche', '2019-07-08 11:06:06'),
(4, 'Pfizer', '2019-07-08 11:06:29'),
(5, 'Sanofi', '2019-07-08 11:06:40'),
(6, 'Merck', '2019-07-08 11:06:52'),
(7, 'GSK (GlaxoSmithKline)', '2019-07-08 11:07:08'),
(8, 'AstraZeneca', '2019-07-08 11:07:21'),
(9, 'Bayer', '2019-07-08 11:07:35'),
(10, 'Gilead Sciences', '2019-07-08 11:11:14'),
(11, 'Cipla', '2019-07-08 11:11:25'),
(12, 'Abbot', '2019-07-08 11:11:36'),
(13, 'Medtronic', '2019-07-08 11:12:14'),
(14, 'test medicine', '2019-07-23 16:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `ID` int(10) NOT NULL,
  `BillingNumber` varchar(120) DEFAULT NULL,
  `CustomerName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `ModeofPayment` varchar(100) DEFAULT NULL,
  `BillingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`ID`, `BillingNumber`, `CustomerName`, `MobileNumber`, `ModeofPayment`, `BillingDate`) VALUES
(1, '122562633', 'Anuj kumar', 1234567890, 'cash', '2019-07-14 15:40:02'),
(2, '879665702', 'Amit Kumar', 8978979799, 'card', '2019-07-14 16:36:16'),
(3, '139516461', 'Kishan Malhotra', 4464646464, 'cash', '2019-07-17 06:13:44'),
(4, '573840547', 'Test Sample', 7567576575, 'cash', '2019-07-23 07:05:24'),
(5, '400595648', 'Anuj', 1234567890, 'cash', '2019-07-23 16:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicine`
--

CREATE TABLE `tblmedicine` (
  `ID` int(10) NOT NULL,
  `MedicineCompany` varchar(120) DEFAULT NULL,
  `MedicineName` varchar(120) DEFAULT NULL,
  `MedicineBatchno` varchar(120) DEFAULT NULL,
  `MgfDate` varchar(120) DEFAULT NULL,
  `ExpiryDate` varchar(120) DEFAULT NULL,
  `Quantity` varchar(120) DEFAULT NULL,
  `Priceperunit` varchar(120) DEFAULT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicine`
--

INSERT INTO `tblmedicine` (`ID`, `MedicineCompany`, `MedicineName`, `MedicineBatchno`, `MgfDate`, `ExpiryDate`, `Quantity`, `Priceperunit`, `EntryDate`) VALUES
(1, 'Roche', 'Glucerna for diabetic Health Supplement', 'AEE1555', '2019-07-19', '2019-07-17', '25', '145', '2019-07-09 07:18:33'),
(2, 'Abbot', 'Thyroxine Sodium Tablets I.P. Thyronorm(100 mcg)', 'AEE1555', '2019-06-07', '2022-06-11', '100', '125', '2019-07-09 07:21:11'),
(3, 'Cipla', 'Maxirich Multivitamins and Minerals Softgel capsules', 'BEE1555', '2019-07-01', '2022-03-17', '100', '145.78', '2019-07-09 07:23:51'),
(4, 'Sanofi', 'Seven Seas Cod Liver Oil Capsules (100 Cap) ', 'BEE4567', '2019-03-06', '2020-03-12', '35', '125', '2019-07-09 07:26:56'),
(5, 'Bayer', 'Bayer Tonic 250ml', 'CEE12345', '2019-06-14', '2019-10-24', '25', '141', '2019-07-17 05:29:51'),
(6, 'test medicine', 'Test Medicine', '323746723', '2019-05-01', '2020-04-25', '2000', '25', '2019-07-23 16:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblpharmacist`
--

CREATE TABLE `tblpharmacist` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `Gender` enum('Male','Female') DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `JoingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpharmacist`
--

INSERT INTO `tblpharmacist` (`ID`, `FullName`, `MobileNumber`, `UserName`, `Gender`, `Password`, `Email`, `JoingDate`) VALUES
(1, 'Test', 7899797977, 'phgh12340', 'Male', '202cb962ac59075b964b07152d234b70', 'harish@gmail.com', '2019-07-09 04:28:51'),
(2, 'Kavita Shukla', 5656565656, 'phgh12341', 'Female', '202cb962ac59075b964b07152d234b70', 'mahesh@gmail.com', '2019-07-09 04:39:48'),
(3, 'Rahul', 2356897898, 'phgh12342', 'Male', '202cb962ac59075b964b07152d234b70', 'rahul@gmail.com', '2019-07-09 04:47:23'),
(4, 'Reena Malhotra', 4545454545, 'phgh12343', 'Female', '202cb962ac59075b964b07152d234b70', 'reena@gmail.com', '2019-07-09 04:48:55'),
(5, 'Test pharmacist', 1111111112, 'test30', 'Male', 'f925916e2754e5e03f75dd58a5733251', 'test@gmail.com', '2019-07-23 16:16:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcart`
--
ALTER TABLE `tblcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BillingNumber` (`BillingNumber`);

--
-- Indexes for table `tblmedicine`
--
ALTER TABLE `tblmedicine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpharmacist`
--
ALTER TABLE `tblpharmacist`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcart`
--
ALTER TABLE `tblcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblmedicine`
--
ALTER TABLE `tblmedicine`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblpharmacist`
--
ALTER TABLE `tblpharmacist`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
