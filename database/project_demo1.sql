-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 14, 2018 at 10:01 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_demo1`
--

-- --------------------------------------------------------

--
-- Table structure for table `crop_class`
--

DROP TABLE IF EXISTS `crop_class`;
CREATE TABLE IF NOT EXISTS `crop_class` (
  `crop_name` text NOT NULL,
  `crop_variation` text NOT NULL,
  `crop_class` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crop_class`
--

INSERT INTO `crop_class` (`crop_name`, `crop_variation`, `crop_class`) VALUES
('Boro rice', 'BRRI dhan29', '1'),
('Boro rice', 'Binadhan-6', '1'),
('Boro rice', 'BRRI hybrit dhan1', '1'),
('Boro rice', 'BRRI hybrit dhan2', '1'),
('Boro rice', 'BRRI hybrit dhan3', '1'),
('Boro rice', 'BR3', '2'),
('Boro rice', 'BR8', '2'),
('Boro rice', 'BR9', '2'),
('Boro rice', 'BR14', '2'),
('Boro rice', 'BR16', '2'),
('Boro rice', 'BR17', '2'),
('Boro rice', 'BR18', '2'),
('Boro rice', 'BR19', '2'),
('Boro rice', 'BRRI dhan28', '2'),
('Boro rice', 'BRRI dhan45', '2'),
('Boro rice', 'BRRI dhan47', '2'),
('Boro rice', 'BRRI dhan50', '2'),
('Boro rice', 'Binadhan-5', '2'),
('Boro rice', 'Binadhan-8', '2'),
('Boro rice', 'BR1', '3'),
('Boro rice', 'BR2', '3'),
('Boro rice', 'BR7', '3'),
('Boro rice', 'BR15', '3'),
('Boro rice', 'BRRI dhan35', '3'),
('Boro rice', 'BRRI dhan36', '3'),
('Boro rice', 'LIV under Transplanted Culture', '4'),
('T. Aus rice', 'BR1', '1'),
('T. Aus rice', 'BR2', '1'),
('T. Aus rice', 'BR3', '1'),
('T. Aus rice', 'BR7', '1'),
('T. Aus rice', 'BR8', '1'),
('T. Aus rice', 'BR9', '1'),
('T. Aus rice', 'BR14', '1'),
('T. Aus rice', 'BR16', '1'),
('T. Aus rice', 'BR26', '1'),
('T. Aus rice', 'BRRI dhan27', '1'),
('T. Aus rice', 'BRRI dhan48', '1'),
('T. Aus rice', 'Iratom24', '1'),
('T. Aus rice', 'BR6', '2'),
('T. Aus rice', 'BR20', '2'),
('T. Aus rice', 'BR21', '2'),
('T. Aus rice', 'BR24', '2'),
('T. Aus rice', 'BRRI dhan42', '2'),
('T. Aus rice', 'BRRI dhan43', '2'),
('B. Aus rice', 'BR6', '1'),
('B. Aus rice', 'BR20', '1'),
('B. Aus rice', 'BR21', '1'),
('B. Aus rice', 'BR24', '1'),
('B. Aus rice', 'BRRI dhan42', '1'),
('B. Aus rice', 'BRRI dhan43', '1'),
('B. Aus rice', 'Liv under Direct Seeded Culture', '2'),
('T. Aman rice', 'BR4', '1'),
('T. Aman rice', 'BR10', '1'),
('T. Aman rice', 'BR11', '1'),
('T. Aman rice', 'BR22', '1'),
('T. Aman rice', 'BR23', '1'),
('T. Aman rice', 'BRRI dhan30', '1'),
('T. Aman rice', 'BRRI dhan31', '1'),
('T. Aman rice', 'BRRI dhan32', '1'),
('T. Aman rice', 'BRRI dhan40', '1'),
('T. Aman rice', 'BRRI dhan41', '1'),
('T. Aman rice', 'BRRI dhan44', '1'),
('T. Aman rice', 'BRRI dhan46', '1'),
('T. Aman rice', 'BRRI dhan49', '1'),
('T. Aman rice', 'BRRI dhan51', '1'),
('T. Aman rice', 'BRRI dhan52', '1'),
('T. Aman rice', 'BRRI dhan53', '1'),
('T. Aman rice', 'BRRI dhan54', '1'),
('T. Aman rice', 'BRRI hybrit dhan4', '1'),
('T. Aman rice', 'Binadhan-4', '1'),
('T. Aman rice', 'Binadhan-7', '1'),
('T. Aman rice', 'Binadhan-8', '1'),
('T. Aman rice', 'BR25', '2'),
('T. Aman rice', 'BRRI dhan33', '2'),
('T. Aman rice', 'BRRI dhan39', '2'),
('T. Aman rice', 'BRRI dhan56', '2'),
('T. Aman rice', 'BRRI dhan57', '2'),
('T. Aman rice', 'Binashail', '2'),
('T. Aman rice', 'BR5', '3'),
('T. Aman rice', 'BRRI dhan34', '3'),
('T. Aman rice', 'BRRI dhan37', '3'),
('T. Aman rice', 'BRRI dhan38', '3'),
('T. Aman rice', 'Binadhan-9', '4'),
('Aromatic rice', 'All', '1'),
('T. Aman rice', 'LIV under Transplanted Culture', '5'),
('T. Aman rice', 'LIV under Broadcast Culture', '6'),
('Wheat (Irrigated)', 'Sourav (BARI Gom-19)', '1'),
('Wheat (Irrigated)', 'Gourab (BARI Gom-20)', '1'),
('Wheat (Irrigated)', 'Shatabdi (BARI Gom-21)', '1'),
('Wheat (Irrigated)', 'Bijoy (BARI Gom-23)', '1'),
('Wheat (Irrigated)', 'Prodip (BARI Gom-24)', '1'),
('Wheat (Irrigated)', 'BARI Gom-25', '1'),
('Wheat (Irrigated)', 'BARI Gom-26', '1'),
('Wheat (Rainfed)', 'Kanchan', '1'),
('Wheat (Rainfed)', 'Akbar', '1'),
('Wheat (Rainfed)', 'Protiva', '1'),
('Wheat (Rainfed)', 'Sourav (BARI Gom-19)', '1'),
('Wheat (Rainfed)', 'Gourav (BARI Gom-20)', '1'),
('Wheat (Rainfed)', 'Shatabdi (BARI Gom-21)', '1');

