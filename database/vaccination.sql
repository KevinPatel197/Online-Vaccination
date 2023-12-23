-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2021 at 04:07 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vaccination`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `adminlogin` (IN `ausrname` VARCHAR(20), IN `apass` VARCHAR(20))  BEGIN
select username,password from admin where username=ausrname and password=apass;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `userlogin` (IN `uemail` VARCHAR(50), IN `upass` VARCHAR(50))  BEGIN
SELECT email,pass FROM patient_details WHERE email=uemail and pass=upass;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `username`, `password`) VALUES
(1, 'vatsal_tailor', '64f466e6');

-- --------------------------------------------------------

--
-- Table structure for table `appoint`
--

CREATE TABLE `appoint` (
  `a_id` int(11) NOT NULL,
  `h_name` varchar(20) NOT NULL,
  `atime` varchar(20) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appoint`
--

INSERT INTO `appoint` (`a_id`, `h_name`, `atime`, `p_id`) VALUES
(1, 'shelby', '3:00 to 4:00 PM', 1),
(3, 'v4u', '2:00 to 3:00 PM', 3),
(4, 'eye-Q', '2:00 to 3:00 PM', 4),
(5, 'shelby', '4:00 to 5:00 PM', 4),
(6, 'shelby', '3:00 to 4:00 PM', 1),
(7, 'Bankers', '3:00 to 4:00 PM', 2),
(8, 'Apple', '4:00 to 5:00 PM', 2),
(9, 'Mamta', '4:00 to 5:00 PM', 3),
(10, 'BAPS', '3:00 to 4:00 PM', 5),
(11, 'Mahavir', '2:00 to 3:00 PM', 6),
(12, 'Eye-Q', '2:00 to 3:00 PM', 7),
(13, 'Venus', '2:00 to 3:00 PM', 8),
(14, 'Apple', '4:00 to 5:00 PM', 9),
(15, 'BAPS', '4:00 to 5:00 PM', 10),
(19, 'Bankers', '3:00 to 4:00 PM', 2);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `name`, `email`, `message`, `date`) VALUES
(7, 'Vatsal', 'vatsaltailor6500@gmail.com', 'website working smoothly', '2021-07-12'),
(8, 'Nisarg', '104vatsaltailor@gmail.com', 'Excellent  ', '2021-07-12'),
(9, 'Rahul', 'tailorvatsal29@gmail.com', 'Good', '2021-07-12'),
(10, 'Rajvi', 'tv98451@gmail.com', 'All in One', '2021-07-12'),
(11, 'Tisha', 'adisha1299@gmail.com', 'Excellent Work', '2021-07-12'),
(12, 'Adit', 'adit@gmail.com', 'Keep it up', '2021-07-12'),
(13, 'Deep', 'deep@gmail.com', 'Need more Work', '2021-07-12'),
(14, 'Dipen', 'dipen@gmail.com', 'Average', '2021-07-12'),
(15, 'Aarav', 'aarav@gmail.com', 'easy and simple', '2021-07-12'),
(16, 'Shlok', 'shlokpatel@gmail.com', 'okay', '2021-07-12'),
(18, 'Kashish', 'kashish@gmail.com', 'I completed my all Vaccination. ', '2021-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `h_id` int(11) NOT NULL,
  `h_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `dr_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`h_id`, `h_name`, `address`, `dr_name`) VALUES
(1, 'Shelby', 'Rander', 'Dr. Kamlesh'),
(2, 'Eye-Q', 'Tadwadi', 'Dr. Hemanshu'),
(4, 'V4U', 'Palanpur', 'Dr. Dhawal'),
(5, 'Venus', 'Rampura', 'Dr. Nikhil'),
(6, 'BAPS', 'Adajan', 'Dr. Nirav'),
(7, 'Mahavir', 'Athwagate', 'Dr. Shanjay'),
(8, 'Bankers', 'Piplod', 'Dr. Sonal'),
(9, 'Mamta', 'Palanpur', 'Dr. Pratixa'),
(10, 'Apple', 'Uddhna Darwaja', 'Dr. Sunny'),
(11, 'Ankur Hospital', 'Pandesara', 'Dr. Meet');

