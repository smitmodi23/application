-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2020 at 07:51 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rental_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_tb`
--

CREATE TABLE IF NOT EXISTS `booking_tb` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `b_todate` datetime NOT NULL,
  `b_fromdate` datetime NOT NULL,
  `b_amount` varchar(20) NOT NULL,
  `b_status` enum('Pending','Confirm','Return') NOT NULL,
  `b_cdate` datetime NOT NULL,
  `b_udate` datetime NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `booking_tb`
--

INSERT INTO `booking_tb` (`b_id`, `u_id`, `v_id`, `b_todate`, `b_fromdate`, `b_amount`, `b_status`, `b_cdate`, `b_udate`) VALUES
(11, 17, 7, '2020-03-18 00:00:00', '2020-03-20 00:00:00', '2500', 'Confirm', '2020-03-17 12:22:15', '2020-03-17 12:22:15'),
(16, 17, 6, '2020-03-26 00:00:00', '2020-03-30 00:00:00', '18000', 'Confirm', '2020-03-17 12:54:32', '2020-03-17 12:54:32'),
(17, 17, 5, '2020-03-23 00:00:00', '2020-04-03 00:00:00', '3000', 'Confirm', '2020-03-19 11:15:10', '2020-03-19 11:15:10'),
(18, 17, 4, '2020-03-20 00:00:00', '2020-03-26 00:00:00', '1000', 'Pending', '2020-03-19 11:21:05', '2020-03-19 11:21:05'),
(19, 17, 9, '2020-03-27 00:00:00', '2020-03-28 00:00:00', '300', 'Confirm', '2020-03-19 11:47:44', '2020-03-19 11:47:44'),
(20, 5, 13, '2020-03-21 00:00:00', '2020-03-23 00:00:00', '1600', 'Confirm', '2020-03-19 12:06:27', '2020-03-19 12:06:27'),
(23, 5, 12, '2020-03-20 00:00:00', '2020-03-27 00:00:00', '12500', 'Confirm', '2020-03-19 01:04:52', '2020-03-19 01:04:52'),
(24, 5, 3, '2020-03-20 00:00:00', '2020-03-21 00:00:00', '800', 'Pending', '2020-03-19 01:11:55', '2020-03-19 01:11:55'),
(25, 5, 10, '2020-03-21 00:00:00', '2020-03-30 00:00:00', '4000', 'Confirm', '2020-03-19 01:21:37', '2020-03-19 01:21:37'),
(26, 14, 3, '2020-04-10 00:00:00', '2020-04-13 00:00:00', '300', 'Confirm', '2020-04-10 09:59:11', '2020-04-10 09:59:11'),
(27, 14, 4, '2020-04-10 00:00:00', '2020-04-14 00:00:00', '2500', 'Confirm', '2020-04-10 10:01:17', '2020-04-10 10:01:17');

-- --------------------------------------------------------

--
-- Table structure for table `category_tb`
--

CREATE TABLE IF NOT EXISTS `category_tb` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_status` enum('Active','Deactive') NOT NULL,
  `cat_cdate` datetime NOT NULL,
  `cat_udate` datetime NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `category_tb`
--

