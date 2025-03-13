-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2025 at 09:54 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wbis3`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
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
(1, '1984', 10, 'George Orwell', 1949, 'Dystopian novel about a totalitarian regime.', 'https://imgs.search.brave.com/hZxzzCFB0YiRZYEANFgYLwdhZbNYwItk-7E1-aKPF2s/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMzLnBlbmd1aW5y/YW5kb21ob3VzZS5j/b20vY292ZXIvOTc4/MDQ1MjI4NDIzNA', 1),
(2, 'Brave New World', 13, 'Aldous Huxley', 1932, 'A futuristic vision of a controlled society.', 'https://imgs.search.brave.com/FgdR-calXK6uJKwDS8qv9CRgbiQ4mOZjgfcsNNt7580/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zMjE2/MTgucGNkbi5jby93/cC1jb250ZW50L3Vw/bG9hZHMvMjAxNi8x/Mi9CcmF2ZU5ld1dv/cmxkMTk0NkhpUmVz/X1JlZHVjZWQtNzY4/eDExNzMuanBn', 1),
(3, 'To Kill a Mockingbird', 9, 'Harper Lee', 1960, 'A novel about racial injustice in America.', 'https://imgs.search.brave.com/fCudbw_TToA_ensavaNPLKoUCxCl4yjFDAMzVT7xh6g/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTFONXFWanVLQUwu/anBn', 1),
(4, 'The Great Gatsby', 10, 'F. Scott Fitzgerald', 1925, 'A tragic story about the American dream.', 'https://imgs.search.brave.com/BaVPaqy54QG6Hp7jzRdtpgWw39-IH7e_3UVryzouhVQ/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzgxVExpWnJhc1ZM/LmpwZw', 1),
(5, 'Moby Dick', 12, 'Herman Melville', 0000, 'An epic tale of obsession and revenge.', 'https://imgs.search.brave.com/78Z3YmzNgZAoCeXZHKToZ6Z8BHnVf69qENMKWMaNbf4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzU0LzUw/L2U3LzU0NTBlNzFh/NmE5ZTViMWM0MjVi/NDc0NzU3OWJkMDRj/LmpwZw', 1),
(6, 'War and Peace', 15, 'Leo Tolstoy', 0000, 'A historical novel set during the Napoleonic Wars.', 'https://imgs.search.brave.com/k6kt5feJepnJaA5qjUOC8WFWpzTQkL89vgN-CDsgAgM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzkyLzY4/LzU3LzkyNjg1Nzcx/Yzk4NWY5MTVkZDM1/MDk2NjQ3ZTEzY2Y5/LmpwZw', 1),
(7, 'Pride and Prejudice', 8, 'Jane Austen', 0000, 'A classic romance novel.', 'https://imgs.search.brave.com/X13epbvrrH0xySCmnJXa1lV1WteL1O-Yi2V79B8tBPk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2RhL2Ey/LzE1L2RhYTIxNThh/Yzc1OWYzYzEyMjMy/OTcwMWQ0NDFhZTZl/LmpwZw', 1),
(8, 'The Catcher in the Rye', 9, 'J.D. Salinger', 1951, 'A novel about teenage rebellion.', 'https://imgs.search.brave.com/H8TGe2_CU4P4nF2AWetmmlTVmnyysVp2pbXykolXclY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzk1L2Jm/L2EyLzk1YmZhMjNh/NGQ0MDlhZmU3OGNi/ZTFkYTM2MTUyMWQy/LmpwZw', 1),
(9, 'The Hobbit', 14, 'J.R.R. Tolkien', 1937, 'A fantasy adventure story.', 'https://imgs.search.brave.com/87T8BSIqFC2YTQrKoqQXTolUhnQaKMdk5bipS4E8SVk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/dGhlYm9va2Rlc2ln/bmVyLmNvbS93cC1j/b250ZW50L3VwbG9h/ZHMvMjAyMy8xMi9U/aGUtSG9iYml0LUJv/b2stQ292ZXItQnkt/TWljaGFlbC1IYWd1/ZS0xLmpwZw', 1),
(10, 'Fahrenheit 451', 9, 'Ray Bradbury', 1953, 'A dystopian novel about censorship.', 'https://imgs.search.brave.com/JMH8hf4qSxoIfAzAgMsSZKngR4D2NtytOn0sVnl_u3I/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzhmLzJk/L2E4LzhmMmRhODFi/OTIyZThmZjRlNDJj/NGYwMjI0MjJiYmRj/LmpwZw', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `total_price` int(11) NOT NULL,
  `created_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_on`, `total_price`, `created_by`) VALUES
(9, '2025-01-09 08:27:23', 146, 'djerma@gmail.com'),
(10, '2025-02-09 08:30:49', 102, 'djerma@gmail.com'),
(11, '2025-03-11 08:30:59', 122, 'djerma@gmail.com'),
(12, '2025-04-09 08:32:25', 122, 'djerma@gmail.com'),
(13, '2025-05-09 08:32:34', 187, 'djerma@gmail.com'),
(14, '2025-06-10 03:59:14', 83, 'djerma@gmail.com'),
(15, '2025-07-10 04:46:06', 99, 'djerma@gmail.com'),
(16, '2025-08-10 04:46:12', 52, 'djerma@gmail.com'),
(17, '2025-09-10 04:46:17', 106, 'djerma@gmail.com'),
(18, '2025-10-10 04:46:23', 173, 'djerma@gmail.com'),
(19, '2024-11-10 04:48:01', 210, 'djerma@gmail.com'),
(20, '2025-12-10 04:48:11', 316, 'djerma@gmail.com'),
(21, '2025-03-10 06:23:00', 124, 'djerma@gmail.com'),
(22, '2024-05-12 03:57:23', 105, 'djerma@gmail.com'),
(23, '2024-06-12 03:57:34', 411, 'djerma@gmail.com'),
(24, '2024-06-12 03:57:47', 553, 'djerma@gmail.com'),
(25, '2024-09-12 03:58:03', 418, 'djerma@gmail.com'),
(26, '2024-12-12 03:58:12', 285, 'djerma@gmail.com'),
(27, '2025-03-12 04:00:31', 450, 'djerma@gmail.com'),
(28, '2025-03-12 04:00:43', 351, 'djerma@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_on` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `title`, `author`, `price`, `image`, `description`, `quantity`, `created_on`, `order_id`, `created_by`) VALUES
(6, '1984', 'George Orwell', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'Dystopian novel about a totalitarian regime.', 4, '2025-03-09 08:27:24', 9, 'djerma@gmail.com'),
(7, 'Brave New World', 'Aldous Huxley', 12, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A futuristic vision of a controlled society.', 5, '2025-03-09 08:27:24', 9, 'djerma@gmail.com'),
(8, 'To Kill a Mockingbird', 'Harper Lee', 8, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about racial injustice in America.', 5, '2025-03-09 08:27:24', 9, 'djerma@gmail.com'),
(9, 'The Catcher in the Rye', 'J.D. Salinger', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about teenage rebellion.', 3, '2025-03-09 08:30:49', 10, 'djerma@gmail.com'),
(10, 'Pride and Prejudice', 'Jane Austen', 7, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A classic romance novel.', 4, '2025-03-09 08:30:49', 10, 'djerma@gmail.com'),
(11, 'Fahrenheit 451', 'Ray Bradbury', 8, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A dystopian novel about censorship.', 5, '2025-03-09 08:30:50', 10, 'djerma@gmail.com'),
(12, 'Brave New World', 'Aldous Huxley', 12, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A futuristic vision of a controlled society.', 4, '2025-03-09 08:30:59', 11, 'djerma@gmail.com'),
(13, 'The Catcher in the Rye', 'J.D. Salinger', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about teenage rebellion.', 4, '2025-03-09 08:30:59', 11, 'djerma@gmail.com'),
(14, 'Fahrenheit 451', 'Ray Bradbury', 8, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A dystopian novel about censorship.', 4, '2025-03-09 08:30:59', 11, 'djerma@gmail.com'),
(15, 'Brave New World', 'Aldous Huxley', 12, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A futuristic vision of a controlled society.', 4, '2025-03-09 08:32:25', 12, 'djerma@gmail.com'),
(16, 'To Kill a Mockingbird', 'Harper Lee', 8, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about racial injustice in America.', 4, '2025-03-09 08:32:25', 12, 'djerma@gmail.com'),
(17, 'The Catcher in the Rye', 'J.D. Salinger', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about teenage rebellion.', 4, '2025-03-09 08:32:25', 12, 'djerma@gmail.com'),
(18, 'Fahrenheit 451', 'Ray Bradbury', 8, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A dystopian novel about censorship.', 4, '2025-03-09 08:32:34', 13, 'djerma@gmail.com'),
(19, 'The Catcher in the Rye', 'J.D. Salinger', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about teenage rebellion.', 6, '2025-03-09 08:32:34', 13, 'djerma@gmail.com'),
(20, 'The Hobbit', 'J.R.R. Tolkien', 13, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A fantasy adventure story.', 7, '2025-03-09 08:32:34', 13, 'djerma@gmail.com'),
(21, '1984', 'George Orwell', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'Dystopian novel about a totalitarian regime.', 2, '2025-03-10 03:59:14', 14, 'djerma@gmail.com'),
(22, 'Brave New World', 'Aldous Huxley', 12, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A futuristic vision of a controlled society.', 3, '2025-03-10 03:59:14', 14, 'djerma@gmail.com'),
(23, 'To Kill a Mockingbird', 'Harper Lee', 8, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about racial injustice in America.', 3, '2025-03-10 03:59:14', 14, 'djerma@gmail.com'),
(24, '1984', 'George Orwell', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'Dystopian novel about a totalitarian regime.', 10, '2025-03-10 04:46:06', 15, 'djerma@gmail.com'),
(25, 'Pride and Prejudice', 'Jane Austen', 7, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A classic romance novel.', 7, '2025-03-10 04:46:12', 16, 'djerma@gmail.com'),
(26, 'Brave New World', 'Aldous Huxley', 12, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A futuristic vision of a controlled society.', 5, '2025-03-10 04:46:17', 17, 'djerma@gmail.com'),
(27, 'To Kill a Mockingbird', 'Harper Lee', 8, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about racial injustice in America.', 5, '2025-03-10 04:46:17', 17, 'djerma@gmail.com'),
(28, 'The Catcher in the Rye', 'J.D. Salinger', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about teenage rebellion.', 5, '2025-03-10 04:46:23', 18, 'djerma@gmail.com'),
(29, 'The Hobbit', 'J.R.R. Tolkien', 13, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A fantasy adventure story.', 6, '2025-03-10 04:46:23', 18, 'djerma@gmail.com'),
(30, 'Fahrenheit 451', 'Ray Bradbury', 8, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A dystopian novel about censorship.', 5, '2025-03-10 04:46:23', 18, 'djerma@gmail.com'),
(31, 'Brave New World', 'Aldous Huxley', 12, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A futuristic vision of a controlled society.', 5, '2025-03-10 04:48:01', 19, 'djerma@gmail.com'),
(32, 'To Kill a Mockingbird', 'Harper Lee', 8, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about racial injustice in America.', 5, '2025-03-10 04:48:01', 19, 'djerma@gmail.com'),
(33, 'Moby Dick', 'Herman Melville', 11, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'An epic tale of obsession and revenge.', 5, '2025-03-10 04:48:01', 19, 'djerma@gmail.com'),
(34, 'The Catcher in the Rye', 'J.D. Salinger', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about teenage rebellion.', 5, '2025-03-10 04:48:01', 19, 'djerma@gmail.com'),
(35, 'Brave New World', 'Aldous Huxley', 12, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A futuristic vision of a controlled society.', 4, '2025-03-10 04:48:11', 20, 'djerma@gmail.com'),
(36, '1984', 'George Orwell', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'Dystopian novel about a totalitarian regime.', 5, '2025-03-10 04:48:11', 20, 'djerma@gmail.com'),
(37, 'To Kill a Mockingbird', 'Harper Lee', 8, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about racial injustice in America.', 5, '2025-03-10 04:48:11', 20, 'djerma@gmail.com'),
(38, 'Moby Dick', 'Herman Melville', 11, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'An epic tale of obsession and revenge.', 5, '2025-03-10 04:48:11', 20, 'djerma@gmail.com'),
(39, 'The Catcher in the Rye', 'J.D. Salinger', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about teenage rebellion.', 5, '2025-03-10 04:48:11', 20, 'djerma@gmail.com'),
(40, 'The Hobbit', 'J.R.R. Tolkien', 13, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A fantasy adventure story.', 5, '2025-03-10 04:48:11', 20, 'djerma@gmail.com'),
(41, '1984', 'George Orwell', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'Dystopian novel about a totalitarian regime.', 4, '2025-03-10 06:23:00', 21, 'djerma@gmail.com'),
(42, 'Brave New World', 'Aldous Huxley', 12, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A futuristic vision of a controlled society.', 4, '2025-03-10 06:23:00', 21, 'djerma@gmail.com'),
(43, 'To Kill a Mockingbird', 'Harper Lee', 8, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about racial injustice in America.', 4, '2025-03-10 06:23:00', 21, 'djerma@gmail.com'),
(44, '1984', 'George Orwell', 10, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'Dystopian novel about a totalitarian regime.', 3, '2025-03-12 03:57:23', 22, 'djerma@gmail.com'),
(45, 'Brave New World', 'Aldous Huxley', 13, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A futuristic vision of a controlled society.', 3, '2025-03-12 03:57:23', 22, 'djerma@gmail.com'),
(46, 'To Kill a Mockingbird', 'Harper Lee', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about racial injustice in America.', 4, '2025-03-12 03:57:23', 22, 'djerma@gmail.com'),
(47, 'Pride and Prejudice', 'Jane Austen', 8, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A classic romance novel.', 8, '2025-03-12 03:57:34', 23, 'djerma@gmail.com'),
(48, 'The Catcher in the Rye', 'J.D. Salinger', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about teenage rebellion.', 12, '2025-03-12 03:57:34', 23, 'djerma@gmail.com'),
(49, 'The Hobbit', 'J.R.R. Tolkien', 14, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A fantasy adventure story.', 10, '2025-03-12 03:57:34', 23, 'djerma@gmail.com'),
(50, 'Fahrenheit 451', 'Ray Bradbury', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A dystopian novel about censorship.', 11, '2025-03-12 03:57:34', 23, 'djerma@gmail.com'),
(51, '1984', 'George Orwell', 10, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'Dystopian novel about a totalitarian regime.', 8, '2025-03-12 03:57:47', 24, 'djerma@gmail.com'),
(52, 'Brave New World', 'Aldous Huxley', 13, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A futuristic vision of a controlled society.', 9, '2025-03-12 03:57:47', 24, 'djerma@gmail.com'),
(53, 'To Kill a Mockingbird', 'Harper Lee', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about racial injustice in America.', 9, '2025-03-12 03:57:47', 24, 'djerma@gmail.com'),
(54, 'War and Peace', 'Leo Tolstoy', 15, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A historical novel set during the Napoleonic Wars.', 9, '2025-03-12 03:57:47', 24, 'djerma@gmail.com'),
(55, 'The Hobbit', 'J.R.R. Tolkien', 14, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A fantasy adventure story.', 10, '2025-03-12 03:57:47', 24, 'djerma@gmail.com'),
(56, '1984', 'George Orwell', 10, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'Dystopian novel about a totalitarian regime.', 9, '2025-03-12 03:58:03', 25, 'djerma@gmail.com'),
(57, 'Moby Dick', 'Herman Melville', 12, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'An epic tale of obsession and revenge.', 11, '2025-03-12 03:58:03', 25, 'djerma@gmail.com'),
(58, 'The Catcher in the Rye', 'J.D. Salinger', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about teenage rebellion.', 12, '2025-03-12 03:58:03', 25, 'djerma@gmail.com'),
(59, 'Pride and Prejudice', 'Jane Austen', 8, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A classic romance novel.', 11, '2025-03-12 03:58:03', 25, 'djerma@gmail.com'),
(60, 'The Hobbit', 'J.R.R. Tolkien', 14, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A fantasy adventure story.', 10, '2025-03-12 03:58:12', 26, 'djerma@gmail.com'),
(61, 'The Catcher in the Rye', 'J.D. Salinger', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about teenage rebellion.', 9, '2025-03-12 03:58:12', 26, 'djerma@gmail.com'),
(62, 'Pride and Prejudice', 'Jane Austen', 8, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A classic romance novel.', 8, '2025-03-12 03:58:12', 26, 'djerma@gmail.com'),
(63, 'The Catcher in the Rye', 'J.D. Salinger', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about teenage rebellion.', 50, '2025-03-12 04:00:31', 27, 'djerma@gmail.com'),
(64, 'The Catcher in the Rye', 'J.D. Salinger', 9, 'https://t4.ftcdn.net/jpg/03/64/17/57/360_F_364175760_dcXwFAHAjqzVEjBN7tpvSyQmlOe2IEVl.jpg', 'A novel about teenage rebellion.', 39, '2025-03-12 04:00:43', 28, 'djerma@gmail.com');

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
(1, 'Laptop', '100', 1);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_orders_id_fk` (`order_id`);

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
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

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
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_orders_id_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

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
