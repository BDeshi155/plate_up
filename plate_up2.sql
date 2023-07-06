-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2023 at 07:52 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plate_up2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `burgerking`
--

CREATE TABLE `burgerking` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `burgerking`
--

INSERT INTO `burgerking` (`id`, `item`, `price`) VALUES
(1, 'Whopper', 600),
(2, 'Chicken Fries', 250),
(3, 'Big King', 499),
(4, 'Bacon King', 699),
(5, 'Cheeseburger', 200),
(6, 'Double Cheeseburger', 230),
(7, 'Crispy Chicken Sandwich', 399),
(8, 'Spicy Chicken Sandwich', 449),
(9, 'Whopper Jr.', 300),
(10, 'French Fries', 70),
(11, 'Onion Rings', 100),
(12, 'Chicken Nuggets (10 piece)', 399),
(13, 'Hash Browns', 70),
(14, 'Soft Serve Ice Cream', 65),
(15, 'Coca-Cola', 25);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(20) NOT NULL,
  `quantity` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chatime`
--

CREATE TABLE `chatime` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chatime`
--

INSERT INTO `chatime` (`id`, `item`, `price`) VALUES
(1, 'Classic Milk Tea', 290),
(2, 'Pearl Milk Tea', 330),
(3, 'Taro Milk Tea', 350),
(4, 'Honeydew Milk Tea', 360),
(5, 'Matcha Red Bean Milk Tea', 380),
(6, 'Mango Green Tea', 330),
(7, 'Passionfruit Green Tea', 340),
(8, 'Strawberry Pudding Smoothie', 390),
(9, 'Chocolate Mousse Smoothie', 370),
(10, 'Mango Slush', 350),
(11, 'Lychee Yakult', 320),
(12, 'Wintermelon Lemonade', 310),
(13, 'Roasted Milk Tea', 350),
(14, 'Jasmine Green Tea', 300),
(15, 'Brown Sugar Bubble Milk', 380);

-- --------------------------------------------------------

--
-- Table structure for table `cheez`
--

CREATE TABLE `cheez` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cheez`
--

INSERT INTO `cheez` (`id`, `item`, `price`) VALUES
(1, 'Classic Margherita', 699),
(2, 'The Pepperonia', 849),
(3, 'All Bout the Shrooms', 849),
(4, 'Chicken Alfredo', 899),
(5, 'Bolognese', 150),
(6, 'Thai Pie', 280),
(7, 'The 4 Cheez', 1049),
(8, 'The SMG', 1199),
(9, 'Nagatastic BBQ', 1099),
(10, 'Hot Craby Prawnstar', 1099),
(11, 'Liquid Gold', 449),
(12, 'Spicy Sausage', 499),
(13, 'Cola', 50),
(14, 'Fanta', 50),
(15, 'Mountain Dew', 50);

-- --------------------------------------------------------

--
-- Table structure for table `chillox`
--

CREATE TABLE `chillox` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chillox`
--

INSERT INTO `chillox` (`id`, `item`, `price`) VALUES
(1, 'Beef/Chicken Burger', 180),
(2, 'Beef/Chicken Burger with chees', 210),
(3, 'Beef/Chicken Burger Smoky BBQ ', 700),
(4, 'Beef/Chicken Burger with Bacon', 350),
(5, 'Beef/Chicken Burger with Sausa', 400),
(6, 'Double Decker Beef/Chicken', 450),
(7, 'Pankha Wings', 550),
(8, 'Fish Tots', 500),
(9, 'Veggie Burger', 400),
(10, 'Caesar Salad', 350),
(11, 'Sprite', 250),
(12, 'Mountain Dew', 300),
(13, 'Pepsi', 250),
(14, 'French Fries', 350),
(15, 'Cold Coffee', 300);

-- --------------------------------------------------------

--
-- Table structure for table `chipotle`
--

