-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2023 at 12:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blue_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sr.no` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sr.no`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Shruti', 'Naman', 500, '2023-06-11 18:58:27'),
(2, 'Shruti', 'Naman', 200, '2023-06-11 19:00:31'),
(3, 'Naman', 'Niky', 5000, '2023-06-11 19:01:32'),
(4, 'Shruti', 'Niky', 5000, '2023-06-11 19:06:15'),
(5, 'Arjun', 'Naman', 500, '2023-06-11 19:28:24'),
(6, 'Arjun', 'Naman', 500, '2023-06-11 19:30:31'),
(7, 'Arjun', 'Naman', 200, '2023-06-11 19:31:22'),
(8, 'Siddhu', 'Aman', 520, '2023-06-11 07:39:58'),
(9, 'Arka', 'Shruti', 500, '2023-04-11 09:37:08'),
(10, 'Shruti', 'Aman', 100, '2023-06-11 11:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1087, 'Naman', 'nam@gmail.com', 46600),
(2654, 'Aman', 'chuha@gmail.com', 30120),
(3624, 'Gaurav', 'mallu@gmail.com', 37500),
(4542, 'Arjun', 'nepali@gmail.com', 49300),
(5345, 'Shruti', 'shuru@gmail.com', 37000),
(5465, 'Arka', 'baby@gmail.com', 49500),
(6554, 'Niky', 'loveday@gmail.com', 40000),
(7875, 'Siddhu', 'pajji@gmail.com', 49480),
(8877, 'Suvam', 'perimal@gmail.com', 40500),
(9245, 'Sachin', 'nalla@gmail.com', 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sr.no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sr.no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
