-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2024 at 05:36 AM
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
-- Database: `planmytrip`
--

-- --------------------------------------------------------

--
-- Table structure for table `cancelroomnotification`
--

CREATE TABLE `cancelroomnotification` (
  `id` int(11) NOT NULL,
  `Location` varchar(200) NOT NULL,
  `hotel_name` varchar(200) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cancelroomnotification`
--

INSERT INTO `cancelroomnotification` (`id`, `Location`, `hotel_name`, `Date`) VALUES
(6, 'Chittagong', 'Radisson Blu', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(50) NOT NULL,
  `question` varchar(250) NOT NULL,
  `answer` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`) VALUES
(1, 'What payment methods are accepted?', 'Bkash and Nagad is accepted.'),
(2, 'Do you have cheep packages?', 'Yes'),
(3, 'Can I request an extra bed in my room and will there be extra costs?', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `hotelmanagement`
--

CREATE TABLE `hotelmanagement` (
  `room_id` int(11) NOT NULL,
  `hotel_name` varchar(30) NOT NULL,
  `room_type` varchar(10) NOT NULL,
  `location` varchar(40) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotelmanagement`
--

INSERT INTO `hotelmanagement` (`room_id`, `hotel_name`, `room_type`, `location`, `price`) VALUES
(3, 'Radisson Blu', 'Double', 'DHAKA', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `mybookings`
--

CREATE TABLE `mybookings` (
  `Id` int(50) NOT NULL,
  `hotel_name` varchar(200) NOT NULL,
  `room_type` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mybookings`
--

INSERT INTO `mybookings` (`Id`, `hotel_name`, `room_type`, `location`, `date`) VALUES
(0, 'Five Star', 'single', 'Dhaka', '2024-09-23'),
(0, 'Five Star', 'single', 'Dhaka', '2024-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(50) NOT NULL,
  `Location` varchar(200) NOT NULL,
  `hotel_name` varchar(200) NOT NULL,
  `Date` date NOT NULL,
  `Time` time(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `Location`, `hotel_name`, `Date`, `Time`) VALUES
(0, 'Dhaka', 'Five Star', '2024-09-23', '00:00:00.000000'),
(0, 'Dhaka', 'Five Star', '2024-09-23', '00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `notification_tour`
--

CREATE TABLE `notification_tour` (
  `PackageName` varchar(20) NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `Price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `bKash` varchar(16) DEFAULT NULL,
  `mobile_number` varchar(11) DEFAULT NULL,
  `payment_amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `username`, `payment_method`, `bKash`, `mobile_number`, `payment_amount`) VALUES
(0, 'f1', 'bKash', '1234123412341234', NULL, 300.00),
(0, 'F1', 'bKash', '1234123412341234', NULL, 9000.00),
(0, 'vk', 'bKash', NULL, '01799006633', 99999999.99);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` text NOT NULL,
  `service_type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `username`, `name`, `rating`, `review`, `service_type`, `created_at`) VALUES
(0, 'f1', '', 5, 'Good', 'hotel', '2024-09-20 18:12:17'),
(0, 'F1', '', 5, 'Good', 'hotel', '2024-09-13 05:21:17'),
(0, 'fatin', '', 5, 'Good', 'hotel', '2024-09-15 07:44:22');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(50) NOT NULL,
  `hotel_name` varchar(200) NOT NULL,
  `room_type` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `Price` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `hotel_name`, `room_type`, `location`, `date`, `Price`) VALUES
(0, 'Five Star', 'single', 'Dhaka', '2024-09-01', 200),
(0, 'Redisson Blu', 'single', 'Dhaka', '2024-09-01', 2000),
(0, 'Bonoful', 'double', 'Chittagong', '2024-09-25', 100000000),
(0, 'zzzz', 'double', 'Chittagong', '2024-09-25', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `tourpackages`
--

CREATE TABLE `tourpackages` (
  `PackageNo` varchar(20) NOT NULL,
  `Destination` varchar(30) NOT NULL,
  `Accomodations` varchar(30) NOT NULL,
  `Meals` varchar(30) NOT NULL,
  `Days` int(10) NOT NULL,
  `Price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tourpackages`
--

INSERT INTO `tourpackages` (`PackageNo`, `Destination`, `Accomodations`, `Meals`, `Days`, `Price`) VALUES
('Golden', 'Comilla - dhaka', 'Redison', 'Available', 2, 40000),
('Silver', 'Bandarban', 'HOTEL ABC', 'Available', 2, 9000),
('Regular', 'Bandharban', 'Hotel Z', 'available', 4, 2000),
('NORMAL', 'Dhaka - Comilla', 'HOTEL BD', 'available', 2, 21212),
('Golden', 'Dhaka', 'Hotel A', 'available', 5, 2121212),
('101', 'kuril', 'Bonoful', 'two', 3, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `transection`
--

CREATE TABLE `transection` (
  `Name` varchar(20) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Phone` int(20) NOT NULL,
  `Balance` int(11) NOT NULL,
  `PaymentMethod` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transection`
--

INSERT INTO `transection` (`Name`, `UserName`, `Phone`, `Balance`, `PaymentMethod`) VALUES
('Mr.Nayeem', 'dr.strange', 1234567894, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `Name` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `OTP` int(10) NOT NULL,
  `ProfilePic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`Name`, `Email`, `UserName`, `Password`, `Phone`, `DOB`, `OTP`, `ProfilePic`) VALUES
('Admin', 'dasdaraz@gmail.com', 'admin', '111@', '1959700785', '2004-11-15', 0, '../upload/admin.png'),
('Mr.Nayeem', 'aiubedu@gmail.com', 'dr.strange', ' N1234567m@', '01234567894', '0000-00-00', 0, '../upload/Kim.jpg'),
('bortoman', 'bortoman244@gmail.com', 'F1', '111@', '1701060964', '2000-12-06', 0, '../upload/'),
('nafiul', 'nafiul@gmail.com', 'f2', '111@', '189218291', '2001-06-13', 0, '../upload/'),
('virat kohli', 'virat18@gmail.com', 'vk', '$Nayeem20', '01799225577', '2024-09-24', 0, '../upload/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cancelroomnotification`
--
ALTER TABLE `cancelroomnotification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotelmanagement`
--
ALTER TABLE `hotelmanagement`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `transection`
--
ALTER TABLE `transection`
  ADD PRIMARY KEY (`Phone`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`UserName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cancelroomnotification`
--
ALTER TABLE `cancelroomnotification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `hotelmanagement`
--
ALTER TABLE `hotelmanagement`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
