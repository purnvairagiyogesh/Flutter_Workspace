-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2026 at 07:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moblie_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `mini_products`
--

CREATE TABLE `mini_products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `final_discounted_price` varchar(10) NOT NULL,
  `features` varchar(500) NOT NULL,
  `ratings` varchar(10) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mini_products`
--

INSERT INTO `mini_products` (`product_id`, `product_name`, `product_price`, `product_image`, `final_discounted_price`, `features`, `ratings`, `quantity`) VALUES
(1, 'i-watch', '20000', 'https://localhost/API/images/image_9410.jfif', '1234', 'apple product', '10', 0),
(6, 'i-watch', '20000', 'https://localhost/Mini Project API/images/image_2394.jpg', '1234', 'apple product', '10', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mini_products`
--
ALTER TABLE `mini_products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mini_products`
--
ALTER TABLE `mini_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
