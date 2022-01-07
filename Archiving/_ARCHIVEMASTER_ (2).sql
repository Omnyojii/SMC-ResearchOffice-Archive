-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2022 at 11:24 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `archivemaster`
--

-- --------------------------------------------------------

--
-- Table structure for table `activitylog`
--

CREATE TABLE `activitylog` (
  `LogID` int(255) NOT NULL,
  `ThesisID` int(255) NOT NULL,
  `User_id` int(255) NOT NULL,
  `DateAccessed` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activitylog`
--

INSERT INTO `activitylog` (`LogID`, `ThesisID`, `User_id`, `DateAccessed`) VALUES
(75, 16, 1, '2021-05-20 03:04:20'),
(77, 16, 1, '2021-05-20 03:05:15'),
(78, 16, 1, '2021-05-20 03:05:21'),
(79, 17, 1, '2021-05-20 03:06:15'),
(80, 16, 1, '2021-05-20 03:07:22'),
(81, 16, 1, '2021-05-20 03:08:11'),
(82, 16, 1, '2021-05-20 03:15:38'),
(83, 17, 1, '2021-05-20 03:17:19'),
(84, 16, 1, '2021-05-20 03:17:35'),
(85, 16, 1, '2021-05-20 03:18:36'),
(86, 16, 1, '2021-05-20 03:21:26'),
(87, 16, 1, '2021-05-20 03:22:22'),
(88, 16, 1, '2021-05-20 03:22:36'),
(89, 16, 1, '2021-05-20 03:23:09'),
(91, 16, 1, '2021-05-20 03:42:14'),
(92, 16, 1, '2021-05-24 02:46:15'),
(93, 16, 1, '2021-05-24 02:46:27'),
(94, 17, 1, '2021-05-24 02:46:39'),
(95, 17, 1, '2021-05-24 02:49:05'),
(97, 23, 1, '2021-05-24 17:20:02'),
(98, 24, 1, '2021-05-24 17:20:10'),
(99, 25, 1, '2021-05-24 17:20:16'),
(100, 16, 1, '2021-05-24 21:26:02'),
(101, 16, 1, '2021-05-24 23:43:57'),
(102, 16, 3, '2021-05-25 00:00:11'),
(103, 16, 1, '2021-05-25 01:16:21'),
(104, 26, 5, '2021-05-27 01:08:30'),
(105, 23, 1, '2021-05-29 11:57:24'),
(106, 17, 1, '2021-05-30 12:02:45'),
(107, 16, 1, '2021-05-30 12:03:38'),
(108, 16, 1, '2021-05-30 12:03:43'),
(109, 17, 1, '2021-05-30 12:03:49'),
(110, 16, 1, '2021-05-31 10:08:40'),
(111, 16, 1, '2021-05-31 10:19:42'),
(112, 16, 1, '2021-05-31 10:24:58'),
(113, 16, 1, '2021-05-31 11:29:47'),
(114, 23, 1, '2021-05-31 11:30:31'),
(115, 26, 1, '2021-05-31 11:31:08'),
(116, 23, 11, '2021-06-02 10:58:55'),
(117, 24, 11, '2021-06-02 10:59:16'),
(118, 23, 11, '2021-06-02 10:59:33'),
(119, 29, 1, '2021-06-02 11:06:33'),
(120, 16, 1, '2021-06-02 10:34:32'),
(121, 16, 1, '2021-06-28 05:58:32'),
(122, 16, 1, '2021-08-10 08:18:21'),
(123, 16, 1, '2021-11-30 03:57:52'),
(124, 27, 1, '2021-11-30 05:52:04'),
(125, 28, 1, '2021-11-30 05:52:20'),
(126, 29, 1, '2021-11-30 05:52:37'),
(127, 16, 1, '2021-11-30 05:52:46');

-- --------------------------------------------------------

--
-- Table structure for table `loginhistory`
--

CREATE TABLE `loginhistory` (
  `login_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `date_login` datetime NOT NULL,
  `date_logout` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginhistory`
--

INSERT INTO `loginhistory` (`login_id`, `user_id`, `date_login`, `date_logout`) VALUES
(3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, '2021-05-18 12:50:59', '0000-00-00 00:00:00'),
(5, 1, '2021-05-18 12:55:57', '0000-00-00 00:00:00'),
(6, 1, '2021-05-18 12:56:12', '0000-00-00 00:00:00'),
(7, 1, '2021-05-18 01:18:39', '0000-00-00 00:00:00'),
(8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, '2021-05-18 01:33:20', '0000-00-00 00:00:00'),
(10, 1, '2021-05-18 02:34:17', '0000-00-00 00:00:00'),
(11, 1, '2021-05-19 11:58:57', '0000-00-00 00:00:00'),
(12, 1, '2021-05-23 07:13:50', '0000-00-00 00:00:00'),
(13, 1, '2021-05-23 04:03:27', '0000-00-00 00:00:00'),
(14, 1, '2021-05-23 04:05:47', '0000-00-00 00:00:00'),
(15, 5, '2021-05-23 04:05:53', '0000-00-00 00:00:00'),
(16, 5, '2021-05-23 04:22:45', '0000-00-00 00:00:00'),
(17, 5, '2021-05-23 04:24:30', '0000-00-00 00:00:00'),
(18, 5, '2021-05-23 04:26:14', '0000-00-00 00:00:00'),
(19, 5, '2021-05-23 04:27:11', '0000-00-00 00:00:00'),
(20, 5, '2021-05-23 04:28:42', '0000-00-00 00:00:00'),
(21, 5, '2021-05-23 04:36:54', '0000-00-00 00:00:00'),
(22, 2, '2021-05-23 04:38:04', '0000-00-00 00:00:00'),
(23, 1, '2021-05-23 04:42:57', '0000-00-00 00:00:00'),
(24, 2, '2021-05-23 04:57:25', '0000-00-00 00:00:00'),
(25, 1, '2021-05-23 04:57:42', '0000-00-00 00:00:00'),
(26, 1, '2021-05-23 06:06:26', '2021-05-23 06:06:37'),
(27, 5, '2021-05-23 06:08:03', '2021-05-23 06:08:15'),
(28, 1, '2021-05-23 06:12:50', '2021-05-23 07:23:14'),
(29, 1, '2021-05-23 07:23:40', '2021-05-23 07:23:49'),
(30, 3, '2021-05-23 07:23:53', '2021-05-23 07:28:44'),
(31, 1, '2021-05-23 07:28:51', '2021-05-24 01:57:06'),
(32, 5, '2021-05-24 01:57:12', '2021-05-24 01:57:16'),
(33, 1, '2021-05-24 01:57:22', '2021-05-24 02:00:20'),
(34, 5, '2021-05-24 02:00:29', '2021-05-24 02:00:31'),
(35, 1, '2021-05-24 02:00:37', '0000-00-00 00:00:00'),
(36, 1, '2021-05-24 13:25:36', '2021-05-24 21:29:52'),
(37, 5, '2021-05-24 21:29:57', '2021-05-24 21:42:55'),
(38, 1, '2021-05-24 21:43:00', '2021-05-24 23:56:22'),
(39, 3, '2021-05-24 23:56:36', '2021-05-25 00:08:11'),
(40, 1, '2021-05-25 00:08:16', '2021-05-25 00:34:50'),
(41, 3, '2021-05-25 00:34:56', '2021-05-25 00:34:59'),
(42, 1, '2021-05-25 00:35:47', '2021-05-25 00:39:17'),
(43, 3, '2021-05-25 00:39:21', '2021-05-25 00:40:04'),
(44, 5, '2021-05-25 00:40:08', '2021-05-25 01:08:06'),
(45, 1, '2021-05-25 01:16:00', '0000-00-00 00:00:00'),
(46, 1, '2021-05-26 11:39:49', '2021-05-27 01:01:33'),
(47, 5, '2021-05-27 01:01:38', '2021-05-27 01:06:26'),
(48, 1, '2021-05-27 01:06:31', '2021-05-27 01:08:22'),
(49, 5, '2021-05-27 01:08:25', '2021-05-27 01:08:40'),
(50, 1, '2021-05-27 01:08:44', '0000-00-00 00:00:00'),
(51, 1, '2021-05-27 10:57:11', '2021-05-27 10:57:20'),
(52, 3, '2021-05-27 10:57:25', '2021-05-27 10:57:32'),
(53, 1, '2021-05-27 11:06:20', '0000-00-00 00:00:00'),
(54, 1, '2021-05-28 05:22:41', '0000-00-00 00:00:00'),
(55, 1, '2021-05-29 11:40:59', '0000-00-00 00:00:00'),
(56, 1, '2021-05-31 21:52:58', '0000-00-00 00:00:00'),
(57, 1, '2021-06-02 09:15:02', '2021-06-02 09:50:34'),
(58, 1, '2021-06-02 10:42:45', '2021-06-02 10:43:03'),
(59, 1, '2021-06-02 10:43:13', '2021-06-02 10:47:08'),
(60, 11, '2021-06-02 10:47:15', '2021-06-02 10:47:44'),
(61, 1, '2021-06-02 10:47:49', '2021-06-02 10:48:02'),
(62, 1, '2021-06-02 10:48:14', '2021-06-02 10:51:48'),
(63, 1, '2021-06-02 10:52:06', '2021-06-02 10:53:54'),
(64, 11, '2021-06-02 10:54:00', '2021-06-02 10:54:05'),
(65, 1, '2021-06-02 10:54:14', '2021-06-02 10:55:18'),
(66, 1, '2021-06-02 10:55:22', '2021-06-02 10:55:34'),
(67, 11, '2021-06-02 10:55:40', '2021-06-02 11:00:02'),
(68, 1, '2021-06-02 11:00:05', '2021-06-02 11:07:58'),
(69, 2, '2021-06-02 11:08:12', '2021-06-02 11:09:59'),
(70, 1, '2021-06-02 11:10:06', '2021-06-02 11:11:07'),
(71, 1, '2021-06-02 20:44:54', '0000-00-00 00:00:00'),
(72, 1, '2021-06-28 17:55:55', '0000-00-00 00:00:00'),
(73, 1, '2021-07-09 00:17:49', '2021-07-09 00:20:09'),
(74, 1, '2021-07-09 02:25:45', '0000-00-00 00:00:00'),
(75, 1, '2021-07-20 08:04:48', '0000-00-00 00:00:00'),
(76, 1, '2021-07-22 02:01:26', '2021-07-22 02:01:34'),
(77, 1, '2021-07-22 02:01:55', '2021-07-22 02:01:58'),
(78, 1, '2021-07-22 02:02:10', '2021-07-22 02:03:22'),
(79, 2, '2021-07-22 02:03:33', '2021-07-22 02:03:51'),
(80, 5, '2021-07-22 02:03:56', '2021-07-22 02:04:49'),
(81, 1, '2021-07-22 02:05:25', '2021-07-22 02:11:28'),
(82, 3, '2021-07-22 02:11:33', '2021-07-22 02:11:45'),
(83, 1, '2021-07-22 02:11:51', '2021-07-22 02:12:11'),
(84, 1, '2021-07-22 02:12:33', '2021-07-22 02:12:53'),
(85, 1, '2021-07-22 02:13:23', '0000-00-00 00:00:00'),
(86, 3, '2021-07-22 02:13:36', '2021-07-22 02:13:56'),
(87, 1, '2021-08-10 20:17:23', '2021-08-10 20:20:08'),
(88, 1, '2021-08-14 13:45:33', '0000-00-00 00:00:00'),
(89, 1, '2021-09-18 20:46:48', '2021-09-18 20:47:06'),
(90, 1, '2021-11-30 15:46:22', '2021-11-30 15:47:44'),
(91, 1, '2021-11-30 15:47:55', '2021-11-30 15:47:59'),
(92, 1, '2021-11-30 15:48:37', '2021-11-30 16:11:55'),
(93, 5, '2021-11-30 16:34:26', '2021-11-30 17:25:34'),
(94, 1, '2021-11-30 17:41:23', '2021-11-30 17:54:37'),
(95, 3, '2021-11-30 17:54:40', '2021-11-30 17:54:45'),
(96, 1, '2021-11-30 18:27:57', '2021-11-30 18:28:44'),
(97, 3, '2021-11-30 18:28:47', '2021-11-30 18:29:27'),
(98, 5, '2021-11-30 18:29:36', '2021-11-30 18:30:06'),
(99, 1, '2021-11-30 18:30:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `thesisarchivebook`
--

CREATE TABLE `thesisarchivebook` (
  `book_id` int(255) NOT NULL,
  `thesis_title` varchar(255) NOT NULL,
  `authors` varchar(255) NOT NULL,
  `college` varchar(100) NOT NULL,
  `thesis_desc` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `permission` int(2) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `upload_date` datetime NOT NULL,
  `uploaded_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thesisarchivebook`
--

INSERT INTO `thesisarchivebook` (`book_id`, `thesis_title`, `authors`, `college`, `thesis_desc`, `tags`, `permission`, `filename`, `upload_date`, `uploaded_by`) VALUES
(16, 'PHP & MySQL Novice To Ninja', 'Kevin Yank', 'CON', 'fdsfdfaf', 'fdfafds', 1, 'uploads/PHP & MySQL Novice To Ninja.pdf', '2021-05-24 23:43:06', 'Christopher Cosingan'),
(17, 'bnvbnvbn', 'vnvbn', 'vbnbv', 'bnvb', 'vvnvbn', 2, 'uploads/pid_application_form1.pdf', '2021-05-12 00:00:00', 'jghjgh'),
(23, 'Practical PHP and MySQL Website Databases - A Simplified Approach', 'Adrian W. West', 'CECS', '23123', 'SQL', 1, 'uploads/0619-E Jan 2018 rev final.pdf', '2021-05-24 17:11:56', 'Christopher Cosingan'),
(24, 'Practical PHP and MySQL Website Databases - A Simplified Approach', 'Adrian W. West', 'CECS', 'dadss', 'SQL', 1, 'uploads/Ben Lynn - Git Magic.pdf', '0000-00-00 00:00:00', 'Christopher Cosingan'),
(25, 'Practical PHP and MySQL Website Databases - A Simplified Approach', 'Adrian W. West', 'CECS', 'ewqw', 'SQL', 1, 'uploads/progit.pdf', '0000-00-00 00:00:00', 'Christopher Cosingan'),
(26, 'SQL For Dummies, 8th Edition', 'John Wiley & Sons', 'CECS', 'sdasd', 'SQL', 1, 'uploads/SQL For Dummies, 8th Edition.pdf', '2021-05-24 17:35:26', 'Christopher Cosingan'),
(27, 'Systems Analysis and Design_ An Object-Oriented Approach with UML', 'DENNIS WIXOM TEGARDEN', 'CECS', 'An Object-Oriented Approach with UML', 'SAD', 1, 'uploads/Systems Analysis and Design_ An Object-Oriented Approach with UML ( PDFDrive ).pdf', '2021-05-24 18:07:23', 'Christopher Cosingan'),
(28, 'Introduction to algorithms, 3rd edition', 'Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, Clifford Stein', 'CECS', 'sadsadasddas', 'algorithm', 1, 'uploads/Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, Clifford Stein - Introduction to algorithms, 3rd edition.pdf', '2021-06-02 09:18:07', 'Christopher Cosingan'),
(29, 'dfasddfdsfaf', 'sdadas', 'CECS', '', 'dfasdf', 1, 'uploads/Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, Clifford Stein - Introduction to algorithms, 3rd edition.pdf', '2021-06-02 11:07:04', 'Christopher Cosingan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Fullname` varchar(255) NOT NULL,
  `College` varchar(255) NOT NULL,
  `UserType` varchar(10) NOT NULL,
  `Perms` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Password`, `Fullname`, `College`, `UserType`, `Perms`) VALUES
(1, 'admin', 'admin', 'christopher', '', 'superadmin', 4),
(2, 'toshiro', '123456', '', '', 'admin', 3),
(3, 'user', 'user', '', '', 'user', 0),
(5, 'dean', 'dean', 'dean dean', 'CECS', 'dean', 1),
(7, 'adasda', 'asdasd', 'asdasda', 'CECS', 'user', 1),
(11, 'user123', 'user123', 'Christopher', 'CECS', 'user', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activitylog`
--
ALTER TABLE `activitylog`
  ADD PRIMARY KEY (`LogID`),
  ADD KEY `thesis_id` (`ThesisID`),
  ADD KEY `guest_id` (`User_id`);

--
-- Indexes for table `loginhistory`
--
ALTER TABLE `loginhistory`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `thesisarchivebook`
--
ALTER TABLE `thesisarchivebook`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activitylog`
--
ALTER TABLE `activitylog`
  MODIFY `LogID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `loginhistory`
--
ALTER TABLE `loginhistory`
  MODIFY `login_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `thesisarchivebook`
--
ALTER TABLE `thesisarchivebook`
  MODIFY `book_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activitylog`
--
ALTER TABLE `activitylog`
  ADD CONSTRAINT `guest_id` FOREIGN KEY (`User_id`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `thesis_id` FOREIGN KEY (`ThesisID`) REFERENCES `thesisarchivebook` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loginhistory`
--
ALTER TABLE `loginhistory`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
