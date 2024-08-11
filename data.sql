-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2024 at 05:59 PM
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
-- Database: `enterkomp`
--

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `orderId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `productId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `orderId`, `productId`, `quantity`, `createdAt`, `updatedAt`) VALUES
('00535829-ddf3-4b72-8ead-cc3d2ae25f0e', '09197118-a74e-4cf4-b1d0-20c7ac7be007', '412b04f5-a385-46d4-a8b7-04adc2b23181', 2, '2024-08-11 15:48:26', '2024-08-11 15:48:26'),
('037213f3-53b1-45d6-b41d-f80d361fc1ba', '09197118-a74e-4cf4-b1d0-20c7ac7be007', '5f55b41d-1fe1-48ec-9f17-33a033c97615', 1, '2024-08-11 15:48:26', '2024-08-11 15:48:26'),
('26e18a22-4419-42ea-bff4-55dcdc4812f0', '09197118-a74e-4cf4-b1d0-20c7ac7be007', '346e4104-6dc7-4a97-9f53-263db822c54c', 1, '2024-08-11 15:48:26', '2024-08-11 15:48:26'),
('34dd7a81-2aac-4aab-b5d9-6c22f1eb2a10', '2c2bd2e4-dbc3-4c58-8616-ce76ae0d6623', '412b04f5-a385-46d4-a8b7-04adc2b23181', 2, '2024-08-11 15:45:46', '2024-08-11 15:45:46'),
('4a21ee08-25f8-47f1-8129-56aaeaf35e64', '2c2bd2e4-dbc3-4c58-8616-ce76ae0d6623', '5f55b41d-1fe1-48ec-9f17-33a033c97615', 1, '2024-08-11 15:45:46', '2024-08-11 15:45:46'),
('7edb8520-e2f1-4e0d-a86e-0d12d6e63eef', '09197118-a74e-4cf4-b1d0-20c7ac7be007', '2b8d86ae-cfe3-466f-81c3-87c9e490727a', 1, '2024-08-11 15:48:26', '2024-08-11 15:48:26'),
('803ed21b-03b3-48ab-83b8-8c4d3a60657b', '2c2bd2e4-dbc3-4c58-8616-ce76ae0d6623', '2b8d86ae-cfe3-466f-81c3-87c9e490727a', 1, '2024-08-11 15:45:46', '2024-08-11 15:45:46'),
('ad64a5d8-3344-4098-8326-df10787b5aed', '11edcd6a-859e-4490-84fc-2d6aebb811b7', '2b8d86ae-cfe3-466f-81c3-87c9e490727a', 1, '2024-08-11 15:48:56', '2024-08-11 15:48:56'),
('e91c2e73-33d1-4ae6-9437-b94743d8037a', '2c2bd2e4-dbc3-4c58-8616-ce76ae0d6623', '346e4104-6dc7-4a97-9f53-263db822c54c', 1, '2024-08-11 15:45:46', '2024-08-11 15:45:46');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tableNumber` varchar(255) NOT NULL,
  `totalAmount` int(11) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `tableNumber`, `totalAmount`, `createdAt`, `updatedAt`) VALUES
('09197118-a74e-4cf4-b1d0-20c7ac7be007', 'MEJA NO 1', 44000, '2024-08-11 15:48:26', '2024-08-11 15:48:26'),
('11edcd6a-859e-4490-84fc-2d6aebb811b7', 'MEJA NO 1', 10000, '2024-08-11 15:48:56', '2024-08-11 15:48:57'),
('2c2bd2e4-dbc3-4c58-8616-ce76ae0d6623', 'MEJA NO 1', 44000, '2024-08-11 15:45:46', '2024-08-11 15:45:46');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` enum('minuman','makanan','promo') NOT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `printer` enum('A','B','C') NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `variant`, `price`, `printer`, `createdAt`, `updatedAt`) VALUES
('2b8d86ae-cfe3-466f-81c3-87c9e490727a', 'Jeruk', 'minuman', 'PANAS', 10000, 'C', '2024-08-11 15:43:47', '2024-08-11 15:43:47'),
('346e4104-6dc7-4a97-9f53-263db822c54c', 'Nasi Goreng', 'makanan', NULL, 15000, 'B', '2024-08-11 15:43:47', '2024-08-11 15:43:47'),
('412b04f5-a385-46d4-a8b7-04adc2b23181', 'Extra Es Batu', 'minuman', NULL, 2000, 'C', '2024-08-11 15:43:47', '2024-08-11 15:43:47'),
('4c8aa4c2-4d9b-4e29-a69c-c505ad073098', 'Kopi', 'minuman', 'DINGIN', 8000, 'C', '2024-08-11 15:43:47', '2024-08-11 15:43:47'),
('52639cf0-fc31-4664-96e2-69ffa1864b77', 'Mie', 'makanan', 'KUAH', 15000, 'B', '2024-08-11 15:43:47', '2024-08-11 15:43:47'),
('5f55b41d-1fe1-48ec-9f17-33a033c97615', 'Mie', 'makanan', 'GORENG', 15000, 'B', '2024-08-11 15:43:47', '2024-08-11 15:43:47'),
('8b5a7620-ac16-435a-aba2-b4ea82947588', 'Teh', 'minuman', 'MANIS', 8000, 'C', '2024-08-11 15:43:47', '2024-08-11 15:43:47'),
('92cd38f0-ab84-4cf9-9f2e-0fbfffdf8853', 'Jeruk', 'minuman', 'DINGIN', 12000, 'C', '2024-08-11 15:43:47', '2024-08-11 15:43:47'),
('e9cbf503-3fb0-43d0-885e-543da20790cc', 'Kopi', 'minuman', 'PANAS', 6000, 'C', '2024-08-11 15:43:47', '2024-08-11 15:43:47'),
('f481f3cf-07ad-4b28-a4d1-bbb29b04bbdd', 'Teh', 'minuman', 'TAWAR', 5000, 'C', '2024-08-11 15:43:47', '2024-08-11 15:43:47'),
('fe7d1664-8e75-46d5-95ed-62a5bbe8766d', 'Nasi Goreng + Jeruk Dingin', 'promo', NULL, 23000, 'B', '2024-08-11 15:43:47', '2024-08-11 15:43:47');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20240811152807-create-products.cjs'),
('20240811152808-create-orders.cjs'),
('20240811152810-create-order-items.cjs'),
('20240811152811-create-tables.cjs');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `number` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `number`, `createdAt`, `updatedAt`) VALUES
('2d4d54bf-a282-44d9-baed-46d0338c45e2', 'MEJA NO 1', '2024-08-11 15:43:47', '2024-08-11 15:43:47'),
('671317c6-b6ae-4b8a-9120-4cf29fc30926', 'MEJA NO 3', '2024-08-11 15:43:47', '2024-08-11 15:43:47'),
('ab297ed2-187f-49fc-b4b1-32a5bfaf5de8', 'MEJA NO 2', '2024-08-11 15:43:47', '2024-08-11 15:43:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderId` (`orderId`),
  ADD KEY `productId` (`productId`);

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
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