-- --------------------------------------------------------

--
-- Table structure for table `patient_details`
--

CREATE TABLE `patient_details` (
  `p_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `mother_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `phone_no` bigint(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_details`
--

INSERT INTO `patient_details` (`p_id`, `f_name`, `l_name`, `father_name`, `mother_name`, `address`, `email`, `pass`, `phone_no`, `city`, `dob`, `gender`, `weight`, `dt`) VALUES
(1, 'vatsal', 'tailor', 'sunilkumar', 'sonalben', 'b-89 avadhuri Soc', 'vatsaltailor6500@gmail.com', 'Vatsal@9898', 8141939329, 'adajan', '2021-07-11', 'male', 67, '2021-07-12 13:59:13'),
(2, 'rahul', 'dave', 'manishbhai', 'xyz', 'b-702 shyam shrusti reci', 'tailorvatsal29@gmail.com', 'Vatsal@1234', 9865322154, 'adajan', '2021-07-13', 'male', 60, '0000-00-00 00:00:00'),
(3, 'nisarg', 'tailor', 'sanjaybhai', 'rashmiben', 'a-101 aakashdeep apt', '104vatsaltailor@gmail.com', 'Nisarg@1234', 6532215468, 'adajan', '2016-07-12', 'male', 75, '2021-07-12 11:29:46'),
(4, 'rajvi', 'tailor', 'sunilkumar', 'sonalben', 'b-89 avadhpuri soc', 'tv98451@gmail.com', 'Rajvi@1234', 9865548715, 'palanpur', '2020-01-12', 'female', 75, '2021-07-12 11:50:50'),
(5, 'tisha', 'topiwala', 'dharmesh', 'anju', 'a-101 divine rec', 'adisha1299@gmail.com', 'Tisha@1234', 6598542175, 'adajan', '2021-05-12', 'female', 56, '2021-07-12 14:25:12'),
(6, 'adit', 'topiwala', 'dharmesh', 'anjuben', 'B-202 divine reci', 'adit@gmail.com', 'Adit@1234', 8975154262, 'palanpur', '2021-07-12', 'male', 12, '0000-00-00 00:00:00'),
(7, 'deep', 'tailor', 'bhupen', 'yogi', 'b-303 shreepadh', 'deep@gmail.com', 'Deep@1234', 8975124555, 'pal', '2020-07-12', 'male', 56, '2021-07-12 14:32:45'),
(8, 'dipen', 'tailor', 'bhupenbhai', 'yogiben', 'b-303 shreepadh resi', 'dipen@gmail.com', 'Dipen@1234', 9868521458, 'pal', '2021-01-12', 'male', 12, '2021-07-12 15:08:40'),
(9, 'aarav', 'tailor', 'chetan', 'jayna', 'c-603 neelkanth resi', 'aarav@gmail.com', 'Aarav@1234', 8521478569, 'piplod', '2020-11-12', 'male', 5, '2021-07-12 15:10:00'),
(10, 'shlok', 'patel', 'kishorbhai', 'ketnaben', 'b-89 Avadhpuri soc', 'shlokpatel@gmail.com', 'Shlok@1234', 8523698547, 'adajan', '2020-07-12', 'male', 20, '2021-07-12 15:11:49'),
(17, 'vatsal', 'tailor', 'sunail', 'sonal', 'b-89 avadhpuri soc', 'taivatsal@gmail.com', 'Vatsal@1234', 8451216235, 'adajan', '2021-07-13', 'male', 20, '2021-07-13 05:20:50');

-- --------------------------------------------------------

--
-- Table structure for table `prevaccination_factor`
--

CREATE TABLE `prevaccination_factor` (
  `pf_id` int(11) NOT NULL,
  `birth_weight` int(11) NOT NULL,
  `infection` varchar(20) NOT NULL,
  `comorbidity` varchar(20) NOT NULL,
  `neutritional_status` varchar(20) NOT NULL,
  `maternal_antibodies` varchar(20) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prevaccination_factor`
--

INSERT INTO `prevaccination_factor` (`pf_id`, `birth_weight`, `infection`, `comorbidity`, `neutritional_status`, `maternal_antibodies`, `p_id`) VALUES
(2, 4, 'no', 'no', 'good', 'no', 2),
(3, 3, 'yes', 'yes', 'poor', 'no', 3),
(4, 3, 'no', 'yes', 'poor', 'yes', 4),
(5, 12, 'no', 'yes', 'poor', 'no', 5),
(6, 2, 'no', 'yes', 'poor', 'yes', 6),
(7, 3, 'no', 'no', 'good', 'no', 7),
(8, 2, 'no', 'yes', 'poor', 'yes', 8),
(9, 2, 'no', 'no', 'poor', 'no', 9),
(10, 2, 'no', 'no', 'good', 'no', 10);

-- --------------------------------------------------------

--
-- Table structure for table `vaccination_details`
--

CREATE TABLE `vaccination_details` (
  `v_id` int(100) NOT NULL,
  `v_name` varchar(100) NOT NULL,
  `when_to_give` varchar(100) NOT NULL,
  `dose_no` int(100) NOT NULL,
  `doze_amt` varchar(100) NOT NULL,
  `route` varchar(100) NOT NULL,
  `site` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccination_details`
--

INSERT INTO `vaccination_details` (`v_id`, `v_name`, `when_to_give`, `dose_no`, `doze_amt`, `route`, `site`) VALUES
(2, 'Oral polio Vaccine (OPV)', 'After 2,4 and 6 months', 3, '2 Drops', 'Oral', 'Oral'),
(3, 'Hepatitis-B vaccine', 'At birth and after 2,6,12,18 Months', 5, '0.5 ML', 'Intra-Muscluar', 'Antero-Lateral side of mid-thigh'),
(4, 'DTaP/DTP', 'After 2,4,6,18 Months and after 5 years', 5, '0.5 ML', 'Intra-Muscular', 'Upper-Arm'),
(5, 'Haemophilus influenzae B(HiB)', 'After 2,4,6,8 Months', 4, '0.5 ML', 'Intra-Musclar', 'Upper-Arm'),
(6, 'RotaVirus Vaccine', 'After 2,4,6 Months', 3, '1.0 ML', 'Oral', 'Oral'),
(7, 'Measles Mumps Rubella (MMR)', 'After 1 and 5 years', 2, '0.5 ML', 'Sub-Cutaneous', 'Right-Upper Arm'),
(8, 'Varicella Vaccine', 'After 1 and 5 years', 2, '0.5 ML', 'Intra-Muscular', 'Upper-Arm'),
(9, 'Hepatitis-A Vaccine', 'After 12 and 18 Months', 2, '0.5 ML', 'Intra-Muscluar', 'Upper-Arm'),
(10, 'Pneumococcal Conjugate (PCV)', 'After 2,4,6 and 18 Months', 4, '0.5 ML', 'Intra-Muscluar', 'Upper-Arm'),
(12, 'Bacillus calmette-guerin (BCG)', 'At birth', 1, '0.1 ml', 'intra-dermal', 'left-upper Arm'),
(13, 'ACG', 'at Birth', 1, '0.2 ml', 'left hand', 'upper side');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `appoint`
--
ALTER TABLE `appoint`
  ADD PRIMARY KEY (`a_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `patient_details`
--
ALTER TABLE `patient_details`
  ADD PRIMARY KEY (`p_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `prevaccination_factor`
--
ALTER TABLE `prevaccination_factor`
  ADD PRIMARY KEY (`pf_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `vaccination_details`
--
ALTER TABLE `vaccination_details`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appoint`
--
ALTER TABLE `appoint`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `h_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `patient_details`
--
ALTER TABLE `patient_details`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `prevaccination_factor`
--
ALTER TABLE `prevaccination_factor`
  MODIFY `pf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vaccination_details`
--
ALTER TABLE `vaccination_details`
  MODIFY `v_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appoint`
--
ALTER TABLE `appoint`
  ADD CONSTRAINT `appoint_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `patient_details` (`p_id`);

--
-- Constraints for table `prevaccination_factor`
--
ALTER TABLE `prevaccination_factor`
  ADD CONSTRAINT `prevaccination_factor_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `patient_details` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
