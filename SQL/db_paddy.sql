-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2020 at 06:28 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_paddy`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_farmer`
--

CREATE TABLE `tbl_farmer` (
  `id` int(11) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `NIC` varchar(15) NOT NULL,
  `adress` longtext DEFAULT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_farmer`
--

INSERT INTO `tbl_farmer` (`id`, `f_name`, `l_name`, `NIC`, `adress`, `contact`) VALUES
(1, 'test', 'test', '123456', 'test3@gmail.com', '000'),
(2, 'test', 'test2', 'yuy', '', ''),
(3, 'test2', 'hkhkj', 'hkhkh', '', ''),
(4, 'test2', 'test2', 'yuiuiui', '', ''),
(6, 'test2', 'test2', 'fgds', 'fff', ''),
(7, 'test2', 'test2', 'hkhkh', '', ''),
(8, 'Nimal', 'Perera', '334455656v', 'Colombo', '0789988776');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payments`
--

CREATE TABLE `tbl_payments` (
  `id` int(11) NOT NULL,
  `invoice_num` varchar(20) NOT NULL,
  `farmer_id` varchar(20) NOT NULL,
  `kg` decimal(10,2) NOT NULL,
  `tot` decimal(20,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payments`
--

INSERT INTO `tbl_payments` (`id`, `invoice_num`, `farmer_id`, `kg`, `tot`, `date`) VALUES
(3, '10000', '100', '500.00', '45000.00', '2020-08-12'),
(4, '10002', '101', '999.99', '99999.99', '2020-08-12'),
(5, '10001', '150', '100.00', '9000.00', '2020-08-12'),
(6, '10003', '100', '5000.00', '450000.00', '2020-08-12'),
(7, '10004', '100', '500.00', '45000.00', '2020-08-12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_place_order`
--

CREATE TABLE `tbl_place_order` (
  `id` int(11) NOT NULL,
  `seed_cat` varchar(20) NOT NULL,
  `kg` decimal(7,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_place_order`
--

INSERT INTO `tbl_place_order` (`id`, `seed_cat`, `kg`, `date`) VALUES
(4, 'Gampaha', '5000.00', '2020-08-12'),
(7, 'Colombo', '5000.00', '2020-08-12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_seed`
--

CREATE TABLE `tbl_purchase_seed` (
  `id` int(11) NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `kg` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_purchase_seed`
--

INSERT INTO `tbl_purchase_seed` (`id`, `farmer_id`, `kg`, `amount`) VALUES
(10005, 100, '500.00', '45000.00'),
(10006, 100, '500.00', '45000.00'),
(10007, 100, '500.00', '45000.00'),
(10008, 150, '5000.00', '450000.00'),
(10009, 100, '5000.00', '450000.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seed_pricing`
--

CREATE TABLE `tbl_seed_pricing` (
  `id` int(11) NOT NULL,
  `selling` decimal(6,2) NOT NULL,
  `buying` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_seed_pricing`
--

INSERT INTO `tbl_seed_pricing` (`id`, `selling`, `buying`) VALUES
(1, '93.00', '47.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock`
--

CREATE TABLE `tbl_stock` (
  `id` int(11) NOT NULL,
  `center` varchar(20) NOT NULL,
  `kg` decimal(12,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_stock`
--

INSERT INTO `tbl_stock` (`id`, `center`, `kg`, `date`) VALUES
(1, 'Gampaha', '500.00', '2020-08-12'),
(2, 'Kurunegala', '8000.00', '2020-08-12'),
(3, 'Gampaha', '600.00', '2020-08-12'),
(4, 'Kandy', '8000.00', '2020-08-12'),
(5, 'Colombo', '6500.00', '2020-08-12'),
(6, 'Kandy', '500.00', '2020-08-12'),
(7, 'Kandy', '99999.99', '2020-08-12'),
(8, 'Kandy', '1000.00', '2020-08-12'),
(9, 'Gampaha', '40000.00', '2020-08-12'),
(10, 'Kurunegala', '50000.00', '2020-08-12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `pswrd` varchar(10) NOT NULL,
  `role` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `pswrd`, `role`, `type`) VALUES
(100000, 'ad123', 1, 'admin'),
(100001, 'cm123', 5, 'center_manager'),
(100002, 'po123', 4, 'paying_officer'),
(100003, 'co123', 3, 'collection_officer'),
(100004, 'ho123', 2, 'head_office');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_farmer`
--
ALTER TABLE `tbl_farmer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_place_order`
--
ALTER TABLE `tbl_place_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase_seed`
--
ALTER TABLE `tbl_purchase_seed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farmer_id` (`farmer_id`);

--
-- Indexes for table `tbl_seed_pricing`
--
ALTER TABLE `tbl_seed_pricing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_farmer`
--
ALTER TABLE `tbl_farmer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_place_order`
--
ALTER TABLE `tbl_place_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_purchase_seed`
--
ALTER TABLE `tbl_purchase_seed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10010;

--
-- AUTO_INCREMENT for table `tbl_seed_pricing`
--
ALTER TABLE `tbl_seed_pricing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100006;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
