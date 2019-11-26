-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 27, 2018 at 04:08 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id6894683_pizzaweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `C_ID` int(50) NOT NULL,
  `C_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `C_Decription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `C_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `C_thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `C_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`C_ID`, `C_Name`, `C_Decription`, `C_image`, `C_thumb`, `C_price`) VALUES
(101, 'CHICKEN, BACON & AVOCADO', 'Succulent seasoned chicken, Avocado, crispy rasher bacon, red onion topped with hollandaise sauce and spring onion.', 'images/pizza/pizza1.png', 'images/thub_images/pizza1.png', 12),
(102, 'CHEESY CHICKEN, BACON & CHORIZO', 'Succulent seasoned chicken, Spanish style chorizo, crispy rasher bacon, fire roasted peppers, red onion topped with lots of stretchy mozzarella.', 'images/pizza/pizza2.png', 'images/thub_images/pizza2.png', 12),
(103, 'VEGAN', 'Vegan Mozzarella, Avocado, fire roasted peppers, mushrooms, red onion, capsicum, olives topped with spring onion.', 'images/pizza/pizza3.png', 'images/thub_images/pizza3.png', 12),
(104, 'GLUTEN FREE', 'Succulent seasoned chicken, Avocado, crispy rasher bacon, red onion topped with hollandaise sauce and spring onion.', 'images/pizza/pizza4.png', 'images/thub_images/pizza4.png', 12),
(105, 'LOADED SUPREME', 'Ground beef, crispy rasher bacon, mushroom, pepperoni, Italian sausage, fresh baby spinach, smoked leg ham, pineapple, topped with oregano, tomato capsicum sauce & spring onion.', 'images/pizza/pizza5.png', 'images/thub_images/pizza5.png', 15),
(201, 'HAM & CHEESE', 'Soft and crispy ciabatta generously filled with smoked leg ham, tangy ranch sauce and lots of tasty cheese.', 'images/sandwiches/sandwich1.png', 'images/thub_images/sandwich1.png', 6),
(202, '6 MEAT SANDWICH', 'Soft and crispy ciabatta generously filled with pork & fennel sausage, pepperoni, crispy rasher bacon, ground beef, chorizo, ham, melted cheese and a smoky BBQ sauce.\r\n', 'images/sandwiches/sandwich2.png', 'images/thub_images/sandwich2.png', 8),
(203, 'CHICKEN & GRAVY', 'Soft and crispy ciabatta generously filled with chicken tenders, crispy rasher bacon, gravy & tasty cheese', 'images/sandwiches/sandwich3.png', 'images/thub_images/sandwich3.png', 8),
(204, 'CHICKEN, BACON & AVOCADO', 'Soft and crispy ciabatta generously filled with seasoned chicken, avocado, rasher bacon, cheese, spinach, spring onion and a tangy ranch sauce', 'images/sandwiches/sandwich4.png', 'images/thub_images/sandwich4.png', 10),
(301, 'CHUNKY CUT CHIPS & AIOLI', 'Chunky cut chips served with aioli dipping sauce', 'images/sides/Chips.png', 'images/thub_images/Chips.png', 5),
(302, 'BBQ CHICKEN MEATBALLS', '15 meatballs made with a tasty chicken mince & topped with a smoky Hickory BBQ sauce', 'images/sides/meatballs.png', 'images/thub_images/meatballs.png', 7.5),
(303, 'CHEESY GARLIC BREAD', 'Hot, cheesy, garlic deliciousness', 'images/sides/garlicbread.png', 'images/thub_images/garlicbread.png', 5),
(401, 'STRAWBERRY MALT THICKSHAKE', 'Handcrafted Strawberry Malt Thickshake made with all natural ice cream, not soft serve. Made at -14 degrees for the thickest thickshake ever!', 'images/drinks/drink1.png', 'images/thub_images/drink1.png', 4),
(402, 'ESPRESSO THICKSHAKE WITH CREAM & SAUCE', 'Handcrafted Salted Caramel Thickshake made with real all natural ice cream, not soft serve and topped with whipped cream and a salted caramel syrup swirl. Made at -14 degrees for the thickest thickshake ever!', 'images/drinks/drink2.png', 'images/thub_images/drink2.png', 4),
(403, 'SALTED CARAMEL THICKSHAKE WITH CREAME & CARAMEL SYRUP', 'Handcrafted Salted Caramel Thickshake made with real all natural ice cream, not soft serve and topped with whipped cream and a salted caramel syrup swirl. Made at -14 degrees for the thickest thickshake ever!', 'images/drinks/drink3.png', 'images/thub_images/drink3.png', 3.5),
(404, 'MALTED VANILLA THICKSHAKE WITH CREAM & MALT SYRUP', 'Handcrafted Traditional Malted Vanilla Thickshake made with real all natural ice cream, not soft serve and topped with whipped cream and a malt syrup swirl. Made at -14 degrees for the thickest thickshake ever!', 'images/drinks/drink4.png', 'images/thub_images/drink4.png', 5),
(501, 'COMBO 1', '1 REGULAR PIZZA + 4 PCS CHEESY GARLIC BREAD + 2 DRINKS', 'images/deals/deal1.png', 'images/thub_images/deal1.png', 20),
(502, 'COMBO 2', '1 LARGE PIZZA + 1 DRINK', 'images/deals/deal2.png', 'images/thub_images/deal2.png', 15),
(503, 'COMBO 3', '2 LARGE PIZZA + 8 PCS CHEESY GARLIC BREAD + 1 DRINKS', 'images/deals/deal3.png', 'images/thub_images/deal3.png', 21),
(504, 'LEGEND COMBO ', '3 LARGE PIZZA + 6 PCS WINGS+ 8 PCS CHEESY GARLIC BREAD + 1 DRINKS', 'images/deals/deal4.png', 'images/thub_images/deal4.png', 15),
(601, 'OVEN BAKED CHURROS', '4 x oven baked Churros dusted with cinnamon sugar and served with a chocolate dipping sauce', 'images/desserts/dessert1.png', 'images/thub_images/dessert1.png', 9),
(602, 'CHOCOHOLIC DESSERT PIZZA', 'A decadent dessert pizza with a milk chocolate base , choc brownie chunks, white and milk chocolate buttons, mini marshmallows topped with a rich choc fudge sauce drizzle and icing sugar', 'images/desserts/dessert2.png', 'images/thub_images/dessert2.png', 8),
(603, 'CHOC LAVA CAKE', 'The luscious gooey middle oozes with rich Chocolate. Each one is lovingly baked fresh in store.', 'images/desserts/dessert3.png', 'images/thub_images/dessert3.png', 5),
(604, 'DESSERT SAMPLER PACK', '12 Mini Dutch Pancakes, 2 Churros & 3 Choc Fudge Brownies with chocolate dipping sauce', 'images/desserts/dessert4.png', 'images/thub_images/dessert4.png', 10);

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `De_ID` int(255) NOT NULL,
  `De_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `De_Decriprion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `De_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `De_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`De_ID`, `De_Name`, `De_Decriprion`, `De_image`, `De_price`) VALUES
(501, 'COMBO 1', '1 REGULAR PIZZA + 4 PCS CHEESY GARLIC BREAD + 2 DRINKS', 'images/deals/deal1.png', 20),
(502, 'COMBO 2', '1 LARGE PIZZA + 1 DRINK', 'images/deals/deal2.png', 15),
(503, 'COMBO 3', '2 LARGE PIZZA + 8 PCS CHEESY GARLIC BREAD + 1 DRINKS', 'images/deals/deal3.png', 21),
(504, 'LEGEND COMBO ', '3 LARGE PIZZA + 6 PCS WINGS+ 8 PCS CHEESY GARLIC BREAD + 1 DRINKS', 'images/deals/deal4.png', 15);

-- --------------------------------------------------------

--
-- Table structure for table `desserts`
--

CREATE TABLE `desserts` (
  `DS_ID` int(10) NOT NULL,
  `DS_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DS_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DS_Decription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DS_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `desserts`
