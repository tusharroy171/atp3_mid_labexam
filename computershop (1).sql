-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 09:19 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `computershop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(20) NOT NULL,
  `productid` int(10) NOT NULL,
  `payment` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `productid`, `payment`) VALUES
(1, 'emma', 3800, 5, 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(10) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `catagory` varchar(30) NOT NULL,
  `subcatagory` varchar(30) DEFAULT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `cname`, `catagory`, `subcatagory`, `description`) VALUES
(1, '  XPG Flame 8GB  Laptop RAM ', 4500, 'ADATA', 'storage', NULL, 'Excellent Cooling and Stability\r\nconsume less power\r\nHigh Durability\r\nMore Accessible Overclocking'),
(2, '8GB DDR4 2666 MHz Desktop RAM', 4500, 'ADATA', 'storage', NULL, 'Unique heatsink design\r\n    Operating voltage: 1.2V\r\n    lifetime Warranty Limited\r\n\r\n'),
(3, '1TB portable hard disk', 15000, 'DELL', 'storage', 'portable storage', '256-Bit AES Hardware Encryption\r\n2TB Storage Capacity\r\nUSB 3.0 Type-A & Type-C\r\nWoven Fabric Exterio'),
(4, '32GB pendrive', 1500, 'San Disk', 'storage', 'portable storage', ' Available capacity: 32GB\r\n    High Speed USB 3.1 Compatible\r\n    Reading speed: Above 85Mbps\r\n\r\n'),
(5, ' Window Side Panel Casing', 3800, 'Golden Field', 'casing', NULL, 'ATX Gaming Case\r\nFull Window Side Panel\r\nStandard PSU\r\nBlue LED Fan'),
(6, '240 GB ssd', 5000, 'DELL', 'storage', 'parmanent storage', '256-Bit AES Hardware Encryption\r\n2TB Storage Capacity\r\nUSB 3.0 Type-A & Type-C\r\nWoven Fabric Exterio'),
(7, '17inch monitor', 55000, 'DELL', 'monitor', '', '17inch, high quality'),
(8, 'Acer Aspire A314-31 P9V3 PQC ', 31000, 'Acer', 'laptop', NULL, 'Intel® PQC ™ N4200 Processor (1.10 GHz up to 2.50 GHz)\r\n4GB DDR3L Ram\r\n1TB Hard Disk Drive\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `comment` varchar(20) NOT NULL,
  `productid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `type`) VALUES
(11, 'admin', 'admin', 1),
(14, 'tushar', 'roy', 1),
(15, 'sifat', '7890', 2),
(16, 'robin', '1234', 2),
(17, 'tushar', '1234', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
