-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 07, 2016 at 11:39 AM
-- Server version: 5.5.45-cll-lve
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `advanced_marketing`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(64) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `category`) VALUES
(1, 'Food'),
(2, 'Electronics'),
(3, 'Raw Material'),
(4, 'Entertainment'),
(5, 'Mobile'),
(6, 'Other');

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
  `max_order` int(50) DEFAULT NULL,
  `unit_price` varchar(50) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `other_unit` varchar(16) DEFAULT NULL,
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
  `deal_closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`deal_id`),
  KEY `id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `create_deal`
--

INSERT INTO `create_deal` (`deal_id`, `user_id`, `user_name`, `title`, `description`, `deal_category`, `qty`, `max_order`, `unit_price`, `unit`, `other_unit`, `time_restricted`, `start_date`, `end_date`, `number_discount_option`, `number_discount_1`, `amount_discount_1`, `number_discount_2`, `amount_discount_2`, `number_discount_3`, `amount_discount_3`, `max_quantity`, `location_restricted`, `location_description`, `shipping_included`, `shipping_description`, `deal_image`, `deal_closed`) VALUES
(57, NULL, 'abc@gmail.com', 'iPhone', 'New 8-megapixel iSight camera\r\nA8 chip with 64-bit architecture\r\nM8 motion coprocessor included\r\n\r\nDETAILS:\r\nSale of iphone description\r\nApple iPhone 5s 16GB (Space Gray) - Verizon Wireless\r\n16 GB Storage Capacity (Estimated Free Space 12.2 GB)', '5', '10', 20, '250', 'case', NULL, 'yes', '2016-03-14', '2016-06-06', '2', '100', '200', '500', '100', '', '', '500', 'yes', 'Florida', 'yes', '2', 'iphone.png', 0),
(111, 4, 'abc@gmail.com', 'Laptop', 'With the latest Intel processors and plenty of hard drive space, you can work, play, multitask, and store more of what matters to you. Get reliable power and storage you can trust. The crisp HD screen lets you enjoy your photos, videos, and web pages in detail. With Full HD, get even more out of your display. Life can be unpredictable, but your HP laptop shouldnâ€™t be. So whether itâ€™s last-minute projects or spontaneous movie nights, enjoy outstanding performance backed by over 200 tests.', '2', '10', 20, '350', 'case', '', 'no', '2016-04-30', '2016-05-30', '2', '500', '300', '700', '250', '', '', '700', 'yes', 'California', 'yes', '7', 'Laptop.png', 0),
(112, 4, 'abc@gmail.com', 'Tablet', 'With the latest Intel processors and plenty of hard drive space, you can work, play, multitask, and store more of what matters to you. Get reliable power and storage you can trust. The crisp HD screen lets you enjoy your photos, videos, and web pages in detail. With Full HD, get even more out of your display. Life can be unpredictable, but your HP laptop shouldnâ€™t be. So whether itâ€™s last-minute projects or spontaneous movie nights, enjoy outstanding performance backed by over 200 tests.', '2', '10', 20, '350', 'case', '', 'no', '2016-04-30', '2016-05-30', '3', '500', '300', '700', '250', '900', '200', '900', 'yes', 'California', 'yes', '7', 'tab.png', 0),
(113, 4, 'abc@gmail.com', 'Tablet', 'With the latest Intel processors and plenty of hard drive space, you can work, play, multitask, and store more of what matters to you. Get reliable power and storage you can trust. The crisp HD screen lets you enjoy your photos, videos, and web pages in detail. With Full HD, get even more out of your display. Life can be unpredictable, but your HP laptop shouldnâ€™t be. So whether itâ€™s last-minute projects or spontaneous movie nights, enjoy outstanding performance backed by over 200 tests.', '2', '10', 20, '350', 'case', '', 'yes', '2016-04-30', '2016-05-07', '2', '500', '300', '700', '250', '', '', '700', 'yes', 'California', 'yes', '7', 'tab.png', 0),
(114, 4, 'sv.nikita.nikita@gmail.com', 'Tablet', 'With the latest Intel processors and plenty of hard drive space, you can work, play, multitask, and store more of what matters to you. Get reliable power and storage you can trust. The crisp HD screen lets you enjoy your photos, videos, and web pages in detail. With Full HD, get even more out of your display. Life can be unpredictable, but your HP laptop shouldnâ€™t be. So whether itâ€™s last-minute projects or spontaneous movie nights, enjoy outstanding performance backed by over 200 tests.', '2', '20', 50, '200', 'case', '', 'yes', '2016-04-30', '2016-05-07', '2', '500', '150', '700', '100', '', '', '700', 'yes', 'California', 'yes', '7', 'tab.png', 0),
(115, 47, 'irani.sam@gmail.com', 'Rice', 'Long Grain White Rice - Bulk 50 Pound Bag.There are only two species of cultivated rice in the world, Oryza sativa (Asian rice) and Oryza glaberrima (African rice).', '1', '12', 46, '26', 'bags', '', 'no', '2016-04-30', '2016-05-30', '1', '400', '21', '', '', '', '', '400', 'no', '', 'no', '', 'bag-of-rice.png', 0),
(116, 47, 'irani.sam@gmail.com', 'Rice', 'Basmati rice with a high quality 10 lb in each bag. There are only two species of cultivated rice in the world, Oryza sativa (Asian rice) and Oryza glaberrima (African rice).', '1', '1', 10, '50', 'bags', '', 'no', '2016-04-30', '2016-05-30', '3', '100', '40', '500', '35', '1000', '30', '1000', 'no', '', 'no', '', 'bag-of-rice.png', 0),
(117, 47, 'irani.sam@gmail.com', 'JoySTICK', 'Ergonomic, ambidextrous stick with trigger and five buttons. All positioned for instant access in the heat of battle POV switch allows you to easily change cockpit views to keep track of your enemies Pinkie switch operates as a normal control or can be programmed as a shift button to double up your control functions Throttle lever for smooth, realistic engine control / Twist action rudder control / Unique removable legs for easy storage Compatible: Windows 8, Windows 7, XP/XP64, and Vista.Supported by Saiteks powerful SST programming software', '2', '20', 30, '90', 'pallet', '', 'no', '2016-04-30', '2016-05-30', '2', '100', '85', '200', '75', '', '', '200', 'no', '', 'no', '', 'joystick.png', 0),
(118, 47, 'irani.sam@gmail.com', 'coffee', 'coffee with great taste 20 oz per bag', '1', '2', 50, '30', 'bags', '', 'no', '2016-04-30', '2016-05-30', '2', '100', '25', '200', '20', '', '', '200', 'no', '', 'yes', '4.50', 'coffee.png', 0),
(119, 47, 'irani.sam@gmail.com', 'organic coffee', 'organic coffee bags with the highest quality', '1', '1', 500, '40', 'bags', '', 'no', '2016-04-30', '2016-05-30', '1', '1000', '20', '', '', '', '', '1000', 'yes', 'USa only', 'no', '', 'coffeebag.png', 0),
(122, 4, 'sv.nikita.nikita@gmail.com', 'basmati rice', 'tibar basmati rice 25 lb per bag high quality. Carefully nurtured, grown and processed this 3/4th of full basmati grain length of Kohinoor Basmati Rice belongs to the ever popular Kohinoor Super Silver family and are gifted with all the features for which a Kohinoor Super Silver Basmati is known for. The Kohinoor Seal of Quality Each pack of Kohinoor Basmati Rice Tibar comes to you with the guaranteed quality standards of Kohinoor products.', '1', '1', 10, '75', 'bags', '', 'yes', '2016-05-01', '2016-05-06', '3', '10', '70', '100', '65', '1000', '60', '1000', 'yes', 'us and canada', 'yes', '7', 'indiagate.png', 1),
(123, 35, 'kevin.csuf@gmail.com', 'Toy Story', 'Toy Story fans can play with Buzz, Woody, and the rest of the gang at home or on the go', '4', '10', 100, '100', 'case', '', 'no', '2016-04-30', '2016-05-30', '3', '30', '90', '60', '80', '100', '60', '100', 'no', '', 'no', '', 'ToyStory.png', 0),
(125, 42, 'soniarawat@csu.fullerton.edu', 'SAMSUNG', 'The Samsung Galaxy Core Prime offers access to the features you want right from your Home screen. Videos, websites and more look sharp on the 4.5-inch WVGA display. ', '2', '5', 10, '149.99', 'case', '', 'no', '2016-04-30', '2016-05-30', '1', '20', '119.99', '', '', '', '', '20', 'no', '', 'no', '', 'samsung.png', 0),
(126, 35, 'kevin.csuf@gmail.com', 'Wireless Controller', 'DualShock4 has everything you have come to expect from the controller that pushes the boundaries of play on the PlayStaton 4 system.', '4', '5', 50, '10', 'other', 'ea', 'no', '2016-04-30', '2016-05-30', '2', '30', '9', '50', '7', '', '', '50', 'yes', 'Orange county only', 'yes', '10', 'playstation.png', 0),
(127, 42, 'soniarawat@csu.fullerton.edu', 'APPLE IPOD TOUCH', 'Phone book, calendar, notes, VoiceOver, YouTube streaming, Voice Control, Voice Memos, calculator, multi-touch interface, web browsing, Nike + iPod support, FaceTime, Game Center, two built-in digital cameras, three-axis gyro sensor, accelerometer, Apple AirPlay support, iCloud support', '5', '10', 20, '270', 'case', '', 'yes', '2016-05-01', '2016-05-13', '2', '20', '219.99', '30', '210.99', '', '', '30', 'no', '', 'yes', '5.66', 'ipod.png', 1),
(128, 42, 'soniarawat@csu.fullerton.edu', 'IPHONE ', 'Iphone 5c features Wi-Fi Support of Wi-Fi 802.11 a/b/g/n , dual-band , WiFi GPS Integrated which assisted GPS and GLONASS Audio. Proprietary ringtones Audio formats supported: ...', '5', '5', 10, '119.99', 'case', '', 'yes', '2016-05-02', '2016-05-30', '3', '20', '99.99', '40', '85.99', '60', '70.99', '60', 'yes', 'for california only', 'no', '', 'phone.png', 0),
(129, 47, 'irani.sam@gmail.com', 'Veggie burger', 'The first products to appear will be Quorn Vegan Pieces and Quorn Vegan Hot & Spicy Burgers, with further products in the vegan range to follow.', '1', '4', 100, '5', 'case', '', 'no', '2016-04-30', '2016-05-30', '3', '100', '4', '1000', '3', '10000', '2.50', '10000', 'no', '', 'no', '', 'quorn-vegan-burger.png', 0),
(130, 35, 'kevin.csuf@gmail.com', 'Ladies Cruiser Bike', 'Comfort is built in with a spring Schwinn seat and upright riding position. The look is complete with coordinating fenders, seat and chain cover.', '6', '10', 100, '200', 'other', 'ea', 'no', '2016-04-30', '2016-05-30', '3', '100', '180', '150', '170', '200', '150', '200', 'no', '', 'yes', '50', 'bike.png', 0),
(131, 35, 'kevin.csuf@gmail.com', 'Burton Backpack', 'The apex predator of storage with a padded laptop and tablet sleeve and features that feed on both daily commutes and weekend excursions.', '6', '50', 500, '30', 'case', '', 'no', '2016-04-30', '2016-05-30', '2', '300', '25', '500', '20', '', '', '500', 'yes', 'U.S. only', 'yes', '25', 'backpack_1.png', 0),
(132, 35, 'kevin.csuf@gmail.com', 'BB-8 Droid', 'Meet BB-8 an adaptive personality that changes as you play. Based on your interactions, BB-8 will show a range of expressions and even perk up when you give voice commands.', '4', '10', 50, '100', 'other', 'ea', 'no', '2016-04-30', '2016-05-30', '3', '30', '95', '40', '90', '50', '80', '50', 'no', '', 'yes', '10', '1-bb-8-droid.png', 0),
(133, 35, 'kevin.csuf@gmail.com', '149 FOUNTAIN PEN', 'The legendary MeisterstÃ¼ck 149 piston fountain pen â€“ now available with platinum-coated fittings.', '6', '5', 50, '1000', 'case', '', 'no', '2016-04-30', '2016-05-30', '3', '30', '990', '40', '980', '50', '960', '50', 'yes', 'CA only', 'yes', '50', 'fpfp.png', 1),
(134, 35, 'kevin.csuf@gmail.com', 'BEHR MARQUEE', 'Our Most Advanced Paint and Primer in One Guaranteed One Coat Hide in over 1000 colors Superior Durability and Stain Resistance', '6', '100', 1000, '5', 'lb', '', 'no', '2016-04-30', '2016-05-30', '3', '500', '4', '800', '3', '1000', '2', '1000', 'yes', 'U.S. Only', 'yes', '100', 'pppain.png', 0),
(135, 47, 'irani.sam@gmail.com', 'North Napa Salad', 'Crisp, sweet, savory, rich and full of big flavors. Itâ€™s all the fresh, vibrant tastes of California without all the traffic. Or celebrities.      Ingredients: Napa cabbage, mixed greens, red grapes, cucumbers, chickpeas, avocado, feta cheese, dried cherries, pistachios & balsamic vinaigrette. ', '1', '1', 10, '8', 'bags', '', 'no', '2016-04-30', '2016-05-30', '2', '100', '6', '500', '4', '', '', '500', 'no', '', 'no', '', 'salad.png', 0),
(136, 35, 'kevin.csuf@gmail.com', 'JR Watkins Soap', 'Formulated with natural ingredients and essential oils, this hard-working soap is gentle on hands.', '6', '100', 10000, '10', 'kg', '', 'no', '2016-04-30', '2016-05-30', '2', '6000', '9', '10000', '7', '', '', '10000', 'yes', 'City of Fullerton only', 'no', '', 'sosoap.png', 0),
(137, 35, 'kevin.csuf@gmail.com', 'Liquid Honey Hand Soap', 'Savannah Bee Liquid Honey Hand Soap is made with all-natural ingredients, including skin-softening pure honey.', '6', '100', 500, '200', 'lb', '', 'no', '2016-04-30', '2016-05-30', '3', '300', '190', '400', '180', '500', '160', '500', 'no', '', 'yes', '15', 'sososoap.png', 0),
(138, 47, 'irani.sam@gmail.com', 'organic pineapple chunks', 'Pineapple is a delicious and nutritious fruit with a juicy sweet flavor. It is native to the tropics and grows to a height of 1.2 meters. Contrary to other tropical fruit, the pineapple takes a long time to mature. Depending on variety, it may take 12-14 months to flower and another 6 - 8 months to develop into a ripe fruit. Its stiff, spikey leaves grow out from a basal rosette from where the white or purple flowers develop.', '1', '6', 60, '24.99', 'case', '', 'no', '2016-04-30', '2016-05-30', '3', '60', '21.99', '600', '18.99', '6000', '14.99', '6000', 'no', '', 'no', '', 'organic-pineapple.png', 0),
(139, 35, 'kevin.csuf@gmail.com', 'Super Mario Game', 'The Super Mario games follow Mario adventures in the fictional Mushroom Kingdom, usually with Mario as the player character.', '4', '100', 1000, '50', 'other', 'ea', 'no', '2016-04-30', '2016-05-30', '3', '500', '45', '800', '40', '1000', '30', '1000', 'yes', 'U.S. Only', 'yes', '20', 'Racoon-Mario-icon.png', 0),
(140, 47, 'irani.sam@gmail.com', 'CASHEW NUTS', 'Sunshine Nuts are the greatest tasting cashews under the Sun! Grown and roasted in Mozambique, our cashews are some of the freshest cashews you will ever enjoy! Our cashews are roasted in sunflower oil and lightly seasoned with natural flavoring for excellent taste. Never size sorted, our cashews come to you in the sizes nature intended, just as theyâ€™ve grown on the tree. But the real difference is in the taste that will keep you coming back for more!   *Note: Sunshine Nuts are not cross contaminated with peanuts or other varities of tree nuts and roasted in a peanut-free-facility* Our cashews and their flavoring seasonings are gluten and GMO free', '1', '10', 100, '65', 'case', '', 'no', '2016-04-30', '2016-05-30', '2', '100', '50', '200', '40', '', '', '200', 'yes', 'USA and Canada', 'no', '', 'cashews nuts.png', 0),
(141, 35, 'kevin.csuf@gmail.com', 'Cement Rugby White', 'Wise and smart people choose Dangote because it is a higher grade of cement that delivers superior, longer life of structures, guarantees peace of mind while giving more yield per bag use.', '3', '25', 2500, '100', 'kg', '', 'no', '2016-04-30', '2016-05-30', '3', '1500', '95', '2000', '90', '2500', '80', '2500', 'yes', 'U.S. Only', 'yes', '100', 'cement.png', 0),
(142, 47, 'irani.sam@gmail.com', 'rozana rice', 'basmati rice  elongates to  16-18mM when cooked. The perfect choice for a celebration.Pulav Basmati Rice enhances the perfect pulav. The delicious taste, slender grains and pure white appearance make every dish a masterpiece: from simple peas pulav to exotic recipes.', '1', '1', 20, '40', 'bags', '', 'no', '2016-04-30', '2016-05-30', '3', '100', '35', '200', '30', '300', '25', '300', 'no', '', 'no', '', 'rozana rice.png', 0),
(143, 35, 'kevin.csuf@gmail.com', 'Raw Protein Vanilla', 'Garden of Life Raw Protein Greens Vanilla features a blend of six USDA certified organic plant proteins along with four raw greens.', '3', '10', 1000, '100', 'lb', '', 'no', '2016-04-30', '2016-05-30', '3', '700', '95', '800', '90', '1000', '80', '1000', 'no', '', 'no', '', 'raw_protein.png', 0),
(144, 47, 'irani.sam@gmail.com', 'Briks', 'Kim Hoe Thye based in Johor Malaysia, is a well known supplier of Building materials and Hardware products for a wide range of consumers in business & industrial.', '3', '10', 500, '100', 'pallet', '', 'no', '2016-04-30', '2016-05-30', '3', '100', '90', '300', '80', '500', '70', '500', 'no', '', 'no', '', 'briks.png', 0),
(145, 42, 'soniarawat@csu.fullerton.edu', 'COVINGTON FABRIC', 'The higher quality and wider width of this 60 inch Burlap Fabric makes it an excellent choice for Decorating including; Wall Panels, Curtains, Pillows, Upholstery and Tablecloths.', '3', '20', 100, '9.99', 'other', 'YARDS', 'no', '2016-04-30', '2016-05-30', '3', '30', '7.99', '50', '5.99', '100', '4.99', '100', 'no', '', 'no', '', 'FABRICS.png', 0),
(146, 35, 'kevin.csuf@gmail.com', 'Samsung Galaxy Note 5', 'Bigger has always been better. Galaxy Note proved that time and again. It also changed the entire game with S Pen.', '5', '10', 100, '1000', 'case', '', 'no', '2016-04-30', '2016-05-30', '3', '50', '900', '80', '800', '100', '700', '100', 'no', '', 'no', '', 'samsung-galaxy-note5-white-pearl.png', 0),
(147, 4, 'abc@gmail.com', 'Sony  ExpeRIA', ' Sony Xperia C5 Ultra E5506 16GB Smartphone (Unlocked, White)     Customer Photos      0 IN STOCK Order Now to ship Tomorrow  Free Standard Shipping  Not eligible for Free Expedited Shipping PRODUCT HIGHLIGHTS  GSM / 4G LTE Capable North American Variant 13MP Front and Rear Cameras with Flash 1.7 GHz Octa-Core Processor 16GB Storage Capacity + 2GB of RAM 6.0" IPS LCD Display Full HD 1920 x 1080 Resolution MicroSD Card Slot Up to 2 Days Battery Life Android Lollipop 5.0', '5', '5', 10, '550', 'case', '', 'no', '2016-05-04', '2016-06-03', '2', '20', '500', '40', '400', '', '', '40', 'yes', 'aRIZONA', 'no', '', 'compare-2.png', 0),
(148, 4, 'abc@gmail.com', 'iphoen', 'lhtioah', '5', '10', 20, '250', 'case', '', 'yes', '2016-05-07', '2016-06-07', '2', '100', '200', '200', '150', '', '', '200', 'yes', 'texas', 'yes', '3', 'apple phone.png', 0),
(149, 42, 'soniarawat@csu.fullerton.edu', 'iphone', 'thies towogha', '2', '10', 20, '150', 'kg', '', 'yes', '2016-05-07', '2016-05-08', '2', '100', '50', '200', '40', '', '', '200', 'yes', 'Texas', 'yes', '2', 'red table.jpe', 0);