CREATE TABLE `chipotle` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chipotle`
--

INSERT INTO `chipotle` (`id`, `item`, `price`) VALUES
(1, 'Burrito', 725),
(2, 'Bowl', 725),
(3, 'Tacos (3 pack)', 725),
(4, 'Salad', 300),
(5, 'Quesadilla', 600),
(6, 'Chips & Guacamole', 325),
(7, 'Chips & Salsa', 275),
(8, 'Barbacoa', 899),
(9, 'Carnitas', 899),
(10, 'Chicken', 500),
(11, 'Sofritas', 150),
(12, 'Steak', 320),
(13, 'Vegetarian', 450),
(14, 'White Rice', 180),
(15, 'Brown Rice', 180);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_driver`
--

CREATE TABLE `delivery_driver` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_status`
--

CREATE TABLE `delivery_status` (
  `id` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dominos`
--

CREATE TABLE `dominos` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dominos`
--

INSERT INTO `dominos` (`id`, `item`, `price`) VALUES
(1, 'Pepperoni', 210),
(2, 'BBQ Chicken', 279),
(3, 'Veggie', 390),
(4, 'Hawaiian', 299),
(5, 'Chicken Alfredo', 349),
(6, 'Margheritta', 250),
(7, 'Bread Sticks', 120),
(8, 'Boneless Chicken', 90),
(9, 'Chicken Wings', 160),
(10, 'Pasta', 20),
(11, 'Lava Cake', 20),
(12, 'Cookies', 20),
(13, 'CocaCola', 15),
(14, 'Sprite', 15),
(15, 'Fanta', 15);

-- --------------------------------------------------------

--
-- Table structure for table `dunkindonut`
--

CREATE TABLE `dunkindonut` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dunkindonut`
--

INSERT INTO `dunkindonut` (`id`, `item`, `price`) VALUES
(1, 'Glazed', 210),
(2, 'Choco ALL', 100),
(3, 'Coffee Roll', 130),
(4, 'Choco Butternut', 175),
(5, 'Chocolate Marble', 175),
(6, 'Double Chocolate', 180),
(7, 'Chocolate Eclair', 125),
(8, 'Speculoos Blast', 200),
(9, 'Iced Coffee', 150),
(10, 'Coffee', 90),
(11, 'Americano', 150),
(12, 'Macchiato', 150),
(13, 'Cappuccino', 150),
(14, 'Latte', 150),
(15, 'Iced Cappuccino', 150);

-- --------------------------------------------------------

--
-- Table structure for table `edencafe`
--

CREATE TABLE `edencafe` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `edencafe`
--

INSERT INTO `edencafe` (`id`, `item`, `price`) VALUES
(1, 'Grilled Salmon', 1100),
(2, 'Beef Tenderloin Steak', 1300),
(3, 'Chicken Piccata', 1200),
(4, 'Pesto Pasta', 900),
(5, 'Caesar Salad', 800),
(6, 'Mushroom Risotto', 1000),
(7, 'Caprese Panini', 700),
(8, 'Lemon Herb Roasted Chicken', 1200),
(9, 'Shrimp Scampi', 1300),
(10, 'Vegetable Lasagna', 1100),
(11, 'Fish and Chips', 1100),
(12, 'Mediterranean Platter', 1300),
(13, 'Lamb Chops', 1400),
(14, 'Roasted Vegetable Quinoa Bowl', 1000),
(15, 'Tiramisu', 900);

-- --------------------------------------------------------

--
-- Table structure for table `fishnco`
--

CREATE TABLE `fishnco` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fishnco`
--

INSERT INTO `fishnco` (`id`, `item`, `price`) VALUES
(1, 'Fish & Chips', 750),
(2, 'Grilled Salmon', 950),
(3, 'Lemon Butter Fish', 850),
(4, 'Seafood Platter', 1200),
(5, 'Prawn Aglio Olio', 850),
(6, 'Crab Cakes', 800),
(7, 'Fish Burger', 550),
(8, 'Fish Tacos', 600),
(9, 'Clam Chowder Soup', 400),
(10, 'Grilled Shrimp Skewers', 900),
(11, 'Seafood Paella', 1100),
(12, 'Cajun Fish', 800),
(13, 'Garlic Butter Prawns', 900),
(14, 'Smoked Salmon Salad', 700);

-- --------------------------------------------------------

--
-- Table structure for table `foodland`
--

CREATE TABLE `foodland` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foodland`
--

