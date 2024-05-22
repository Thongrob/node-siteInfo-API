-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 22, 2024 at 10:27 AM
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
-- Database: `users_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `urole` int(10) NOT NULL DEFAULT 0,
  `trash` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `fname`, `lname`, `phone`, `create_date`, `urole`, `trash`) VALUES
(1, 'thongrob.tsr@gmail.com', '$2b$10$sIqeEyMGm35JlLQWFJjyfe7yNR7EM6gsv44/hliTdCAwEVCC4/v1S', 'Thongrob', 'Tipsurat', '0823750353', '2023-08-26 15:59:44', 0, 0),
(2, 'thongrob_03@hotmail.com', '$2b$10$TIv9dAr3ajQ3MySssIakA.rPlSfXFNdSeUSeE6GXhENk1az6lidSO', 'Thongrob', 'Tipsurat', '0801234567', '2023-08-26 16:01:13', 0, 0),
(3, 'thongrobtip31@gmail.com', '$2b$10$RXgR9pjVL9D9cpFcIv1dgejcN8Ls7qZTnYK76lmsEmrmR/7z74Jq6', 'Thong', 'Rob', '0803750353', '2023-09-30 08:35:30', 0, 0),
(4, 'thongrob@me.com', '$2b$10$o/nCbY8JP07xw28vW00Z6uKOf0zIjG/EnXUut1PMU9SWpPEP//HBW', '', '', '', '2024-05-22 04:58:09', 0, 0),
(5, 'anna@me.com', '$2b$10$5Z90QF/xXfVf/qe.Qd131OI67O1v4O3C1mAiSZAhFzhBAfGTNYCni', '', '', '', '2024-05-22 05:24:24', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
