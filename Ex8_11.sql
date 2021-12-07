-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 07, 2021 lúc 03:39 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `week2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `items_ordered`
--

CREATE TABLE `items_ordered` (
  `CustomerId` int(11) NOT NULL,
  `order_date` datetime DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `items_ordered`
--

INSERT INTO `items_ordered` (`CustomerId`, `order_date`, `item`, `quantity`, `price`) VALUES
(10330, '0000-00-00 00:00:00', 'Pogo stick', 1, 28),
(10101, '0000-00-00 00:00:00', 'Raft', 1, 58),
(10298, '0000-00-00 00:00:00', 'Skateboard', 1, 33),
(10101, '0000-00-00 00:00:00', 'Life Vest', 4, 125),
(10299, '0000-00-00 00:00:00', 'Parachute', 1, 1250),
(10339, '0000-00-00 00:00:00', 'Umbrella', 1, 4.5),
(10449, '0000-00-00 00:00:00', 'Unicycle', 1, 180.79),
(10439, '0000-00-00 00:00:00', 'Ski Poles', 2, 25.5),
(10101, '0000-00-00 00:00:00', 'Rain Coat', 1, 18.3),
(10449, '0000-00-00 00:00:00', 'Snow Shoes', 1, 45),
(10439, '0000-00-00 00:00:00', 'Tent', 1, 88),
(10298, '0000-00-00 00:00:00', 'Lantern', 2, 29),
(10410, '0000-00-00 00:00:00', 'Sleeping Bag', 1, 89.22),
(10438, '0000-00-00 00:00:00', 'Umbrella', 1, 6.75),
(10438, '0000-00-00 00:00:00', 'Pillow', 1, 8.5),
(10298, '0000-00-00 00:00:00', 'Helmet', 1, 22),
(10449, '0000-00-00 00:00:00', 'Bicycle', 1, 380.5),
(10449, '0000-00-00 00:00:00', 'Canoe', 1, 280),
(10101, '0000-00-00 00:00:00', 'Hoola Hoop', 3, 14.75),
(10330, '0000-00-00 00:00:00', 'Flashlight', 4, 28),
(10101, '0000-00-00 00:00:00', 'Lantern', 1, 16),
(10299, '0000-00-00 00:00:00', 'Inflatable Mattress', 1, 38),
(10438, '0000-00-00 00:00:00', 'Tent', 1, 79.99),
(10413, '0000-00-00 00:00:00', 'Lawnchair', 4, 32),
(10410, '0000-00-00 00:00:00', 'Unicycle', 1, 192.5),
(10315, '0000-00-00 00:00:00', 'Compass', 1, 8),
(10449, '0000-00-00 00:00:00', 'Flashlight', 1, 4.5),
(10101, '0000-00-00 00:00:00', 'Sleeping Bag', 2, 88.7),
(10298, '0000-00-00 00:00:00', 'Pocket Knife', 1, 22.38),
(10449, '0000-00-00 00:00:00', 'Canoe paddle', 2, 40),
(10298, '0000-00-00 00:00:00', 'Ear Muffs', 1, 12.5),
(10330, '0000-00-00 00:00:00', 'Shovel', 1, 16.75);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `items_ordered`
--
ALTER TABLE `items_ordered`
  ADD KEY `fk_item_id_customer` (`CustomerId`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `items_ordered`
--
ALTER TABLE `items_ordered`
  ADD CONSTRAINT `fk_item_id_customer` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`customerid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
