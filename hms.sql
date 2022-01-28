-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2022 at 03:54 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Demo test', 7, 6, 600, '2019-06-29', '9:15 AM', '2019-06-23 18:31:28', 1, 0, '0000-00-00 00:00:00'),
(4, 'Ayurveda', 5, 5, 8050, '2019-11-08', '1:00 PM', '2019-11-05 10:28:54', 1, 1, '0000-00-00 00:00:00'),
(5, 'Dermatologist', 9, 7, 500, '2019-11-30', '5:30 PM', '2019-11-10 18:41:34', 1, 0, '2019-11-10 18:48:30'),
(6, 'Dermatologist', 0, 12, 0, '2019-12-10', '4:30 PM', '2019-12-06 15:31:30', 1, 1, NULL),
(7, 'Dentist', 1, 12, 100000, '2019-12-10', '4:45 PM', '2019-12-06 15:38:40', 1, 0, '2019-12-11 12:26:45'),
(8, 'Dermatologist', 2, 14, 2000, '2019-12-11', '2:15 PM', '2019-12-09 11:10:10', 1, 1, NULL),
(9, 'Dermatologist', 2, 15, 2000, '2019-12-25', '1:30 AM', '2019-12-11 12:21:33', 1, 1, NULL),
(10, 'General Physician', 1, 16, 100000, '2019-12-25', '1:45 PM', '2019-12-11 12:33:37', 1, 0, '2019-12-11 12:34:22'),
(11, 'General Physician', 1, 16, 100000, '2019-12-17', '1:45 PM', '2019-12-11 12:42:25', 1, 1, NULL),
(12, 'Homeopath', 0, 14, 200000, '2020-01-22', '3:00 PM', '2020-01-23 13:58:38', 1, 1, NULL),
(13, 'Homeopath', 5, 14, 200000, '2020-01-31', '3:00 PM', '2020-01-23 14:00:18', 0, 1, '2020-01-23 14:01:57'),
(14, 'Homeopath', 5, 14, 200000, '2020-01-31', '3:15 PM', '2020-01-23 14:04:04', 1, 1, NULL),
(15, 'Ear-Nose-Throat (Ent) Specialist', 11, 14, 25000, '2020-01-22', '10:30 AM', '2020-01-23 14:20:54', 1, 1, NULL),
(16, 'Ear-Nose-Throat (Ent) Specialist', 11, 18, 25000, '2020-01-31', '1:45 PM', '2020-01-23 14:59:41', 1, 1, NULL),
(17, 'Ear-Nose-Throat (Ent) Specialist', 11, 19, 25000, '2020-02-02', '6:15 PM', '2020-01-23 17:16:25', 1, 1, NULL),
(18, 'Dermatologist', 10, 19, 50000, '2020-02-02', '6:30 PM', '2020-01-23 17:22:35', 1, 1, NULL),
(19, 'Ear-Nose-Throat (Ent) Specialist', 11, 19, 25000, '2020-02-02', '6:30 PM', '2020-01-23 17:25:34', 1, 1, NULL),
(20, 'Dentist', 12, 19, 100000, '2020-02-02', '6:00 AM', '2020-01-23 17:49:24', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(4, 'General Physician', 'Dr. Taiwo', 'Office 5', '50000', 9090912022, 'officialdrtaiwo@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2020-01-09 10:09:59', NULL),
(5, 'Homeopath', 'Dr. Olayinka', 'Office 1', '200000', 8143036359, 'Olayinkaalabi191@gmail.com', '4d04cedd6d05b1f16a4404ff5a1fa4af', '2020-01-09 10:13:14', '2020-01-23 13:52:54'),
(6, 'Dermatologist', 'Dr. Quayyum', 'Office 14', '10000', 7019585905, 'quace10@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2020-01-09 10:15:24', NULL),
(7, 'Gynecologist/Obstetrician', 'Dr. Ayo', 'Office 9', '500000', 7085562512, 'ayomide@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2020-01-09 10:16:56', NULL),
(8, 'Dermatologist', 'Dr. Adeola', 'Unilorin Clinic', '25000', 7067832833, 'hysolak123@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2020-01-23 13:15:11', NULL),
(10, 'Dermatologist', 'Dr. Ayomide', 'Office 5', '50000', 9015697458, 'ayomdedavid@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2020-01-23 13:47:30', NULL),
(11, 'Ear-Nose-Throat (Ent) Specialist', 'Dr. Abiola', 'Tipper Garage', '25000', 7032911659, 'ayodeleabiola1994@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2020-01-23 14:15:38', NULL),
(12, 'Dentist', 'Dr. Ismail', '2 Tanke junction,Ilorin ', '100000', 8060802390, 'ismail@gmail.com', '5d6934dc5b395dd10f51cea73f38081b', '2020-01-23 17:45:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'johndoe@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-06 15:37:16', '06-12-2019 09:07:36 PM', 1),
(2, 1, 'johndoe@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-06 15:39:03', '06-12-2019 09:09:14 PM', 1),
(3, 1, 'johndoe@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-11 12:26:15', '11-12-2019 05:57:02 PM', 1),
(4, NULL, 'abiola123@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-11 12:30:35', NULL, 0),
(5, 1, 'johndoe@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-11 12:34:02', '11-12-2019 06:04:27 PM', 1),
(6, 1, 'johndoe@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-11 12:42:49', '11-12-2019 06:19:20 PM', 1),
(7, NULL, 'Olayinkaalabi191@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-02 18:46:45', NULL, 0),
(8, NULL, 'Olayinkaalabi191@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-02 18:47:00', NULL, 0),
(9, 4, 'officialdrtaiwo@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-09 10:32:45', '09-01-2020 04:03:04 PM', 1),
(10, 4, 'officialdrtaiwo@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 09:23:03', '23-01-2020 02:53:34 PM', 1),
(11, 5, 'Olayinkaalabi191@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 09:24:19', '23-01-2020 02:56:19 PM', 1),
(12, 6, 'quace10@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 09:27:16', '23-01-2020 02:57:39 PM', 1),
(13, 8, 'hysolak123@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 13:20:10', '23-01-2020 06:51:11 PM', 1),
(14, NULL, 'ayodeleabiola1994@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 13:50:08', NULL, 0),
(15, NULL, 'ayodeleabiola1994@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 13:50:39', NULL, 0),
(16, 5, 'Olayinkaalabi191@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 13:58:59', '23-01-2020 07:29:19 PM', 1),
(17, 5, 'Olayinkaalabi191@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:00:43', '23-01-2020 07:31:29 PM', 1),
(18, 5, 'Olayinkaalabi191@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:02:39', '23-01-2020 07:32:54 PM', 1),
(19, 5, 'Olayinkaalabi191@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:04:24', '23-01-2020 07:37:49 PM', 1),
(20, 11, 'ayodeleabiola1994@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:16:35', '23-01-2020 07:47:18 PM', 1),
(21, NULL, 'ayodeleabiola1994@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:23:03', NULL, 0),
(22, 11, 'ayodeleabiola1994@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:23:25', '23-01-2020 08:11:06 PM', 1),
(23, 11, 'ayodeleabiola1994@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:41:34', '23-01-2020 08:18:00 PM', 1),
(24, NULL, 'ayodeleabiola1994@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 15:00:28', NULL, 0),
(25, 11, 'ayodeleabiola1994@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 15:00:48', '23-01-2020 08:34:12 PM', 1),
(26, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2020-01-23 15:58:36', NULL, 0),
(27, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2020-01-23 15:58:39', NULL, 0),
(28, NULL, 'ayodeleabiola1994', 0x3a3a3100000000000000000000000000, '2020-01-23 16:06:26', NULL, 0),
(29, NULL, 'ayodeleabiola1994', 0x3a3a3100000000000000000000000000, '2020-01-23 16:06:51', NULL, 0),
(30, 11, 'ayodeleabiola1994@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 16:08:03', '23-01-2020 09:38:22 PM', 1),
(31, 11, 'ayodeleabiola1994@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 17:17:58', '23-01-2020 10:48:52 PM', 1),
(32, 11, 'ayodeleabiola1994@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 17:26:27', '23-01-2020 11:00:25 PM', 1),
(33, 12, 'ismail@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 18:03:20', '23-01-2020 11:38:55 PM', 1),
(34, 12, 'ismail@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 18:10:01', '23-01-2020 11:43:46 PM', 1),
(35, NULL, 'Olayinkaalabi191@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-24 03:57:08', NULL, 0),
(36, 5, 'Olayinkaalabi191@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-24 03:57:27', '24-01-2020 09:28:05 AM', 1),
(37, 5, 'Olayinkaalabi191@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-24 04:12:07', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2016-12-28 06:39:26', '0000-00-00 00:00:00'),
(5, 'Ayurveda', '2016-12-28 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', '0000-00-00 00:00:00'),
(9, 'Demo test', '2016-12-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '0000-00-00 00:00:00'),
(11, 'Test', '2019-06-23 17:51:06', '2019-06-23 17:55:06'),
(12, 'Dermatologist', '2019-11-10 18:36:36', '2019-11-10 18:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(2, 'Anuj kumar', 'phpgurukulofficial@gmail.com', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', NULL, NULL, NULL),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2019-11-06 04:20:07'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2019-11-06 04:31:24'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2019-11-06 04:52:42'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2019-11-06 04:56:55'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2019-11-06 14:38:33'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2019-11-10 18:50:23'),
(8, 6, '70', '23', '67kg', '80', 'Paraflavin', '2019-12-11 12:47:05'),
(9, 7, '120', '20', '60', '30', 'Take Paracetamol', '2020-01-23 14:07:35'),
(10, 8, '112', '30', '50', '40', 'M&B CAPSULE', '2020-01-23 14:43:36'),
(11, 10, '120', '20', '50', '30', 'Exercise', '2020-01-23 15:04:06'),
(12, 12, '70', '29', '65', '79', 'stay away from cold', '2020-01-23 18:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Manisha Jha', 4558968789, 'test@gmail.com', 'Female', '\"\"J&K Block J-127, Laxmi Nagar New Delhi', 26, 'She is diabetic patient', '2019-11-04 21:38:06', '2019-11-06 06:48:05'),
(2, 5, 'Raghu Yadav', 9797977979, 'raghu@gmail.com', 'Male', 'ABC Apartment Mayur Vihar Ph-1 New Delhi', 39, 'No', '2019-11-05 10:40:13', '2019-11-05 11:53:45'),
(3, 7, 'Mansi', 9878978798, 'jk@gmail.com', 'Female', '\"fdghyj', 46, 'No', '2019-11-05 10:49:41', '2019-11-05 11:58:59'),
(4, 7, 'Manav Sharma', 9888988989, 'sharma@gmail.com', 'Male', 'L-56,Ashok Nagar New Delhi-110096', 45, 'He is long suffered by asthma', '2019-11-06 14:33:54', '2019-11-06 14:34:31'),
(5, 9, 'John', 1234567890, 'john@test.com', 'male', 'Test ', 25, 'THis is sample text for testing.', '2019-11-10 18:49:24', NULL),
(6, 1, 'Olajide Adebola', 705656565, 'olayinkaalabi@gmail.com', 'male', 'Unilorin', 34, 'Fresh patient', '2019-12-11 12:45:43', NULL),
(7, 5, 'john', 787676767, 'john@gmail.com', 'male', 'gydf', 32, 'CHRONIC ASTHMA', '2020-01-23 14:06:15', NULL),
(8, 11, 'GIDEON', 705487653, 'GIDEON@gmail.com', 'female', 'UNILORIN', 24, 'HEADACHE', '2020-01-23 14:40:36', NULL),
(9, 11, 'Omo Lola', 705487653, 'omo123@gmail.com', 'female', 'omobola street,igbo owu ilorin kwara state.', 56, 'need Rest', '2020-01-23 14:46:52', NULL),
(10, 11, 'omolola', 70543216, 'omolala123@gmail.com', 'female', 'zamfara hostel', 19, ' headache', '2020-01-23 15:03:21', NULL),
(11, 11, 'lara', 813245678, 'lara222@gmail.com', 'female', '2 kolawole street', 23, 'consult dentist', '2020-01-23 17:29:56', NULL),
(12, 12, 'adebola', 81435678, 'adebola21@gmail.com', 'Male', 'challenge', 12, 'malaria and catarrh', '2020-01-23 18:07:06', '2020-01-23 18:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 11, 'abrahambossey@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-06 07:15:26', '06-12-2019 12:46:03 PM', 1),
(25, 12, 'olayinkaalabi191@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-06 15:02:27', '06-12-2019 08:32:45 PM', 1),
(26, 12, 'olayinkaalabi191@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-06 15:28:27', '06-12-2019 08:59:31 PM', 1),
(27, 12, 'olayinkaalabi191@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-06 15:30:56', '06-12-2019 09:01:44 PM', 1),
(28, 12, 'olayinkaalabi191@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-06 15:38:00', '06-12-2019 09:08:47 PM', 1),
(29, NULL, 'olayinkaalabi191@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-06 15:49:16', NULL, 0),
(30, 12, 'olayinkaalabi191@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-06 15:49:30', '06-12-2019 09:21:37 PM', 1),
(31, 13, 'olajide84@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-06 15:56:59', '06-12-2019 09:29:44 PM', 1),
(32, 14, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-09 11:08:29', '09-12-2019 04:40:21 PM', 1),
(33, 15, 'johndoe@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-11 12:17:09', '11-12-2019 05:52:51 PM', 1),
(34, NULL, 'johndoe@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-11 12:27:18', NULL, 0),
(35, 16, 'olayinkaalabi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-11 12:33:13', '11-12-2019 06:03:46 PM', 1),
(36, 16, 'olayinkaalabi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-11 12:34:49', '11-12-2019 06:12:36 PM', 1),
(37, 16, 'olayinkaalabi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-12-11 12:49:40', NULL, 1),
(38, NULL, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-02 18:45:14', NULL, 0),
(39, NULL, 'johndoe@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-02 18:45:51', NULL, 0),
(40, NULL, 'johndoe@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-02 19:41:26', NULL, 0),
(41, 17, 'johndoe1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-02 19:42:47', NULL, 1),
(42, 14, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 13:54:47', '23-01-2020 07:27:06 PM', 1),
(43, 14, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 13:57:20', '23-01-2020 07:28:47 PM', 1),
(44, NULL, 'john', 0x3a3a3100000000000000000000000000, '2020-01-23 13:59:33', NULL, 0),
(45, 14, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 13:59:44', '23-01-2020 07:30:32 PM', 1),
(46, 14, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:01:49', '23-01-2020 07:32:22 PM', 1),
(47, 14, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:03:48', '23-01-2020 07:34:12 PM', 1),
(48, 14, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:07:59', '23-01-2020 07:41:00 PM', 1),
(49, 14, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:17:44', '23-01-2020 07:48:54 PM', 1),
(50, 14, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:19:27', '23-01-2020 07:51:27 PM', 1),
(51, 14, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:21:55', '23-01-2020 07:52:39 PM', 1),
(52, NULL, 'omolola123@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:48:51', NULL, 0),
(53, NULL, 'omolola123@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:54:18', NULL, 0),
(54, NULL, 'omolola123@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:54:43', NULL, 0),
(55, NULL, 'omolola123@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:54:57', NULL, 0),
(56, NULL, 'omolola123@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:55:25', NULL, 0),
(57, NULL, 'omolola123@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:55:38', NULL, 0),
(58, NULL, 'omolola123@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:56:48', NULL, 0),
(59, NULL, '12345678', 0x3a3a3100000000000000000000000000, '2020-01-23 14:57:16', NULL, 0),
(60, NULL, 'omolola123@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:57:28', NULL, 0),
(61, 18, 'omolala123@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:58:50', '23-01-2020 08:30:07 PM', 1),
(62, 18, 'omolala123@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 15:04:29', '23-01-2020 08:34:46 PM', 1),
(63, NULL, 'Omolala', 0x3a3a3100000000000000000000000000, '2020-01-23 17:04:49', NULL, 0),
(64, NULL, 'omolala@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 17:05:23', NULL, 0),
(65, 18, 'Omolala123@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 17:06:07', NULL, 1),
(66, 18, 'Omolala123@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 17:07:00', '23-01-2020 10:39:05 PM', 1),
(67, 19, 'lara222@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 17:14:03', '23-01-2020 10:46:38 PM', 1),
(68, 19, 'lara222@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 17:20:08', '23-01-2020 10:53:27 PM', 1),
(69, 19, 'lara222@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 17:24:41', NULL, 1),
(70, 19, 'lara222@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 17:24:43', '23-01-2020 10:55:54 PM', 1),
(71, 19, 'lara222@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 17:30:48', '23-01-2020 11:03:25 PM', 1),
(72, 18, 'Omolala123@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 17:33:52', '23-01-2020 11:04:15 PM', 1),
(73, 19, 'lara222@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 17:34:43', '23-01-2020 11:05:10 PM', 1),
(74, 19, 'lara222@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 17:46:00', '23-01-2020 11:31:41 PM', 1),
(75, NULL, 'adebola21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 18:22:20', NULL, 0),
(76, NULL, 'adebola21@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 18:24:53', NULL, 0),
(77, NULL, 'Olayinkaalabi191@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-24 03:56:51', NULL, 0),
(78, NULL, 'Olayinkaalabi191@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-24 03:58:19', NULL, 0),
(79, 18, 'omolala123@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-24 04:10:39', '24-01-2020 09:41:56 AM', 1),
(80, 18, 'omolala123@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-24 04:17:00', NULL, 1),
(81, 18, 'omolala123@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-24 10:13:19', NULL, 1),
(82, 20, 'johnssssssss@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-28 02:49:52', '28-01-2022 08:21:59 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(11, 'abraham bossey', '3, Ojuolape Street Kollington Alagbado Lagos', 'alagbado', 'male', 'abrahambossey@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2019-12-06 07:15:04', NULL),
(12, 'Ojo Dapo', '3, ojuolape  street', 'Ilorin', 'male', 'olayinkaalabi191@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2019-12-06 15:02:17', NULL),
(13, 'olajide adebola', '3, ojuolape  street', 'lagos', 'female', 'olajide84@gmail.com', 'd72b9934c921f5d5f8c0d0eb8b2a5f4a', '2019-12-06 15:56:13', NULL),
(14, 'John', 'q1fghfyjhu', 'ilorin', 'male', 'john@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2019-12-09 11:08:12', NULL),
(15, 'Ojo Dapo', 'jkahweuh3r42', 'lagos', 'male', 'johndoe@gmail.com', 'aa41616bfe25c1c485578bfdb8d51634', '2019-12-11 12:16:25', NULL),
(16, 'olajide adebola', '1 AYODELE', 'Ilorin', 'male', 'olayinkaalabi@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2019-12-11 12:32:54', NULL),
(18, 'omolola', 'no 2 igbo Owu, Tanke Ilorin,Kwara Stata', 'Ilorin', 'female', 'Omolala123@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2020-01-23 14:52:54', '2020-01-23 14:56:36'),
(19, 'Lara ', '3, ojuolape  street', 'portharcourt', 'female', 'Lara222@gmail.com', 'a37481e4990154c8ed5c5ebab9c49d41', '2020-01-23 17:13:16', NULL),
(20, 'test', 'test', 'testrs', 'male', 'johnssssssss@gmail.com', '1bbd886460827015e5d605ed44252251', '2022-01-28 02:49:39', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