-- --------------------------------------------------------

--
-- Table structure for table `join_deal`
--

CREATE TABLE IF NOT EXISTS `join_deal` (
  `order_id` int(32) NOT NULL AUTO_INCREMENT,
  `create_deal_id` int(32) DEFAULT NULL,
  `user_id` int(32) DEFAULT NULL,
  `order_quantity` int(64) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL,
  `state` varchar(64) DEFAULT NULL,
  `zipcode` int(64) DEFAULT NULL,
  `closure_date` date DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `join_deal`
--

INSERT INTO `join_deal` (`order_id`, `create_deal_id`, `user_id`, `order_quantity`, `address`, `state`, `zipcode`, `closure_date`) VALUES
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
(14, 87, 22, 100, '13374 Linnea St', 'California', 92880, '2016-04-13'),
(17, 60, 22, 10, '13374 Linnea St', 'California', 92880, '2016-06-06'),
(18, 60, 34, 10, 'aca', 'asda', 62335, '2016-06-06'),
(19, 109, 36, 30, '777 Prince Dr. Fulleron', 'CA', 94444, '2016-05-25'),
(20, 61, 37, 20, 'CSU', 'CALIFORNIA', 92880, '2016-06-06'),
(21, 108, 37, 220, 'cSU,fullerton', 'CALIFORNIA', 92880, '2016-05-22'),
(22, 110, 37, 10, 'Chicago ', 'Chicago', 60292, '2016-05-26'),
(23, 84, 22, 50, '123', 'lin', 13345, '2016-05-03'),
(24, 56, 37, 20, 'fullerton', 'Califonia', 92565, '2016-06-06'),
(25, 123, 44, 20, '123 Fullerton Cir', 'CA', 90000, '2016-05-30'),
(26, 126, 44, 10, '123 Orange ave', 'CA', 90000, '2016-05-30'),
(27, 130, 44, 50, '100 Fullerton dr', 'CA', 90001, '2016-05-30'),
(29, 132, 44, 40, '12 Fullerton', 'ca', 91111, '2016-05-30'),
(31, 134, 44, 200, '1212 Orange hill cir', 'ca', 91111, '2016-05-30'),
(32, 57, 48, 20, 'FULLERTON', 'CALIFORNIA', 92880, '2016-06-06'),
(33, 118, 48, 10, 'NYC', 'NY', 10001, '2016-05-30'),
(34, 136, 44, 200, '123 Fullerton dr', 'ca', 91111, '2016-05-30'),
(35, 127, 48, 20, 'FULLERTON', 'CALIFORNIA', 92880, '2016-05-07'),
(36, 137, 44, 200, '123 Fullerton dr', 'ca', 90000, '2016-05-30'),
(37, 139, 44, 600, '1212 Fullerton edu', 'ca', 93333, '2016-05-30'),
(38, 141, 44, 500, '123 Fulerton dr', 'ca', 91111, '2016-05-30'),
(39, 143, 44, 50, '505 Fullerton dr', 'ca', 95555, '2016-05-30'),
(40, 135, 44, 5, '234 Fullerton', 'ca', 90000, '2016-05-30'),
(41, 115, 44, 24, '234 Orange dr', 'ca', 90000, '2016-05-30'),
(42, 129, 44, 40, '123 Fullerton dr', 'ca', 91111, '2016-05-30'),
(43, 138, 44, 60, '123 adsf Dr.', 'ca', 91111, '2016-05-30'),
(44, 140, 44, 90, '123 Fullerton rd', 'ca', 93333, '2016-05-30'),
(45, 119, 44, 300, '200 Orange dr', 'ca', 91111, '2016-05-30'),
(46, 140, 48, 50, 'YORBA LINDA', 'CALIFORNIA', 92880, '2016-05-30'),
(47, 116, 44, 10, '123 Fullerton rd', 'CA', 94444, '2016-05-30'),
(48, 122, 44, 10, '123 fullerton rd', 'ca', 92222, '2016-05-06'),
(49, 118, 49, 20, '12312 something', 'newport beach', 92660, '2016-05-30'),
(50, 142, 44, 20, '12 Fullerton rd', 'ca', 94444, '2016-05-30'),
(51, 140, 49, 10, '3123 asc. street', 'CA', 92660, '2016-05-30'),
(52, 142, 49, 20, '12312 something', 'CA', 92660, '2016-05-30'),
(53, 146, 44, 70, '123 Fullerton dr', 'ca', 91111, '2016-05-30'),
(54, 117, 49, 20, '12312 something', 'CA', 92614, '2016-05-30'),
(55, 125, 49, 10, '12312 something', 'ca', 92660, '2016-05-30'),
(56, 135, 49, 10, '12 main st.', 'CA', 92660, '2016-05-30'),
(57, 128, 49, 10, '12312 something', 'CA', 92614, '2016-05-30'),
(58, 138, 49, 60, '12 main st.', 'CA', 92831, '2016-05-30'),
(59, 117, 48, 20, 'YORBA LINDA', 'CALIFORNIA', 94559, '2016-05-30'),
(60, 134, 51, 500, '123 Fullerton dr.', 'CA', 92011, '2016-05-30'),
(61, 131, 51, 400, '123 Fullerton Dr. Fullerton', 'CA', 92833, '2016-05-30'),
(62, 133, 51, 45, '123 Fullerton Dr', 'CA', 92833, '2016-05-30'),
(64, 127, 41, 10, '13374 Linnea St', 'California', 92880, '2016-05-13'),
(65, 133, 44, 5, '123 Fullerton dr.', 'CA', 92833, '2016-05-30');

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
  `other_category` tinyint(1) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `receive_message` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `type`, `email`, `password`, `first_name`, `last_name`, `business_name`, `food_category`, `electronics_category`, `rawmaterial_Category`, `entertainment_Category`, `other_category`, `Address`, `mobile_number`, `receive_message`) VALUES
