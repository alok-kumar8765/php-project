-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2020 at 04:53 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multilanguage`
--

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(10) NOT NULL,
  `en` varchar(64) CHARACTER SET utf8 NOT NULL,
  `dut` varchar(64) CHARACTER SET utf8 NOT NULL,
  `fr` varchar(64) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `en`, `dut`, `fr`) VALUES
(4, 'Hello World', '\0H\0a\0l\0l\0o\0 \0W\0e\0r\0e\0l\0d', '\0B\0o\0n\0j\0o\0u\0r\0 \0l\0e\0 \0m\0o\0n\0d\0e'),
(5, 'Welcome to Tutorial', '\0W\0e\0l\0k\0o\0m\0 \0b\0i\0j\0 \0z\0e\0l\0f\0s\0t\0u\0d\0i\0e\0\n', '\0B\0i\0e\0n\0v\0e\0n\0u\0e\0 \0d\0a\0n\0s\0 \0l\0e\0 \0d\0i\0d\0a\0c\0t\0i\0c\0i\0e\0l\0\r\0\n');

-- --------------------------------------------------------

--
-- Table structure for table `selected_lang`
--

CREATE TABLE `selected_lang` (
  `id` int(10) NOT NULL,
  `ln` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selected_lang`
--

INSERT INTO `selected_lang` (`id`, `ln`) VALUES
(1, 'fr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selected_lang`
--
ALTER TABLE `selected_lang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `selected_lang`
--
ALTER TABLE `selected_lang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
