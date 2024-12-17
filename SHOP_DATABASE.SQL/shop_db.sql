-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 07:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(20, 1, ' Slip Tint Radiant Concealer', 105, 1, 'concealer1.jpg'),
(21, 1, 'Soft Mink Mascara', 90, 2, '87ecc1adc3e335c4dd754818fa92ffe2.jpg'),
(23, 1, 'Nude PinkN Lipstick ', 230, 3, 'lipstick.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(12, 1, 'Susaine Rico', '09928130123', 'rbb2023-9082-64838@bicol-u.edu.ph', 'Cash on delivery', 'flat no. 3, , Albay, Philippines - 4503', ', Avon Shaving Cream  (3) ', 417, '10-Dec-2024', 'Delivered'),
(13, 1, 'Susaine Rico', '09928130123', 'rbb2023-9082-64838@bicol-u.edu.ph', 'Cash on delivery', 'flat no. 3, , Albay, Philippines - 4503', ', Eyelash Curler (1) ', 59, '10-Dec-2024', 'Completed'),
(14, 5, 'raymark', '09928130124', 'raymark@gmail.com', 'Cash on delivery', 'flat no. 3, , legazpi, Philippines - 123', ', Soft Mink Mascara (2) ', 180, '10-Dec-2024', 'To ship');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(1, 'Cleanser Garnier', 299, 'garnier2.jpg'),
(3, ' Slip Tint Radiant Concealer', 105, 'concealer1.jpg'),
(5, 'Butter melt blush- NYX', 180, 'blush.jpg'),
(6, 'Nude PinkN Lipstick ', 230, 'lipstick.jpg'),
(7, 'Soft Mink Mascara', 90, '87ecc1adc3e335c4dd754818fa92ffe2.jpg'),
(10, 'Oil-Free Gel Cream', 190, 'summer2.jpg'),
(11, 'Dior Addict Lip Glow Oil', 135, 'lip gloss.jpg'),
(12, 'Pure Peace Body Lotion', 129, 'body lotion.jpg'),
(13, 'Paula\'s Choice Body Serum', 199, 'body serum.jpg'),
(14, 'Nose Patch Hydrocolloid', 99, 'nosepatch.jpg'),
(15, 'Method Body Deodorant', 200, 'deo.jpg'),
(16, 'Facial Roller', 89, 'ruler.jpg'),
(17, 'Eyelash Curler', 59, 'curler.jpg'),
(18, 'Hair Curler', 300, 'hair curler.jpg'),
(19, 'Avon Shaving Cream ', 139, 'men.jpg'),
(20, 'Nivea Gel for men', 179, 'gel.jpg'),
(21, 'Dove Body Lotion ', 209, 'lotion.jpg'),
(22, 'Powder Brush ', 99, 'brush.jpg'),
(23, 'Make up Fixer Spray', 199, 'mak up fixer spray.jpg'),
(24, 'Sakura Sunscreen', 119, 'sakura sunscreen 1.jpg'),
(26, 'Vaseline Lip Balm', 109, 'lip balm.jpg'),
(27, 'Face Shaver', 39, 'face shaver eye trimmer.jpg'),
(28, 'Aloe Vera Soothing Gel', 199, 'alor vera soothing gel.jpg'),
(29, 'NYX Brow Glue', 89, 'brow glue.jpg'),
(30, 'Serum Whitening Face', 209, 'serum whitening face.jpg'),
(31, 'Face Primer ', 180, 'primer.jpg'),
(33, 'Glow toner', 199, 'toner.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Susaine Rico', 'susaine0511@gmail.com', '721c498d6e0c1fe683c304aa6ee1ab4e', 'user'),
(3, 'Faith Ann Sanado', 'faith@gmail.com', 'f93c7693cfad45834e0ac8103c683f4b', 'admin'),
(5, 'raymark', 'raymark@gmail.com', 'fdaa5ec3ac1c8c2d45ee7419a5561a47', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
