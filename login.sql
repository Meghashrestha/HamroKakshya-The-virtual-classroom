-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2019 at 08:15 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `username` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`username`, `comment`, `email`) VALUES
('megha', 'test 1', 'meghashrestha30@gmail.com'),
('megha', 'can i get the answer of question no. 1??', 'meghashrestha30@gmail.com'),
('teacer', 'i am teacher', 'meghashrestha30@gmail.com'),
('Kritish Dhabanjar', 'Lorem ipsum dolor sit amet.', 'kritish.dhaubanjar@gmail.com'),
('Kritish Dhabanjar', 'Lorem', 'kritish.dhaubanjar@gmail.com'),
('Kritish Dhabanjar', 'Please upload another task.', 'kritish.dhaubanjar@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `name` varchar(30) NOT NULL,
  `course` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`username`, `password`, `name`, `course`, `email`) VALUES
('001', '12345', 'BT', 'null', ''),
('100', 'lorem', 'Bishal Malla', 'Computer', 'bishal@gmail.com'),
('106', '12345', 'megha', 'Computer', ''),
('112', '12345', 'Prasha', 'Civil', ''),
('120', 'sanam', 'Sanam', 'Civil', 'mrigatrisna@gmail.com'),
('121', '12345', 'Rajeeb', 'Electronic and Communication', ''),
('T13', '12345', 'rajeeb2', 'Computer', 'hkripendra@ymail.com');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `name` varchar(30) NOT NULL,
  `course` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`username`, `password`, `name`, `course`, `email`) VALUES
('01', '123', 'maskey', 'Civil', 'mrigatrisna@gmail.com'),
('02', '123', 'sir', 'Civil', 'mrigatrisna@gmail.com'),
('102', 'toor', 'Kritish Dhaubanjar', 'Civil', 'kritish.dhaubanjar@gmail.com'),
('123', '123', 'mo', 'Civil', 'hkripendra@ymail.com'),
('90', '112345', 'mo', 'Civil', 'hkripendra@ymail.com'),
('T12', '12345', 'megha2', 'Civil', 'ideaastra@gmail.com'),
('T16', '12345', 'Prem', 'Civil', 'hkripendra@ymail.com'),
('T20', '12345', 'Btsir', 'Civil', 'meghashrestha30@gmail.com'),
('T3', '12345', 'Sanam', 'Civil', ''),
('T6', '12345', 'megha2', 'Computer', 'meghashrestha30@gmail.com'),
('Teacher1', '12345', 'Teachername', 'computer', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
