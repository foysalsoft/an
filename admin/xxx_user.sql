-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2018 at 09:16 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `life_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `xxx_user`
--

CREATE TABLE `xxx_user` (
  `user_no` int(11) NOT NULL,
  `EMPLOYEE_NO` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `user_full_name` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `user_address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `user_contact` text COLLATE utf8_unicode_ci NOT NULL,
  `user_type_no` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `active_from` date NOT NULL,
  `active_to` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `xxx_user`
--

INSERT INTO `xxx_user` (`user_no`, `EMPLOYEE_NO`, `user_name`, `pass`, `user_full_name`, `user_address`, `user_email`, `user_contact`, `user_type_no`, `is_active`, `active_from`, `active_to`) VALUES
(1, 0, 'admin', '202cb962ac59075b964b07152d234b70', 'Admin', '', '', '1234567890', 1, 1, '2017-10-10', '2018-11-30'),
(35, 1, 'riyad', '202cb962ac59075b964b07152d234b70', 'Riyad', '', '', '', 0, 0, '0000-00-00', '0000-00-00'),
(36, 2, 'sadia', '202cb962ac59075b964b07152d234b70', 'Sadia', '', '', '', 0, 1, '0000-00-00', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `xxx_user`
--
ALTER TABLE `xxx_user`
  ADD PRIMARY KEY (`user_no`),
  ADD UNIQUE KEY `USER_NAME` (`user_name`),
  ADD UNIQUE KEY `USER_NO` (`user_no`),
  ADD UNIQUE KEY `USER_NO_2` (`user_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `xxx_user`
--
ALTER TABLE `xxx_user`
  MODIFY `user_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
