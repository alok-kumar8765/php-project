-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2020 at 05:31 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `attribute_parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attribute_parent_id`) VALUES
(5, 'Blue', 2),
(6, 'White', 2),
(7, 'M', 3),
(8, 'L', 3),
(9, 'Green', 2),
(10, 'Black', 2),
(12, 'Grey', 2),
(13, 'S', 3),
(14, 'Blue', 4),
(15, 'Red', 4),
(16, 'Silver', 4),
(17, 'Golden', 4);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `active`) VALUES
(4, 'Whirlpool', 1),
(5, 'Samsung', 1),
(6, 'Sony', 1),
(7, 'Asha', 1),
(8, 'Crompton', 1),
(9, 'LG', 1),
(10, 'Panasonic', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`) VALUES
(4, 'Refrigerator', 1),
(5, 'LED TV', 1),
(6, 'FAN', 1),
(7, 'AC', 1),
(8, 'Mobile', 1),
(9, 'Washing Machine', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'Bojagar Softech', '5', '12', 'Mahalingpur', '9164169064', 'India', 'hello everyone one', 'INR');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Administrator', 'a:36:{i:0;s:10:"createUser";i:1;s:10:"updateUser";i:2;s:8:"viewUser";i:3;s:10:"deleteUser";i:4;s:11:"createGroup";i:5;s:11:"updateGroup";i:6;s:9:"viewGroup";i:7;s:11:"deleteGroup";i:8;s:11:"createBrand";i:9;s:11:"updateBrand";i:10;s:9:"viewBrand";i:11;s:11:"deleteBrand";i:12;s:14:"createCategory";i:13;s:14:"updateCategory";i:14;s:12:"viewCategory";i:15;s:14:"deleteCategory";i:16;s:11:"createStore";i:17;s:11:"updateStore";i:18;s:9:"viewStore";i:19;s:11:"deleteStore";i:20;s:15:"createAttribute";i:21;s:15:"updateAttribute";i:22;s:13:"viewAttribute";i:23;s:15:"deleteAttribute";i:24;s:13:"createProduct";i:25;s:13:"updateProduct";i:26;s:11:"viewProduct";i:27;s:13:"deleteProduct";i:28;s:11:"createOrder";i:29;s:11:"updateOrder";i:30;s:9:"viewOrder";i:31;s:11:"deleteOrder";i:32;s:11:"viewReports";i:33;s:13:"updateCompany";i:34;s:11:"viewProfile";i:35;s:13:"updateSetting";}'),
(4, 'Alied', 'a:32:{i:0;s:10:"createUser";i:1;s:10:"updateUser";i:2;s:8:"viewUser";i:3;s:10:"deleteUser";i:4;s:11:"createGroup";i:5;s:11:"updateGroup";i:6;s:9:"viewGroup";i:7;s:11:"deleteGroup";i:8;s:11:"createBrand";i:9;s:11:"updateBrand";i:10;s:9:"viewBrand";i:11;s:11:"deleteBrand";i:12;s:14:"createCategory";i:13;s:14:"updateCategory";i:14;s:12:"viewCategory";i:15;s:14:"deleteCategory";i:16;s:11:"createStore";i:17;s:11:"updateStore";i:18;s:9:"viewStore";i:19;s:11:"deleteStore";i:20;s:15:"createAttribute";i:21;s:15:"updateAttribute";i:22;s:13:"viewAttribute";i:23;s:15:"deleteAttribute";i:24;s:13:"createProduct";i:25;s:13:"updateProduct";i:26;s:11:"viewProduct";i:27;s:13:"deleteProduct";i:28;s:11:"createOrder";i:29;s:11:"updateOrder";i:30;s:9:"viewOrder";i:31;s:11:"deleteOrder";}');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `customer_name`, `customer_address`, `customer_phone`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge`, `vat_charge_rate`, `vat_charge`, `net_amount`, `discount`, `paid_status`, `user_id`) VALUES
(2, 'BILPR-5B1E', ' Imamhussain', 'Azam campus, camp pune, Pune', '+917058988189', '1587192963', '7000.00', '13', '910.00', '12', '840.00', '8050.00', '700', 1, 1),
(3, 'BILPR-F9B7', ' Imamhussain', 'Azam campus, camp pune, Pune', '+917058988189', '1587194491', '700.00', '13', '91.00', '12', '84.00', '825.00', '50', 1, 1),
(4, 'BILPR-3226', 'azim', 'gokak', '1234567890', '1590733716', '700.00', '13', '91.00', '12', '84.00', '575.00', '300', 1, 1),
(5, 'BILPR-6146', 'azim', 'Azam campus, camp pune, Pune', '01234567890', '1590838233', '1400.00', '13', '182.00', '12', '168.00', '1700.00', '50', 1, 1),
(6, 'BILPR-D9A6', 'Moin khan', 'Gokak', '9090909090', '1590838821', '700.00', '13', '91.00', '12', '84.00', '800.00', '75', 1, 1),
(7, 'BILPR-9C83', 'king khan', 'gokak', '1234554321', '1590918608', '60200.00', '5', '3010.00', '12', '7224.00', '70000.00', '434', 1, 1),
(8, 'BILPR-5013', 'Mohseen', 'Gokak', '9999999999', '1590919378', '14000.00', '5', '700.00', '12', '1680.00', '16080.00', '300', 1, 1),
(9, 'BILPR-CCEB', 'Amirul Momenin', 'C-20,JAkir Hossain Road,Block-E', '066565656', '1607747233', '20000.00', '5', '1000.00', '12', '2400.00', '23400.00', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_item`
--

CREATE TABLE `orders_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_item`
--

INSERT INTO `orders_item` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(4, 2, 2, '10', '700', '7000.00'),
(6, 3, 2, '1', '700', '700.00'),
(9, 4, 2, '1', '700', '700.00'),
(12, 5, 2, '2', '700', '1400.00'),
(14, 6, 2, '1', '700', '700.00'),
(16, 7, 2, '86', '700', '60200.00'),
(19, 8, 3, '1', '10000', '10000.00'),
(20, 8, 2, '2', '2000', '4000.00'),
(21, 9, 8, '1', '20000', '20000.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `attribute_value_id` text,
  `brand_id` text NOT NULL,
  `category_id` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`) VALUES
