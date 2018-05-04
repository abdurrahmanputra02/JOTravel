-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 04, 2018 at 12:14 PM
-- Server version: 5.1.30
-- PHP Version: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jotravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `ID` int(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--


-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `ID` int(30) NOT NULL,
  `reservation_code` int(30) NOT NULL,
  `reservation_at` varchar(30) NOT NULL,
  `reservation_date` int(10) NOT NULL,
  ` customerid` int(30) NOT NULL,
  `seat_code` int(10) NOT NULL,
  `ruteid` int(20) NOT NULL,
  `depart_at` varchar(30) NOT NULL,
  `price` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `reservation_date` (`reservation_date`,`ruteid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--


-- --------------------------------------------------------

--
-- Table structure for table `rute`
--

CREATE TABLE IF NOT EXISTS `rute` (
  `ID` int(30) NOT NULL,
  `depart_at` varchar(30) NOT NULL,
  `rute_form` varchar(30) NOT NULL,
  `rute_to` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `transportationid` int(15) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `transportationid` (`transportationid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rute`
--


-- --------------------------------------------------------

--
-- Table structure for table `transportation`
--

CREATE TABLE IF NOT EXISTS `transportation` (
  `ID` int(30) NOT NULL,
  `code` int(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `seat_qty` int(10) NOT NULL,
  `transportation_typeid` int(15) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `transportation_typeid` (`transportation_typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transportation`
--


-- --------------------------------------------------------

--
-- Table structure for table `transportation_type`
--

CREATE TABLE IF NOT EXISTS `transportation_type` (
  `ID` int(30) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transportation_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(25) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Fullname` varchar(30) NOT NULL,
  `Level` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