-- --------------------------------------------------------

--
-- Table structure for table `crop_group`
--

DROP TABLE IF EXISTS `crop_group`;
CREATE TABLE IF NOT EXISTS `crop_group` (
  `crop_group` text NOT NULL,
  `crop_name` text NOT NULL,
  `land_type` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crop_group`
--

INSERT INTO `crop_group` (`crop_group`, `crop_name`, `land_type`) VALUES
('Rice', 'Boro rice', 'Wetland'),
('Rice', 'T. Aman', 'Wetland'),
('Rice', 'T. Aus', 'Wetland'),
('Rice', 'B. Aus', 'Wetland'),
('Rice', 'Aromatic', 'Wetland'),
('Wheat', 'Wheat (Irrigrated)', 'Upland'),
('Wheat', 'Wheat (Rainfed)', 'Upland'),
('Maize', 'Hybrid maize', 'Upland'),
('Maize', 'Maize', 'Upland');

-- --------------------------------------------------------

--
-- Table structure for table `nutrient_composition`
--

DROP TABLE IF EXISTS `nutrient_composition`;
CREATE TABLE IF NOT EXISTS `nutrient_composition` (
  `source` text NOT NULL,
  `trade_name` text NOT NULL,
  `major` text NOT NULL,
  `N` float NOT NULL,
  `P` float NOT NULL,
  `K` float NOT NULL,
  `S` float NOT NULL,
  `Mg` float NOT NULL,
  `Zn` float NOT NULL,
  `B` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nutrient_composition`
--

INSERT INTO `nutrient_composition` (`source`, `trade_name`, `major`, `N`, `P`, `K`, `S`, `Mg`, `Zn`, `B`) VALUES
('Urea', 'Urea', 'N', 46, 0, 0, 0, 0, 0, 0),
('Ammonium Sulphate', 'Ammonium Sulphate', 'S', 21.1, 0, 0, 23.5, 0, 0, 0),
('Triple Super Phosphate', 'TSP', 'P', 0, 20, 0, 1.3, 0, 0, 0),
('Monoammonium Phosphate', 'Monoammonium Phosphate', 'P', 11, 20, 0, 0, 0, 0, 0),
('Diammonium Phosphate', 'DAP', 'P', 18, 20, 0, 0, 0, 0, 0),
('Potassium Chloride', 'MoP', 'K', 0, 0, 50, 0, 0, 0, 0),
('Potassium Sulphate', 'Potassium Sulphate', 'K', 0, 0, 42, 17, 0, 0, 0),
('Gypsum', 'Gypsum', 'S', 0, 0, 0, 18, 0, 0, 0),
('Magnesium Sulphate', 'Magnesium Sulphate', 'Mg', 0, 0, 0, 12.5, 9.5, 0, 0),
('Zinc Sulphate Mono', 'Zinc Sulphate Mono', 'Zn', 0, 0, 0, 18, 0, 36, 0),
('Zinc Sulphate Hepta', 'Zinc Sulphate Hepta', 'Zn', 0, 0, 0, 11, 0, 23, 0),
('Boric Acid', 'Boric Acid', 'B', 0, 0, 0, 0, 0, 0, 17),
('Solubor', 'Solubor', 'B', 0, 0, 0, 0, 0, 0, 20);

-- --------------------------------------------------------

--
-- Table structure for table `soil_analysis_interpretation`
--

DROP TABLE IF EXISTS `soil_analysis_interpretation`;
CREATE TABLE IF NOT EXISTS `soil_analysis_interpretation` (
  `crop_name` text NOT NULL,
  `crop_class` text NOT NULL,
  `nutrient` text NOT NULL,
  `interpretation` text NOT NULL,
  `lower_limit` float NOT NULL,
  `upper_limit` float NOT NULL,
  `interval` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soil_analysis_interpretation`
--

INSERT INTO `soil_analysis_interpretation` (`crop_name`, `crop_class`, `nutrient`, `interpretation`, `lower_limit`, `upper_limit`, `interval`) VALUES
('Wheat (Irrigated)', '1', 'N', 'Optimum', 0, 40, 40),
('Wheat (Irrigated)', '1', 'N', 'Medium', 41, 80, 40),
('Wheat (Irrigated)', '1', 'N', 'Low', 81, 120, 40),
('Wheat (Irrigated)', '1', 'N', 'Very Low', 121, 160, 40),
('Wheat (Irrigated)', '1', 'P', 'Optimum', 0, 10, 10),
('Wheat (Irrigated)', '1', 'P', 'Medium', 11, 20, 10),
('Wheat (Irrigated)', '1', 'P', 'Low', 21, 30, 10),
('Wheat (Irrigated)', '1', 'P', 'Very Low', 31, 40, 10),
('Wheat (Irrigated)', '1', 'K', 'Optimum', 0, 30, 30),
('Wheat (Irrigated)', '1', 'K', 'Medium', 31, 60, 30),
('Wheat (Irrigated)', '1', 'K', 'Low', 61, 90, 30),
('Wheat (Irrigated)', '1', 'K', 'Very Low', 91, 120, 30),
('Wheat (Irrigated)', '1', 'S', 'Optimum', 0, 5, 5),
('Wheat (Irrigated)', '1', 'S', 'Medium', 6, 10, 5),
('Wheat (Irrigated)', '1', 'S', 'Low', 11, 15, 5),
('Wheat (Irrigated)', '1', 'S', 'Very Low', 16, 20, 5),
('Wheat (Irrigated)', '1', 'Mg', 'Optimum', -1, -1, -1),
('Wheat (Irrigated)', '1', 'Mg', 'Medium', 0, 3, 3),
('Wheat (Irrigated)', '1', 'Mg', 'Low', 4, 6, 3),
('Wheat (Irrigated)', '1', 'Mg', 'Very Low', 7, 9, 3),
('Wheat (Irrigated)', '1', 'Zn', 'Optimum', -1, -1, -1),
('Wheat (Irrigated)', '1', 'Zn', 'Medium', 0, 1.3, 1.3),
('Wheat (Irrigated)', '1', 'Zn', 'Low', 1.4, 2.6, 1.3),
('Wheat (Irrigated)', '1', 'Zn', 'Very Low', 2.7, 3.9, 1.3),
('Wheat (Irrigated)', '1', 'B', 'Optimum', -1, -1, -1),
('Wheat (Irrigated)', '1', 'B', 'Medium', 0, 0.5, 0.5),
('Wheat (Irrigated)', '1', 'B', 'Low', 0.6, 1, 0.5),
('Wheat (Irrigated)', '1', 'B', 'Very Low', 1.1, 1.5, 0.5),
('Wheat (Rainfed)', '1', 'N', 'Optimum', 0, 15, 15),
('Wheat (Rainfed)', '1', 'N', 'Medium', 16, 30, 15),
('Wheat (Rainfed)', '1', 'N', 'Low', 31, 45, 15),
('Wheat (Rainfed)', '1', 'N', 'Very Low', 46, 60, 15),
('Wheat (Rainfed)', '1', 'P', 'Optimum', 0, 5, 5),
('Wheat (Rainfed)', '1', 'P', 'Medium', 6, 10, 5),
('Wheat (Rainfed)', '1', 'P', 'Low', 11, 15, 5),
('Wheat (Rainfed)', '1', 'P', 'Very Low', 16, 20, 5),
('Wheat (Rainfed)', '1', 'K', 'Optimum', 0, 12, 12),
('Wheat (Rainfed)', '1', 'K', 'Medium', 13, 24, 12),
('Wheat (Rainfed)', '1', 'K', 'Low', 25, 36, 12),
('Wheat (Rainfed)', '1', 'K', 'Very Low', 37, 48, 12),
('Wheat (Rainfed)', '1', 'S', 'Optimum', 0, 2.5, 2.5),
('Wheat (Rainfed)', '1', 'S', 'Medium', 2.6, 5, 2.5),
('Wheat (Rainfed)', '1', 'S', 'Low', 5.1, 7.5, 2.5),
('Wheat (Rainfed)', '1', 'S', 'Very Low', 7.6, 10, 2.5),
('Wheat (Rainfed)', '1', 'Mg', 'Optimum', -1, -1, -1),
('Wheat (Rainfed)', '1', 'Mg', 'Medium', -1, -1, -1),
('Wheat (Rainfed)', '1', 'Mg', 'Low', 0, 3, 3),
('Wheat (Rainfed)', '1', 'Mg', 'Very Low', 4, 6, 3),
('Wheat (Rainfed)', '1', 'Zn', 'Optimum', -1, -1, -1),
('Wheat (Rainfed)', '1', 'Zn', 'Medium', -1, -1, -1),
('Wheat (Rainfed)', '1', 'Zn', 'Low', 0, 1, 1),
('Wheat (Rainfed)', '1', 'Zn', 'Very Low', 1.1, 2, 1),
('Wheat (Rainfed)', '1', 'B', 'Optimum', -1, -1, -1),
('Wheat (Rainfed)', '1', 'B', 'Medium', 0, 0.4, 0.4),
('Wheat (Rainfed)', '1', 'B', 'Low', 0.5, 0.8, 0.4),
('Wheat (Rainfed)', '1', 'B', 'Very Low', 0.9, 1.2, 0.4),
('Boro rice', '1', 'N', 'Optimum', 0, 50, 50),
('Boro rice', '1', 'N', 'Medium', 51, 100, 50),
('Boro rice', '1', 'N', 'Low', 101, 150, 50),
('Boro rice', '1', 'N', 'Very Low', 151, 200, 50),
('Boro rice', '1', 'P', 'Optimum', 0, 8, 8),
('Boro rice', '1', 'P', 'Medium', 9, 16, 8),
('Boro rice', '1', 'P', 'Low', 17, 24, 8),
('Boro rice', '1', 'P', 'Very Low', 25, 32, 8),
('Boro rice', '1', 'K', 'Optimum', 0, 33, 33),
('Boro rice', '1', 'K', 'Medium', 34, 66, 33),
('Boro rice', '1', 'K', 'Low', 67, 99, 33),
('Boro rice', '1', 'K', 'Very Low', 100, 132, 33),
('Boro rice', '1', 'S', 'Optimum', 0, 6, 6),
('Boro rice', '1', 'S', 'Medium', 7, 12, 6),
('Boro rice', '1', 'S', 'Low', 13, 18, 6),
('Boro rice', '1', 'S', 'Very Low', 19, 24, 6),
('Boro rice', '1', 'Zn', 'Optimum', -1, -1, -1),
('Boro rice', '1', 'Zn', 'Medium', 0, 1.3, 1.3),
('Boro rice', '1', 'Zn', 'Low', 1.4, 2.6, 1.3),
('Boro rice', '1', 'Zn', 'Very Low', 2.7, 3.9, 1.3),
('Boro rice', '2', 'N', 'Optimum', 0, 45, 45),
('Boro rice', '2', 'N', 'Medium', 46, 90, 45),
('Boro rice', '2', 'N', 'Low', 91, 135, 45),
('Boro rice', '2', 'N', 'Very Low', 136, 180, 45),
('Boro rice', '2', 'P', 'Optimum', 0, 7, 7),
('Boro rice', '2', 'P', 'Medium', 8, 14, 7),
('Boro rice', '2', 'P', 'Low', 15, 21, 7),
('Boro rice', '2', 'P', 'Very Low', 22, 28, 7),
('Boro rice', '2', 'K', 'Optimum', 0, 30, 30),
('Boro rice', '2', 'K', 'Medium', 31, 60, 30),
('Boro rice', '2', 'K', 'Low', 61, 90, 30),
('Boro rice', '2', 'K', 'Very Low', 91, 120, 30),
('Boro rice', '2', 'S', 'Optimum', 0, 5, 5),
('Boro rice', '2', 'S', 'Medium', 6, 10, 5),
('Boro rice', '2', 'S', 'Low', 11, 15, 5),
('Boro rice', '2', 'S', 'Very Low', 16, 20, 5),
('Boro rice', '2', 'Zn', 'Optimum', -1, -1, -1),
('Boro rice', '2', 'Zn', 'Medium', 0, 1, 1),
('Boro rice', '2', 'Zn', 'Low', 1.1, 2, 1),
('Boro rice', '2', 'Zn', 'Very Low', 2.1, 3, 1),
('Boro rice', '3', 'N', 'Optimum', 0, 40, 40),
('Boro rice', '3', 'N', 'Medium', 41, 80, 40),
('Boro rice', '3', 'N', 'Low', 81, 120, 40),
('Boro rice', '3', 'N', 'Very Low', 121, 160, 40),
('Boro rice', '3', 'P', 'Optimum', 0, 7, 7),
('Boro rice', '3', 'P', 'Medium', 8, 14, 7),
('Boro rice', '3', 'P', 'Low', 15, 21, 7),
('Boro rice', '3', 'P', 'Very Low', 22, 28, 7),
('Boro rice', '3', 'K', 'Optimum', 0, 30, 30),
('Boro rice', '3', 'K', 'Medium', 31, 60, 30),
('Boro rice', '3', 'K', 'Low', 61, 90, 30),
('Boro rice', '3', 'K', 'Very Low', 91, 120, 30),
('Boro rice', '3', 'S', 'Optimum', 0, 5, 5),
('Boro rice', '3', 'S', 'Medium', 6, 10, 5),
('Boro rice', '3', 'S', 'Low', 11, 15, 5),
('Boro rice', '3', 'S', 'Very Low', 16, 20, 5),
('Boro rice', '3', 'Zn', 'Optimum', -1, -1, -1),
('Boro rice', '3', 'Zn', 'Medium', 0, 0.7, 0.7),
('Boro rice', '3', 'Zn', 'Low', 0.8, 1.4, 0.7),
('Boro rice', '3', 'Zn', 'Very Low', 1.5, 2.1, 0.7),
('Boro rice', '4', 'N', 'Optimum', 0, 23, 23),
('Boro rice', '4', 'N', 'Medium', 24, 46, 23),
('Boro rice', '4', 'N', 'Low', 47, 69, 23),
('Boro rice', '4', 'N', 'Very Low', 70, 92, 23),
('Boro rice', '4', 'P', 'Optimum', 0, 4, 4),
('Boro rice', '4', 'P', 'Medium', 5, 8, 4),
('Boro rice', '4', 'P', 'Low', 9, 12, 4),
('Boro rice', '4', 'P', 'Very Low', 13, 16, 4),
('Boro rice', '4', 'K', 'Optimum', 0, 14, 14),
('Boro rice', '4', 'K', 'Medium', 15, 28, 14),
('Boro rice', '4', 'K', 'Low', 29, 42, 14),
('Boro rice', '4', 'K', 'Very Low', 43, 56, 14),
('Boro rice', '4', 'S', 'Optimum', 0, 3, 3),
('Boro rice', '4', 'S', 'Medium', 4, 6, 3),
('Boro rice', '4', 'S', 'Low', 7, 9, 3),
('Boro rice', '4', 'S', 'Very Low', 10, 12, 3),
('Boro rice', '4', 'Zn', 'Optimum', -1, -1, -1),
('Boro rice', '4', 'Zn', 'Medium', 0, 0.6, 0.6),
('Boro rice', '4', 'Zn', 'Low', 0.7, 1.2, 0.6),
('Boro rice', '4', 'Zn', 'Very Low', 1.3, 1.8, 0.6),
('T. Aus rice', '1', 'N', 'Optimum', 0, 25, 25),
('T. Aus rice', '1', 'N', 'Medium', 26, 50, 25),
('T. Aus rice', '1', 'N', 'Low', 51, 75, 25),
('T. Aus rice', '1', 'N', 'Very Low', 76, 100, 25),
('T. Aus rice', '1', 'P', 'Optimum', 0, 5, 5),
('T. Aus rice', '1', 'P', 'Medium', 6, 10, 5),
('T. Aus rice', '1', 'P', 'Low', 11, 15, 5),
('T. Aus rice', '1', 'P', 'Very Low', 16, 20, 5),
('T. Aus rice', '1', 'K', 'Optimum', 0, 15, 15),
('T. Aus rice', '1', 'K', 'Medium', 16, 30, 15),
('T. Aus rice', '1', 'K', 'Low', 31, 45, 15),
('T. Aus rice', '1', 'K', 'Very Low', 46, 60, 15),
('T. Aus rice', '1', 'S', 'Optimum', 0, 3, 3),
('T. Aus rice', '1', 'S', 'Medium', 4, 6, 3),
('T. Aus rice', '1', 'S', 'Low', 7, 9, 3),
('T. Aus rice', '1', 'S', 'Very Low', 10, 12, 3),
('T. Aus rice', '1', 'Zn', 'Optimum', -1, -1, -1),
('T. Aus rice', '1', 'Zn', 'Medium', 0, 0.6, 0.6),
('T. Aus rice', '1', 'Zn', 'Low', 0.7, 1.2, 0.6),
('T. Aus rice', '1', 'Zn', 'Very Low', 1.3, 1.8, 0.6),
('T. Aus rice', '2', 'N', 'Optimum', 0, 17, 17),
('T. Aus rice', '2', 'N', 'Medium', 18, 34, 17),
('T. Aus rice', '2', 'N', 'Low', 35, 51, 17),
('T. Aus rice', '2', 'N', 'Very Low', 52, 68, 17),
('T. Aus rice', '2', 'P', 'Optimum', 0, 4, 4),
('T. Aus rice', '2', 'P', 'Medium', 5, 8, 4),
('T. Aus rice', '2', 'P', 'Low', 9, 12, 4),
('T. Aus rice', '2', 'P', 'Very Low', 13, 16, 4),
('T. Aus rice', '2', 'K', 'Optimum', 0, 11, 11),
('T. Aus rice', '2', 'K', 'Medium', 12, 22, 11),
('T. Aus rice', '2', 'K', 'Low', 23, 33, 11),
('T. Aus rice', '2', 'K', 'Very Low', 34, 44, 11),
('T. Aus rice', '2', 'S', 'Optimum', 0, 3, 3),
('T. Aus rice', '2', 'S', 'Medium', 4, 6, 3),
('T. Aus rice', '2', 'S', 'Low', 7, 9, 3),
('T. Aus rice', '2', 'S', 'Very Low', 10, 12, 3),
('T. Aus rice', '2', 'Zn', 'Optimum', -1, -1, -1),
('T. Aus rice', '2', 'Zn', 'Medium', 0, 0.6, 0.6),
('T. Aus rice', '2', 'Zn', 'Low', 0.7, 1.2, 0.6),
('T. Aus rice', '2', 'Zn', 'Very Low', 1.3, 1.8, 0.6),
('B. Aus rice', '1', 'N', 'Optimum', 0, 17, 17),
('B. Aus rice', '1', 'N', 'Medium', 18, 34, 17),
('B. Aus rice', '1', 'N', 'Low', 35, 51, 17),
('B. Aus rice', '1', 'N', 'Very Low', 52, 68, 17),
('B. Aus rice', '1', 'P', 'Optimum', 0, 4, 4),
('B. Aus rice', '1', 'P', 'Medium', 5, 8, 4),
('B. Aus rice', '1', 'P', 'Low', 9, 12, 4),
('B. Aus rice', '1', 'P', 'Very Low', 13, 16, 4),
('B. Aus rice', '1', 'K', 'Optimum', 0, 11, 11),
('B. Aus rice', '1', 'K', 'Medium', 12, 22, 11),
('B. Aus rice', '1', 'K', 'Low', 23, 33, 11),
('B. Aus rice', '1', 'K', 'Very Low', 34, 44, 11),
('B. Aus rice', '1', 'S', 'Optimum', 0, 3, 3),
('B. Aus rice', '1', 'S', 'Medium', 4, 6, 3),
('B. Aus rice', '1', 'S', 'Low', 7, 9, 3),
('B. Aus rice', '1', 'S', 'Very Low', 10, 12, 3),
('B. Aus rice', '1', 'Zn', 'Optimum', -1, -1, -1),
('B. Aus rice', '1', 'Zn', 'Medium', 0, 0.6, 0.6),
('B. Aus rice', '1', 'Zn', 'Low', 0.7, 1.2, 0.6),
('B. Aus rice', '1', 'Zn', 'Very Low', 1.3, 1.8, 0.6),
('B. Aus rice', '2', 'N', 'Optimum', 0, 10, 10),
('B. Aus rice', '2', 'N', 'Medium', 11, 20, 10),
('B. Aus rice', '2', 'N', 'Low', 21, 30, 10),
('B. Aus rice', '2', 'N', 'Very Low', 31, 40, 10),
('B. Aus rice', '2', 'P', 'Optimum', 0, 3, 3),
('B. Aus rice', '2', 'P', 'Medium', 4, 6, 3),
('B. Aus rice', '2', 'P', 'Low', 7, 9, 3),
('B. Aus rice', '2', 'P', 'Very Low', 10, 12, 3),
('B. Aus rice', '2', 'K', 'Optimum', 0, 8, 8),
('B. Aus rice', '2', 'K', 'Medium', 9, 16, 8),
('B. Aus rice', '2', 'K', 'Low', 17, 24, 8),
('B. Aus rice', '2', 'K', 'Very Low', 25, 32, 8),
('B. Aus rice', '2', 'S', 'Optimum', 0, 2, 2),
('B. Aus rice', '2', 'S', 'Medium', 3, 4, 2),
('B. Aus rice', '2', 'S', 'Low', 5, 6, 2),
('B. Aus rice', '2', 'S', 'Very Low', 7, 8, 2),
('B. Aus rice', '2', 'Zn', 'Optimum', -1, -1, -1),
('B. Aus rice', '2', 'Zn', 'Medium', 0, 0.5, 0.5),
('B. Aus rice', '2', 'Zn', 'Low', 0.6, 1, 0.5),
('B. Aus rice', '2', 'Zn', 'Very Low', 1.1, 1.5, 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `soil_test_values_interpretation`
--

DROP TABLE IF EXISTS `soil_test_values_interpretation`;
CREATE TABLE IF NOT EXISTS `soil_test_values_interpretation` (
  `texture_class` text NOT NULL,
  `nutrient` text NOT NULL,
  `interpretation` text NOT NULL,
  `lower_limit` float NOT NULL,
  `upper_limit` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soil_test_values_interpretation`
--

INSERT INTO `soil_test_values_interpretation` (`texture_class`, `nutrient`, `interpretation`, `lower_limit`, `upper_limit`) VALUES
('C', 'N', 'Very Low', 0.001, 0.09),
('C', 'N', 'Low', 0.091, 0.18),
('C', 'N', 'Medium', 0.181, 0.27),
('C', 'N', 'Optimum', 0.271, 0.36),
('C', 'N', 'High', 0.361, 0.45),
('C', 'N', 'Very High', 0.45, 100),
('C', 'P', 'Very Low', 0.1, 6),
('C', 'P', 'Low', 6.1, 12),
('C', 'P', 'Medium', 12.1, 18),
('C', 'P', 'Optimum', 18.1, 24),
('C', 'P', 'High', 24.1, 30),
('C', 'P', 'Very High', 30.1, 100),
('C', 'S', 'Very Low', 0.1, 9),
('C', 'S', 'Low', 9.1, 18),
('C', 'S', 'Medium', 18.1, 27),
('C', 'S', 'Optimum', 27.1, 36),
('C', 'S', 'High', 36.1, 45),
('C', 'S', 'Very High', 45.1, 100),
('C', 'K', 'Very Low', 0.001, 0.075),
('C', 'K', 'Low', 0.076, 0.15),
('C', 'K', 'Medium', 0.151, 0.225),
('C', 'K', 'Optimum', 0.226, 0.3),
('C', 'K', 'High', 0.301, 0.375),
('C', 'K', 'Very High', 0.376, 100),
('C', 'Ca', 'Very Low', 0.01, 1.5),
('C', 'Ca', 'Low', 1.51, 3),
('C', 'Ca', 'Medium', 3.01, 4.5),
('C', 'Ca', 'Optimum', 4.51, 6),
('C', 'Ca', 'High', 6.01, 7.5),
('C', 'Ca', 'Very High', 7.6, 100),
('C', 'Mg', 'Very Low', 0.001, 0.375),
('C', 'Mg', 'Low', 0.376, 0.75),
('C', 'Mg', 'Medium', 0.751, 1.125),
('C', 'Mg', 'Optimum', 1.126, 1.5),
('C', 'Mg', 'High', 1.501, 1.875),
('C', 'Mg', 'Very High', 1.876, 100),
('C', 'Cu', 'Very Low', 0.001, 0.15),
('C', 'Cu', 'Low', 0.151, 0.3),
('C', 'Cu', 'Medium', 0.301, 0.45),
('C', 'Cu', 'Optimum', 0.451, 0.6),
('C', 'Cu', 'High', 0.601, 0.75),
('C', 'Cu', 'Very High', 0.751, 100),
('C', 'Zn', 'Very Low', 0.001, 0.45),
('C', 'Zn', 'Low', 0.46, 0.9),
('C', 'Zn', 'Medium', 0.901, 1.35),
('C', 'Zn', 'Optimum', 1.351, 1.8),
('C', 'Zn', 'High', 1.801, 2.225),
('C', 'Zn', 'Very High', 2.226, 100),
('C', 'Fe', 'Very Low', 0.1, 3),
('C', 'Fe', 'Low', 3.1, 6),
('C', 'Fe', 'Medium', 6.1, 9),
('C', 'Fe', 'Optimum', 9.1, 12),
('C', 'Fe', 'High', 12.1, 15),
('C', 'Fe', 'Very High', 15.1, 100),
('C', 'Mn', 'Very Low', 0.001, 0.75),
('C', 'Mn', 'Low', 0.751, 1.5),
('C', 'Mn', 'Medium', 1.501, 2.25),
('C', 'Mn', 'Optimum', 2.251, 3),
('C', 'Mn', 'High', 3.001, 3.75),
('C', 'Mn', 'Very High', 3.751, 100),
('C', 'B', 'Very Low', 0.001, 0.15),
('C', 'B', 'Low', 0.151, 0.3),
('C', 'B', 'Medium', 0.301, 0.45),
('C', 'B', 'Optimum', 0.451, 0.6),
('C', 'B', 'High', 0.601, 0.75),
('C', 'B', 'Very High', 0.751, 100),
('C', 'Mo', 'Very Low', 0.001, 0.075),
('C', 'Mo', 'Low', 0.076, 0.15),
('C', 'Mo', 'Medium', 0.151, 0.225),
('C', 'Mo', 'Optimum', 0.226, 0.3),
('C', 'Mo', 'High', 0.301, 0.375),
('C', 'Mo', 'Very High', 0.376, 100),
('B', 'N', 'Very Low', 0.001, 0.075),
('B', 'N', 'Low', 0.076, 0.15),
('B', 'N', 'Medium', 0.151, 0.225),
('B', 'N', 'Optimum', 0.226, 0.3),
('B', 'N', 'High', 0.301, 0.375),
('B', 'N', 'Very High', 0.376, 100),
('B', 'P', 'Very Low', 0.1, 6),
('B', 'P', 'Low', 6.1, 12),
('B', 'P', 'Medium', 12.1, 18),
('B', 'P', 'Optimum', 18.1, 24),
('B', 'P', 'High', 24.1, 30),
('B', 'P', 'Very High', 30.1, 100),
('B', 'S', 'Very Low', 0.1, 6),
('B', 'S', 'Low', 6.1, 12),
('B', 'S', 'Medium', 12.1, 18),
('B', 'S', 'Optimum', 18.1, 24),
('B', 'S', 'High', 24.1, 30),
('B', 'S', 'Very High', 30.1, 100),
('B', 'K', 'Very Low', 0.001, 0.06),
('B', 'K', 'Low', 0.061, 0.12),
('B', 'K', 'Medium', 0.121, 0.18),
('B', 'K', 'Optimum', 0.181, 0.24),
('B', 'K', 'High', 0.241, 0.3),
('B', 'K', 'Very High', 0.301, 100),
('B', 'Ca', 'Very Low', 0.01, 1.5),
('B', 'Ca', 'Low', 1.51, 3),
('B', 'Ca', 'Medium', 3.01, 4.5),
('B', 'Ca', 'Optimum', 4.51, 6),
('B', 'Ca', 'High', 6.01, 7.5),
('B', 'Ca', 'Very High', 7.6, 100),
('B', 'Mg', 'Very Low', 0.001, 0.375),
('B', 'Mg', 'Low', 0.376, 0.75),
('B', 'Mg', 'Medium', 0.751, 1.125),
('B', 'Mg', 'Optimum', 1.126, 1.5),
('B', 'Mg', 'High', 1.501, 1.875),
('B', 'Mg', 'Very High', 1.876, 100),
('B', 'Cu', 'Very Low', 0.001, 0.15),
('B', 'Cu', 'Low', 0.151, 0.3),
('B', 'Cu', 'Medium', 0.301, 0.45),
('B', 'Cu', 'Optimum', 0.451, 0.6),
('B', 'Cu', 'High', 0.601, 0.75),
('B', 'Cu', 'Very High', 0.751, 100),
('B', 'Zn', 'Very Low', 0.001, 0.375),
('B', 'Zn', 'Low', 0.376, 0.75),
('B', 'Zn', 'Medium', 0.751, 1.125),
('B', 'Zn', 'Optimum', 1.126, 1.5),
('B', 'Zn', 'High', 1.501, 1.875),
('B', 'Zn', 'Very High', 1.876, 100),
('B', 'Fe', 'Very Low', 0.01, 2.25),
('B', 'Fe', 'Low', 2.26, 4.5),
('B', 'Fe', 'Medium', 4.51, 6.75),
('B', 'Fe', 'Optimum', 6.76, 9),
('B', 'Fe', 'High', 9.01, 11.25),
('B', 'Fe', 'Very High', 11.26, 100),
('B', 'Mn', 'Very Low', 0.001, 0.75),
('B', 'Mn', 'Low', 0.751, 1.5),
('B', 'Mn', 'Medium', 1.501, 2.25),
('B', 'Mn', 'Optimum', 2.251, 3),
('B', 'Mn', 'High', 3.001, 3.75),
('B', 'Mn', 'Very High', 3.751, 100),
('B', 'B', 'Very Low', 0.001, 0.12),
('B', 'B', 'Low', 0.121, 0.24),
('B', 'B', 'Medium', 0.241, 0.36),
('B', 'B', 'Optimum', 0.361, 0.48),
('B', 'B', 'High', 0.481, 0.6),
('B', 'B', 'Very High', 0.601, 100),
('B', 'Mo', 'Very Low', 0.001, 0.045),
('B', 'Mo', 'Low', 0.046, 0.09),
('B', 'Mo', 'Medium', 0.091, 0.135),
('B', 'Mo', 'Optimum', 0.136, 0.18),
('B', 'Mo', 'High', 0.181, 0.225),
('B', 'Mo', 'Very High', 0.226, 100),
('A', 'N', 'Very Low', 0.001, 0.09),
('A', 'N', 'Low', 0.091, 0.18),
('A', 'N', 'Medium', 0.181, 0.27),
('A', 'N', 'Optimum', 0.271, 0.36),
('A', 'N', 'High', 0.361, 0.45),
('A', 'N', 'Very High', 0.45, 100),
('A', 'P', 'Very Low', 0.01, 7.5),
('A', 'P', 'Low', 7.51, 15),
('A', 'P', 'Medium', 15.01, 22.5),
('A', 'P', 'Optimum', 22.51, 30),
('A', 'P', 'High', 30.01, 37.5),
('A', 'P', 'Very High', 37.51, 100),
('A', 'S', 'Very Low', 0.01, 7.5),
('A', 'S', 'Low', 7.51, 15),
('A', 'S', 'Medium', 15.01, 22.5),
('A', 'S', 'Optimum', 22.51, 30),
('A', 'S', 'High', 30.01, 37.5),
('A', 'S', 'Very High', 37.51, 100),
('A', 'K', 'Very Low', 0.001, 0.09),
('A', 'K', 'Low', 0.091, 0.18),
('A', 'K', 'Medium', 0.181, 0.27),
('A', 'K', 'Optimum', 0.271, 0.36),
('A', 'K', 'High', 0.361, 0.45),
('A', 'K', 'Very High', 0.45, 100),
('A', 'Ca', 'Very Low', 0.01, 1.5),
('A', 'Ca', 'Low', 1.51, 3),
('A', 'Ca', 'Medium', 3.01, 4.5),
('A', 'Ca', 'Optimum', 4.51, 6),
('A', 'Ca', 'High', 6.01, 7.5),
('A', 'Ca', 'Very High', 7.6, 100),
('A', 'Mg', 'Very Low', 0.001, 0.375),
('A', 'Mg', 'Low', 0.376, 0.75),
('A', 'Mg', 'Medium', 0.751, 1.125),
('A', 'Mg', 'Optimum', 1.126, 1.5),
('A', 'Mg', 'High', 1.501, 1.875),
('A', 'Mg', 'Very High', 1.876, 100),
('A', 'Cu', 'Very Low', 0.001, 0.15),
('A', 'Cu', 'Low', 0.151, 0.3),
('A', 'Cu', 'Medium', 0.301, 0.45),
('A', 'Cu', 'Optimum', 0.451, 0.6),
('A', 'Cu', 'High', 0.601, 0.75),
('A', 'Cu', 'Very High', 0.751, 100),
('A', 'Zn', 'Very Low', 0.001, 0.45),
('A', 'Zn', 'Low', 0.46, 0.9),
('A', 'Zn', 'Medium', 0.901, 1.35),
('A', 'Zn', 'Optimum', 1.351, 1.8),
('A', 'Zn', 'High', 1.801, 2.225),
('A', 'Zn', 'Very High', 2.226, 100),
('A', 'Fe', 'Very Low', 0.1, 3),
('A', 'Fe', 'Low', 3.1, 6),
('A', 'Fe', 'Medium', 6.1, 9),
('A', 'Fe', 'Optimum', 9.1, 12),
('A', 'Fe', 'High', 12.1, 15),
('A', 'Fe', 'Very High', 15.1, 100),
('A', 'Mn', 'Very Low', 0.001, 0.75),
('A', 'Mn', 'Low', 0.751, 1.5),
('A', 'Mn', 'Medium', 1.501, 2.25),
('A', 'Mn', 'Optimum', 2.251, 3),
('A', 'Mn', 'High', 3.001, 3.75),
('A', 'Mn', 'Very High', 3.751, 100),
('A', 'B', 'Very Low', 0.001, 0.15),
('A', 'B', 'Low', 0.151, 0.3),
('A', 'B', 'Medium', 0.301, 0.45),
('A', 'B', 'Optimum', 0.451, 0.6),
('A', 'B', 'High', 0.601, 0.75),
('A', 'B', 'Very High', 0.751, 100),
('A', 'Mo', 'Very Low', 0.001, 0.075),
('A', 'Mo', 'Low', 0.076, 0.15),
('A', 'Mo', 'Medium', 0.151, 0.225),
('A', 'Mo', 'Optimum', 0.226, 0.3),
('A', 'Mo', 'High', 0.301, 0.375),
('A', 'Mo', 'Very High', 0.376, 100);

-- --------------------------------------------------------

--
-- Table structure for table `texture_class`
--

DROP TABLE IF EXISTS `texture_class`;
CREATE TABLE IF NOT EXISTS `texture_class` (
  `texture` text NOT NULL,
  `land_type` text NOT NULL,
  `texture_class` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `texture_class`
--

INSERT INTO `texture_class` (`texture`, `land_type`, `texture_class`) VALUES
('Sandy', 'Upland', 'B'),
('Sandy Clay Loam', 'Upland', 'B'),
('Sandy Loam', 'Upland', 'B'),
('Sandy Clay', 'Upland', 'B'),
('Loamy', 'Upland', 'A'),
('Clay Loam', 'Upland', 'A'),
('Silty Clay Loam', 'Upland', 'A'),
('Silty Loam', 'Upland', 'A'),
('Clayey', 'Upland', 'A'),
('Loamy', 'Wetland', 'C'),
('Clay Loam', 'Wetland', 'C'),
('Silty Clay Loam', 'Wetland', 'C'),
('Silty Loam', 'Wetland', 'C'),
('Clayey', 'Wetland', 'C');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;