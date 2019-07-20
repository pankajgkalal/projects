-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2019 at 07:58 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `myweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE IF NOT EXISTS `tbl_course` (
`co_id` int(11) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `cduration` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`co_id`, `cname`, `cduration`) VALUES
(1, 'MCA', 3),
(2, 'IMCA', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faculty`
--

CREATE TABLE IF NOT EXISTS `tbl_faculty` (
`f_id` int(11) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `femail` varchar(30) NOT NULL,
  `fpwd` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_faculty`
--

INSERT INTO `tbl_faculty` (`f_id`, `fname`, `femail`, `fpwd`) VALUES
(1, 'Saroj', 'sarojlal50@gmail.com', '1414');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sem`
--

CREATE TABLE IF NOT EXISTS `tbl_sem` (
`sem_id` int(11) NOT NULL,
  `sem` varchar(4) NOT NULL,
  `co_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sem`
--

INSERT INTO `tbl_sem` (`sem_id`, `sem`, `co_id`) VALUES
(1, 'sem1', 1),
(2, 'sem2', 1),
(3, 'sem3', 1),
(4, 'sem4', 1),
(5, 'sem5', 1),
(6, 'sem6', 1),
(7, 'sem1', 2),
(9, 'sem2', 2),
(10, 'sem3', 2),
(11, 'sem4', 2),
(12, 'sem5', 2),
(13, 'sem6', 2),
(14, 'sem7', 2),
(15, 'sem8', 2),
(16, 'sem9', 2),
(17, 'semX', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stud`
--

CREATE TABLE IF NOT EXISTS `tbl_stud` (
`sid` int(11) NOT NULL,
  `enroll_no` bigint(20) NOT NULL,
  `sname` varchar(25) NOT NULL,
  `semail` varchar(30) NOT NULL,
  `spwd` varchar(25) DEFAULT NULL,
  `course` varchar(11) NOT NULL,
  `sem` varchar(6) NOT NULL,
  `class` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_stud`
--

INSERT INTO `tbl_stud` (`sid`, `enroll_no`, `sname`, `semail`, `spwd`, `course`, `sem`, `class`) VALUES
(61, 185173693040, 'pankaj kalal', 'pankajgkalal@gmail.com', '1234', 'MCA', 'sem-4', 'A'),
(65, 1414, 'saroj lal', 'sarojlall@gmail.com', '1414', 'MCA', 'sem-4', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE IF NOT EXISTS `upload` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `course` varchar(40) NOT NULL,
  `sem` varchar(40) NOT NULL,
  `info` varchar(250) NOT NULL,
  `class` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`id`, `name`, `date`, `course`, `sem`, `info`, `class`) VALUES
(42, 'HARSH PATEL CV New.pdf', '2019-03-24 00:00:00', 'MCA', 'sem-4', 'harsh resume', 'A'),
(43, '10 th.pdf', '2019-03-24 00:00:00', 'MCA', 'sem-3', 'my 12 th resut', 'B'),
(45, 'tbl_faculty.sql', '2019-03-24 00:00:00', 'MCA', 'sem-4', 'sql file', 'B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
 ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `tbl_faculty`
--
ALTER TABLE `tbl_faculty`
 ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `tbl_sem`
--
ALTER TABLE `tbl_sem`
 ADD PRIMARY KEY (`sem_id`), ADD KEY `co_id` (`co_id`);

--
-- Indexes for table `tbl_stud`
--
ALTER TABLE `tbl_stud`
 ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_course`
--
ALTER TABLE `tbl_course`
MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_faculty`
--
ALTER TABLE `tbl_faculty`
MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_sem`
--
ALTER TABLE `tbl_sem`
MODIFY `sem_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_stud`
--
ALTER TABLE `tbl_stud`
MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
