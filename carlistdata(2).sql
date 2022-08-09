-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 09, 2022 at 11:50 PM
-- Server version: 8.0.30-0ubuntu0.20.04.2
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carData`
--

-- --------------------------------------------------------

--
-- Table structure for table `carlistdata`
--

CREATE TABLE `carlistdata` (
  `carName` varchar(50) NOT NULL,
  `carPrice` int NOT NULL,
  `carFuelType` varchar(20) NOT NULL,
  `seatingCapacityNo` int NOT NULL,
  `carVariant` varchar(500) NOT NULL,
  `marketIntroduction` varchar(500) NOT NULL,
  `technicalSpecification` varchar(1000) NOT NULL,
  `exteriorAndDesign` varchar(1000) NOT NULL,
  `interiorAndFeatures` varchar(1000) NOT NULL,
  `colours` varchar(600) NOT NULL,
  `seatingCapacity` varchar(500) NOT NULL,
  `Rivals` varchar(500) NOT NULL,
  `carImage` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `carlistdata`
--

INSERT INTO `carlistdata` (`carName`, `carPrice`, `carFuelType`, `seatingCapacityNo`, `carVariant`, `marketIntroduction`, `technicalSpecification`, `exteriorAndDesign`, `interiorAndFeatures`, `colours`, `seatingCapacity`, `Rivals`, `carImage`) VALUES
('Hyundai Kona Electric', 24, 'Electric', 5, '', '', '', '', '', 'Hyundai Kona Electric is available in 5 different colours - Phantom Black, Polar White with Phantom Black roof, Polar White, Titan Grey with Phantom Black Roof, Fiery Red with Phantom Black roof.', '', '', '2022-08-09T18:09:55.776Z-Hyundai Kona Electric.jpeg'),
('Tata Nexon EV Max', 18, 'Electric', 5, '', '', '', '', '', 'Customers can choose from three colours, including Intensi-Teal, Daytona Grey, and Pristine White.', '', '', '2022-08-09T18:02:14.700Z-Tata Nexon EV Max.jpeg'),
('Tata Nexon EV Prime', 15, 'Electric', 5, '', '', '', '', '', 'The Tata Nexon Prime can be had in Intensi-Teal, Pristine White, and Daytona Grey.', '', '', '2022-08-09T18:04:04.327Z-Tata Nexon EV Prime.jpeg'),
('Tata Tigor EV', 12, 'Electric', 5, '', '', '', '', '', 'There are two exterior shades to choose from – Daytona Grey and Teal Blue. Both the hues can be had with a black roof.', '', '', '2022-08-09T18:05:58.115Z-Tata Tigor EV.jpeg'),
('Volvo XC40 Recharge', 56, 'Electric', 5, '', '', '', '', '', 'The 2022 Volvo XC40 Recharge is offered in five colours including Crystal White, Fjord Blue, Onyx Black, Thunder Grey, and Sage Green.', '', '', '2022-08-09T18:07:52.008Z-Volvo XC40 Recharge.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carlistdata`
--
ALTER TABLE `carlistdata`
  ADD PRIMARY KEY (`carName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