INSERT INTO `category_tb` (`cat_id`, `cat_name`, `cat_status`, `cat_cdate`, `cat_udate`) VALUES
(1, 'Two Wheeler  ', 'Active', '2020-01-02 12:04:48', '2020-01-02 12:04:48'),
(2, 'Four Wheeler', 'Active', '2020-01-02 12:05:04', '2020-01-02 12:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `contact_tb`
--

CREATE TABLE IF NOT EXISTS `contact_tb` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT,
  `con_name` varchar(20) NOT NULL,
  `con_address` text NOT NULL,
  `con_contact` varchar(20) NOT NULL,
  `con_email` varchar(100) NOT NULL,
  `con_webside` varchar(100) NOT NULL,
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contact_tb`
--

INSERT INTO `contact_tb` (`con_id`, `con_name`, `con_address`, `con_contact`, `con_email`, `con_webside`) VALUES
(1, 'Atul Polytechnic', 'Khadat, Mahudi Road,Near Psl Factory, Mansa, Mahudi, Gujarat 382855  ', '02763284412  ', 'atlulpolytechnic2008@gmail.com    ', 'www.Atulpolytechnic.com    ');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_tb`
--

CREATE TABLE IF NOT EXISTS `feedback_tb` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(50) NOT NULL,
  `f_email` varchar(100) NOT NULL,
  `f_message` text NOT NULL,
  `f_cdate` datetime NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `feedback_tb`
--

INSERT INTO `feedback_tb` (`f_id`, `f_name`, `f_email`, `f_message`, `f_cdate`) VALUES
(5, 'kirti', 'kirti@gmail.com', 'wow this is a superb webside', '2019-12-31 06:37:00'),
(6, 'smit', 'smit@gmail.com', 'superb webside', '2019-12-31 09:27:27'),
(7, 'jay', 'jay@gmail.com', 'jor bhai superb website for rental vehical', '2019-12-31 11:21:59'),
(8, 'mayank', 'mayank12@gmail.com', 'wow your website is amazing....!', '2020-01-25 12:02:23'),
(10, 'aniket', 'aniket23@gmail.com', 'wonderful webside', '2020-01-25 12:06:54'),
(11, 'jaypalsinh', 'jaypal12@gmail.com', 'vary nice......!', '2020-01-27 01:46:38'),
(12, 'jalpa', 'jalparathod49@gmail.com', 'nice service...', '2020-02-17 12:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `login_tb`
--

CREATE TABLE IF NOT EXISTS `login_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `last_seen` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `login_tb`
--

INSERT INTO `login_tb` (`id`, `username`, `password`, `image`, `last_seen`) VALUES
(1, 'k&s', 's&k123', 'logo1.png', '2020-02-21 11:17:54'),
(2, 'admin', '12345', 'user.png', '2020-06-20 11:16:59');

-- --------------------------------------------------------

--
-- Table structure for table `payment_tb`
--

CREATE TABLE IF NOT EXISTS `payment_tb` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `p_mode` enum('COD','Online') NOT NULL,
  `p_cardno` varchar(20) NOT NULL,
  `p_status` enum('Active','Deactive') NOT NULL,
  `p_cdate` datetime NOT NULL,
  `p_udate` datetime NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `payment_tb`
--

INSERT INTO `payment_tb` (`p_id`, `b_id`, `u_id`, `p_mode`, `p_cardno`, `p_status`, `p_cdate`, `p_udate`) VALUES
(7, 11, 17, 'COD', '----', 'Active', '2020-03-17 12:22:29', '2020-03-17 12:22:29'),
(8, 12, 17, 'Online', '1234567891234567', 'Active', '2020-03-17 12:33:05', '2020-03-17 12:33:05'),
(9, 13, 17, 'Online', '1236547896541236', 'Active', '2020-03-17 12:39:09', '2020-03-17 12:39:09'),
(10, 14, 17, 'COD', '----', 'Deactive', '2020-03-17 12:52:53', '2020-03-17 12:52:53'),
(11, 15, 17, 'COD', '----', 'Deactive', '2020-03-17 12:53:44', '2020-03-17 12:53:44'),
(12, 16, 17, 'COD', '----', 'Deactive', '2020-03-17 12:55:10', '2020-03-17 12:55:10'),
(14, 20, 5, 'Online', '7412589632145698', 'Active', '2020-03-19 12:07:18', '2020-03-19 12:07:18'),
(15, 22, 5, 'COD', '----', 'Deactive', '2020-03-19 12:20:56', '2020-03-19 12:20:56'),
(16, 17, 17, 'COD', '----', 'Active', '2020-03-19 11:21:15', '2020-03-19 11:21:15'),
(17, 19, 5, 'Online', '7539518524569515', 'Active', '2020-03-19 01:01:38', '2020-03-19 01:01:38'),
(18, 23, 5, 'Online', '123698745632114', 'Active', '2020-03-19 01:05:20', '2020-03-19 01:05:20'),
(20, 25, 5, 'Online', '1596324789654123', 'Active', '2020-03-19 01:22:22', '2020-03-19 01:22:22'),
(21, 26, 14, 'Online', '123456789', 'Active', '2020-04-10 10:00:28', '2020-04-10 10:00:28'),
(22, 27, 14, 'COD', '----', 'Active', '2020-04-10 10:01:27', '2020-04-10 10:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_tb`
--

CREATE TABLE IF NOT EXISTS `user_tb` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(50) NOT NULL,
  `u_address` text NOT NULL,
  `u_contact` varchar(20) NOT NULL,
  `u_gender` varchar(20) NOT NULL,
  `u_image` varchar(100) NOT NULL,
  `u_otp` varchar(10) NOT NULL,
  `u_password` varchar(20) NOT NULL,
  `u_status` enum('Active','Deactive') NOT NULL,
  `u_cdate` datetime NOT NULL,
  `u_udate` datetime NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `user_tb`
--

INSERT INTO `user_tb` (`u_id`, `u_name`, `u_address`, `u_contact`, `u_gender`, `u_image`, `u_otp`, `u_password`, `u_status`, `u_cdate`, `u_udate`) VALUES
(5, 'kirti     ', '10 radhakrishna coloni uttamnager nikol', '7801986968', 'Male', 'kirti2.jpg', '3214', '12345', 'Active', '2020-01-24 00:00:00', '2020-01-16 00:00:00'),
(6, 'rohan', '523 ramrajya metro piller no.120 vastral', '7886146025', 'Male', 'm2.jpg', '4532', 'rohan12345', 'Active', '2020-01-16 11:41:00', '2020-01-09 13:32:00'),
(12, 'jalpa', 'gandhinagar', '9624181794', 'Female', 'activa.jpg', '2201', 'jalpa123', 'Active', '2020-02-17 12:23:33', '2020-02-17 12:23:33'),
(14, 'jaypalsinh', 'lkbhjk', '8000401055', 'Male', 'M1.jpg', '6086', '0000', 'Active', '2020-02-17 01:36:49', '2020-02-17 01:36:49'),
(17, 'smit', 'c/218 bhaviknager ', '9925478901', 'Male', 'smit2.jpg', '8487', '123456', 'Active', '2020-03-06 11:22:21', '2020-03-06 11:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `vehical_tb`
--

CREATE TABLE IF NOT EXISTS `vehical_tb` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `v_name` varchar(50) NOT NULL,
  `v_image` varchar(100) NOT NULL,
  `v_details` text NOT NULL,
  `v_fule` enum('Petrol','Diesel') NOT NULL,
  `v_rtonumber` varchar(20) NOT NULL,
  `v_service` enum('Driver','Nondriver') NOT NULL,
  `v_rent` varchar(20) NOT NULL,
  `v_facility` enum('AC','NonAC') NOT NULL,
  `v_insurance` enum('Yes','No') NOT NULL,
  `v_chassisno` varchar(50) NOT NULL,
  `v_status` enum('Active','Deactive') NOT NULL,
  `v_cdate` datetime NOT NULL,
  `v_udate` datetime NOT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `vehical_tb`
--

INSERT INTO `vehical_tb` (`v_id`, `c_id`, `v_name`, `v_image`, `v_details`, `v_fule`, `v_rtonumber`, `v_service`, `v_rent`, `v_facility`, `v_insurance`, `v_chassisno`, `v_status`, `v_cdate`, `v_udate`) VALUES
(3, 1, 'Activa 5G                  ', 'activa.jpg', 'Fuel Delivery SystemCarburetor\r\n\r\nFuel TypePetrol\r\n\r\nIgnitionCDI (capacitor discharge ignition)\r\n\r\nSpark Plugs1 Per Cylinder\r\n\r\nCooling SystemFan Cooled\r\n\r\nGearbox TypeAutomatic\r\n\r\nNo. of Gears--\r\n\r\nTransmission TypeV - Matic\r\n\r\nClutchAutomatic', 'Petrol', 'GJ-18-CC-1996', 'Driver', '10', 'NonAC', 'Yes', 'AG45468461AE', 'Active', '2020-01-02 01:16:45', '2020-02-21 10:14:21'),
(4, 2, 'wagon R LXI         ', 'download.jpg', 'Engine TypeK10B Petrol              EngineDisplacement (cc)998             Max Power (bhp@rpm)67.04bhp@6200rpm               Max Torque (nm@rpm)90Nm@3500rpm \r\n                       No. of cylinder3               Valves Per Cylinder4                      Valve ConfigurationDOH                              CBore X Stroke69 x 72 mm', 'Diesel', 'GJ-01-MC-9091', 'Driver', '20', 'AC', 'Yes', '12ABC669WQ', 'Active', '2020-01-03 10:52:15', '2020-02-21 10:44:49'),
(5, 1, 'Royal Enfild Bullet           ', 'royal-enfield-classic-350-ash.png', 'Mileage (ARAI)30 kmpl         Engine TypeSingle Cylinder, 4-Stroke, Spark ignition \r\n            Displacement499 cc         No. of Cylinders1Max Power27.57 PS @ 5250 rpm \r\n        Max Torque41.3 Nm @ 4000 rpm             Front BrakeDiscRear Brak          eDiscFuel Capacity13.5 LBody Type           Cruiser Bikes\r\n', 'Petrol', 'GJ-27-AM-7029', 'Driver', '15', 'NonAC', 'Yes', '1565KGLTH5', 'Active', '2020-01-03 11:48:20', '2020-02-22 11:59:15'),
(6, 2, 'Maruti Suzuki Neno       ', 'download (1).jpg', 'Launched first in India in 2008, Tata Nano gained popularity in no time for its low price and small stature. The hatchback has witnessed sea change during its product cycle and has bettered both in terms of looks and performance compared to the original model. Addition of an automated manual transmission and an openable hatch are the two most significant changes made to the small car.\r\n', 'Petrol', 'GJ-27-AC-4791', 'Driver', '18', 'AC', 'No', '12345XFDGGFGNFG13', 'Active', '2020-01-03 12:39:31', '2020-02-21 12:17:59'),
(7, 2, ' Duster KWID     ', 'duster.jpg', 'Engine:1461 cc                         Mileage:13 Kmpl to 19 Kmpl                                    Fuel Type:petrol / diesel                             Transmission:manual / automaticSeating          Capacity:5 Power:109bhp@4000rpm                      Gear Box:6-Speed                            Torque:245Nm@1750rpm                                Length Width Height:4360*1822*1695                   Boot Space:475', 'Diesel', 'GJ-01-SC-2750', 'Driver', '25', 'AC', 'Yes', 'JK58745PPT21', 'Active', '2020-01-03 07:40:47', '2020-02-21 10:45:32'),
(8, 2, 'Hyundai i10  ', 'i10.jpg', 'Fuel Type : Petrol             Mileage : 15 Kmpl to 20 Kmpl             Engine : 1 CC toCC              Transmission : Manual / Automatic            Power : 69 PS               Torque : 101 Nm', 'Petrol', 'GJ-18-SK-7387', 'Driver', '25', 'AC', 'Yes', '58RSF578RA', 'Active', '2020-01-04 10:18:20', '2020-02-22 11:57:56'),
(9, 1, 'Bajaj Pulsar  ', 'pulsor.jpg', 'Engine Capacity = 124.4 cc\r\nMax Power = 8.83 kW (12 PS) @ 8500 rpm\r\nMax Torque = 11 Nm @ 6500 rpm', 'Petrol', 'GJ-27-CC-2804', 'Driver', '15', 'NonAC', 'Yes', '96FRG2578H', 'Active', '2020-01-04 10:26:12', '2020-02-21 10:46:03'),
(10, 2, 'Tata Indigo    ', 'indigo.jpg', 'ARAI Mileage:15.64 kmpl                   Fuel Type:Petrol                Engine Displacement (cc):1193                        Max Power (bhp@rpm):64.1bhp@5000rpm                                                           Max Torque :(nm@rpm)100Nm@2700rpm                    Seating Capacity:5                          TransmissionType:Manual                    Boot Space (Litres):380re                                                         Fuel Tank Capacity:42                        Body TypeSedan\r\n', 'Petrol', 'GJ-17-MK-2308', 'Driver', '20', 'AC', 'No', 'HG75IOK8PO', 'Active', '2020-01-04 10:32:24', '2020-02-22 11:58:12'),
(11, 1, 'Hero Splendor Pro ', 'splender.jpg', 'Displacement : 97.2 cc             Fuel Delivery System : Carburettor                                             Fuel Type:Petrol                         Cylinders:1              Max Power:8.2 bhp @ 8,000 rpm\r\nMaximum Torque:8 Nm @ 4,500 rpm         Bore:50 mm     Stroke:49 mm\r\nValves Per Cylinder:2\r\n', 'Petrol', 'GJ-03-KP-1037', 'Driver', '15', 'NonAC', 'Yes', 'AG45HGY54H7P', 'Active', '2020-01-04 10:51:35', '2020-02-21 10:46:29'),
(12, 2, 'Maruti Eeco   ', 'download (3).jpg', 'Mileage (upto)â€Ž: â€Ž21.94 km	Engine (upto)â€Ž: â€Ž1196 cc     	Seatsâ€Ž: â€Ž5\r\nMileage (ARAI) kmplâ€Ž: â€Ž15 Kmpl to 21 Kmpl	      Fuel Typeâ€Ž: â€ŽPetrol / CNG\r\nEngine Displacementâ€Ž: â€Ž1196 cc             	Minimum Turning Radiusâ€Ž: â€Ž4.5 metres', 'Petrol', 'GJ-05-SM-2750', 'Driver', '25', 'NonAC', 'Yes', '578HG5KIJ5', 'Active', '2020-01-04 11:07:29', '2020-02-22 11:58:28'),
(13, 2, 'I20 Active', 'i20 Active.jpg', 'Engine CC - 1396 cc (diesel), 1197 cc (petrol)\r\nSeating capacity - 5\r\nPrice range - Rs. 6.7-9.3 lakh', 'Diesel', 'GJ-18-MP-1324', 'Nondriver', '20', 'AC', 'Yes', '4FGT578SD45E', 'Active', '2020-02-23 11:24:48', '2020-02-23 11:24:48');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
