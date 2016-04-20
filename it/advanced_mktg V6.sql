-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 19, 2016 at 08:41 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `advanced_mktg`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `category` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `category`) VALUES
(1, 'Food'),
(2, 'Electronics'),
(3, 'Raw Material'),
(4, 'Entertainment'),
(5, 'Mobile');

-- --------------------------------------------------------

--
-- Table structure for table `create_deal`
--

CREATE TABLE `create_deal` (
  `deal_id` int(50) NOT NULL,
  `user_id` int(50) DEFAULT NULL,
  `user_name` varchar(64) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `deal_category` varchar(64) DEFAULT NULL,
  `qty` varchar(50) DEFAULT NULL,
  `max_order` int(50) DEFAULT NULL,
  `unit_price` varchar(50) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `time_restricted` varchar(10) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `number_discount_option` varchar(100) DEFAULT NULL,
  `number_discount_1` varchar(64) DEFAULT NULL,
  `amount_discount_1` varchar(64) DEFAULT NULL,
  `number_discount_2` varchar(64) DEFAULT NULL,
  `amount_discount_2` varchar(64) DEFAULT NULL,
  `number_discount_3` varchar(64) DEFAULT NULL,
  `amount_discount_3` varchar(64) DEFAULT NULL,
  `max_quantity` varchar(64) DEFAULT NULL,
  `location_restricted` varchar(10) DEFAULT NULL,
  `location_description` text,
  `shipping_included` varchar(10) DEFAULT NULL,
  `shipping_description` text,
  `deal_image` varchar(64) DEFAULT NULL,
  `deal_closed` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `create_deal`
--

INSERT INTO `create_deal` (`deal_id`, `user_id`, `user_name`, `title`, `description`, `deal_category`, `qty`, `max_order`, `unit_price`, `unit`, `time_restricted`, `start_date`, `end_date`, `number_discount_option`, `number_discount_1`, `amount_discount_1`, `number_discount_2`, `amount_discount_2`, `number_discount_3`, `amount_discount_3`, `max_quantity`, `location_restricted`, `location_description`, `shipping_included`, `shipping_description`, `deal_image`, `deal_closed`) VALUES
(56, NULL, NULL, 'Laptop', 'Sale of laptop description', '', '10', NULL, '250', 'Kg', 'yes', '2016-03-14', '2016-06-06', '2', '100', '200', '500', '100', '', '', '500', 'yes', 'Sale of laptop description', 'yes', '2', 'laptop.jpe', 0),
(57, NULL, NULL, 'iPhone', 'Sale of iphone description\r\nApple iPhone 5s 16GB (Space Gray) - Verizon Wireless\r\n16 GB Storage Capacity (Estimated Free Space 12.2 GB)', '5', '10', NULL, '250', 'Kg', 'yes', '2016-03-14', '2016-06-06', '2', '100', '200', '500', '100', '', '', '500', 'yes', 'Sale of iphone description', 'yes', '2', 'iphone.jpe', 0),
(58, 4, 'abc@gmail.com', 'Milk', 'Sale of food description', '1', '10', NULL, '250', 'case', 'yes', '2016-03-14', '2016-06-06', '2', '100', '200', '500', '100', '', '', '500', 'yes', 'Sale of food description', 'yes', '2', 'milk.jpe', 0),
(59, 18, 'sv.nikita91@gmail.com', 'Sugar', 'Sale of sugar description', '1', '10', NULL, '250', 'case', 'yes', '2016-03-14', '2016-06-06', '2', '100', '200', '500', '100', '', '', NULL, 'yes', 'Sale of sugar description', 'yes', '2', 'sugar bag.jpe', 0),
(60, 18, 'sv.nikita91@gmail.com', 'Rice', 'Sale of Rice description', '1', '10', NULL, '250', 'case', 'yes', '2016-03-14', '2016-06-06', '2', '100', '200', '500', '100', '', '', NULL, 'yes', 'Sale of Rice description', 'yes', '2', 'Rice bag.jpe', 0),
(61, NULL, NULL, 'Rice', 'Sale of Rice description', '1', '10', NULL, '250', 'case', 'yes', '2016-03-14', '2016-06-06', '2', '100', '20', '500', '10', '', '', NULL, 'yes', 'Sale of Rice description', 'yes', '2', 'Rice bag.jpe', 0),
(62, NULL, '1', 'New product', 'Sale of Rice description', '', '10', NULL, '250', 'case', 'yes', '2016-03-14', '2016-06-06', '2', '100', '20', '500', '10', '', '', NULL, 'yes', 'Sale of Rice description', 'yes', '2', 'Rice bag.jpe', 0),
(66, NULL, NULL, 'table', 'description of table', '', '10', NULL, '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', NULL, 'no', 'description of table', 'no', '', 'red table.jpe', 0),
(67, NULL, NULL, 'table', 'description of table', '', '10', NULL, '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', NULL, 'no', 'description of table', 'no', '', 'red table.jpe', 0),
(68, NULL, NULL, 'table', 'description of table', '', '10', NULL, '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', NULL, 'no', 'description of table', 'no', '', 'table.jpe', 0),
(69, NULL, NULL, 'table', 'description of table', '', '10', NULL, '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', NULL, 'no', 'description of table', 'no', '', 'black table.jpe', 0),
(70, 18, 'sv.nikita91@gmail.com', 'table', 'description of table', '', '10', NULL, '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', NULL, 'no', 'description of table', 'no', '', 'black table.jpe', 0),
(71, NULL, NULL, 'table', 'description of table', '', '10', NULL, '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', NULL, 'no', 'description of table', 'no', '', 'black table.jpe', 0),
(72, NULL, NULL, 'table', 'description of table', '', '10', NULL, '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', NULL, 'no', 'description of table', 'no', '', 'table.jpe', 0),
(73, 18, 'sv.nikita91@gmail.com', 'table', 'description of table', '', '10', NULL, '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', NULL, 'no', 'description of table', 'no', '', 'table.jpe', 0),
(74, NULL, NULL, 'table', 'description of table', '', '10', NULL, '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', NULL, 'no', 'description of table', 'no', '', 'table.jpe', 0),
(75, NULL, NULL, 'table', 'description of table', '', '10', NULL, '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', NULL, 'no', 'description of table', 'no', '', 'table.jpe', 0),
(76, 18, 'sv.nikita91@gmail.com', 'table', 'description of table', '', '10', NULL, '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', NULL, 'no', 'description of table', 'no', '', 'table.jpe', 0),
(77, NULL, NULL, 'table', 'description of table', '3', '10', NULL, '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', NULL, 'no', 'description of table', 'no', '', 'black table.jpe', 0),
(78, NULL, NULL, 'table', 'description of table', '3', '10', NULL, '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', NULL, 'no', 'description of table', 'no', '', 'table.jpe', 0),
(79, NULL, NULL, 'table', 'description of table', '3', '10', NULL, '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', NULL, 'no', 'description of table', 'no', '', 'black table.jpe', 0),
(80, NULL, NULL, 'table', 'description of table', '', '10', NULL, '50', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', NULL, 'no', 'description of table', 'no', '', 'black table.jpe', 0),
(82, NULL, NULL, 'deal 12', 'description goes here', '1', '10', NULL, '20', 'bottles', 'yes', '2016-03-29', '2016-05-03', '2', '500', '12', '800', '21', '', '', NULL, 'yes', 'description goes here', 'yes', '2', 'sugar bag.jpe', 0),
(83, NULL, NULL, 'deal 12', 'description goes here', '1', '10', NULL, '20', 'bottles', 'yes', '2016-03-29', '2016-05-03', '2', '500', '12', '800', '21', '', '', NULL, 'yes', 'description goes here', 'yes', '2', 'sugar bag.jpe', 0),
(84, 4, 'abc@gmail.com', 'deal 12', 'description goes here', '1', '10', NULL, '20', 'bottles', 'yes', '2016-03-29', '2016-05-03', '2', '500', '12', '800', '21', '', '', NULL, 'yes', 'description goes here', 'yes', '2', 'sugar bag.jpe', 0),
(85, 4, 'abc@gmail.com', 'deal 13', 'description with user name', '1', '20', NULL, '50', 'bottles', 'yes', '2016-08-12', '2016-09-12', '1', '500', '35', '', '', '', '', NULL, 'no', 'description with user name', 'no', '', 'sugar bag.jpe', 0),
(86, 4, 'abc@gmail.com', 'deal 21', 'lskdahgla', '1', '20', NULL, '56', 'bags', 'yes', '2016-04-01', '2016-04-04', '1', '20', '10', '', '', '', '', NULL, 'no', 'lskdahgla', 'no', '', 'laptop.jpe', 0),
(87, 4, 'abc@gmail.com', 'deal 23', 'test data', NULL, '20', NULL, '50', 'bags', 'yes', '2016-04-01', '2016-04-13', '3', '100', '45', '200', '25', '600', '15', '600', 'no', 'test data', 'no', '', 'laptop.jpe', 0),
(88, 4, 'abc@gmail.com', 'test 2', 'checking for catefory', '4', '50', NULL, '10', 'vpack', 'yes', '2016-08-12', '2016-09-12', '1', '500', '5', '', '', '', '', NULL, 'no', 'checking for catefory', 'no', '', 'laptop.jpe', 0),
(89, 4, 'abc@gmail.com', 'deal 23', 'Testing user key', '2', '50', NULL, '10', 'bottles', 'yes', '2016-04-01', '2016-04-30', '1', '800', '7.50', '', '', '', '', NULL, 'no', 'Testing user key', 'no', '', 'laptop.jpe', 0),
(90, 4, 'abc@gmail.com', 'deal 23', 'Testing user key', '2', '50', NULL, '10', 'bottles', 'yes', '2016-04-01', '2016-04-30', '1', '800', '7.50', '', '', '', '', NULL, 'no', 'Testing user key', 'no', '', 'laptop.jpe', 0),
(91, 4, 'abc@gmail.com', 'deal 23', 'Testing user key', '2', '50', NULL, '10', 'bottles', 'yes', '2016-04-01', '2016-04-30', '1', '800', '7.50', '', '', '', '', NULL, 'no', 'Testing user key', 'no', '', 'laptop.jpe', 0),
(94, 4, 'abc@gmail.com', 'Cycle', 'new product cycle', '4', '5', NULL, '500', 'case', 'yes', '2016-04-09', '2016-04-30', '1', '100', '350', '', '', '', '', NULL, 'no', 'new product cycle', 'no', '', 'mtb-cycle-250x250.jpg', 0),
(95, 4, 'abc@gmail.com', 'Cycle', 'new product cycle', '4', '5', NULL, '500', 'case', 'yes', '2016-04-09', '2016-04-30', '1', '100', '350', '', '', '', '', '100', 'no', 'new product cycle', 'no', '', 'mtb-cycle-250x250.jpg', 0),
(96, 4, 'abc@gmail.com', 'Cycle', 'new product cycle', '4', '5', NULL, '500', 'case', 'yes', '2016-04-09', '2016-04-30', '1', '100', '350', '', '', '', '', '100', 'no', 'new product cycle', 'no', '', 'mtb-cycle-250x250.jpg', 0),
(97, 4, 'abc@gmail.com', 'Tyre', 'new product cycle tyre', '4', '50', NULL, '500', 'case', 'yes', '2016-04-09', '2016-04-30', '2', '100', '350', '200', '300', '', '', '200', 'no', 'new product cycle tyre', 'no', '', 'mtb-cycle-250x250.jpg', 0),
(98, 4, 'abc@gmail.com', 'Tyre', 'new product cycle tyre', '4', '50', NULL, '500', 'case', 'yes', '2016-04-09', '2016-04-30', '3', '100', '350', '200', '300', '250', '250', '250', 'no', 'new product cycle tyre', 'no', '', 'mtb-cycle-250x250.jpg', 1),
(99, 22, 'sv@yahoo.com', 'cycle', 'siahgiaw', '1', '10', 25, '100', 'bags', 'no', '2016-04-16', '2016-05-16', '2', '100', '25', '200', '20', '', '', NULL, 'no', 'siahgiaw', 'no', '', '', 0),
(100, 22, 'sv@yahoo.com', 'cycle', 'siahgiaw', '1', '10', 25, '100', 'bags', 'no', '2016-04-16', '2016-05-16', '2', '100', '25', '200', '20', '', '', NULL, 'no', 'siahgiaw', 'no', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `join_deal`
--

CREATE TABLE `join_deal` (
  `order_id` int(32) NOT NULL,
  `create_deal_id` int(32) DEFAULT NULL,
  `user_id` int(32) DEFAULT NULL,
  `order_quantity` int(64) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL,
  `state` varchar(64) DEFAULT NULL,
  `zipcode` int(64) DEFAULT NULL,
  `closure_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `join_deal`
--

INSERT INTO `join_deal` (`order_id`, `create_deal_id`, `user_id`, `order_quantity`, `address`, `state`, `zipcode`, `closure_date`) VALUES
(1, NULL, 4, NULL, NULL, NULL, NULL, NULL),
(2, 91, 4, NULL, NULL, NULL, NULL, NULL),
(3, 91, 4, 50, NULL, NULL, NULL, NULL),
(4, 91, 4, 50, '13374 Linnea St', NULL, NULL, NULL),
(5, 91, 4, 50, '13374 Linnea St', 'California', 92880, NULL),
(6, 91, 4, 50, '13374 Linnea St', 'California', 92880, '2016-04-30'),
(7, 91, 4, 50, '13374 Linnea St', 'California', 92880, '2016-04-30'),
(8, 98, 4, 50, '13374 Linnea St', 'California', 92880, '2016-04-30'),
(9, 98, 22, 50, '750 Hamner', 'CA', 94401, '2016-04-30'),
(10, 87, 22, 100, '13374 Linnea St', 'California', 92880, '2016-04-13'),
(11, 87, 22, 100, '13374 Linnea St', 'California', 92880, '2016-04-13'),
(12, 87, 22, 100, '13374 Linnea St', 'California', 92880, '2016-04-13'),
(13, 87, 22, 100, '13374 Linnea St', 'California', 92880, '2016-04-13'),
(14, 87, 22, 100, '13374 Linnea St', 'California', 92880, '2016-04-13');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `business_name` varchar(50) DEFAULT NULL,
  `food_category` tinyint(1) DEFAULT NULL,
  `electronics_category` tinyint(1) DEFAULT NULL,
  `rawmaterial_Category` tinyint(1) DEFAULT NULL,
  `entertainment_Category` tinyint(1) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `receive_message` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `type`, `email`, `password`, `first_name`, `last_name`, `business_name`, `food_category`, `electronics_category`, `rawmaterial_Category`, `entertainment_Category`, `Address`, `mobile_number`, `receive_message`) VALUES
(4, 'seller', 'abc@gmail.com', 'a8b767bb9cf0938dc7f40603f33987e5', 'Jack', 'Seller', 'Electronics', 1, 1, 0, 0, '133 liNan', '9884710231', 'no'),
(12, 'seller', 'sv.nikita.nikita@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055<br/>', 'jack', 'VIJAYAN', 'food', 0, 0, 1, 0, '31B/116 LOGANATHAN STREET\r\n', '099405924', 'yes'),
(18, 'seller', 'sv.nikita91@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'jack', 'Sadinidhi', '1991', 0, 0, 1, 1, '13374 Linnea St\r\nEastvale', '9512646992', 'yes'),
(19, 'buyer', 'sv.nikita91@yahoo.com', '1234', 'jack', 'SADINIDHI', NULL, 1, 1, 0, 0, '13374 Linnea St', '9512646992', 'yes'),
(20, 'seller', 'svn@gmail.com', 'b00a50c448238a71ed479f81fa4d9066', 'jack', 'sadinidhi', 'Food', 1, 0, 0, 0, '31b Loganathan st\r\nambattur', '9940592419', 'yes'),
(22, 'buyer', 'sv@yahoo.com', 'b00a50c448238a71ed479f81fa4d9066', 'jack', 'Buyer', 'food', 1, 0, 1, 0, '31 Nutwood ave', '9940596992', 'yes'),
(23, 'seller', 'sv.nikita91@advanced.com', 'a8b767bb9cf0938dc7f40603f33987e5', 'jack', 'Sadinidhi', '1991', 1, 0, 0, 0, '13374 Linnea St\r\nEastvale', '9512646992', 'yes'),
(24, 'buyer', 'sv.nikita91@yahoo.com', '', 'Nikita', 'vijayan', NULL, 0, 0, 1, 1, '13374 corona', '9512646992', 'yes'),
(25, 'buyer', 'sv.nikita91@yahoo.com', 'b00a50c448238a71ed479f81fa4d9066', 'Nikita', 'vijayan', NULL, 0, 0, 1, 1, '13374 corona', '9512646992', 'yes'),
(26, 'buyer', 'sv.nikita91@yahoo.com', 'b00a50c448238a71ed479f81fa4d9066', 'Nikita', 'vijayan', NULL, 0, 0, 1, 1, '13374 corona', '9512646992', 'yes'),
(27, 'buyer', 'sv.nikita.nikita@gmail.com', 'b00a50c448238a71ed479f81fa4d9066', 'Nikita', 'vija', NULL, 0, 1, 0, 0, '31 loganathan ambattur', '9940592419', 'yes'),
(28, 'buyer', 'qwer@qwer.com', 'e369853df766fa44e1ed0ff613f563bd', 'Buyer', 'Lier', NULL, 0, 1, 0, 0, 'qwer', '3333333333', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `create_deal`
--
ALTER TABLE `create_deal`
  ADD PRIMARY KEY (`deal_id`),
  ADD KEY `id` (`user_id`);

--
-- Indexes for table `join_deal`
--
ALTER TABLE `join_deal`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `create_deal`
--
ALTER TABLE `create_deal`
  MODIFY `deal_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `join_deal`
--
ALTER TABLE `join_deal`
  MODIFY `order_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `create_deal`
--
ALTER TABLE `create_deal`
  ADD CONSTRAINT `create_deal_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `register` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