--

INSERT INTO `desserts` (`DS_ID`, `DS_Name`, `DS_image`, `DS_Decription`, `DS_price`) VALUES
(601, 'OVEN BAKED CHURROS', 'images/desserts/dessert1.png', '4 x oven baked Churros dusted with cinnamon sugar and served with a chocolate dipping sauce', 9),
(602, 'CHOCOHOLIC DESSERT PIZZA', 'images/desserts/dessert2.png', 'A decadent dessert pizza with a milk chocolate base , choc brownie chunks, white and milk chocolate buttons, mini marshmallows topped with a rich choc fudge sauce drizzle and icing sugar', 8),
(603, 'CHOC LAVA CAKE', 'images/desserts/dessert3.png', 'The luscious gooey middle oozes with rich Chocolate. Each one is lovingly baked fresh in store.', 5),
(604, 'DESSERT SAMPLER PACK', 'images/desserts/dessert4.png', '12 Mini Dutch Pancakes, 2 Churros & 3 Choc Fudge Brownies with chocolate dipping sauce', 10);

-- --------------------------------------------------------

--
-- Table structure for table `drinkshakes`
--

CREATE TABLE `drinkshakes` (
  `D_ID` int(5) NOT NULL,
  `D_Name` varchar(100) NOT NULL,
  `D_Decriprion` varchar(500) NOT NULL,
  `D_image` varchar(255) NOT NULL,
  `D_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drinkshakes`
--

INSERT INTO `drinkshakes` (`D_ID`, `D_Name`, `D_Decriprion`, `D_image`, `D_price`) VALUES
(401, 'Strawberry Malt ThickShake', 'Handcrafted Strawberry Malt Thickshake made with all natural ice cream, not soft serve. Made at -14 degrees for the thickest thickshake ever!', 'images/drinks/drink1.png', 4),
(402, 'Espresso ThickShake With Cream & Sauce', 'Handcrafted Salted Caramel Thickshake made with real all natural ice cream, not soft serve and topped with whipped cream and a salted caramel syrup swirl. Made at -14 degrees for the thickest thickshake ever!', 'images/drinks/drink2.png', 4),
(403, 'Salted Caramel ThickShake With Creame & Caramel Syrup', 'Handcrafted Salted Caramel Thickshake made with real all natural ice cream, not soft serve and topped with whipped cream and a salted caramel syrup swirl. Made at -14 degrees for the thickest thickshake ever!', 'images/drinks/drink3.png', 3.5),
(404, 'Malted Vanilla ThickShake With Cream & Malt Syrup', 'Handcrafted Traditional Malted Vanilla Thickshake made with real all natural ice cream, not soft serve and topped with whipped cream and a malt syrup swirl. Made at -14 degrees for the thickest thickshake ever!', 'images/drinks/drink4.png', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pizza`
--

CREATE TABLE `pizza` (
  `P_ID` int(5) NOT NULL,
  `P_Name` varchar(100) NOT NULL,
  `P_Description` varchar(500) NOT NULL,
  `P_image` varchar(255) NOT NULL,
  `P_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pizza`
--

INSERT INTO `pizza` (`P_ID`, `P_Name`, `P_Description`, `P_image`, `P_price`) VALUES
(101, 'CHICKEN, BACON & AVOCADO', 'Succulent seasoned chicken, Avocado, crispy rasher bacon, red onion topped with hollandaise sauce and spring onion.', 'images/pizza/pizza1.png', 12),
(102, 'CHEESY CHICKEN, BACON & CHORIZO', 'Succulent seasoned chicken, Spanish style chorizo, crispy rasher bacon, fire roasted peppers, red onion topped with lots of stretchy mozzarella.', 'images/pizza/pizza2.png', 12),
(103, 'VEGAN', 'Vegan Mozzarella, Avocado, fire roasted peppers, mushrooms, red onion, capsicum, olives topped with spring onion.', 'images/pizza/pizza3.png', 12),
(104, 'GLUTEN FREE', 'Succulent seasoned chicken, Avocado, crispy rasher bacon, red onion topped with hollandaise sauce and spring onion.', 'images/pizza/pizza4.png', 12),
(105, 'LOADED SUPREME', 'Ground beef, crispy rasher bacon, mushroom, pepperoni, Italian sausage, fresh baby spinach, smoked leg ham, pineapple, topped with oregano, tomato capsicum sauce & spring onion.', 'images/pizza/pizza5.png', 15);

-- --------------------------------------------------------

--
-- Table structure for table `sandwiches`
--

CREATE TABLE `sandwiches` (
  `SW_ID` int(5) NOT NULL,
  `SW_Name` varchar(100) NOT NULL,
  `SW_Description` varchar(500) NOT NULL,
  `SW_image` varchar(255) NOT NULL,
  `SW_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sandwiches`
--

INSERT INTO `sandwiches` (`SW_ID`, `SW_Name`, `SW_Description`, `SW_image`, `SW_price`) VALUES
(201, 'Ham & Cheese', 'Soft and crispy ciabatta generously filled with smoked leg ham, tangy ranch sauce and lots of tasty cheese.', 'images/sandwiches/sandwich1.png', 6),
(202, '6 Meat Sandwich', 'Soft and crispy ciabatta generously filled with pork & fennel sausage, pepperoni, crispy rasher bacon, ground beef, chorizo, ham, melted cheese and a smoky BBQ sauce.\r\n', 'images/sandwiches/sandwich2.png', 8),
(203, 'Chicken & Gravy', 'Soft and crispy ciabatta generously filled with chicken tenders, crispy rasher bacon, gravy & tasty cheese', 'images/sandwiches/sandwich3.png', 8),
(204, 'Chicken, Bacon & Avocado', 'Soft and crispy ciabatta generously filled with seasoned chicken, avocado, rasher bacon, cheese, spinach, spring onion and a tangy ranch sauce', 'images/sandwiches/sandwich4.png', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sides`
--

CREATE TABLE `sides` (
  `S_ID` int(5) NOT NULL,
  `S_Name` varchar(100) NOT NULL,
  `S_Decription` varchar(500) NOT NULL,
  `S_image` varchar(255) NOT NULL,
  `S_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sides`
--

INSERT INTO `sides` (`S_ID`, `S_Name`, `S_Decription`, `S_image`, `S_price`) VALUES
(301, 'Chunky Cut Chips & Aioli', 'Chunky cut chips served with aioli dipping sauce', 'images/sides/Chips.png', 5),
(302, 'BBQ Chicken Meatballs', '15 meatballs made with a tasty chicken mince & topped with a smoky Hickory BBQ sauce', 'images/sides/meatballs.png', 7.5),
(303, 'Cheesy Garlic Bread', 'Hot, cheesy, garlic deliciousness', 'images/sides/garlicbread.png', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Name` varchar(255) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Suburb` varchar(10) NOT NULL,
  `UserID` int(5) NOT NULL,
  `Profile Image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Name`, `Email`, `Password`, `Phone`, `Address`, `Suburb`, `UserID`, `Profile Image`) VALUES
('An Vo', 'ansafi385@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '', '', 5, ''),
('qwerty', 'hungnguyentran321@gmail.com1', 'e10adc3949ba59abbe56e057f20f883e', 0, '', '', 7, ''),
('', 'hungnguyentran321@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '', '', 14, ''),
('An Viet', 'ansafi456@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '', '', 15, ''),
('Hung Nguyen', 'hungnguyen12345@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '', '', 16, ''),
('Hung', 'hung999@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '', '', 17, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`De_ID`);

--
-- Indexes for table `desserts`
--
ALTER TABLE `desserts`
  ADD PRIMARY KEY (`DS_ID`);

--
-- Indexes for table `drinkshakes`
--
ALTER TABLE `drinkshakes`
  ADD PRIMARY KEY (`D_ID`);

--
-- Indexes for table `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`P_ID`);

--
-- Indexes for table `sandwiches`
--
ALTER TABLE `sandwiches`
  ADD PRIMARY KEY (`SW_ID`);

--
-- Indexes for table `sides`
--
ALTER TABLE `sides`
  ADD PRIMARY KEY (`S_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
