-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2016 at 12:06 AM
-- Server version: 5.7.9-log
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `advanced_mktg`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(64) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

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

CREATE TABLE IF NOT EXISTS `create_deal` (
  `deal_id` int(50) NOT NULL AUTO_INCREMENT,
  `user_id` int(50) DEFAULT NULL,
  `user_name` varchar(64) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `deal_category` varchar(64) DEFAULT NULL,
  `qty` varchar(50) DEFAULT NULL,
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
  `location_restricted` varchar(10) DEFAULT NULL,
  `location_description` text,
  `shipping_included` varchar(10) DEFAULT NULL,
  `shipping_description` text,
  `deal_image` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`deal_id`),
  KEY `id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `create_deal`
--

INSERT INTO `create_deal` (`deal_id`, `user_id`, `user_name`, `title`, `description`, `deal_category`, `qty`, `unit_price`, `unit`, `time_restricted`, `start_date`, `end_date`, `number_discount_option`, `number_discount_1`, `amount_discount_1`, `number_discount_2`, `amount_discount_2`, `number_discount_3`, `amount_discount_3`, `location_restricted`, `location_description`, `shipping_included`, `shipping_description`, `deal_image`) VALUES
(56, NULL, NULL, 'Laptop', 'Sale of laptop description', '', '10', '20', 'case', 'yes', '2016-03-14', '2016-06-06', '2', '100', '200', '500', '100', '', '', 'yes', 'Sale of laptop description', 'yes', '2', 'laptop.jpe'),
(57, NULL, NULL, 'iPhone', 'Sale of iphone description\r\nApple iPhone 5s 16GB (Space Gray) - Verizon Wireless\r\n16 GB Storage Capacity (Estimated Free Space 12.2 GB)', '5', '10', '20', 'case', 'yes', '2016-03-14', '2016-06-06', '2', '100', '200', '500', '100', '', '', 'yes', 'Sale of iphone description', 'yes', '2', 'iphone.jpe'),
(58, 4, 'abc@gmail.com', 'Milk', 'Sale of food description', '1', '10', '20', 'case', 'yes', '2016-03-14', '2016-06-06', '2', '100', '200', '500', '100', '', '', 'yes', 'Sale of food description', 'yes', '2', 'milk.jpe'),
(59, 18, 'sv.nikita91@gmail.com', 'Sugar', 'Sale of sugar description', '1', '10', '20', 'case', 'yes', '2016-03-14', '2016-06-06', '2', '100', '200', '500', '100', '', '', 'yes', 'Sale of sugar description', 'yes', '2', 'sugar bag.jpe'),
(60, 18, 'sv.nikita91@gmail.com', 'Rice', 'Sale of Rice description', '1', '10', '20', 'case', 'yes', '2016-03-14', '2016-06-06', '2', '100', '200', '500', '100', '', '', 'yes', 'Sale of Rice description', 'yes', '2', 'Rice bag.jpe'),
(61, NULL, NULL, 'Rice', 'Sale of Rice description', '1', '10', '20', 'case', 'yes', '2016-03-14', '2016-06-06', '2', '100', '20', '500', '10', '', '', 'yes', 'Sale of Rice description', 'yes', '2', 'Rice bag.jpe'),
(62, NULL, '1', 'New product', 'Sale of Rice description', '', '10', '20', 'case', 'yes', '2016-03-14', '2016-06-06', '2', '100', '20', '500', '10', '', '', 'yes', 'Sale of Rice description', 'yes', '2', 'Rice bag.jpe'),
(66, NULL, NULL, 'table', 'description of table', '', '10', '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', 'no', 'description of table', 'no', '', 'red table.jpe'),
(67, NULL, NULL, 'table', 'description of table', '', '10', '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', 'no', 'description of table', 'no', '', 'red table.jpe'),
(68, NULL, NULL, 'table', 'description of table', '', '10', '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', 'no', 'description of table', 'no', '', 'table.jpe'),
(69, NULL, NULL, 'table', 'description of table', '', '10', '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', 'no', 'description of table', 'no', '', 'black table.jpe'),
(70, 18, 'sv.nikita91@gmail.com', 'table', 'description of table', '', '10', '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', 'no', 'description of table', 'no', '', 'black table.jpe'),
(71, NULL, NULL, 'table', 'description of table', '', '10', '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', 'no', 'description of table', 'no', '', 'black table.jpe'),
(72, NULL, NULL, 'table', 'description of table', '', '10', '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', 'no', 'description of table', 'no', '', 'table.jpe'),
(73, 18, 'sv.nikita91@gmail.com', 'table', 'description of table', '', '10', '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', 'no', 'description of table', 'no', '', 'table.jpe'),
(74, NULL, NULL, 'table', 'description of table', '', '10', '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', 'no', 'description of table', 'no', '', 'table.jpe'),
(75, NULL, NULL, 'table', 'description of table', '', '10', '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', 'no', 'description of table', 'no', '', 'table.jpe'),
(76, 18, 'sv.nikita91@gmail.com', 'table', 'description of table', '', '10', '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', 'no', 'description of table', 'no', '', 'table.jpe'),
(77, NULL, NULL, 'table', 'description of table', '3', '10', '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', 'no', 'description of table', 'no', '', 'black table.jpe'),
(78, NULL, NULL, 'table', 'description of table', '3', '10', '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', 'no', 'description of table', 'no', '', 'table.jpe'),
(79, NULL, NULL, 'table', 'description of table', '3', '10', '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', 'no', 'description of table', 'no', '', 'black table.jpe'),
(80, NULL, NULL, 'table', 'description of table', '', '10', '5', 'case', 'yes', '2016-03-15', '2016-05-03', '1', '15', '20', '', '', '', '', 'no', 'description of table', 'no', '', 'black table.jpe'),
(82, NULL, NULL, 'deal 12', 'description goes here', '1', '10', '20', 'bottles', 'yes', '2016-03-29', '2016-05-03', '2', '500', '12', '800', '21', '', '', 'yes', 'description goes here', 'yes', '2', 'sugar bag.jpe'),
(83, NULL, NULL, 'deal 12', 'description goes here', '1', '10', '20', 'bottles', 'yes', '2016-03-29', '2016-05-03', '2', '500', '12', '800', '21', '', '', 'yes', 'description goes here', 'yes', '2', 'sugar bag.jpe'),
(84, 4, 'abc@gmail.com', 'deal 12', 'description goes here', '1', '10', '20', 'bottles', 'yes', '2016-03-29', '2016-05-03', '2', '500', '12', '800', '21', '', '', 'yes', 'description goes here', 'yes', '2', 'sugar bag.jpe'),
(85, 4, 'abc@gmail.com', 'deal 13', 'description with user name', '1', '20', '50', 'bottles', 'yes', '2016-08-12', '2016-09-12', '1', '500', '35', '', '', '', '', 'no', 'description with user name', 'no', '', 'sugar bag.jpe'),
(86, 4, 'abc@gmail.com', 'deal 21', 'lskdahgla', '1', '20', '56', 'bags', 'yes', '2016-04-01', '2016-04-04', '1', '20', '10', '', '', '', '', 'no', 'lskdahgla', 'no', '', 'laptop.jpe'),
(87, 4, 'abc@gmail.com', 'deal 23', 'test data', NULL, '20', '50', 'bags', 'yes', '2016-04-01', '2016-04-13', '3', '100', '45', '200', '25', '600', '15', 'no', 'test data', 'no', '', 'laptop.jpe'),
(88, 4, 'abc@gmail.com', 'test 2', 'checking for catefory', '4', '50', '10', 'vpack', 'yes', '2016-08-12', '2016-09-12', '1', '500', '5', '', '', '', '', 'no', 'checking for catefory', 'no', '', 'laptop.jpe'),
(89, 4, 'abc@gmail.com', 'deal 23', 'Testing user key', '2', '50', '10', 'bottles', 'yes', '2016-04-01', '2016-04-30', '1', '800', '7.50', '', '', '', '', 'no', 'Testing user key', 'no', '', 'laptop.jpe'),
(90, 4, 'abc@gmail.com', 'deal 23', 'Testing user key', '2', '50', '10', 'bottles', 'yes', '2016-04-01', '2016-04-30', '1', '800', '7.50', '', '', '', '', 'no', 'Testing user key', 'no', '', 'laptop.jpe'),
(91, 4, 'abc@gmail.com', 'deal 23', 'Testing user key', '2', '50', '10', 'bottles', 'yes', '2016-04-01', '2016-04-30', '1', '800', '7.50', '', '', '', '', 'no', 'Testing user key', 'no', '', 'laptop.jpe');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(32) NOT NULL AUTO_INCREMENT,
  `create_deal_id` int(32) DEFAULT NULL,
  `user_id` int(32) DEFAULT NULL,
  `order_quantity` int(64) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL,
  `state` varchar(64) DEFAULT NULL,
  `zipcode` int(32) DEFAULT NULL,
  `closure_date` date DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
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
  `receive_message` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `type`, `email`, `password`, `first_name`, `last_name`, `business_name`, `food_category`, `electronics_category`, `rawmaterial_Category`, `entertainment_Category`, `Address`, `mobile_number`, `receive_message`) VALUES
(4, 'seller', 'abc@gmail.com', 'a8b767bb9cf0938dc7f40603f33987e5', 'jack', 'sparrow', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'seller', 'sv.nikita.nikita@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055<br/>', 'NIKITA', 'VIJAYAN', 'food', 0, 0, 1, 0, '31B/116 LOGANATHAN STREET\r\n', '099405924', 'yes'),
(18, 'seller', 'sv.nikita91@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Nikita', 'Sadinidhi', '1991', 0, 0, 1, 1, '13374 Linnea St\r\nEastvale', '9512646992', 'yes'),
(19, 'buyer', 'sv.nikita91@yahoo.com', '1234', 'Nikita', 'SADINIDHI', NULL, 1, 1, 0, 0, '13374 Linnea St', '9512646992', 'yes'),
(20, 'seller', 'svn@gmail.com', 'b00a50c448238a71ed479f81fa4d9066', 'nikita', 'sadinidhi', 'Food', 1, 0, 0, 0, '31b Loganathan st\r\nambattur', '9940592419', 'yes'),
(22, 'buyer', 'sv@yahoo.com', 'b00a50c448238a71ed479f81fa4d9066', 'Nikita', 'Buyer', NULL, 0, 0, 0, 0, '31 loganathan ambattur', '9940596992', 'yes'),
(23, 'seller', 'sv.nikita91@advanced.com', 'a8b767bb9cf0938dc7f40603f33987e5', 'Nikita', 'Sadinidhi', '1991', 1, 0, 0, 0, '13374 Linnea St\r\nEastvale', '9512646992', 'yes');

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
