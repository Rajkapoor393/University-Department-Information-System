-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2019 at 07:38 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `udis`
--

-- --------------------------------------------------------

--
-- Table structure for table `219cs87_account`
--

CREATE TABLE `219cs87_account` (
  `Credit` varchar(255) DEFAULT NULL,
  `Expense` varchar(255) DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `219cs87_account`
--

INSERT INTO `219cs87_account` (`Credit`, `Expense`, `Details`, `Amount`) VALUES
('5655', '-', 'Credited during joining of Institute', 5655);

-- --------------------------------------------------------

--
-- Table structure for table `219cs87_sem1`
--

CREATE TABLE `219cs87_sem1` (
  `Course` varchar(255) DEFAULT NULL,
  `Marks` varchar(255) DEFAULT NULL,
  `Backlog` varchar(255) DEFAULT NULL,
  `Grade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `219cs87_sem1`
--

INSERT INTO `219cs87_sem1` (`Course`, `Marks`, `Backlog`, `Grade`) VALUES
('Data Structures And Algorithms', '-', '-', '-'),
('Database Management Systems', '-', '-', '-'),
('Digital Electronics', '-', '-', '-'),
('Operating Systems Design', '-', '-', '-'),
('Data Communication', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `219cs885_account`
--

CREATE TABLE `219cs885_account` (
  `Credit` varchar(255) DEFAULT NULL,
  `Expense` varchar(255) DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `219cs885_account`
--

INSERT INTO `219cs885_account` (`Credit`, `Expense`, `Details`, `Amount`) VALUES
('34', '-', 'Credited during joining of Institute', 34),
('43', '-', 'xyz', 77),
('-', '22', 'Eaten In Canteen', 55),
('234', '-', 'Stolen from Department LOL!', 311);

-- --------------------------------------------------------

--
-- Table structure for table `219cs885_sem1`
--

CREATE TABLE `219cs885_sem1` (
  `Course` varchar(255) DEFAULT NULL,
  `Marks` varchar(255) DEFAULT NULL,
  `Backlog` varchar(255) DEFAULT NULL,
  `Grade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `219cs885_sem1`
--

INSERT INTO `219cs885_sem1` (`Course`, `Marks`, `Backlog`, `Grade`) VALUES
('C++', '90', 'No', 'A'),
('Data Structures And Algorithms', '45', 'No', 'P'),
('Digital Electronics', '59', 'No', 'D'),
('Analog Electronics', '84', 'No', 'A'),
('Operating Systems Design', '75', 'No', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `219cs885_sem2`
--

CREATE TABLE `219cs885_sem2` (
  `Course` varchar(255) DEFAULT NULL,
  `Marks` varchar(255) DEFAULT NULL,
  `Backlog` varchar(255) DEFAULT NULL,
  `Grade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `219cs885_sem2`
--

INSERT INTO `219cs885_sem2` (`Course`, `Marks`, `Backlog`, `Grade`) VALUES
('Data Structures And Algorithms', '-', '-', '-'),
('Digital Electronics', '-', '-', '-'),
('Analog Electronics', '-', '-', '-'),
('Information Theory And Coding', '-', '-', '-'),
('Computer Graphics', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `719cs691_account`
--

CREATE TABLE `719cs691_account` (
  `Credit` varchar(255) DEFAULT NULL,
  `Expense` varchar(255) DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `719cs691_account`
--

INSERT INTO `719cs691_account` (`Credit`, `Expense`, `Details`, `Amount`) VALUES
('600', '-', 'Credited during joining of Institute', 600),
('-', '241', 'Spent in shopping', 359);

-- --------------------------------------------------------

--
-- Table structure for table `719cs691_sem1`
--

CREATE TABLE `719cs691_sem1` (
  `Course` varchar(255) DEFAULT NULL,
  `Marks` varchar(255) DEFAULT NULL,
  `Backlog` varchar(255) DEFAULT NULL,
  `Grade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `719cs691_sem1`
--

INSERT INTO `719cs691_sem1` (`Course`, `Marks`, `Backlog`, `Grade`) VALUES
('C++', '90', 'No', 'A'),
('Digital Electronics', '45', 'No', 'P'),
('Operating Systems Design', '34', 'No', 'P'),
('Information Theory And Coding', '84', 'No', 'A'),
('Computer Graphics', '75', 'No', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Credit` varchar(20) NOT NULL,
  `Debit` varchar(20) NOT NULL,
  `Details` varchar(255) NOT NULL,
  `Amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Credit`, `Debit`, `Details`, `Amount`) VALUES
('200000', '-', 'Credited by Avengers', '200000'),
('500000', '-', 'Funds raised using e', '700000'),
('500000', '-', 'Funds raised using D', '1200000'),
('1000000', '-', 'Credited by King TCh', '2200000'),
('-', '400000', 'Debited for Books in', '1800000'),
('-', '100000', 'Credited by Furnitur', '1700000'),
('300000', '-', 'Credited by Tony Sta', '2000000');

-- --------------------------------------------------------

--
-- Table structure for table `gradeinfo`
--

CREATE TABLE `gradeinfo` (
  `MarksRange` varchar(10) NOT NULL,
  `Grade` varchar(10) NOT NULL,
  `num` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gradeinfo`
--

INSERT INTO `gradeinfo` (`MarksRange`, `Grade`, `num`) VALUES
('null', '2', '1'),
('null', '2', '2'),
('null', '2', '3'),
('null', '2', '4'),
('null', '2', '5'),
('null', 'null', '6'),
('null', 'null', '7');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `Furniture` varchar(20) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Quantity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`Furniture`, `Location`, `Quantity`) VALUES
('Xyz500', 'CS-230', '20'),
('Xyz501', 'CS-231', '25'),
('Xyz504', 'SWLab-1', '45'),
('Xyz505', 'SWLab-2', '55'),
('Xyz506', 'ConferenceHall', '105'),
('Xyz507', 'SeminarRoom', '50'),
('Xyz508', 'CS-234', '34');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `Name` varchar(20) NOT NULL,
  `Faculty` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Duration` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`Name`, `Faculty`, `Status`, `Duration`) VALUES
('RP-1', 'DPM', 'Running', '2months'),
('RP-2', 'RKM', 'Running', '1month'),
('RP-3', 'SB', 'Completed', '2years'),
('RP-4', 'AKT', 'Upcoming', '5months'),
('RP-5', 'SP', 'Running', '10months');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `FirstName` text NOT NULL,
  `LastName` text NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Gender` text NOT NULL,
  `GuardiansName` text NOT NULL,
  `Mobile` int(11) NOT NULL,
  `Programme` varchar(200) NOT NULL,
  `RollNumber` varchar(10) NOT NULL,
  `Rand` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`FirstName`, `LastName`, `Address`, `Gender`, `GuardiansName`, `Mobile`, `Programme`, `RollNumber`, `Rand`) VALUES
('mohit', 'kumar', 'sxxxxxxxxxxxx', 'Male', 'rohit kumar', 5698, 'M.Tech', '219CS885', 885),
('Cypher', 'Stone', 'Some Address', 'Male', 'Rilee Stone', 86542, 'Dual Deg.', '719CS691', 691);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
