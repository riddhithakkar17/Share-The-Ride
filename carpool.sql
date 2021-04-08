-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 07, 2020 at 05:14 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carpool`
--

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
CREATE TABLE IF NOT EXISTS `route` (
  `vehicle` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `frm` varchar(20) NOT NULL,
  `tu` varchar(20) NOT NULL,
  `seats` int(2) NOT NULL,
  `contact` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`vehicle`, `date`, `frm`, `tu`, `seats`, `contact`) VALUES
('aa', '2020-04-12', 'kk', 'ii', 7, ''),
('civic', '2020-04-09', 'ddd', 'ee', 4, ''),
('civic', '2020-04-09', 'ddd', 'ee', 4, ''),
('civic', '2020-04-09', 'ddd', 'ee', 4, ''),
('swift', '2020-04-10', 'aa', 'ss', 3, ''),
('swift', '2020-04-10', 'aa', 'ss', 3, ''),
('bb', '2020-04-04', 'bb', 'cc', 2, '1212121212'),
('cc', '2020-04-03', 'b', 'c', 2, '3212121212'),
('cc', '2020-04-03', 'b', 'c', 2, '3212121212'),
('new', '2020-04-10', 'Karelibaug', 'Gotri', 3, '9889989898'),
('rickshaw', '2020-04-08', 'Waghodia', 'Manjalpur', 7, '8320000000'),
('rickshaw', '2020-04-09', 'Waghodia', 'Manjalpur', 7, '1212121212');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `fname` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pw` varchar(20) NOT NULL,
  `cpw` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`fname`, `username`, `contact`, `email`, `pw`, `cpw`) VALUES
('aaa', 'aaa', '9898989898', 'fdfa@ss', '123', '123'),
('bb', 'bbb', '9898989898', 'bb@bb', '123', '123'),
('cc', 'ccc', '9898989898', 'bb@bb', '123', '123'),
('Jay Soni', 'jaysoni940', '9409087665', 'jvsoni94090@gmail.com', '123', '123'),
('riddhi', 'ridz', '9999999999', 'riddhi@aayushi', '123', '123'),
('Riddhi ', 'ridzz', '1212121212', 'riddhi@aayushi', '123', '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
