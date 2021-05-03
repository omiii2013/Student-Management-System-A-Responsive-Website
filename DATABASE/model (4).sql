-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 06:10 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `model`
--

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `doc_title` varchar(2000) NOT NULL,
  `doc_desc` varchar(8000) NOT NULL,
  `doc_file` varchar(2000) NOT NULL,
  `doc_standard` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `doc_title`, `doc_desc`, `doc_file`, `doc_standard`) VALUES
(1, 'C Language', 'C Language is a programming language and basic language for Computer Science And Engineering.', 'document_6ece97e7790d34db230ddc8c3164332e.pdf', 'B.Tech 1st year'),
(2, 'Python Practical List', 'Python Programming Language', 'document_2c367692a8d78e71dde9658575c6025b.pdf', 'B.Tech 2nd year'),
(3, 'MPCO ', 'MPCO Practical List', 'document_2faffe0f19475f5cc967bb86788711ce.doc', 'B.Tech 3rd year'),
(4, 'DBMS', 'DBMS Practical List', 'document_38e0d1d06883572972a9984d2c8e01e8.pdf', 'B.Tech 4th year'),
(5, 'Profile Photo', 'My Profile photo', 'document_c94e9496da61c28a4eec07713bec716d.jpg', 'B.Tech 3rd year'),
(6, 'C Language', 'Practical File', 'document_730f9e0e7bcd5b1cf54294a5d36a7334.pdf', 'B.Tech 1st year');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `notice_title` varchar(1000) NOT NULL,
  `notice_desc` varchar(8000) NOT NULL,
  `Active` tinyint(1) NOT NULL DEFAULT 1,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice_title`, `notice_desc`, `Active`, `date_time`) VALUES
(2, 'covid - 19', ' hello my name is omiii', 1, '2021-04-09 21:38:41'),
(3, 'Regarding Annual Fees', 'As the new semester have been started, you all need to pay your fees from 01-01-2021 to 15-06-2021. If you are not able to pay the fees or get delayed for paying the fees then strict action would be taken against you.. Kindly note of it.', 1, '2021-04-14 18:34:54'),
(5, 'new notice from akash', 'work from home for OM TANK', 1, '2021-04-11 13:39:46'),
(7, 'testing new covid rules', 'OM Does not have to watch F1 today as there is a lot of pending work to be done, need to complete this work without fail.', 1, '2021-04-18 16:43:14'),
(8, 'About Internship', ' All Students need to do summer internship as it is compulsory.', 1, '2021-04-24 08:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(450) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `email` varchar(55) NOT NULL,
  `note` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `student_id` varchar(220) NOT NULL,
  `name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `report` varchar(2000) NOT NULL,
  `year` varchar(100) NOT NULL,
  `yoa` varchar(45) NOT NULL,
  `parent` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(7) NOT NULL,
  `file` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `student_id`, `name`, `last_name`, `report`, `year`, `yoa`, `parent`, `dob`, `gender`, `file`) VALUES
(13, 'MS17-def1', 'Chintan', 'Vekariya', 'Need to improve...     ', 'B.Tech 2nd year', '2012', '6353245768', '2001-08-08', 'Male', 'your_site_name_bace602f28aa688ab653d901b7db7e9d.jpg'),
(14, 'MS17-a3b7', 'Ruchi', 'Tank', 'Very good in her work...', 'B.Tech 3rd year', '2016', '9316249815', '2001-03-27', 'Female', 'your_site_name_61684600542da2ec1c24b7cbf41bef53.jpg'),
(15, 'MS17-9488', 'Om', 'Tank', 'Good..', 'B.Tech 1st year', '2009', '9428340654', '2001-03-20', 'Male', 'your_site_name_1c0dba546f1716d035f318e981e804dd.jpg'),
(16, 'MS17-5412', 'Nihar', 'Zatakiya', 'Excellent....', 'B.Tech 2nd year', '2009', '9823476512', '2001-01-01', 'Male', 'your_site_name_025b68b91af7bb2c25b586a38284cbbc.jpeg'),
(17, 'MS17-583c', 'Akash', 'Shah', 'Superb....', 'B.Tech 4th year', '2009', '9316249815', '1996-10-10', 'Male', 'your_site_name_bc794cdf3b52424abfbc37e536a25adc.jpg'),
(19, 'MS17-32b2', 'Raj', 'Patel', 'Overall Good but can improve. ', 'B.Tech 4th year', '2011', '9456873216', '2001-10-14', 'Male', 'your_site_name_7b014c2716fa791b17ff5df7b7646413.jpg'),
(20, 'MS17-8195', 'Rahul', 'B.Tech 1st year', 'good ', 'B.Tech 1st year', '2009', '9321234567', '2001-02-20', 'Male', 'your_site_name_bbf64509385f74c69317a7f2d652b5ed.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `position` varchar(55) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `position`, `username`, `password`, `student_id`) VALUES
(1, 'Om Tank', 'admin', 'admin', 'admin', 0),
(2, 'Apurv Tank', 'admin', 'apurv', 'apurv', 0),
(4, 'Rahul', 'admin', 'rahul', 'rahul', 0),
(10, 'Chintan', 'student', 'Chintan', 'Chintan', 13),
(11, 'Ruchi', 'student', 'Ruchi', 'Ruchi', 14),
(12, 'Om', 'student', 'Om', 'Om', 15),
(13, 'Nihar', 'student', 'Nihar', 'Nihar', 16),
(14, 'Akash', 'student', 'Akash', 'Akash', 17),
(16, 'Raj', 'student', 'Raj', 'Raj', 19),
(17, 'Rahul', 'student', 'Rahul', 'Rahul', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