INSERT INTO `foodland` (`id`, `item`, `price`) VALUES
(1, 'Chicken Fried Rice', 400),
(2, 'Beef Chow Mein', 450),
(3, 'Fish Curry', 350),
(4, 'Paneer Tikka Masala', 500),
(5, 'Mutton Biryani', 600),
(6, 'Vegetable Pulao', 300),
(7, 'Shrimp Scampi', 550),
(8, 'Butter Chicken', 450),
(9, 'Beef Steak', 650),
(10, 'Grilled Salmon', 700),
(11, 'Vegetable Stir-Fry', 250),
(12, 'Chicken Shawarma', 350),
(13, 'Cheese Pizza', 400),
(14, 'Pasta Alfredo', 300),
(15, 'Club Sandwich', 350);

-- --------------------------------------------------------

--
-- Table structure for table `forestloungemenu`
--

CREATE TABLE `forestloungemenu` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forestloungemenu`
--

INSERT INTO `forestloungemenu` (`id`, `item`, `price`) VALUES
(1, 'Grilled Chicken', 350),
(2, 'Spaghetti Carbonara', 400),
(3, 'Margherita Pizza', 450),
(4, 'Beef Burger', 300),
(5, 'Fish and Chips', 500),
(6, 'Caesar Salad', 250),
(7, 'Vegetable Stir Fry', 200),
(8, 'Mushroom Risotto', 350),
(9, 'Chicken Alfredo', 400),
(10, 'BBQ Ribs', 450),
(11, 'Prawn Curry', 550),
(12, 'Paneer Tikka', 300),
(13, 'Lamb Biryani', 450),
(14, 'Vegetable Lasagna', 350),
(15, 'Tiramisu', 250);

-- --------------------------------------------------------

--
-- Table structure for table `herfy`
--

CREATE TABLE `herfy` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `herfy`
--

INSERT INTO `herfy` (`id`, `item`, `price`) VALUES
(1, 'Cheeseburger', 350),
(2, 'Chicken Fillet Sandwich', 300),
(3, 'Beef Burger', 400),
(4, 'Chicken Nuggets (6 pcs)', 200),
(5, 'Grilled Chicken Meal', 600),
(6, 'Mega Combo Meal', 900),
(7, 'Fish Fillet Sandwich', 350),
(8, 'Shawarma Sandwich', 250),
(9, 'Chicken Shawarma Platter', 500),
(10, 'Beef Shawarma Platter', 550),
(11, 'Chicken Tikka', 400),
(12, 'Beef Tikka', 450),
(13, 'Mixed Grill', 700),
(14, 'Chicken Caesar Salad', 350),
(15, 'Chicken Pasta', 400);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `first` varchar(20) NOT NULL,
  `last` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `number` bigint(20) NOT NULL,
  `CheckIn` date NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirmPassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `first`, `last`, `email`, `number`, `CheckIn`, `password`, `confirmPassword`) VALUES
(1, 'Reja', 'ul', 'pqr@gmail.com', 1912345677, '2023-04-01', 'qqq', 'qqq'),
(2, 'Rehan', 'Khan', 'rehan.khan@gmail.com', 1234567890, '2023-05-01', 'www', 'www'),
(3, 'Amir', 'Ahmed', 'amir.ahmed@gmail.com', 1234567890, '2023-05-01', 'www', 'www'),
(4, 'Saad', 'Ali', 'saad.ali@gmail.com', 5432109876, '2023-08-01', 'www', 'www'),
(5, 'Zain', 'Malik', 'zain.malik@gmail.com', 5432109876, '2023-08-01', 'www', 'www'),
(6, 'Hassan', 'Shah', 'hassan.shah@gmail.com', 7654321098, '2023-09-01', 'www', 'www');

-- --------------------------------------------------------

--
-- Table structure for table `kacchibhai`
--

CREATE TABLE `kacchibhai` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kacchibhai`
--