(4, 'seller', 'abc@gmail.com', 'a8b767bb9cf0938dc7f40603f33987e5', 'Jack', 'nikita', 'Electronics', 1, 1, 0, 0, 0, '133 liN', '9884710231', 'no'),
(18, 'seller', 'sv.nikita91@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'jack', 'Sadinidhi', '1991', 0, 0, 1, 1, 0, '13374 Linnea St\r\nEastvale', '9512646992', 'yes'),
(29, 'seller', 'asdf@asdf.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'Seller', 'Yeller', 'asdf', 0, 0, 1, 0, NULL, 'asdf', '2222222222', 'no'),
(35, 'seller', 'kevin.csuf@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'Sailer', 'Kevin', 'Kevin Store', 0, 1, 0, 0, NULL, '5678 King dr.\r\nFullerton, CA 92000', '1231231234', 'yes'),
(41, 'buyer', 'sv@yahoo.com', 'b00a50c448238a71ed479f81fa4d9066', 'nikita', 'vijayan', NULL, 0, 1, 0, 1, NULL, '13374 Linnea St', '9512646992', 'yes'),
(42, 'seller', 'soniarawat@csu.fullerton.edu', '827ccb0eea8a706c4c34a16891f84e7b', 'SONIA', 'RAw', 'MOBILES FOR YOU ', 0, 1, 0, 0, 0, 'FULLERTON ,CALIFORNIA', '7140000000', 'yes'),
(43, 'seller', 'sv.nikita.nikita@gmail.com', 'b00a50c448238a71ed479f81fa4d9066', 'NIKITA', 'VIJAYAN', 'Entertainment', 0, 0, 0, 1, 0, '31B/116 LOGANATHAN STREET\r\nKRISH ANPURAM AMBATTUR', '09940592419', 'yes'),
(44, 'buyer', 'kevin.csuf@csu.fullerton.edu', 'e369853df766fa44e1ed0ff613f563bd', 'Byer', 'Kevin', NULL, 0, 0, 0, 1, 0, '1234 Fullerton Dr.\r\nfullerton, CA 92833', '1231231234', 'yes'),
(47, 'seller', 'irani.sam@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'Sam', 'Irani', 'food great inc.', 1, 0, 0, 0, 0, '2121 Yacht Radiant', '17148517575', 'seller_rev_msg'),
(48, 'buyer', 'sonia0682@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'SONIA', 'Rw', '', 0, 1, 0, 0, 0, 'FULLERTON, cali', '7140000000', 'yes'),
(49, 'buyer', 'sam14541454@yahoo.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'Sam', 'Irani', NULL, 1, 1, 1, 1, 1, '2121 Yacht Radiant', '7148517575', 'seller_rev_msg'),
(50, 'buyer', 'a@sa.com', '9f6e6800cfae7749eb6c486619254b9c', 'as', 'as', NULL, 1, 1, 1, 1, 0, 'as', '123333311', 'seller_rev_msg'),
(51, 'buyer', 'qwer@qwer.com', 'e369853df766fa44e1ed0ff613f563bd', 'Quinn', 'Marry', NULL, 0, 1, 0, 0, 0, '123 Fullerton dr.\r\nFullerton, CA 92833', '1231231234', 'yes'),
(52, 'buyer', 'sam@sample.com', '202cb962ac59075b964b07152d234b70', 'Sam', 'Irani', NULL, 1, 1, 0, 0, 0, '2121 Yacht Radiant', '7148517575', 'yes'),
(53, 'seller', 'agmseller@gmail.com', '202cb962ac59075b964b07152d234b70', 'Mike', 'claxton', 'food great inc.', 1, 0, 0, 0, 0, '1234 irvine st.', '123456789', 'yes'),
(54, 'buyer', 'agmbuyer@gmail.com', '202cb962ac59075b964b07152d234b70', 'sean', 'Irani', NULL, 1, 1, 0, 1, 0, '12345 Street st.', '123456789', 'yes');

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
