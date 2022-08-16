-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2022 at 07:50 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

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
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `P_id` varchar(10) NOT NULL,
  `P_name` varchar(20) NOT NULL,
  `Health_Benefits` varchar(500) NOT NULL,
  `Grame` varchar(20) DEFAULT NULL,
  `Price` varchar(15) DEFAULT NULL,
  `Image` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`P_id`, `P_name`, `Health_Benefits`, `Grame`, `Price`, `Image`) VALUES
('P01', 'Ginger', 'Reduces cold and flu,Good for your Heart,Treats Inflammation,prevents Cancer,Ginger improves Brain Functionality,Treats Muscle.', '100g', 'Rs50.00LKR', 'img1.jpg_480Wx480H'),
('P02', 'Aralu', 'improves memory, increases strength, stimulates the senses and expels the urine.', '100g', 'Rs180.00LKR', '66.jpg'),
('P03', 'Cloves', 'reduce your risk of developing heart disease, diabetes, and certain cancers.', '100g', 'Rs282.00LKR', '2.jpeg'),
('P04', 'Cinnamon', 'High in a Substance With Powerful Medicinal Properties, Loaded With Antioxidants,Anti-Inflammatory Properties,May Cut the Risk of Heart Disease,Improve Sensitivity to the Hormone Insulin.', '100g', 'Rs520.00LKR', '33.jpg'),
('P05', 'Neem oil', 'treat dry skin and wrinkles,stimulate collagen production,reduce scars,heal wounds,treat acne,minimize warts and moles.', '1l', 'Rs719.00LKR', '7.jpg'),
('P06', 'Amla Powder', ' Improves Immunity,Fights Infections and Prevents Chest Congestion,Prevents Constipation,Acts as a Natural Blood Purifier,Helps Manage Chronic Conditions,Improves Eyesight,Relieves Pain', '100g', 'Rs820.00LKR', '8.jpg'),
('P07', 'Aloe vera', 'Anti-Ageing,fights Acne,Reduces Plaque,Hydrating,Moisturising,Boosts Digestion, Soothes Razor Burn,Lowers Blood Sugar.', '100g', 'Rs120.00LKR', '55.jpg'),
('P08', 'Honey', 'A good source of antioxidants,Raw honey nutrition,Antibacterial and antifungal properties,Heals wounds,Phytonutrient powerhouse,Help for digestive issues,Soothe a sore throat and cough.', '500g', 'Rs1290.00LKR', '88.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`P_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