INSERT INTO `kacchibhai` (`id`, `item`, `price`) VALUES
(1, 'Kacchi Biriyani', 600),
(2, 'Beef Tehari', 300),
(3, 'Chicken Bhuna', 350),
(4, 'Morog Polao', 550),
(5, 'Mutton Korma', 650),
(6, 'Rezala', 400),
(7, 'Bhuna Khichuri', 250),
(8, 'Chicken Roast', 450),
(9, 'Beef Kala Bhuna', 380),
(10, 'Fish Fry', 200),
(11, 'Shorshe Ilish', 450),
(12, 'Mutton Tehari', 550),
(13, 'Beef Rezala', 400),
(14, 'Chapli Kebab', 320),
(15, 'Mutton Bhuna', 500);

-- --------------------------------------------------------

--
-- Table structure for table `kfc`
--

CREATE TABLE `kfc` (
  `id` int(11) NOT NULL,
  `item` varchar(20) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kfc`
--

INSERT INTO `kfc` (`id`, `item`, `price`) VALUES
(1, 'Tandoori Zinger', 399),
(2, 'Texas BBQ Zinger', 399),
(3, 'Moroccan Zinger', 399),
(4, 'Mexican Zinger', 399),
(5, 'Kashundi Zinger', 399),
(6, 'Crispy Chicken 1pcs', 159),
(7, 'Crispy Chicken 2pcs', 299),
(8, 'Crispy Chicken 3pcs', 458),
(9, 'Crispy Chicken 4pcs', 589),
(10, 'Hot Wings 6pcs', 299),
(11, 'Spicy Mayo', 29),
(12, 'Dynamite Mayo', 29),
(13, 'Mayo-1', 29),
(14, 'Mayo-2', 29),
(15, 'Mayo-3', 29);

-- --------------------------------------------------------

--
-- Table structure for table `kudos`
--

CREATE TABLE `kudos` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kudos`
--

INSERT INTO `kudos` (`id`, `item`, `price`) VALUES
(1, 'Classic Burger', 120),
(2, 'Chicken Sandwich', 350),
(3, 'Veggie Wrap', 230),
(4, 'Cheese Fries', 150),
(5, 'Onion Rings', 120),
(6, 'Milkshake', 180),
(7, 'Chocolate Brownie', 99),
(8, 'Caesar Salad', 300),
(9, 'BBQ Ribs', 1250),
(10, 'Grilled Salmon', 1125),
(11, 'Steak Dinner', 2000),
(12, 'Pasta Alfredo', 270),
(13, 'Margherita Pizza', 150),
(14, 'Garlic Bread', 300),
(15, 'Tiramisu', 349);

-- --------------------------------------------------------

--
-- Table structure for table `mcdonalds`
--

CREATE TABLE `mcdonalds` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mcdonalds`
--

INSERT INTO `mcdonalds` (`id`, `item`, `price`) VALUES
(1, 'Big Mac', 499),
(2, 'Quarter Pounder with Cheese', 449),
(3, 'Cheeseburger', 199),
(4, 'Hamburger', 179),
(5, 'McChicken', 349),
(6, 'Filet-O-Fish', 399),
(7, 'Chicken McNuggets (6 pieces)', 299),
(8, 'Chicken McNuggets (10 pieces)', 449),
(9, 'McChicken Deluxe', 479),
(10, 'Spicy McChicken', 399),
(11, 'McVeggie', 349),
(12, 'McFlurry', 249),
(13, 'Apple Pie', 199),
(14, 'Sundae', 229),
(15, 'French Fries (Medium)', 249);

-- --------------------------------------------------------

--
-- Table structure for table `nandos`
--

CREATE TABLE `nandos` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nandos`
--

INSERT INTO `nandos` (`id`, `item`, `price`) VALUES
(1, 'Peri-Peri Chicken', 650),
(2, 'Espetada', 750),
(3, 'Grilled Chicken Wrap', 450),
(4, 'Portuguese Salad', 350),
(5, 'Butterfly Chicken Burger', 550),
(6, 'Halloumi Skewers', 400),
(7, 'Quarter Chicken Meal', 600),
(8, 'Mozambican Coconut Curry', 700),
(9, 'Chicken Caesar Wrap', 500),
(10, 'Feta and Avocado Salad', 450),
(11, 'Chicken Wings', 350),
(12, 'Grilled Veggie Burger', 400),
(13, 'Spicy Rice', 200),
(14, 'Peri-Peri Fries', 250),
(15, 'Garlic Bread', 200);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `res_name` varchar(20) NOT NULL,
  `method` varchar(20) NOT NULL,
  `flat` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `total_products` varchar(100) NOT NULL,
  `total_price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `number`, `email`, `res_name`, `method`, `flat`, `street`, `total_products`, `total_price`) VALUES
(1, 'Reja', 1912345678, 'abc@gmail.com', '', 'cash on delivery', '45/46,Joginogor Lane', 'Wari', 'Tandoori Zinger (3) , Hot Wings 6pcs (1) , Mayo-3 (1) ', 329),
(2, 'Ishmam', 1912345679, 'xyz@gmail.com', '', 'cash on delivery', '45/46,Joginogor Lane', 'Wari', 'Tandoori Zinger (3) , Hot Wings 6pcs (1) , Mayo-3 (1) ', 329),
(3, 'Reja', 1912345678, 'xyz@gmail.com', 'kfc', 'cash on delivery', '45/46,Joginogor Lane', 'Wari', 'Texas BBQ Zinger (1) , Mexican Zinger (1) , Hot Wings 6pcs (1) ', 1097);

-- --------------------------------------------------------

--
-- Table structure for table `pizzahut`
--

CREATE TABLE `pizzahut` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pizzahut`
--

INSERT INTO `pizzahut` (`id`, `item`, `price`) VALUES
(1, 'Pepperoni Pizza', 940),
(2, 'Supreme Pizza', 980),
(3, 'Cheese Lovers Pizza', 920),
(4, 'Veggie Lovers Pizza', 850),
(5, 'BBQ Chicken Pizza', 950),
(6, 'Meat Lovers Pizza', 990),
(7, 'Margherita Pizza', 820),
(8, 'Hawaiian Pizza', 880),
(9, 'Mushroom Pizza', 870),
(10, 'Farmhouse Pizza', 900),
(11, 'Chicken Alfredo Pasta', 750),
(12, 'Spicy BBQ Wings (6 pieces)', 550),
(13, 'Garlic Breadsticks', 350),
(14, 'Caesar Salad', 380),
(15, 'Chocolate Brownie', 420);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `ID` int(11) NOT NULL,
  `first` varchar(20) NOT NULL,
  `last` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `number` bigint(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirmPassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`ID`, `first`, `last`, `email`, `number`, `password`, `confirmPassword`) VALUES
(1, 'Reja', 'ul', 'xyz@gmail.com', 1912345678, 'ggg', 'ggg'),
(2, 'Hasan Muhtasim', 'Ishmam', 'abc@gmail.com', 1912345679, 'aaa', 'aaa'),
(3, 'K', 'FC', 'kfc@gmail.com', 1912345676, '222', '222');

-- --------------------------------------------------------

--
-- Table structure for table `starbucks`
--

CREATE TABLE `starbucks` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `starbucks`
--

INSERT INTO `starbucks` (`id`, `item`, `price`) VALUES
(1, 'Caffè Latte', 399),
(2, 'Cappuccino', 429),
(3, 'Americano', 349),
(4, 'Espresso', 299),
(5, 'Mocha', 479),
(6, 'White Chocolate Mocha', 549),
(7, 'Caramel Macchiato', 479),
(8, 'Iced Coffee', 249),
(9, 'Frappuccino', 599),
(10, 'Matcha Green Tea Latte', 499),
(11, 'Chai Tea Latte', 479),
(12, 'Hot Chocolate', 399),
(13, 'Pumpkin Spice Latte', 499),
(14, 'Java Chip Frappuccino', 599),
(15, 'Caramel Frappuccino', 599);

-- --------------------------------------------------------

--
-- Table structure for table `steakhouse`
--

CREATE TABLE `steakhouse` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `steakhouse`
--

INSERT INTO `steakhouse` (`id`, `item`, `price`) VALUES
(1, 'Ribeye Steak', 2500),
(2, 'Filet Mignon', 2800),
(3, 'T-Bone Steak', 2200),
(4, 'New York Strip', 2300),
(5, 'Porterhouse Steak', 2700),
(6, 'Sirloin Steak', 2000),
(7, 'Prime Rib', 2400),
(8, 'Pepper Steak', 2100),
(9, 'Garlic Butter Steak', 1900),
(10, 'Mushroom Swiss Steak', 2000),
(11, 'BBQ Ribs', 1800),
(12, 'Grilled Salmon', 1600),
(13, 'Lobster Tail', 2500),
(14, 'Surf and Turf', 2800),
(15, 'Grilled Chicken Breast', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `subway`
--

CREATE TABLE `subway` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subway`
--

INSERT INTO `subway` (`id`, `item`, `price`) VALUES
(1, 'Italian B.M.T.', 650),
(2, 'Meatball Marinara', 599),
(3, 'Turkey Breast', 549),
(4, 'Chicken Teriyaki', 450),
(5, 'Veggie Delite', 350),
(6, 'Steak & Cheese', 700),
(7, 'Tuna', 400),
(8, 'Cold Cut Combo', 400),
(9, 'Spicy Italian', 750),
(10, 'Subway Club', 800),
(11, 'Roast Beef', 630),
(12, 'Oven Roasted Chicken', 630),
(13, 'Black Forest Ham', 549),
(14, 'Sweet Onion Chicken Teriyaki', 629),
(15, 'Buffalo Chicken', 629);

-- --------------------------------------------------------

--
-- Table structure for table `sultans_dine`
--

CREATE TABLE `sultans_dine` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sultans_dine`
--

INSERT INTO `sultans_dine` (`id`, `item`, `price`) VALUES
(1, 'Biryani', 450),
(2, 'Kebabs', 350),
(3, 'Chicken Tikka Masala', 550),
(4, 'Butter Chicken', 580),
(5, 'Palak Paneer', 420),
(6, 'Rogan Josh', 590),
(7, 'Seekh Kebab', 380),
(8, 'Dal Makhani', 350),
(9, 'Naan', 70),
(10, 'Chicken Biryani', 470),
(11, 'Mutton Biryani', 580),
(12, 'Paneer Tikka', 410),
(13, 'Gulab Jamun', 180),
(14, 'Rasmalai', 200),
(15, 'Mango Lassi', 220);

-- --------------------------------------------------------

--
-- Table structure for table `tacobell`
--

CREATE TABLE `tacobell` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tacobell`
--

INSERT INTO `tacobell` (`id`, `item`, `price`) VALUES
(1, 'Crunchy Taco', 119),
(2, 'Soft Taco', 119),
(3, 'Bean Burrito', 139),
(4, 'Beef Burrito', 190),
(5, 'Cheesy Gordita Crunch', 360),
(6, 'Quesarito', 340),
(7, 'Chalupa Supreme', 390),
(8, 'Mexican Pizza', 410),
(9, 'Nachos Supreme', 210),
(10, 'Chicken Quesadilla', 450),
(11, 'Fiesta Taco Salad', 700),
(12, 'Crunchwrap Supreme', 300),
(13, 'Cinnamon Twists', 140),
(14, 'Cinnabon Delights (4 pack)', 100),
(15, 'Baja Blast Mountain Dew', 70);

-- --------------------------------------------------------

--
-- Table structure for table `yumcha`
--

CREATE TABLE `yumcha` (
  `id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `yumcha`
--

INSERT INTO `yumcha` (`id`, `item`, `price`) VALUES
(1, 'Steamed Shrimp Dumplings', 250),
(2, 'Pork Siu Mai', 220),
(3, 'BBQ Pork Buns', 180),
(4, 'Chicken Feet', 200),
(5, 'Egg Tarts', 150),
(6, 'Sticky Rice in Lotus Leaf', 280),
(7, 'Turnip Cake', 190),
(8, 'Cheung Fun', 210),
(9, 'Radish Pastry', 180),
(10, 'Sesame Balls', 170),
(11, 'Shrimp Rice Rolls', 240),
(12, 'Beef Noodles', 270),
(13, 'Wonton Noodle Soup', 230),
(14, 'Shrimp Toast', 200),
(15, 'Fried Tofu Skin', 160);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `burgerking`
--
ALTER TABLE `burgerking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatime`
--
ALTER TABLE `chatime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cheez`
--
ALTER TABLE `cheez`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chillox`
--
ALTER TABLE `chillox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chipotle`
--
ALTER TABLE `chipotle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_driver`
--
ALTER TABLE `delivery_driver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_status`
--
ALTER TABLE `delivery_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dominos`
--
ALTER TABLE `dominos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dunkindonut`
--
ALTER TABLE `dunkindonut`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edencafe`
--
ALTER TABLE `edencafe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fishnco`
--
ALTER TABLE `fishnco`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodland`
--
ALTER TABLE `foodland`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forestloungemenu`
--
ALTER TABLE `forestloungemenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `herfy`
--
ALTER TABLE `herfy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kacchibhai`
--
ALTER TABLE `kacchibhai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kfc`
--
ALTER TABLE `kfc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kudos`
--
ALTER TABLE `kudos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcdonalds`
--
ALTER TABLE `mcdonalds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nandos`
--
ALTER TABLE `nandos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pizzahut`
--
ALTER TABLE `pizzahut`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `starbucks`
--
ALTER TABLE `starbucks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `steakhouse`
--
ALTER TABLE `steakhouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subway`
--
ALTER TABLE `subway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sultans_dine`
--
ALTER TABLE `sultans_dine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tacobell`
--
ALTER TABLE `tacobell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yumcha`
--
ALTER TABLE `yumcha`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `burgerking`
--
ALTER TABLE `burgerking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chatime`
--
ALTER TABLE `chatime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cheez`
--
ALTER TABLE `cheez`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `chillox`
--
ALTER TABLE `chillox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `chipotle`
--
ALTER TABLE `chipotle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_driver`
--
ALTER TABLE `delivery_driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_status`
--
ALTER TABLE `delivery_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dominos`
--
ALTER TABLE `dominos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dunkindonut`
--
ALTER TABLE `dunkindonut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `edencafe`
--
ALTER TABLE `edencafe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `fishnco`
--
ALTER TABLE `fishnco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `foodland`
--
ALTER TABLE `foodland`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `forestloungemenu`
--
ALTER TABLE `forestloungemenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `herfy`
--
ALTER TABLE `herfy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kacchibhai`
--
ALTER TABLE `kacchibhai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kfc`
--
ALTER TABLE `kfc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kudos`
--
ALTER TABLE `kudos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mcdonalds`
--
ALTER TABLE `mcdonalds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nandos`
--
ALTER TABLE `nandos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pizzahut`
--
ALTER TABLE `pizzahut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `starbucks`
--
ALTER TABLE `starbucks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `steakhouse`
--
ALTER TABLE `steakhouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subway`
--
ALTER TABLE `subway`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sultans_dine`
--
ALTER TABLE `sultans_dine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tacobell`
--
ALTER TABLE `tacobell`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `yumcha`
--
ALTER TABLE `yumcha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
