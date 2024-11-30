-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2024 at 04:49 PM
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
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(25) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `customer_id`, `merchant_id`, `product_id`) VALUES
(25, 5, 4, 5),
(26, 5, 4, 5),
(27, 6, 4, 5),
(28, 6, 4, 5),
(30, 8, 4, 5),
(31, 8, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(12) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Mobile` varchar(12) NOT NULL,
  `Address` varchar(80) NOT NULL,
  `profile` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `Name`, `Email`, `Password`, `Mobile`, `Address`, `profile`) VALUES
(4, 'Sujal Kumar', 'sujalkumar@lpu.in', '25d55ad283aa400af464c76d713c07ad', '2147483647', 'ludhiana', 'customer-photo/wallpaper.jpg'),
(5, 'Sujal Kumar', 'kumarkumar@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2147483647', '12345678', 'customer-photo/arun.jpg'),
(6, 'Prince', 'prince1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '8574151850', 'niwaas gali', 'customer-photo/wallpaper.jpg'),
(7, 'Prince', 'prince12@gmail.com', '61a1f0a1f452973526fdea6fd7ec9fbc', '8574151850', 'niwaas gali', 'customer-photo/Screenshot (15).png'),
(8, 'Sujal Kumar', 'sujalkumar232@lpu.in', '25d55ad283aa400af464c76d713c07ad', '12345678', 'niwaas gali', 'customer-photo/Screenshot 2024-09-05 175326.png');

-- --------------------------------------------------------

--
-- Table structure for table `merchant`
--

CREATE TABLE `merchant` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` int(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merchant`
--

INSERT INTO `merchant` (`id`, `name`, `password`, `mobile`, `address`, `profile`, `email`) VALUES
(4, 'Sujal Kumar', '25f9e794323b453885f5181f1b624d0b', 2147483647, 'bh2', 'merchant-photo/wallpaper.jpg', 'skumarmathur19320@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `quantity` int(10) NOT NULL,
  `booked` int(20) NOT NULL,
  `merchant` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `image`, `category`, `brand`, `description`, `quantity`, `booked`, `merchant`) VALUES
(5, 'Wallpaper2', 78, 'product-photo/wallpaper.jpg', 'Home &amp; Garden', 'Kumars', 'adfadfa', 44, 0, 4),
(6, 'Wallpaper2', 78, 'product-photo/wallpaper.jpg', 'Home &amp; Decor', 'Kumar', 'adfadfa', 44, 0, 4),
(7, 'Cloth', 50, 'product-photo/Activity 9.jpg', 'Clothing', 'Puma', 'this a= kfjnauf kjabsdiufa jashfiua oanhsefkan', 5, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `customer_id`, `merchant_id`, `product_id`) VALUES
(8, 7, 4, 7),
(9, 8, 4, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `merchant`
--
ALTER TABLE `merchant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `merchant`
--
ALTER TABLE `merchant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`merchant_id`) REFERENCES `merchant` (`id`),
  ADD CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`merchant_id`) REFERENCES `merchant` (`id`),
  ADD CONSTRAINT `wishlist_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
