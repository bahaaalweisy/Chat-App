-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2020 at 09:38 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mychat`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_pass` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_profile` varchar(255) NOT NULL,
  `user_country` text NOT NULL,
  `user_gender` text NOT NULL,
  `forgotten_answer` varchar(100) NOT NULL,
  `log_in` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pass`, `user_email`, `user_profile`, `user_country`, `user_gender`, `forgotten_answer`, `log_in`) VALUES
(4, 'bahaa ', '123456', 'bahaa@gmail.com', 'images/bahaa.jpg.16', 'Jordan', 'Male', 'bahaa', 'Online'),
(5, 'cena', '20201998', 'cena@yahoo.com', 'images/index.jpg', 'United States of America', 'Male', '', 'Offline'),
(6, 'chris evans', '20201998', 'chris@gmail.com', 'images/index.jpg', 'United States of America', 'Male', '', ''),
(7, 'anas', '123456789', 'anas@yahoo.com', 'images/index.jpg', 'UK', 'Male', '', 'Offline'),
(8, 'Noor', '19982020', 'noor@yahoo.com', 'images/index.jpg', 'JORDAN', 'Female', 'bahaa', 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `users_chat`
--

CREATE TABLE `users_chat` (
  `msg_id` int(11) NOT NULL,
  `sender_username` varchar(100) NOT NULL,
  `receiver_username` varchar(100) NOT NULL,
  `msg_content` varchar(255) NOT NULL,
  `msg_status` text NOT NULL,
  `msg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_chat`
--

INSERT INTO `users_chat` (`msg_id`, `sender_username`, `receiver_username`, `msg_content`, `msg_status`, `msg_date`) VALUES
(11, 'bahaa', 'cena', 'مرحبا ', 'unread', '2020-02-15 15:02:33'),
(12, 'cena', 'bahaa', 'هلا ', 'unread', '2020-02-15 15:03:01'),
(13, 'bahaa', 'cena', 'hi', 'unread', '2020-02-15 16:38:47'),
(14, 'anas', 'bahaa ', 'مرحبا', 'unread', '2020-02-16 10:43:04'),
(15, 'bahaa ', 'anas', 'هلا', 'unread', '2020-02-16 10:44:40'),
(16, 'bahaa alwaisi', 'anas', 'مرحبا', 'unread', '2020-02-16 11:34:27'),
(17, 'anas', 'bahaa alwaisi', 'هلا', 'unread', '2020-02-16 11:37:59'),
(18, 'Noor', 'bahaa alwaisi', 'مرحبا', 'unread', '2020-02-16 11:45:58'),
(19, 'bahaa alwaisi', 'Noor', 'هلا', 'unread', '2020-02-16 11:48:03'),
(20, 'bahaa ', 'cena', 'Fuck you man', 'unread', '2020-02-17 12:15:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_chat`
--
ALTER TABLE `users_chat`
  ADD PRIMARY KEY (`msg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users_chat`
--
ALTER TABLE `users_chat`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
