-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2022 at 04:49 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pigmecafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Ad_id` int(11) NOT NULL,
  `Ad_name` varchar(50) NOT NULL,
  `Ad_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Ad_id`, `Ad_name`, `Ad_salary`) VALUES
(1, 'Qler Oreo', 800),
(2, 'Kit Sana', 800),
(3, 'Pra Krit', 800);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `image`, `quantity`) VALUES
(4, 'cheesecake', '89', 'cheesecake.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Cus_id` int(11) NOT NULL,
  `Cus_name` varchar(50) NOT NULL,
  `Cus_address` varchar(200) NOT NULL,
  `Cus_tel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Cus_id`, `Cus_name`, `Cus_address`, `Cus_tel`) VALUES
(1, 'Moon Knight', '543 ถนนวงศ์สว่าง เขตบางซื่อ จังหวัดหรุงเทพ 10800', 999945612),
(2, 'Darth Vader', '66 ซอยเอ็มพาย จังหวัดกาแลคติค 90066', 312458897),
(3, '๋Steve Roger', '88 เขตอะเว่นเจอร์ จังหวัดกรุงเทพ 01997', 841234879);

-- --------------------------------------------------------

--
-- Table structure for table `edit_product`
--

CREATE TABLE `edit_product` (
  `Pro_id` int(11) NOT NULL,
  `Ad_id` int(11) NOT NULL,
  `EP_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `edit_product`
--

INSERT INTO `edit_product` (`Pro_id`, `Ad_id`, `EP_date`) VALUES
(101, 1, '2022-09-21'),
(201, 2, '2022-09-23'),
(202, 3, '2022-09-24');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Ord_id` int(11) NOT NULL,
  `Ord_date` date NOT NULL,
  `Ord_quantity` int(11) NOT NULL,
  `Ord_status` varchar(20) NOT NULL,
  `Cus_id` int(11) NOT NULL,
  `Pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Ord_id`, `Ord_date`, `Ord_quantity`, `Ord_status`, `Cus_id`, `Pro_id`) VALUES
(1, '2022-09-19', 2, 'wait', 1, 202),
(2, '2022-09-19', 1, 'paid', 1, 101),
(3, '2022-09-22', 3, 'paid', 2, 201);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Pro_id` int(11) NOT NULL,
  `Pro_name` varchar(50) NOT NULL,
  `Pro_type` varchar(50) NOT NULL,
  `Pro_price` int(11) NOT NULL,
  `Pro_ quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Pro_id`, `Pro_name`, `Pro_type`, `Pro_price`, `Pro_ quantity`) VALUES
(101, 'อเมริกาโน่', 'เครื่องดื่ม', 25, 50),
(102, 'ลาเต้', 'เครื่องดื่ม', 30, 50),
(201, 'เค้กแตงโม', 'เบเกอรี่', 80, 20),
(202, 'เอแคลร์', 'เบเกอรี่', 60, 30);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(10, 'cheesecake', 89, 'cheesecake.jpg'),
(11, 'chocolate cake', 79, 'chocolatecake.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `urole` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `urole`, `create_at`) VALUES
(1, 'prakrit', 'taemjun', 'punrpr41@gmail.com', '$2y$10$YA6.HNFHB3FbC85Rjc2BXu4OrCplhHMaBymbcvlIWF/C7/HkI2ms.', 'user', '2022-10-17 16:07:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Ad_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Cus_id`);

--
-- Indexes for table `edit_product`
--
ALTER TABLE `edit_product`
  ADD PRIMARY KEY (`Pro_id`,`Ad_id`,`EP_date`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Ord_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Pro_id`);

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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Ord_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
