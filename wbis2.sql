-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2025 at 10:23 AM
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
-- Database: `wbis2`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `author` varchar(255) NOT NULL,
  `publication_year` year(4) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `price`, `author`, `publication_year`, `description`, `image`, `active`) VALUES
(1, '1984', 9.99, 'George Orwell', '1949', 'Dystopian novel about a totalitarian regime.', 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 1),
(2, 'Brave New World', 12.5, 'Aldous Huxley', '1932', 'A futuristic vision of a controlled society.', 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 1),
(3, 'To Kill a Mockingbird', 8.75, 'Harper Lee', '1960', 'A novel about racial injustice in America.', 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 1),
(4, 'The Great Gatsby', 10, 'F. Scott Fitzgerald', '1925', 'A tragic story about the American dream.', 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 1),
(5, 'Moby Dick', 11.5, 'Herman Melville', '0000', 'An epic tale of obsession and revenge.', 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 1),
(6, 'War and Peace', 14.99, 'Leo Tolstoy', '0000', 'A historical novel set during the Napoleonic Wars.', 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 1),
(7, 'Pride and Prejudice', 7.5, 'Jane Austen', '0000', 'A classic romance novel.', 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 1),
(8, 'The Catcher in the Rye', 9.25, 'J.D. Salinger', '1951', 'A novel about teenage rebellion.', 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 1),
(9, 'The Hobbit', 13.75, 'J.R.R. Tolkien', '1937', 'A fantasy adventure story.', 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 1),
(10, 'Fahrenheit 451', 8.99, 'Ray Bradbury', '1953', 'A dystopian novel about censorship.', 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `active`) VALUES
(1, 'Laptop', 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Korisnik'),
(2, 'Administrator'),
(3, 'SuperAdministrator');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `PASSWORD`, `name`, `phone_number`, `active`, `email`) VALUES
(26, '$2y$10$Rx0ebMd2V2cu2rRp4qc3meg4LOPpGpSTynK7kIFTbfB4r/ivBcXIW', NULL, NULL, 1, 'djerma@gmail.com'),
(27, '$2y$10$noju/WTpjLZeCR6SJvCcG.jNnT9XVeqLdF7Qv57T7EgRpQqtIJUui', NULL, NULL, 1, 'mims@gmail.com'),
(28, '$2y$10$dVX5vBmSpUquxHR.sJKx/.JJHiRLNvHdvEyWSSGVv9QMei/H6e98m', NULL, NULL, 1, 'djole@gmail.com'),
(30, '$2y$10$cA/ClNA.cp/VkRZNZZDw0u9gMIRZJLLCWKb5iZA/ZlVPHYsT1qKqm', NULL, NULL, 1, 'djerma@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`) VALUES
(6, 26, 3),
(10, 27, 1),
(11, 28, 1),
(13, 26, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_author` (`author`),
  ADD KEY `idx_year` (`publication_year`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_roles_roles_id_fk` (`role_id`),
  ADD KEY `user_roles_users_id_fk` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_roles_id_fk` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `user_roles_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
