-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 09, 2019 at 04:53 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Capt!`
--

-- --------------------------------------------------------

--
-- Table structure for table `Caption`
--

CREATE TABLE `Caption` (
  `Text` varchar(255) NOT NULL,
  `cID` int(5) NOT NULL,
  `ImgID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Caption`
--

INSERT INTO `Caption` (`Text`, `cID`, `ImgID`) VALUES
('Golden Gondola', 1, 1),
('blabla', 39, 1),
('Tjenna', 40, 1),
('hej', 41, 1),
('hej', 42, 1),
('Testar igen', 45, 1),
('Testar igen hallå hallå 1', 46, 1),
('Testar igen hallå hallå 2', 47, 2),
('Testar igen hallå hallå 22', 48, 2),
('KATTTAION', 49, 2),
('nummer 1', 50, 1),
('nummer 1', 51, 2),
('eN KATT', 52, 2),
('Hej nu testar vi', 53, 2),
('stjärna', 54, 16),
('stjärna', 55, 16);

-- --------------------------------------------------------

--
-- Table structure for table `Image`
--

CREATE TABLE `Image` (
  `URI` varchar(100) NOT NULL,
  `ImgID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Image`
--

INSERT INTO `Image` (`URI`, `ImgID`) VALUES
('Capture500px.jpg', 1),
('Capture500px2.jpg', 2),
('1star.jpg', 16);

-- --------------------------------------------------------

--
-- Table structure for table `Votes`
--

CREATE TABLE `Votes` (
  `Rating` varchar(100) NOT NULL,
  `cID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Votes`
--

INSERT INTO `Votes` (`Rating`, `cID`) VALUES
('3', 40),
('5', 40),
('5', 40),
('4', 40),
('3', 40),
('2', 40),
('1', 40),
('1', 40),
('1', 40),
('3', 1),
('3', 1),
('3', 1),
('4', 1),
('4', 1),
('1', 1),
('1', 1),
('1', 1),
('1', 1),
('1', 1),
('1', 1),
('2', 1),
('2', 1),
('2', 1),
('3', 1),
('3', 1),
('3', 1),
('2', 45),
('2', 45),
('1', 45),
('1', 45),
('3', 39),
('2', 39),
('3', 42),
('3', 42),
('4', 42),
('1', 47),
('3', 40),
('3', 46),
('3', 1),
('4', 1),
('4', 1),
('4', 1),
('3', 51),
('4', 51),
('4', 48),
('5', 46),
('2', 46),
('1', 46),
('4', 46),
('5', 39),
('2', 47),
('3', 49),
('4', 49),
('1', 49),
('2', 51),
('3', 42),
('2', 39),
('3', 39),
('4', 39),
('3', 49),
('4', 49),
('4', 41),
('3', 41),
('3', 51),
('2', 50),
('2', 1),
('3', 1),
('1', 40),
('1', 46),
('4', 49),
('3', 41),
('2', 48),
('2', 49),
('2', 48),
('4', 48),
('5', 48),
('3', 40),
('2', 47),
('3', 47),
('3', 50),
('2', 1),
('2', 48),
('3', 51),
('3', 51),
('4', 45),
('4', 49),
('1', 1),
('2', 41),
('3', 41),
('3', 49),
('3', 51),
('5', 45),
('3', 1),
('3', 1),
('3', 1),
('3', 1),
('3', 1),
('4', 1),
('2', 39),
('3', 46),
('4', 48),
('5', 48),
('2', 1),
('3', 50),
('3', 50),
('2', 49),
('4', 49),
('5', 49),
('1', 49),
('2', 45),
('2', 46),
('4', 47),
('5', 47),
('1', 50),
('3', 50),
('4', 50),
('5', 50),
('2', 50),
('1', 50),
('1', 40),
('2', 40),
('3', 40),
('4', 40),
('5', 40),
('1', 40),
('1', 48),
('4', 46),
('5', 39),
('2', 51),
('3', 42),
('4', 1),
('5', 47),
('5', 49),
('5', 46),
('1', 49),
('2', 49),
('4', 49),
('4', 49),
('4', 49),
('4', 49),
('4', 49),
('4', 49),
('4', 49),
('4', 49),
('4', 49),
('5', 49),
('3', 50),
('4', 50),
('5', 50),
('1', 50),
('4', 46),
('3', 46),
('2', 46),
('1', 46),
('5', 46),
('3', 49),
('4', 49),
('3', 50),
('4', 50),
('5', 50),
('3', 50),
('5', 50),
('4', 49),
('3', 51),
('4', 51),
('3', 48),
('2', 51),
('4', 41),
('3', 48),
('5', 49),
('4', 47),
('5', 54),
('5', 54),
('3', 54),
('4', 54),
('3', 54),
('5', 54),
('3', 54),
('3', 54),
('3', 54),
('2', 54),
('1', 52),
('1', 40),
('3', 54),
('4', 54),
('5', 54),
('3', 47),
('3', 39),
('2', 54);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Caption`
--
ALTER TABLE `Caption`
  ADD PRIMARY KEY (`cID`),
  ADD KEY `ImgID` (`ImgID`);

--
-- Indexes for table `Image`
--
ALTER TABLE `Image`
  ADD PRIMARY KEY (`ImgID`);

--
-- Indexes for table `Votes`
--
ALTER TABLE `Votes`
  ADD KEY `cID` (`cID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Caption`
--
ALTER TABLE `Caption`
  MODIFY `cID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `Image`
--
ALTER TABLE `Image`
  MODIFY `ImgID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Caption`
--
ALTER TABLE `Caption`
  ADD CONSTRAINT `caption_ibfk_1` FOREIGN KEY (`ImgID`) REFERENCES `Image` (`ImgID`);

--
-- Constraints for table `Votes`
--
ALTER TABLE `Votes`
  ADD CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`cID`) REFERENCES `Caption` (`cID`);
