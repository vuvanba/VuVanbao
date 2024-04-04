-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2024 at 02:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatasql`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `place_of_birth` varchar(255) NOT NULL,
  `ethnicity` varchar(50) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `permanent_address` varchar(255) NOT NULL,
  `high_school_name` varchar(255) NOT NULL,
  `high_school_type` enum('public','private') NOT NULL,
  `graduation_year` year(4) NOT NULL,
  `identification_number` varchar(20) NOT NULL,
  `issue_date` date NOT NULL,
  `issue_place` varchar(255) NOT NULL,
  `field_of_study` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `full_name`, `Gender`, `date_of_birth`, `place_of_birth`, `ethnicity`, `religion`, `permanent_address`, `high_school_name`, `high_school_type`, `graduation_year`, `identification_number`, `issue_date`, `issue_place`, `field_of_study`) VALUES
(1, 'Nguyen Van A', '0', '2000-01-01', 'Ha Noi', NULL, NULL, '123 Pho Hue, Ha Noi', 'Truong THPT Chu Van An', 'public', '2018', '123456789', '2018-06-01', 'Ha Noi', 'Digital Marketing'),
(2, 'jhkhkahsdj', 'Nam', '2019-03-18', 'Hà Nội', 'Kinh', 'Không có', 'Không biết', 'Không biết', 'public', '2022', '09969456535', '2015-03-04', 'CỤc an ninh', ' Tiếng Hàn\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
