-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2022 at 05:43 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signinternational`
--

-- --------------------------------------------------------

--
-- Table structure for table `attandance`
--

CREATE TABLE `attandance` (
  `Date` date NOT NULL,
  `Employee_ID` int(8) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `Period` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bill_info`
--

CREATE TABLE `bill_info` (
  `Bill_ID` int(8) NOT NULL,
  `Date` date NOT NULL,
  `Product_ID` int(8) NOT NULL,
  `Customer_ID` int(8) NOT NULL,
  `Unit_Price` float NOT NULL,
  `Quantity` int(5) NOT NULL,
  `Tax%` float NOT NULL,
  `Discount` float NOT NULL,
  `Payment_Method` text NOT NULL,
  `Terms and Condition` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `branch_info`
--

CREATE TABLE `branch_info` (
  `BranchID` int(8) NOT NULL,
  `Name` text NOT NULL,
  `Employee_N` int(3) NOT NULL,
  `Branch_Manager` text NOT NULL,
  `Phone` int(13) NOT NULL,
  `Mail` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `challan`
--

CREATE TABLE `challan` (
  `Challan_ID` int(8) NOT NULL,
  `Customer_ID` int(8) NOT NULL,
  `Product_ID` int(8) NOT NULL,
  `Employee_ID` int(8) NOT NULL,
  `Quantity` int(5) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `CAddress_ID` int(8) NOT NULL,
  `Name` int(50) NOT NULL,
  `District` int(20) NOT NULL,
  `Division` int(20) NOT NULL,
  `Postal_Code` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `Customer_ID` int(8) NOT NULL,
  `Name` text NOT NULL,
  `CAddressID` int(8) NOT NULL,
  `Mobile` int(13) NOT NULL,
  `Mobile-2` int(13) NOT NULL,
  `Email` varchar(22) NOT NULL,
  `Comapany` varchar(20) NOT NULL,
  `Designation` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee_address`
--

CREATE TABLE `employee_address` (
  `EAddress_ID` int(8) NOT NULL,
  `Name` int(50) NOT NULL,
  `District` int(20) NOT NULL,
  `Division` int(20) NOT NULL,
  `Postal_Code` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE `employee_info` (
  `Employee_ID` int(8) NOT NULL,
  `Name` text NOT NULL,
  `EAddressID` int(8) NOT NULL,
  `Mobile` int(13) NOT NULL,
  `Mobile-2` int(13) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Company` varchar(20) NOT NULL,
  `Designation` text NOT NULL,
  `Salary` int(6) NOT NULL,
  `DOB` date NOT NULL,
  `BranchID` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FeedBackID` int(8) NOT NULL,
  `Name` text NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Message` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `project_info`
--

CREATE TABLE `project_info` (
  `ProjectID` int(11) NOT NULL,
  `Employee_ID` int(11) NOT NULL,
  `Target Date` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `resource_info`
--

CREATE TABLE `resource_info` (
  `ResID` int(8) NOT NULL,
  `Name` int(11) NOT NULL,
  `Description` int(11) NOT NULL,
  `Qte` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `lenght` int(11) NOT NULL,
  `Unit_Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `VendorID` int(8) NOT NULL,
  `Name` text NOT NULL,
  `Companay` text NOT NULL,
  `AddressID` int(8) NOT NULL,
  `Provides` text NOT NULL,
  `Mobile` int(13) NOT NULL,
  `Email` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch_info`
--
ALTER TABLE `branch_info`
  ADD PRIMARY KEY (`BranchID`);

--
-- Indexes for table `challan`
--
ALTER TABLE `challan`
  ADD PRIMARY KEY (`Challan_ID`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`CAddress_ID`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `employee_address`
--
ALTER TABLE `employee_address`
  ADD PRIMARY KEY (`EAddress_ID`);

--
-- Indexes for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `project_info`
--
ALTER TABLE `project_info`
  ADD PRIMARY KEY (`ProjectID`);

--
-- Indexes for table `resource_info`
--
ALTER TABLE `resource_info`
  ADD PRIMARY KEY (`ResID`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`VendorID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