(2, 'Table Fan', '1234567890', '1000', '6', 'assets/images/product_image/5ed48062bef07.jpg', '<p>Crompton''s table fan</p>', 'null', '["8"]', '["6"]', 5, 1),
(3, 'LG Refrigerator', '987654321000', '10000', '25', 'assets/images/product_image/5ed48269b605b.jpg', '<p>LG Refrigerator</p>', 'null', '["9"]', '["4","7"]', 5, 1),
(4, 'Ceiling Fan', '543217890', '1150', '10', 'assets/images/product_image/5ed47fd9de2c7.jpg', '<p>Asha Ceiling Fan<br></p>', 'null', '["7"]', '["6"]', 5, 1),
(5, 'Panasonic AC', '78906547899', '25000', '20', 'assets/images/product_image/5ed4815f2955c.jpg', '<p>Panasonic AC with cool air fans<br></p>', 'null', '["10"]', '["7"]', 4, 1),
(6, 'Sony LED TV', '123456234567', '22000', '50', 'assets/images/product_image/5ed48300f23f2.jpg', '<p>Sony LED TV with wide width<br></p>', 'null', '["6"]', '["5"]', 4, 1),
(7, 'Samsung Mobile', '87654321321', '15000', '100', 'assets/images/product_image/5ed4835963cf3.png', '<p>Samsung Mobile S10<br></p>', 'null', '["5"]', '["8"]', 4, 1),
(8, 'Whirlpool Washing Machine', '7654323456798', '20000', '19', 'assets/images/product_image/5ed483bac96a4.png', '<p>Whirlpool Washing Machine<br></p>', 'null', '["4"]', '["7","9"]', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(4, 'Alied Market Road Gokak', 1),
(5, 'Alied College Road Gokak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(6, 'abc', '123', 'abc@gmail.com', 'abc', 'def', '55555555', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(7, 6, 4),
(8, 7, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_item`
--
ALTER TABLE `orders_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
