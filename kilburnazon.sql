-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 06, 2024 at 02:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Kilburnazon`
--

-- --------------------------------------------------------

--
-- Table structure for table `Address`
--

CREATE TABLE `Address` (
  `address_id` int(11) NOT NULL,
  `address_line_one` varchar(255) NOT NULL,
  `address_line_two` varchar(255) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `post_code` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Address`
--

INSERT INTO `Address` (`address_id`, `address_line_one`, `address_line_two`, `country`, `post_code`) VALUES
(1, '661 Gale Road', NULL, NULL, NULL),
(2, '94695 Oak Valley Drive', NULL, NULL, NULL),
(3, '2 Sunfield Parkway', NULL, NULL, NULL),
(4, '4 Bay Street', NULL, NULL, NULL),
(5, '86 Fairview Drive', NULL, NULL, NULL),
(6, '25218 Eastlawn Terrace', NULL, NULL, NULL),
(7, '534 Moulton Avenue', NULL, NULL, NULL),
(8, '75631 Hazelcrest Court', NULL, NULL, NULL),
(9, '462 Westerfield Road', NULL, NULL, NULL),
(10, '21917 Forest Place', NULL, NULL, NULL),
(11, '2 Waubesa Terrace', NULL, NULL, NULL),
(12, '29916 Elmside Center', NULL, NULL, NULL),
(13, '424 Nancy Terrace', NULL, NULL, NULL),
(14, '36 Fordem Way', NULL, NULL, NULL),
(15, '0488 Michigan Avenue', NULL, NULL, NULL),
(16, '1 Corry Court', NULL, NULL, NULL),
(17, '85093 Stuart Point', NULL, NULL, NULL),
(18, '56 John Wall Point', NULL, NULL, NULL),
(19, '51060 Anderson Drive', NULL, NULL, NULL),
(20, '7244 Northland Alley', NULL, NULL, NULL),
(21, '0 Artisan Road', NULL, NULL, NULL),
(22, '412 North Street', NULL, NULL, NULL),
(23, '39695 Sunbrook Plaza', NULL, NULL, NULL),
(24, '2 North Way', NULL, NULL, NULL),
(25, '7 Crownhardt Plaza', NULL, NULL, NULL),
(26, '65790 Buell Plaza', NULL, NULL, NULL),
(27, '18 Hauk Place', NULL, NULL, NULL),
(28, '2337 Schurz Park', NULL, NULL, NULL),
(29, '906 Menomonie Circle', NULL, NULL, NULL),
(30, '81047 Summerview Trail', NULL, NULL, NULL),
(31, '895 David Alley', NULL, NULL, NULL),
(32, '82787 Rowland Junction', NULL, NULL, NULL),
(33, '7747 Butternut Crossing', NULL, NULL, NULL),
(34, '48 Buhler Hill', NULL, NULL, NULL),
(35, '49691 Forest Place', NULL, NULL, NULL),
(36, '484 Scoville Avenue', NULL, NULL, NULL),
(37, '4 Armistice Place', NULL, NULL, NULL),
(38, '4 Bartillon Circle', NULL, NULL, NULL),
(39, '1846 Eagan Center', NULL, NULL, NULL),
(40, '0 West Crossing', NULL, NULL, NULL),
(41, '25117 Waubesa Park', NULL, NULL, NULL),
(42, '55 Spaight Circle', NULL, NULL, NULL),
(43, '855 Corben Plaza', NULL, NULL, NULL),
(44, '8991 Gerald Crossing', NULL, NULL, NULL),
(45, '04195 Gale Plaza', NULL, NULL, NULL),
(46, '79171 Luster Drive', NULL, NULL, NULL),
(47, '3 Forest Dale Drive', NULL, NULL, NULL),
(48, '13 Ridgeview Street', NULL, NULL, NULL),
(49, '7640 Hauk Trail', NULL, NULL, NULL),
(50, '746 Carey Hill', NULL, NULL, NULL),
(51, '4172 Melvin Street', NULL, NULL, NULL),
(52, '23476 Fair Oaks Crossing', NULL, NULL, NULL),
(53, '6 Toban Court', NULL, NULL, NULL),
(54, '1 Kensington Pass', NULL, NULL, NULL),
(55, '11 Rockefeller Drive', NULL, NULL, NULL),
(56, '212 Mccormick Way', NULL, NULL, NULL),
(57, '6 Quincy Street', NULL, NULL, NULL),
(58, '29 Novick Plaza', NULL, NULL, NULL),
(59, '6 Bunker Hill Plaza', NULL, NULL, NULL),
(60, '469 Clyde Gallagher Way', NULL, NULL, NULL),
(61, '5941 Everett Road', NULL, NULL, NULL),
(62, '85503 Dahle Circle', NULL, NULL, NULL),
(63, '52 Donald Terrace', NULL, NULL, NULL),
(64, '640 Fieldstone Crossing', NULL, NULL, NULL),
(65, '29334 Veith Alley', NULL, NULL, NULL),
(66, '06243 Trailsway Hill', NULL, NULL, NULL),
(67, '9 Forest Run Trail', NULL, NULL, NULL),
(68, '75495 Mendota Drive', NULL, NULL, NULL),
(69, '19 Utah Junction', NULL, NULL, NULL),
(70, '83055 5th Junction', NULL, NULL, NULL),
(71, '13 Miller Plaza', NULL, NULL, NULL),
(72, '555 Chinook Circle', NULL, NULL, NULL),
(73, '2825 Merry Parkway', NULL, NULL, NULL),
(74, '880 Ridgeview Circle', NULL, NULL, NULL),
(75, '506 Arkansas Trail', NULL, NULL, NULL),
(76, '83346 Montana Crossing', NULL, NULL, NULL),
(77, '9 Northland Avenue', NULL, NULL, NULL),
(78, '3485 Farwell Avenue', NULL, NULL, NULL),
(79, '8470 Dorton Pass', NULL, NULL, NULL),
(80, '54841 Eastlawn Alley', NULL, NULL, NULL),
(81, '10 North Way', NULL, NULL, NULL),
(82, '1543 4th Trail', NULL, NULL, NULL),
(83, '5 Jay Street', NULL, NULL, NULL),
(84, '3489 Sunbrook Avenue', NULL, NULL, NULL),
(85, '4885 Southridge Street', NULL, NULL, NULL),
(86, '408 Meadow Valley Street', NULL, NULL, NULL),
(87, '9 Golf Drive', NULL, NULL, NULL),
(88, '7118 Del Mar Terrace', NULL, NULL, NULL),
(89, '193 Village Green Hill', NULL, NULL, NULL),
(90, '2191 Eagle Crest Road', NULL, NULL, NULL),
(91, '03738 Prairie Rose Road', NULL, NULL, NULL),
(92, '89 Vermont Parkway', NULL, NULL, NULL),
(93, '556 Merchant Drive', NULL, NULL, NULL),
(94, '6 Ridgeway Place', NULL, NULL, NULL),
(95, '1538 Linden Way', NULL, NULL, NULL),
(96, '0365 Ludington Terrace', NULL, NULL, NULL),
(97, '12 Holmberg Alley', NULL, NULL, NULL),
(98, '7183 Huxley Street', NULL, NULL, NULL),
(99, '1378 Caliangt Way', NULL, NULL, NULL),
(100, '98 Acker Road', NULL, NULL, NULL),
(101, '68 Mcbride Road', NULL, NULL, NULL),
(102, '70 Delaware Street', NULL, NULL, NULL),
(103, '3017 Arapahoe Center', NULL, NULL, NULL),
(104, '21 Monterey Drive', NULL, NULL, NULL),
(105, '44 Dakota Avenue', NULL, NULL, NULL),
(106, '232 Colorado Trail', NULL, NULL, NULL),
(107, '9 Claremont Plaza', NULL, NULL, NULL),
(108, '6945 Logan Street', NULL, NULL, NULL),
(109, '1586 Gina Avenue', NULL, NULL, NULL),
(110, '6286 Burrows Plaza', NULL, NULL, NULL),
(111, '22104 Sundown Hill', NULL, NULL, NULL),
(112, '615 Anhalt Circle', NULL, NULL, NULL),
(113, '66619 Ruskin Avenue', NULL, NULL, NULL),
(114, '797 Reinke Park', NULL, NULL, NULL),
(115, '15 Meadow Vale Drive', NULL, NULL, NULL),
(116, '32022 Haas Pass', NULL, NULL, NULL),
(117, '64489 Luster Circle', NULL, NULL, NULL),
(118, '2523 Mcbride Avenue', NULL, NULL, NULL),
(119, '42818 Farragut Park', NULL, NULL, NULL),
(120, '2597 Hintze Court', NULL, NULL, NULL),
(121, '27 Sunnyside Parkway', NULL, NULL, NULL),
(122, '51052 Hazelcrest Pass', NULL, NULL, NULL),
(123, '00426 Erie Place', NULL, NULL, NULL),
(124, '1 Killdeer Parkway', NULL, NULL, NULL),
(125, '1 Holy Cross Alley', NULL, NULL, NULL),
(126, '6 Cardinal Pass', NULL, NULL, NULL),
(127, '3 Dwight Hill', NULL, NULL, NULL),
(128, '1 Ridgeview Court', NULL, NULL, NULL),
(129, '494 Grim Alley', NULL, NULL, NULL),
(130, '60618 Fremont Crossing', NULL, NULL, NULL),
(131, '581 Pepper Wood Lane', NULL, NULL, NULL),
(132, '0 Melvin Plaza', NULL, NULL, NULL),
(133, '6 Red Cloud Plaza', NULL, NULL, NULL),
(134, '56692 Esker Plaza', NULL, NULL, NULL),
(135, '5 Anderson Center', NULL, NULL, NULL),
(136, '1364 Hermina Alley', NULL, NULL, NULL),
(137, '446 Springs Pass', NULL, NULL, NULL),
(138, '84068 Sycamore Trail', NULL, NULL, NULL),
(139, '6902 La Follette Pass', NULL, NULL, NULL),
(140, '43037 Little Fleur Road', NULL, NULL, NULL),
(141, '2269 Marquette Terrace', NULL, NULL, NULL),
(142, '894 Stoughton Way', NULL, NULL, NULL),
(143, '13653 Granby Pass', NULL, NULL, NULL),
(144, '29800 Main Alley', NULL, NULL, NULL),
(145, '5604 Chinook Hill', NULL, NULL, NULL),
(146, '42 Thierer Center', NULL, NULL, NULL),
(147, '820 Graceland Place', NULL, NULL, NULL),
(148, '94 Ruskin Street', NULL, NULL, NULL),
(149, '70 Farragut Lane', NULL, NULL, NULL),
(150, '3 Beilfuss Trail', NULL, NULL, NULL),
(151, '200 Delladonna Terrace', NULL, NULL, NULL),
(152, '2816 Florence Crossing', NULL, NULL, NULL),
(153, '84332 Oak Plaza', NULL, NULL, NULL),
(154, '057 Dixon Park', NULL, NULL, NULL),
(155, '4323 Vernon Lane', NULL, NULL, NULL),
(156, '25 Arkansas Trail', NULL, NULL, NULL),
(157, '903 Claremont Street', NULL, NULL, NULL),
(158, '679 Brown Hill', NULL, NULL, NULL),
(159, '22 Aberg Trail', NULL, NULL, NULL),
(160, '5347 Vermont Parkway', NULL, NULL, NULL),
(161, '72342 Swallow Drive', NULL, NULL, NULL),
(162, '227 Green Ridge Junction', NULL, NULL, NULL),
(163, '87 Comanche Trail', NULL, NULL, NULL),
(164, '964 Fordem Drive', NULL, NULL, NULL),
(165, '26 Bay Court', NULL, NULL, NULL),
(166, '47 Welch Way', NULL, NULL, NULL),
(167, '70267 Hallows Plaza', NULL, NULL, NULL),
(168, '73746 Commercial Pass', NULL, NULL, NULL),
(169, '7 Dorton Way', NULL, NULL, NULL),
(170, '263 Old Gate Road', NULL, NULL, NULL),
(171, '19713 Jenna Trail', NULL, NULL, NULL),
(172, '1 Aberg Road', NULL, NULL, NULL),
(173, '8902 Eastlawn Court', NULL, NULL, NULL),
(174, '71746 Division Court', NULL, NULL, NULL),
(175, '695 Mariners Cove Court', NULL, NULL, NULL),
(176, '7 Corben Road', NULL, NULL, NULL),
(177, '210 Lake View Pass', NULL, NULL, NULL),
(178, '366 Eagle Crest Park', NULL, NULL, NULL),
(179, '0773 Del Mar Place', NULL, NULL, NULL),
(180, '7 Comanche Hill', NULL, NULL, NULL),
(181, '02657 Summit Place', NULL, NULL, NULL),
(182, '81 Mallard Alley', NULL, NULL, NULL),
(183, '1448 Springview Point', NULL, NULL, NULL),
(184, '85018 Bluejay Way', NULL, NULL, NULL),
(185, '8295 Milwaukee Junction', NULL, NULL, NULL),
(186, '9456 Charing Cross Parkway', NULL, NULL, NULL),
(187, '940 Green Ridge Crossing', NULL, NULL, NULL),
(188, '147 Clarendon Lane', NULL, NULL, NULL),
(189, '03 Monument Trail', NULL, NULL, NULL),
(190, '8 Canary Terrace', NULL, NULL, NULL),
(191, '2 Columbus Terrace', NULL, NULL, NULL),
(192, '77241 Arapahoe Court', NULL, NULL, NULL),
(193, '20943 Everett Park', NULL, NULL, NULL),
(194, '531 Hoard Place', NULL, NULL, NULL),
(195, '700 Harper Alley', NULL, NULL, NULL),
(196, '23483 Clove Circle', NULL, NULL, NULL),
(256, 'Nurseries Rd, Baillieston', 'Glasgow', 'Scotland', 'G69 6UL'),
(257, 'Musgrave Channel Rd', 'Belfast', 'Northern Ireland', 'BT3'),
(258, 'Burnside House, Cambridge Rd', 'Middlesbrough', 'England', 'TS3 8AG'),
(259, 'Kilburn Building, Oxford Rd', 'Manchester', 'England', 'M13 9PL'),
(260, '12 Navigation St', 'Leicester', 'England', 'LE1 3UR'),
(261, 'Lewis Building, 35 Bull St', 'Birmingham', 'England', 'B4 6AF'),
(262, 'Wentloog Corporate Park, Wentloog Ave', 'Cardiff', 'Wales', 'CF3 2ER'),
(263, 'Broadgate Tower, 201 Bishopsgate', 'London', 'England', 'EC2M 3AB'),
(264, 'Unit 3 Filmer Way, Marsh Barton', 'Exeter', 'England', 'EX2 8YX'),
(324, '127 throguh', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Answer`
--

CREATE TABLE `Answer` (
  `answer_id` int(11) NOT NULL,
  `answer_text` text DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Area`
--

CREATE TABLE `Area` (
  `area_id` int(11) NOT NULL,
  `county` varchar(20) NOT NULL,
  `country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ContactInformation`
--

CREATE TABLE `ContactInformation` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `customer_id` int(11) NOT NULL,
  `order_count` int(11) NOT NULL,
  `purchase_history` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CustomerOrder`
--

CREATE TABLE `CustomerOrder` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `uniq_id` int(11) NOT NULL,
  `delivery_date` date NOT NULL,
  `delivery_status` enum('Pending','Processed','Shipped','In Transit','Out for Delivery','Delivered','Cancelled','Returned') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE `Department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`department_id`, `department_name`, `description`, `manager_id`) VALUES
(1, 'Executive', NULL, 11123211),
(2, 'Finance', NULL, 11226496),
(3, 'Marketing', NULL, 11224403),
(4, 'Operations', NULL, 11229804),
(5, 'Technology', NULL, 11223214);

-- --------------------------------------------------------

--
-- Table structure for table `DistributionCentre`
--

CREATE TABLE `DistributionCentre` (
  `centre_id` int(11) NOT NULL,
  `centre_name` varchar(100) DEFAULT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Driver`
--

CREATE TABLE `Driver` (
  `employee_id` int(11) NOT NULL,
  `licence_number` varchar(16) NOT NULL,
  `driving_hours_logged` int(11) DEFAULT 0,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emergencycontact`
--

CREATE TABLE `emergencycontact` (
  `employee_id` int(11) NOT NULL,
  `emergency_name` varchar(100) DEFAULT NULL,
  `emergency_relationship` varchar(50) DEFAULT NULL,
  `emergency_phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emergencycontact`
--

INSERT INTO `emergencycontact` (`employee_id`, `emergency_name`, `emergency_relationship`, `emergency_phone`) VALUES
(1221265, '', '', '07070 997812'),
(1221452, 'Ella Huygen', '', '07527 612710'),
(1221709, 'Aigneis Mollatt', 'Husband', '07136 161512'),
(1221792, 'Jerri Allan', 'Husband', ''),
(1221832, 'Brantley Zanetti', '', '07889 556088'),
(1221908, 'Adoree Tomkies', 'Boyfriend', '07083 955300'),
(11123211, 'Stanislas Tunnow', 'Wife', '07208 300969'),
(11214682, 'Pittem Kare', 'Wife', ''),
(11223214, 'Agosto Hoggan', 'Boyfriend', '07760 801643'),
(11224403, '', 'Civil Partner', '07279 090043'),
(11226496, '', 'Boyfriend', '07786 830672'),
(11229804, 'Karlens Kilfether', '', '07770 850 516'),
(12110062, 'Briant Tall', 'Girlfriend', ''),
(12111088, '', '', '07776 617476'),
(12111522, 'Isador Struttman', 'Girlfriend', '07228 700712'),
(12112639, 'Stanly Grindell', 'Wife', '07325 756690'),
(12112712, 'Elsworth Roskruge', 'Wife', '07301 166168'),
(12112750, 'Jone Phelp', 'Wife', '07727 912036'),
(12113642, 'Jaynell Sprey', 'Girlfriend', '07997 333416'),
(12113666, '', 'Civil Partner', '07749 087584'),
(12114168, 'Danette Dines', '', '07777 784214'),
(12116288, 'Zeke Vennings', 'Wife', '07647 152752'),
(12116601, 'Illa O\'Hanley', 'Husband', '07632 770322'),
(12118412, 'Chrysa Stodd', 'Husband', '07196 158363'),
(12211065, 'Vittorio Deacock', 'Father', '07635 422929'),
(12211197, 'Mitchell Slessar', 'Wife', '07217 353647'),
(12211317, '', 'Wife', '07764 434396'),
(12211356, 'Elmer Viccars', '', '07734 615318'),
(12211384, '', 'Mother', '07831 106222'),
(12211435, 'Hobey Couchman', '', '07765 987470'),
(12211587, 'Saudra Cuthbertson', '', '07280 447664'),
(12211691, '', 'Civil Partner', '07586 267442'),
(12211861, 'Vernice Perrycost', 'Mother', '07705 656653'),
(12212092, '', '', ''),
(12212102, 'Cory Ioselevich', 'Civil Partner', ''),
(12212104, '', '', '07521 164356'),
(12212133, 'Annmaria McMorran', 'Father', '07995 987135'),
(12212155, '', 'Husband', ''),
(12212183, '', 'Husband', '07792 581415'),
(12212299, 'Wells Zemler', '', '07851 839533'),
(12212488, 'Gardner Brastead', 'Husband', '07256 179974'),
(12212691, 'Cullan Mollitt', '', '07691 319082'),
(12212751, 'Rosalynd Robet', 'Civil Partner', '07295 498242'),
(12212803, 'Nataniel Denman', 'Boyfriend', '07551 879062'),
(12212831, 'Alica Smewings', 'Mother', ''),
(12212901, 'Veda Mapson', 'Wife', ''),
(12212982, 'Patricio Speechly', 'Civil Partner', '07817 587038'),
(12212991, 'Bob Polin', 'Boyfriend', '07684 634429'),
(12213124, 'Mellisa Warriner', '', '07624 054614'),
(12213338, 'Erasmus Franchyonok', '', '07046 104357'),
(12213491, 'Arlene de Castelain', 'Mother', '07369 082498'),
(12213598, 'Marjy Widdison', '', ''),
(12213724, 'Kimbra Forman', 'Wife', ''),
(12213809, 'Cody Trymme', 'Girlfriend', '07148 668953'),
(12213841, 'Dory Skynner', 'Boyfriend', '07641 909987'),
(12213973, 'Esteban McDill', 'Civil Partner', '07812 005920'),
(12213974, 'Nikolai Agiolfinger', 'Girlfriend', '07169 431350'),
(12213983, 'Reamonn Daleman', '', '07866 713818'),
(12214007, 'Michel Archanbault', '', ''),
(12214028, 'Malory Garrals', 'Father', '07383 324090'),
(12214048, 'Bryanty Janjusevic', 'Boyfriend', '07167 846379'),
(12214105, 'Amii De Simone', 'Boyfriend', '07735 915033'),
(12214121, 'Gaylor McMurray', 'Boyfriend', '07092 071016'),
(12214152, 'Marcus Demkowicz', 'Father', ''),
(12214303, '', 'Wife', '07951 197373'),
(12214418, '', 'Civil Partner', '07040 348788'),
(12214573, 'Liliane Spirit', 'Girlfriend', '07180 069610'),
(12214750, 'Bonnee Parade', 'Boyfriend', '07150 674848'),
(12214822, 'Orran Dummigan', 'Father', '07769 506815'),
(12215160, '', 'Father', ''),
(12215254, 'Hussein Gurg', 'Husband', '07657 688119'),
(12215263, '', 'Boyfriend', '07528 372445'),
(12215349, 'Bendicty Jenney', '', '07335 479379'),
(12215479, '', 'Wife', '07866 056882'),
(12215484, 'Aurel Byles', 'Mother', '07371 440337'),
(12215504, 'Powell Haszard', 'Wife', '07843 627553'),
(12215537, '', 'Girlfriend', '07925 226446'),
(12215562, 'Riannon Hedgeley', 'Girlfriend', '07416 475697'),
(12215594, '', 'Boyfriend', '07140 397605'),
(12215734, 'Quillan Cotelard', '', '07402 789089'),
(12215785, 'Brose Bewsey', 'Civil Partner', '07551 210971'),
(12215805, '', 'Boyfriend', ''),
(12215877, 'Beltran Blunkett', '', '07615 215737'),
(12215968, 'Selena Gilliat', 'Girlfriend', '07459 397115'),
(12216093, 'Donalt Volcker', '', '07558 160444'),
(12216138, 'Hilliary Cullingford', '', '07663 787888'),
(12216285, 'Worth Dearn', 'Husband', '07104 872801'),
(12216342, '', 'Mother', '07038 288225'),
(12217046, 'Marrilee Gainsford', 'Father', '07838 245506'),
(12217234, 'Judi Scanlon', 'Civil Partner', '07764 252550'),
(12217291, 'Hebert Learmond', 'Husband', '07730 757373'),
(12217385, 'Roma Getcliff', 'Husband', '07770 964810'),
(12217466, 'Rog Redman', 'Wife', '07596 559644'),
(12217623, 'Cal Maybey', 'Civil Partner', '07126 482408'),
(12217795, 'Angy Recke', 'Mother', '07027 376702'),
(12217867, 'Dorise Rait', 'Father', '07004 169110'),
(12217876, 'Ole Habard', 'Father', '07385 115626'),
(12218012, '', '', '07571 099273'),
(12218053, 'Pierrette Renvoise', 'Wife', ''),
(12218242, 'Frazier Lob', 'Boyfriend', '07803 263257'),
(12218688, 'Katie Pryor', '', '07663 548014'),
(12218788, 'Elonore Hair', 'Father', '07428 928875'),
(12218834, 'Humfrey Easbie', 'Father', ''),
(12218854, 'Susan Steeples', 'Girlfriend', '07134 753781'),
(12218878, 'Melissa Lerer', 'Boyfriend', ''),
(12218960, 'Carmine Stickel', 'Boyfriend', ''),
(12219024, 'Kelley Porrett', 'Husband', '07333 032436'),
(12219175, 'Andrej Ratke', '', '07715 401737'),
(12219204, 'Tisha Wycliff', 'Civil Partner', ''),
(12219325, '', '', ''),
(12219474, '', 'Civil Partner', '07773 365110'),
(12219510, 'Francine Marzello', 'Father', '07244 052918'),
(12219550, 'Arvy Covely', 'Girlfriend', '07146 735902'),
(12219584, 'Melesa Raoult', 'Father', '07920 910745'),
(12219595, 'Claus Starking', '', '07947 350202'),
(12219646, 'Louie Dommett', '', ''),
(12219701, 'Jordanna Buxsey', 'Mother', '07756 130401'),
(12219779, 'Gloriana Huckell', '', '07502 956122'),
(12311037, 'Leora Brownstein', 'Girlfriend', '07681 639640'),
(12311055, 'Raymond Palatini', 'Husband', ''),
(12311153, 'Quintus Battelle', 'Husband', '07478 793423'),
(12311581, '', 'Husband', ''),
(12311667, '', 'Mother', ''),
(12311703, 'Sansone Majury', 'Wife', '07750 314774'),
(12312622, 'Tedd Elcott', 'Husband', '07929 076995'),
(12312658, 'Orsola Philip', '', '07476 651024'),
(12312661, 'Barclay Whitehall', 'Girlfriend', '07935 195747'),
(12312718, 'Adiana Calveley', '', '07013 385409'),
(12313264, '', '', '07518 048416'),
(12313366, '', 'Boyfriend', ''),
(12313725, 'Gilbertina Glaisner', 'Girlfriend', '07482 265277'),
(12313980, 'Cale Aspital', '', '07150 096722'),
(12314042, '', 'Mother', ''),
(12314327, 'Rice Skentelbury', 'Father', '07208 447376'),
(12314528, '', 'Wife', '07870 741081'),
(12314667, '', '', ''),
(12315187, 'Keane Ales0', 'Civil Partner', '07707 013055'),
(12315752, 'Natasha Santoro', '', '07084 119115'),
(12315825, 'Geordie Lyall', 'Girlfriend', '07306 693225'),
(12315928, 'Derrek Gladdin', 'Civil Partner', '07860 628735'),
(12316053, '', 'Mother', '07794 304300'),
(12316237, 'Isidor Hillan', '', '07722 676666'),
(12316925, 'Cyrill Ismirnioglou', 'Husband', '07841 597997'),
(12317808, 'Abbe Needs', 'Wife', ''),
(12317934, 'Gloria Highwood', 'Boyfriend', '07196 818911'),
(12318662, 'Afton Walden', '', '07039 917113'),
(12319513, 'Bettina Evanson', 'Girlfriend', '07334 622208'),
(12319914, 'Shaine Olsson', '', '07512 967997'),
(13110482, 'Hayward Norley', 'Mother', '07832 036596'),
(13111738, '', 'Boyfriend', '07862 622159'),
(13117262, 'Marylynne Jonsson', 'Mother', '07437 831717'),
(13211973, 'Kienan Killeley', 'Father', ''),
(13212738, 'Jenica McGrudder', 'Girlfriend', '07963 860510'),
(14111094, '', 'Husband', '07183 143586'),
(14113626, 'Tabbie Gilphillan', '', '07678 551130'),
(14118236, '', 'Boyfriend', ''),
(14119372, 'Doria Johanchon', 'Civil Partner', '07036 960338'),
(14212158, 'Minda Ferrillo', 'Mother', '07056 710360'),
(14213503, 'Aluin Humbell', 'Mother', ''),
(14216011, '', 'Mother', '07532 858225'),
(14216103, 'Dacey Chasmoor', 'Mother', '07780 371203'),
(14218309, 'Brianna Harlock', 'Husband', '07181 235352'),
(14219116, '', 'Girlfriend', '07527 844139'),
(14311409, 'Viola Ferrario', 'Girlfriend', '07717 776894'),
(14311984, 'Dmitri Cranna', 'Husband', ''),
(14312012, 'Elita Pohls', 'Civil Partner', ''),
(14312778, 'Fernande Struthers', 'Father', '07699 818669'),
(14315369, 'Danette Costi', '', '07997 748914'),
(14316158, 'Denny Nicolson', 'Wife', '07123 801554'),
(14316558, 'Daria Menichillo', '', '07373 825339'),
(14319195, 'Natalina Ollis', '', ''),
(14319749, '', 'Mother', ''),
(14319953, 'Calypso Mapston', '', '07608 461696'),
(15111844, 'Artemus Gile', 'Wife', '07077 101937'),
(15112846, 'Livvy Shingles', 'Wife', ''),
(15113827, 'Kassi Flay', 'Father', '07204 608582'),
(15114920, '', '', ''),
(15118902, 'Tull North', '', '07082 174879'),
(15119246, 'Brigitta Greep', '', '07079 952137'),
(15119273, 'Ronda Mabley', 'Wife', '07342 424970'),
(15210019, 'Jeramey Czadla', 'Girlfriend', '07360 969163'),
(15210392, 'Jilly Fullbrook', 'Girlfriend', '07405 079997'),
(15211173, '', 'Father', ''),
(15212726, '', 'Girlfriend', '07933 924971'),
(15214928, 'Rosabel Rosell', 'Girlfriend', '07949 698940'),
(15218274, 'Tremayne Mumford', 'Girlfriend', '07070 829323'),
(15310538, '', 'Mother', '07654 711451'),
(15311928, '', 'Husband', ''),
(15311947, 'Burnard Yosifov', 'Girlfriend', '07231 488090'),
(15314926, 'Marlin Knight', 'Civil Partner', '07326 647976'),
(15413482, 'Nerissa Maisey', 'Wife', '07740 330980'),
(15413871, 'Letitia Normabell', 'Mother', '07295 892245'),
(15419183, 'Fayth Bazylets', 'Girlfriend', ''),
(15419236, 'Emiline McEnhill', '', '07952 777488'),
(15419427, 'Letitia Normabell', 'Mother', '07295 892245'),
(15512916, 'Isidora Hanster', '', '07736 429556'),
(15518273, '', 'Wife', '07043 095609');

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `office_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `hired_date` date NOT NULL DEFAULT curdate(),
  `contract` varchar(50) NOT NULL DEFAULT 'Full-Time',
  `nin` varchar(9) NOT NULL,
  `employment_history` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`id`, `name`, `position_id`, `email`, `dob`, `office_id`, `address_id`, `hired_date`, `contract`, `nin`, `employment_history`) VALUES
(1221265, 'Russ Cutchie', 1, 'Russ.Cutchie@kilburnazon.com', '1985-09-08', 1, 1, '2015-02-15', 'Part-Time', 'BZ630455D', 'GlobalSoft (2003 - 2005), BlueChip Co. (2005 - 2007), FutureWare (2007 - 2009)'),
(1221452, 'Harriott Pinn', 1, 'Harriott.Pinn@kilburnazon.com', '2009-05-28', 1, 2, '2015-05-04', 'Full-Time', 'SB900295A', 'PrimeCode Inc. (2003 - 2005), Alpha Systems (2005 - 2007), FutureWare (2007 - 2009)'),
(1221709, 'Emmey Hirtz', 1, 'Emmey.Hirtz@kilburnazon.com', '2005-11-30', 2, 3, '2020-07-31', 'Full-Time', 'GV786046B', 'GlobalSoft (2008 - 2010), NextGen Solutions (2010 - 2012), BlueChip Co. (2012 - 2014)'),
(1221792, 'Gregg Schiell', 1, 'Gregg.Schiell@kilburnazon.com', '1978-10-02', 1, 4, '2023-10-10', 'Full-Time', 'FD270800C', 'NextGen Solutions (2011 - 2013), PrimeCode Inc. (2013 - 2015), VisionTech (2015 - 2017)'),
(1221832, 'Cristin Loudian', 1, 'Cristin.Loudian@kilburnazon.com', '1989-06-18', 3, 5, '2016-04-27', 'Full-Time', 'OM263026A', 'PrimeCode Inc. (2004 - 2006), Alpha Systems (2006 - 2008), FutureWare (2008 - 2010)'),
(1221908, 'Lock McCurrie', 1, 'Lock.McCurrie@kilburnazon.com', '2004-07-21', 2, 6, '2022-07-19', 'Full-Time', 'PU212720A', 'TechCorp (2010 - 2012), GlobalSoft (2012 - 2014), CyberDynamics (2014 - 2016)'),
(11123211, 'Elon Bazos', 2, 'Elon.Bazos@kilburnazon.com', '1974-04-12', 4, 7, '2014-02-15', 'Full-Time', 'RE885173B', 'GlobalSoft (2002 - 2004), CyberDynamics (2004 - 2006), FutureWare (2006 - 2008)'),
(11214682, 'Jarvis Kare', 3, 'Jarvis.Kare@kilburnazon.com', '1981-03-06', 4, 8, '2015-11-16', 'Full-Time', 'DF625255C', 'TechCorp (2003 - 2005), NextGen Solutions (2005 - 2007), CyberDynamics (2007 - 2009)'),
(11223214, 'Sarah Turing', 4, 'Sarah.Turing@kilburnazon.com', '1977-08-23', 4, 9, '2017-12-02', 'Full-Time', 'LQ649084C', 'TechCorp (2005 - 2007), PrimeCode Inc. (2007 - 2009), BlueChip Co. (2009 - 2011)'),
(11224403, 'Steve Hopper', 5, 'Steve.Hopper@kilburnazon.com', '1986-08-27', 4, 10, '2015-11-11', 'Full-Time', 'BG154525C', 'TechCorp (2003 - 2005), Innovatech (2005 - 2007), NextGen Solutions (2007 - 2009)'),
(11226496, 'Jeff Lovelace', 6, 'Jeff.Lovelace@kilburnazon.com', '1976-12-15', 4, 11, '2016-07-16', 'Full-Time', 'SY194109A', 'Innovatech (2004 - 2006), NextGen Solutions (2006 - 2008), FutureWare (2008 - 2010)'),
(11229804, 'Tracey Gates', 7, 'Tracey.Gates@kilburnazon.com', '1977-10-26', 4, 12, '2017-07-26', 'Full-Time', 'AN593683D', 'NextGen Solutions (2005 - 2007), VisionTech (2007 - 2009), FutureWare (2009 - 2011)'),
(12110062, 'Sheela Plews', 8, 'Sheela.Plews@kilburnazon.com', '2004-12-04', 2, 13, '2017-08-16', 'Part-Time', 'SE804347A', 'TechCorp (2005 - 2007), CyberDynamics (2007 - 2009), FutureWare (2009 - 2011)'),
(12111088, 'Tierney Saura', 8, 'Tierney.Saura@kilburnazon.com', '2003-08-20', 5, 14, '2023-02-16', 'Full-Time', 'IB336855D', 'Innovatech (2011 - 2013), NextGen Solutions (2013 - 2015), Alpha Systems (2015 - 2017)'),
(12111522, 'Marten Eskrick', 8, 'Marten.Eskrick@kilburnazon.com', '1988-02-11', 5, 15, '2021-12-23', 'Part-Time', 'HO238829D', 'PrimeCode Inc. (2009 - 2011), VisionTech (2011 - 2013), BlueChip Co. (2013 - 2015)'),
(12112639, 'Aurilia Dove', 8, 'Aurilia.Dove@kilburnazon.com', '1998-09-27', 6, 16, '2023-03-05', 'Full-Time', 'MZ652678D', 'TechCorp (2011 - 2013), Innovatech (2013 - 2015), NextGen Solutions (2015 - 2017)'),
(12112712, 'Jenda Cohrs', 8, 'Jenda.Cohrs@kilburnazon.com', '2000-12-25', 7, 17, '2023-11-23', 'Part-Time', 'IE617692A', 'TechCorp (2011 - 2013), GlobalSoft (2013 - 2015), BlueChip Co. (2015 - 2017)'),
(12112750, 'Carol Paolozzi', 8, 'Carol.Paolozzi@kilburnazon.com', '1983-07-26', 2, 18, '2016-09-25', 'Part-Time', 'ME002330D', 'NextGen Solutions (2004 - 2006), VisionTech (2006 - 2008), BlueChip Co. (2008 - 2010)'),
(12113642, 'Scarface Gavaran', 8, 'Scarface.Gavaran@kilburnazon.com', '1996-09-23', 3, 19, '2023-08-30', 'Full-Time', 'WF788117C', 'NextGen Solutions (2011 - 2013), Alpha Systems (2013 - 2015), BlueChip Co. (2015 - 2017)'),
(12113666, 'Edythe Colisbe', 8, 'Edythe.Colisbe@kilburnazon.com', '2008-07-04', 7, 20, '2019-07-04', 'Full-Time', 'MO232288B', 'TechCorp (2007 - 2009), CyberDynamics (2009 - 2011), FutureWare (2011 - 2013)'),
(12114168, 'Cymbre Braiden', 8, 'Cymbre.Braiden@kilburnazon.com', '1984-03-09', 1, 21, '2022-04-23', 'Full-Time', 'LD278104D', 'NextGen Solutions (2010 - 2012), PrimeCode Inc. (2012 - 2014), BlueChip Co. (2014 - 2016)'),
(12116288, 'Deeanne Westoll', 8, 'Deeanne.Westoll@kilburnazon.com', '1977-12-06', 3, 22, '2016-09-21', 'Full-Time', 'XR656206B', 'Innovatech (2004 - 2006), VisionTech (2006 - 2008), FutureWare (2008 - 2010)'),
(12116601, 'Christie Pischoff', 8, 'Christie.Pischoff@kilburnazon.com', '1981-10-15', 6, 23, '2017-01-05', 'Full-Time', 'YN332435C', 'GlobalSoft (2005 - 2007), CyberDynamics (2007 - 2009), BlueChip Co. (2009 - 2011)'),
(12118412, 'Bordy Langhorne', 8, 'Bordy.Langhorne@kilburnazon.com', '1993-05-06', 1, 24, '2016-03-02', 'Full-Time', 'QS763259D', 'TechCorp (2004 - 2006), CyberDynamics (2006 - 2008), FutureWare (2008 - 2010)'),
(12211065, 'Francis Horsted', 1, 'Francis.Horsted@kilburnazon.com', '1988-07-25', 1, 25, '2023-07-29', 'Full-Time', 'GP190594B', 'NextGen Solutions (2011 - 2013), CyberDynamics (2013 - 2015), FutureWare (2015 - 2017)'),
(12211197, 'Salmon Petegre', 1, 'Salmon.Petegre@kilburnazon.com', '1978-11-11', 5, 26, '2023-03-31', 'Full-Time', 'VH028029C', 'Innovatech (2011 - 2013), GlobalSoft (2013 - 2015), BlueChip Co. (2015 - 2017)'),
(12211317, 'Park Smallridge', 1, 'Park.Smallridge@kilburnazon.com', '2008-12-28', 7, 27, '2017-10-26', 'Full-Time', 'XJ058657D', 'TechCorp (2005 - 2007), PrimeCode Inc. (2007 - 2009), FutureWare (2009 - 2011)'),
(12211356, 'Brook Ewington', 1, 'Brook.Ewington@kilburnazon.com', '1995-08-24', 3, 28, '2018-12-31', 'Part-Time', 'PJ845064C', 'Alpha Systems (2006 - 2008), VisionTech (2008 - 2010), FutureWare (2010 - 2012)'),
(12211384, 'Colman Quinion', 1, 'Colman.Quinion@kilburnazon.com', '1995-06-23', 6, 29, '2019-03-29', 'Part-Time', 'AG066537A', 'GlobalSoft (2007 - 2009), CyberDynamics (2009 - 2011), FutureWare (2011 - 2013)'),
(12211435, 'Tommie Roxbrough', 1, 'Tommie.Roxbrough@kilburnazon.com', '2007-09-13', 7, 30, '2021-08-24', 'Full-Time', 'MC945932A', 'Innovatech (2009 - 2011), GlobalSoft (2011 - 2013), FutureWare (2013 - 2015)'),
(12211587, 'Andres De Marchi', 1, 'Andres.De Marchi@kilburnazon.com', '1984-06-14', 2, 31, '2021-12-13', 'Full-Time', 'OJ510253B', 'TechCorp (2009 - 2011), PrimeCode Inc. (2011 - 2013), CyberDynamics (2013 - 2015)'),
(12211691, 'Rikki Pauer', 1, 'Rikki.Pauer@kilburnazon.com', '1981-12-27', 6, 32, '2020-12-12', 'Part-Time', 'FA890103C', 'PrimeCode Inc. (2008 - 2010), VisionTech (2010 - 2012), BlueChip Co. (2012 - 2014)'),
(12211861, 'Dud Laible', 1, 'Dud.Laible@kilburnazon.com', '1985-08-26', 2, 33, '2021-08-25', 'Full-Time', 'YH533098A', 'Alpha Systems (2009 - 2011), VisionTech (2011 - 2013), CyberDynamics (2013 - 2015)'),
(12212092, 'Arleyne Cherm', 1, 'Arleyne.Cherm@kilburnazon.com', '1993-04-07', 6, 34, '2018-10-10', 'Full-Time', 'ZD863526A', 'TechCorp (2006 - 2008), CyberDynamics (2008 - 2010), BlueChip Co. (2010 - 2012)'),
(12212102, 'Kittie McLaverty', 1, 'Kittie.McLaverty@kilburnazon.com', '2008-07-16', 6, 35, '2016-11-17', 'Part-Time', 'WC624356A', 'TechCorp (2004 - 2006), PrimeCode Inc. (2006 - 2008), BlueChip Co. (2008 - 2010)'),
(12212104, 'Gael Poulston', 1, 'Gael.Poulston@kilburnazon.com', '2010-01-26', 7, 36, '2017-11-20', 'Part-Time', 'EF123771D', 'PrimeCode Inc. (2005 - 2007), BlueChip Co. (2007 - 2009), FutureWare (2009 - 2011)'),
(12212133, 'Hymie Stratford', 1, 'Hymie.Stratford@kilburnazon.com', '1983-07-25', 3, 37, '2017-12-08', 'Full-Time', 'QJ749434A', 'GlobalSoft (2005 - 2007), VisionTech (2007 - 2009), BlueChip Co. (2009 - 2011)'),
(12212155, 'Arie Papworth', 1, 'Arie.Papworth@kilburnazon.com', '1994-07-22', 2, 38, '2016-04-27', 'Full-Time', 'NS449797D', 'PrimeCode Inc. (2004 - 2006), Alpha Systems (2006 - 2008), BlueChip Co. (2008 - 2010)'),
(12212183, 'Elton Brailey', 1, 'Elton.Brailey@kilburnazon.com', '1983-08-29', 7, 39, '2021-11-23', 'Full-Time', 'NY623452C', 'VisionTech (2009 - 2011), BlueChip Co. (2011 - 2013), FutureWare (2013 - 2015)'),
(12212299, 'Hamel Hurtic', 1, 'Hamel.Hurtic@kilburnazon.com', '2008-01-09', 7, 40, '2019-02-10', 'Full-Time', 'IU169701B', 'TechCorp (2007 - 2009), GlobalSoft (2009 - 2011), VisionTech (2011 - 2013)'),
(12212488, 'Susette Hammer', 1, 'Susette.Hammer@kilburnazon.com', '1978-12-26', 5, 41, '2022-11-23', 'Full-Time', 'IW817361B', 'TechCorp (2010 - 2012), PrimeCode Inc. (2012 - 2014), VisionTech (2014 - 2016)'),
(12212691, 'Maris Bossom', 1, 'Maris.Bossom@kilburnazon.com', '1992-06-29', 3, 42, '2022-05-15', 'Part-Time', 'RG359319A', 'TechCorp (2010 - 2012), GlobalSoft (2012 - 2014), NextGen Solutions (2014 - 2016)'),
(12212751, 'Ira Wasiela', 1, 'Ira.Wasiela@kilburnazon.com', '1997-12-13', 5, 43, '2024-04-21', 'Full-Time', 'UR499786B', 'VisionTech (2012 - 2014), BlueChip Co. (2014 - 2016), FutureWare (2016 - 2018)'),
(12212803, 'Nicki Soall', 1, 'Nicki.Soall@kilburnazon.com', '1986-02-23', 5, 44, '2018-03-15', 'Full-Time', 'KQ705677B', 'GlobalSoft (2006 - 2008), Alpha Systems (2008 - 2010), FutureWare (2010 - 2012)'),
(12212831, 'Cobb Ricart', 1, 'Cobb.Ricart@kilburnazon.com', '1987-01-22', 6, 45, '2020-05-10', 'Full-Time', 'JV246199D', 'VisionTech (2008 - 2010), BlueChip Co. (2010 - 2012), FutureWare (2012 - 2014)'),
(12212901, 'Nyssa Gerhold', 1, 'Nyssa.Gerhold@kilburnazon.com', '1977-11-26', 2, 46, '2020-07-11', 'Full-Time', 'QX909374C', 'TechCorp (2008 - 2010), GlobalSoft (2010 - 2012), CyberDynamics (2012 - 2014)'),
(12212982, 'Archer Blakely', 1, 'Archer.Blakely@kilburnazon.com', '2004-05-18', 1, 47, '2016-04-20', 'Full-Time', 'TT192832C', 'GlobalSoft (2004 - 2006), NextGen Solutions (2006 - 2008), Alpha Systems (2008 - 2010)'),
(12212991, 'Kerrie Weedon', 1, 'Kerrie.Weedon@kilburnazon.com', '1994-11-24', 2, 48, '2018-03-22', 'Full-Time', 'DD817948C', 'TechCorp (2006 - 2008), GlobalSoft (2008 - 2010), BlueChip Co. (2010 - 2012)'),
(12213124, 'Gideon Pridham', 1, 'Gideon.Pridham@kilburnazon.com', '1981-01-26', 7, 49, '2015-02-22', 'Full-Time', 'LY731522C', 'GlobalSoft (2003 - 2005), VisionTech (2005 - 2007), CyberDynamics (2007 - 2009)'),
(12213338, 'Myrna Kilfedder', 1, 'Myrna.Kilfedder@kilburnazon.com', '1994-09-22', 3, 50, '2016-09-13', 'Part-Time', 'ZN341846D', 'TechCorp (2004 - 2006), VisionTech (2006 - 2008), FutureWare (2008 - 2010)'),
(12213491, 'Bernadene Christall', 1, 'Bernadene.Christall@kilburnazon.com', '1994-04-28', 6, 51, '2015-03-15', 'Full-Time', 'IZ802514D', 'GlobalSoft (2003 - 2005), CyberDynamics (2005 - 2007), BlueChip Co. (2007 - 2009)'),
(12213598, 'Wendye Lightbown', 1, 'Wendye.Lightbown@kilburnazon.com', '1984-09-11', 1, 52, '2019-07-25', 'Full-Time', 'YD516559D', 'Innovatech (2007 - 2009), VisionTech (2009 - 2011), CyberDynamics (2011 - 2013)'),
(12213724, 'Craggie McKernan', 1, 'Craggie.McKernan@kilburnazon.com', '1979-01-26', 5, 53, '2016-03-31', 'Part-Time', 'IW726530A', 'Innovatech (2004 - 2006), Alpha Systems (2006 - 2008), CyberDynamics (2008 - 2010)'),
(12213809, 'Tate Cowton', 1, 'Tate.Cowton@kilburnazon.com', '1996-07-02', 3, 54, '2019-11-07', 'Full-Time', 'MP800168B', 'NextGen Solutions (2007 - 2009), VisionTech (2009 - 2011), BlueChip Co. (2011 - 2013)'),
(12213841, 'Gustavus Hinrich', 1, 'Gustavus.Hinrich@kilburnazon.com', '2010-01-25', 5, 55, '2017-04-10', 'Full-Time', 'JE689255B', 'GlobalSoft (2005 - 2007), VisionTech (2007 - 2009), FutureWare (2009 - 2011)'),
(12213973, 'Andee Pulley', 1, 'Andee.Pulley@kilburnazon.com', '2006-10-28', 6, 56, '2021-03-21', 'Full-Time', 'ZR122877D', 'GlobalSoft (2009 - 2011), PrimeCode Inc. (2011 - 2013), Alpha Systems (2013 - 2015)'),
(12213974, 'Sigismondo Shorland', 1, 'Sigismondo.Shorland@kilburnazon.com', '1995-01-16', 6, 57, '2017-01-03', 'Full-Time', 'BV974391A', 'PrimeCode Inc. (2005 - 2007), CyberDynamics (2007 - 2009), BlueChip Co. (2009 - 2011)'),
(12213983, 'Norene Caurah', 1, 'Norene.Caurah@kilburnazon.com', '2007-07-23', 2, 58, '2017-10-07', 'Full-Time', 'VA851027A', 'Innovatech (2005 - 2007), NextGen Solutions (2007 - 2009), BlueChip Co. (2009 - 2011)'),
(12214007, 'Estrella de Tocqueville', 1, 'Estrella.de Tocqueville@kilburnazon.com', '1985-05-09', 6, 59, '2021-01-28', 'Full-Time', 'RZ897581B', 'TechCorp (2009 - 2011), CyberDynamics (2011 - 2013), BlueChip Co. (2013 - 2015)'),
(12214028, 'Shae Piotrowski', 1, 'Shae.Piotrowski@kilburnazon.com', '1984-11-06', 2, 60, '2022-09-05', 'Full-Time', 'ZG697320A', 'PrimeCode Inc. (2010 - 2012), Alpha Systems (2012 - 2014), VisionTech (2014 - 2016)'),
(12214048, 'Cece Corneck', 1, 'Cece.Corneck@kilburnazon.com', '1977-06-17', 6, 61, '2020-02-08', 'Full-Time', 'UE573499B', 'Innovatech (2008 - 2010), Alpha Systems (2010 - 2012), FutureWare (2012 - 2014)'),
(12214105, 'Brandi Charrier', 1, 'Brandi.Charrier@kilburnazon.com', '1982-03-08', 5, 62, '2019-05-04', 'Full-Time', 'IW006546D', 'TechCorp (2007 - 2009), NextGen Solutions (2009 - 2011), CyberDynamics (2011 - 2013)'),
(12214121, 'Gerek Piccop', 1, 'Gerek.Piccop@kilburnazon.com', '1984-10-26', 5, 63, '2021-10-10', 'Full-Time', 'TX132819D', 'Innovatech (2009 - 2011), NextGen Solutions (2011 - 2013), CyberDynamics (2013 - 2015)'),
(12214152, 'Edmon Hunnable', 1, 'Edmon.Hunnable@kilburnazon.com', '2003-01-28', 3, 64, '2021-04-20', 'Full-Time', 'WU139834B', 'GlobalSoft (2009 - 2011), PrimeCode Inc. (2011 - 2013), FutureWare (2013 - 2015)'),
(12214303, 'Romeo Mc Combe', 1, 'Romeo.Mc Combe@kilburnazon.com', '2001-08-27', 3, 65, '2021-11-15', 'Full-Time', 'NT727673A', 'NextGen Solutions (2009 - 2011), CyberDynamics (2011 - 2013), FutureWare (2013 - 2015)'),
(12214418, 'Hamil Sonner', 1, 'Hamil.Sonner@kilburnazon.com', '1991-05-19', 5, 66, '2016-07-29', 'Full-Time', 'ZH643753A', 'Innovatech (2004 - 2006), PrimeCode Inc. (2006 - 2008), VisionTech (2008 - 2010)'),
(12214573, 'Silvie Kensy', 1, 'Silvie.Kensy@kilburnazon.com', '2007-02-17', 5, 67, '2018-02-14', 'Full-Time', 'KQ688135B', 'GlobalSoft (2006 - 2008), Alpha Systems (2008 - 2010), VisionTech (2010 - 2012)'),
(12214750, 'Zorina Rumgay', 1, 'Zorina.Rumgay@kilburnazon.com', '2007-07-12', 7, 68, '2024-02-28', 'Full-Time', 'BE368387B', 'NextGen Solutions (2012 - 2014), BlueChip Co. (2014 - 2016), FutureWare (2016 - 2018)'),
(12214822, 'Silvie Pitone', 1, 'Silvie.Pitone@kilburnazon.com', '1985-11-06', 7, 69, '2022-04-10', 'Full-Time', 'EC081603D', 'TechCorp (2010 - 2012), Alpha Systems (2012 - 2014), VisionTech (2014 - 2016)'),
(12215160, 'Roma Raynham', 1, 'Roma.Raynham@kilburnazon.com', '2002-04-12', 5, 70, '2017-07-03', 'Full-Time', 'WL256374C', 'TechCorp (2005 - 2007), GlobalSoft (2007 - 2009), Alpha Systems (2009 - 2011)'),
(12215254, 'Bev Duddin', 1, 'Bev.Duddin@kilburnazon.com', '1979-01-11', 1, 71, '2019-10-18', 'Full-Time', 'RI956084A', 'Innovatech (2007 - 2009), GlobalSoft (2009 - 2011), FutureWare (2011 - 2013)'),
(12215263, 'Morganica Cornell', 1, 'Morganica.Cornell@kilburnazon.com', '1976-01-24', 3, 72, '2023-03-03', 'Full-Time', 'PX205687D', 'Innovatech (2011 - 2013), GlobalSoft (2013 - 2015), Alpha Systems (2015 - 2017)'),
(12215349, 'Murdock Couves', 1, 'Murdock.Couves@kilburnazon.com', '2006-10-02', 2, 73, '2017-10-25', 'Part-Time', 'KJ917140A', 'TechCorp (2005 - 2007), NextGen Solutions (2007 - 2009), Alpha Systems (2009 - 2011)'),
(12215479, 'Raeann McGann', 1, 'Raeann.McGann@kilburnazon.com', '1976-07-25', 5, 74, '2017-01-11', 'Full-Time', 'LH242707D', 'NextGen Solutions (2005 - 2007), PrimeCode Inc. (2007 - 2009), CyberDynamics (2009 - 2011)'),
(12215484, 'Elena Pirdue', 1, 'Elena.Pirdue@kilburnazon.com', '1977-11-06', 5, 75, '2017-06-20', 'Full-Time', 'VA222115A', 'PrimeCode Inc. (2005 - 2007), CyberDynamics (2007 - 2009), BlueChip Co. (2009 - 2011)'),
(12215504, 'Glori Childes', 1, 'Glori.Childes@kilburnazon.com', '1990-04-03', 5, 76, '2022-11-30', 'Full-Time', 'BS841445B', 'GlobalSoft (2010 - 2012), NextGen Solutions (2012 - 2014), BlueChip Co. (2014 - 2016)'),
(12215537, 'Georgeta Wimsett', 1, 'Georgeta.Wimsett@kilburnazon.com', '2000-03-03', 6, 77, '2023-09-29', 'Full-Time', 'SI936435A', 'TechCorp (2011 - 2013), Innovatech (2013 - 2015), NextGen Solutions (2015 - 2017)'),
(12215562, 'Silvan Murrum', 1, 'Silvan.Murrum@kilburnazon.com', '1988-11-19', 7, 78, '2016-02-05', 'Full-Time', 'QR276424B', 'Innovatech (2004 - 2006), PrimeCode Inc. (2006 - 2008), BlueChip Co. (2008 - 2010)'),
(12215594, 'Nan Branchett', 1, 'Nan.Branchett@kilburnazon.com', '2004-07-22', 2, 79, '2023-08-18', 'Full-Time', 'VM862134C', 'PrimeCode Inc. (2011 - 2013), BlueChip Co. (2013 - 2015), FutureWare (2015 - 2017)'),
(12215734, 'Reinold Batcheldor', 1, 'Reinold.Batcheldor@kilburnazon.com', '1998-01-23', 1, 80, '2020-09-26', 'Full-Time', 'HP910350D', 'PrimeCode Inc. (2008 - 2010), VisionTech (2010 - 2012), BlueChip Co. (2012 - 2014)'),
(12215785, 'Russ Thick', 1, 'Russ.Thick@kilburnazon.com', '2002-11-08', 5, 81, '2018-02-12', 'Full-Time', 'FF334132C', 'GlobalSoft (2006 - 2008), PrimeCode Inc. (2008 - 2010), FutureWare (2010 - 2012)'),
(12215805, 'Hallsy Hitzke', 1, 'Hallsy.Hitzke@kilburnazon.com', '2002-01-09', 7, 82, '2023-05-31', 'Full-Time', 'PI475660C', 'GlobalSoft (2011 - 2013), NextGen Solutions (2013 - 2015), CyberDynamics (2015 - 2017)'),
(12215877, 'Grantham Croose', 1, 'Grantham.Croose@kilburnazon.com', '1986-05-24', 6, 83, '2017-11-20', 'Full-Time', 'PA064813C', 'TechCorp (2005 - 2007), Innovatech (2007 - 2009), FutureWare (2009 - 2011)'),
(12215968, 'Thadeus Frances', 1, 'Thadeus.Frances@kilburnazon.com', '2004-10-21', 5, 84, '2018-01-07', 'Full-Time', 'MP338297A', 'PrimeCode Inc. (2006 - 2008), VisionTech (2008 - 2010), BlueChip Co. (2010 - 2012)'),
(12216093, 'Gaultiero Folini', 1, 'Gaultiero.Folini@kilburnazon.com', '2003-05-16', 7, 85, '2023-08-08', 'Full-Time', 'BS704468C', 'PrimeCode Inc. (2011 - 2013), Alpha Systems (2013 - 2015), FutureWare (2015 - 2017)'),
(12216138, 'Reta Lympany', 1, 'Reta.Lympany@kilburnazon.com', '1995-01-21', 7, 86, '2017-09-14', 'Full-Time', 'KT258389D', 'TechCorp (2005 - 2007), NextGen Solutions (2007 - 2009), CyberDynamics (2009 - 2011)'),
(12216285, 'Tammara Cristoforo', 1, 'Tammara.Cristoforo@kilburnazon.com', '1981-05-07', 6, 87, '2022-10-14', 'Full-Time', 'IM822270A', 'Innovatech (2010 - 2012), GlobalSoft (2012 - 2014), CyberDynamics (2014 - 2016)'),
(12216342, 'Alvina Le Grys', 1, 'Alvina.Le Grys@kilburnazon.com', '1980-04-15', 6, 88, '2015-02-07', 'Full-Time', 'AN547962C', 'Alpha Systems (2003 - 2005), VisionTech (2005 - 2007), FutureWare (2007 - 2009)'),
(12217046, 'Dehlia Jackes', 1, 'Dehlia.Jackes@kilburnazon.com', '1984-08-13', 6, 89, '2022-12-08', 'Full-Time', 'RV614094A', 'TechCorp (2010 - 2012), PrimeCode Inc. (2012 - 2014), CyberDynamics (2014 - 2016)'),
(12217234, 'Jozef Stinton', 1, 'Jozef.Stinton@kilburnazon.com', '1991-05-19', 3, 90, '2015-06-19', 'Part-Time', 'CK472140C', 'GlobalSoft (2003 - 2005), PrimeCode Inc. (2005 - 2007), FutureWare (2007 - 2009)'),
(12217291, 'Melantha Merricks', 1, 'Melantha.Merricks@kilburnazon.com', '1976-03-23', 5, 91, '2019-09-26', 'Part-Time', 'MI009758A', 'TechCorp (2007 - 2009), GlobalSoft (2009 - 2011), NextGen Solutions (2011 - 2013)'),
(12217385, 'Shannah Langelaan', 1, 'Shannah.Langelaan@kilburnazon.com', '1982-04-23', 1, 92, '2015-06-17', 'Full-Time', 'YK800571D', 'TechCorp (2003 - 2005), GlobalSoft (2005 - 2007), NextGen Solutions (2007 - 2009)'),
(12217466, 'Joelynn Dorgan', 1, 'Joelynn.Dorgan@kilburnazon.com', '1989-08-08', 3, 93, '2016-01-02', 'Full-Time', 'QQ562762D', 'VisionTech (2004 - 2006), CyberDynamics (2006 - 2008), FutureWare (2008 - 2010)'),
(12217623, 'Ebba MacLeese', 1, 'Ebba.MacLeese@kilburnazon.com', '1989-05-23', 7, 94, '2015-11-29', 'Full-Time', 'DV715327B', 'TechCorp (2003 - 2005), GlobalSoft (2005 - 2007), BlueChip Co. (2007 - 2009)'),
(12217795, 'Monty Ambrozik', 1, 'Monty.Ambrozik@kilburnazon.com', '1979-10-17', 3, 95, '2024-01-24', 'Full-Time', 'XL643171C', 'TechCorp (2012 - 2014), NextGen Solutions (2014 - 2016), FutureWare (2016 - 2018)'),
(12217867, 'Austin Lambertini', 1, 'Austin.Lambertini@kilburnazon.com', '1983-02-10', 6, 96, '2021-12-03', 'Full-Time', 'DB481685B', 'NextGen Solutions (2009 - 2011), Alpha Systems (2011 - 2013), BlueChip Co. (2013 - 2015)'),
(12217876, 'Matias Tuttle', 1, 'Matias.Tuttle@kilburnazon.com', '1977-01-02', 1, 97, '2017-01-21', 'Full-Time', 'CM486322A', 'GlobalSoft (2005 - 2007), CyberDynamics (2007 - 2009), BlueChip Co. (2009 - 2011)'),
(12218012, 'Linoel Leyfield', 1, 'Linoel.Leyfield@kilburnazon.com', '1997-01-29', 5, 98, '2016-02-13', 'Full-Time', 'MD948062C', 'Alpha Systems (2004 - 2006), CyberDynamics (2006 - 2008), BlueChip Co. (2008 - 2010)'),
(12218053, 'Judith Ingry', 1, 'Judith.Ingry@kilburnazon.com', '1985-11-20', 6, 99, '2022-05-03', 'Full-Time', 'NN501872D', 'TechCorp (2010 - 2012), GlobalSoft (2012 - 2014), NextGen Solutions (2014 - 2016)'),
(12218242, 'Bliss Scarlon', 1, 'Bliss.Scarlon@kilburnazon.com', '1995-08-15', 6, 100, '2021-06-08', 'Full-Time', 'FX964363B', 'VisionTech (2009 - 2011), CyberDynamics (2011 - 2013), FutureWare (2013 - 2015)'),
(12218688, 'Randee Hedgeman', 1, 'Randee.Hedgeman@kilburnazon.com', '2003-11-22', 2, 101, '2019-08-21', 'Full-Time', 'UN052491C', 'GlobalSoft (2007 - 2009), NextGen Solutions (2009 - 2011), FutureWare (2011 - 2013)'),
(12218788, 'Philis Dosdale', 1, 'Philis.Dosdale@kilburnazon.com', '1980-10-24', 2, 102, '2021-07-13', 'Full-Time', 'NV495682B', 'PrimeCode Inc. (2009 - 2011), CyberDynamics (2011 - 2013), FutureWare (2013 - 2015)'),
(12218834, 'Lyndel Ivankov', 1, 'Lyndel.Ivankov@kilburnazon.com', '1980-10-08', 5, 103, '2019-04-19', 'Full-Time', 'UC182199C', 'GlobalSoft (2007 - 2009), PrimeCode Inc. (2009 - 2011), BlueChip Co. (2011 - 2013)'),
(12218854, 'Janie Gavaran', 1, 'Janie.Gavaran@kilburnazon.com', '2008-07-10', 1, 104, '2022-10-19', 'Part-Time', 'JB759596D', 'TechCorp (2010 - 2012), Alpha Systems (2012 - 2014), CyberDynamics (2014 - 2016)'),
(12218878, 'Lari Lesaunier', 1, 'Lari.Lesaunier@kilburnazon.com', '1997-02-16', 5, 105, '2022-08-16', 'Full-Time', 'EY051190D', 'GlobalSoft (2010 - 2012), Alpha Systems (2012 - 2014), FutureWare (2014 - 2016)'),
(12218960, 'Rockwell Bradshaw', 1, 'Rockwell.Bradshaw@kilburnazon.com', '1994-02-11', 6, 106, '2016-05-26', 'Full-Time', 'AE765414B', 'PrimeCode Inc. (2004 - 2006), BlueChip Co. (2006 - 2008), FutureWare (2008 - 2010)'),
(12219024, 'Myrtia Querree', 1, 'Myrtia.Querree@kilburnazon.com', '1985-07-17', 5, 107, '2017-12-11', 'Full-Time', 'EO523284A', 'PrimeCode Inc. (2005 - 2007), VisionTech (2007 - 2009), FutureWare (2009 - 2011)'),
(12219175, 'Suzanne Spillane', 1, 'Suzanne.Spillane@kilburnazon.com', '1987-10-30', 5, 108, '2019-08-26', 'Full-Time', 'VC486847C', 'Alpha Systems (2007 - 2009), BlueChip Co. (2009 - 2011), FutureWare (2011 - 2013)'),
(12219204, 'Lovell Pullan', 1, 'Lovell.Pullan@kilburnazon.com', '1987-07-19', 2, 109, '2015-12-08', 'Full-Time', 'GU758119B', 'PrimeCode Inc. (2003 - 2005), BlueChip Co. (2005 - 2007), FutureWare (2007 - 2009)'),
(12219325, 'Atlanta Wimmer', 1, 'Atlanta.Wimmer@kilburnazon.com', '1996-11-17', 7, 110, '2022-06-17', 'Full-Time', 'VH221989D', 'Innovatech (2010 - 2012), NextGen Solutions (2012 - 2014), VisionTech (2014 - 2016)'),
(12219474, 'Carmelina Draxford', 1, 'Carmelina.Draxford@kilburnazon.com', '1983-06-23', 7, 111, '2018-06-20', 'Full-Time', 'SF517589B', 'GlobalSoft (2006 - 2008), NextGen Solutions (2008 - 2010), FutureWare (2010 - 2012)'),
(12219510, 'Alice Dunklee', 1, 'Alice.Dunklee@kilburnazon.com', '2003-05-28', 2, 112, '2020-07-26', 'Full-Time', 'AF026052C', 'PrimeCode Inc. (2008 - 2010), Alpha Systems (2010 - 2012), VisionTech (2012 - 2014)'),
(12219550, 'Duky Belfit', 1, 'Duky.Belfit@kilburnazon.com', '1977-02-27', 2, 113, '2023-01-07', 'Full-Time', 'ME613124D', 'TechCorp (2011 - 2013), VisionTech (2013 - 2015), FutureWare (2015 - 2017)'),
(12219584, 'Fernandina Pietrzyk', 1, 'Fernandina.Pietrzyk@kilburnazon.com', '1991-09-03', 1, 114, '2015-12-01', 'Full-Time', 'OD878006D', 'TechCorp (2003 - 2005), Innovatech (2005 - 2007), GlobalSoft (2007 - 2009)'),
(12219595, 'Octavius Campkin', 1, 'Octavius.Campkin@kilburnazon.com', '1999-01-15', 5, 115, '2022-11-03', 'Full-Time', 'TT300300B', 'TechCorp (2010 - 2012), GlobalSoft (2012 - 2014), BlueChip Co. (2014 - 2016)'),
(12219646, 'Nolie Maiklem', 1, 'Nolie.Maiklem@kilburnazon.com', '1997-07-02', 6, 116, '2018-08-19', 'Full-Time', 'YY366239A', 'PrimeCode Inc. (2006 - 2008), VisionTech (2008 - 2010), BlueChip Co. (2010 - 2012)'),
(12219701, 'Graham Pannett', 1, 'Graham.Pannett@kilburnazon.com', '1994-12-16', 1, 117, '2021-02-03', 'Full-Time', 'JT025781C', 'GlobalSoft (2009 - 2011), NextGen Solutions (2011 - 2013), VisionTech (2013 - 2015)'),
(12219779, 'Muffin Herion', 1, 'Muffin.Herion@kilburnazon.com', '1986-10-13', 2, 118, '2021-07-15', 'Full-Time', 'RF555700B', 'TechCorp (2009 - 2011), VisionTech (2011 - 2013), FutureWare (2013 - 2015)'),
(12311037, 'Bettina Karby', 9, 'Bettina.Karby@kilburnazon.com', '2004-02-11', 3, 119, '2016-08-29', 'Full-Time', 'DC674435A', 'PrimeCode Inc. (2004 - 2006), VisionTech (2006 - 2008), FutureWare (2008 - 2010)'),
(12311055, 'Elora Lundbech', 9, 'Elora.Lundbech@kilburnazon.com', '1983-01-31', 2, 120, '2020-03-31', 'Full-Time', 'TP864527A', 'GlobalSoft (2008 - 2010), NextGen Solutions (2010 - 2012), Alpha Systems (2012 - 2014)'),
(12311153, 'Prissie Berthome', 9, 'Prissie.Berthome@kilburnazon.com', '1990-09-22', 7, 121, '2017-02-21', 'Full-Time', 'ER911659C', 'Innovatech (2005 - 2007), VisionTech (2007 - 2009), CyberDynamics (2009 - 2011)'),
(12311581, 'Hesther Mallows', 9, 'Hesther.Mallows@kilburnazon.com', '2000-12-26', 7, 122, '2024-02-28', 'Full-Time', 'XH223005D', 'NextGen Solutions (2012 - 2014), CyberDynamics (2014 - 2016), BlueChip Co. (2016 - 2018)'),
(12311667, 'Ursuline Boltwood', 9, 'Ursuline.Boltwood@kilburnazon.com', '1996-11-23', 2, 123, '2024-01-03', 'Full-Time', 'XT806503B', 'TechCorp (2012 - 2014), Alpha Systems (2014 - 2016), CyberDynamics (2016 - 2018)'),
(12311703, 'Elsworth Vannuccini', 9, 'Elsworth.Vannuccini@kilburnazon.com', '2004-10-15', 2, 124, '2023-10-18', 'Full-Time', 'LL003960D', 'Innovatech (2011 - 2013), PrimeCode Inc. (2013 - 2015), FutureWare (2015 - 2017)'),
(12312622, 'Tish Armsden', 9, 'Tish.Armsden@kilburnazon.com', '2007-10-08', 5, 125, '2021-01-31', 'Full-Time', 'MA003782C', 'Innovatech (2009 - 2011), CyberDynamics (2011 - 2013), BlueChip Co. (2013 - 2015)'),
(12312658, 'Kailey Gilfoy', 9, 'Kailey.Gilfoy@kilburnazon.com', '1992-03-22', 6, 126, '2018-12-26', 'Full-Time', 'XX406929D', 'Innovatech (2006 - 2008), PrimeCode Inc. (2008 - 2010), BlueChip Co. (2010 - 2012)'),
(12312661, 'Yance Colenutt', 9, 'Yance.Colenutt@kilburnazon.com', '1977-04-08', 7, 127, '2018-01-11', 'Freelance', 'EX860931B', 'GlobalSoft (2006 - 2008), NextGen Solutions (2008 - 2010), FutureWare (2010 - 2012)'),
(12312718, 'Jessee Gilliatt', 9, 'Jessee.Gilliatt@kilburnazon.com', '1986-05-19', 5, 128, '2016-02-03', 'Full-Time', 'GP806436B', 'GlobalSoft (2004 - 2006), NextGen Solutions (2006 - 2008), Alpha Systems (2008 - 2010)'),
(12313264, 'Leyla Boraston', 9, 'Leyla.Boraston@kilburnazon.com', '1976-07-26', 5, 129, '2020-06-28', 'Full-Time', 'WB171749D', 'TechCorp (2008 - 2010), CyberDynamics (2010 - 2012), FutureWare (2012 - 2014)'),
(12313366, 'Nelson Gabala', 9, 'Nelson.Gabala@kilburnazon.com', '1975-10-14', 3, 130, '2016-11-17', 'Part-Time', 'BK288308D', 'Alpha Systems (2004 - 2006), VisionTech (2006 - 2008), CyberDynamics (2008 - 2010)'),
(12313725, 'Tedda Howle', 9, 'Tedda.Howle@kilburnazon.com', '1997-03-15', 2, 131, '2017-08-15', 'Full-Time', 'WU418446C', 'TechCorp (2005 - 2007), BlueChip Co. (2007 - 2009), FutureWare (2009 - 2011)'),
(12313980, 'Natalie Riggert', 9, 'Natalie.Riggert@kilburnazon.com', '1984-06-30', 1, 132, '2016-07-29', 'Full-Time', 'DZ022802D', 'Innovatech (2004 - 2006), GlobalSoft (2006 - 2008), CyberDynamics (2008 - 2010)'),
(12314042, 'Courtnay Glowach', 9, 'Courtnay.Glowach@kilburnazon.com', '1999-05-14', 7, 133, '2015-05-12', 'Part-Time', 'MY766732B', 'GlobalSoft (2003 - 2005), VisionTech (2005 - 2007), CyberDynamics (2007 - 2009)'),
(12314327, 'Lucien Pfeiffer', 9, 'Lucien.Pfeiffer@kilburnazon.com', '1981-06-12', 1, 134, '2018-11-01', 'Freelance', 'AA005657A', 'CyberDynamics (2006 - 2008), BlueChip Co. (2008 - 2010), FutureWare (2010 - 2012)'),
(12314528, 'Kingsley Santoro', 9, 'Kingsley.Santoro@kilburnazon.com', '2005-05-31', 6, 135, '2017-07-28', 'Part-Time', 'JS005009C', 'Alpha Systems (2005 - 2007), VisionTech (2007 - 2009), BlueChip Co. (2009 - 2011)'),
(12314667, 'Sileas Brooksbank', 9, 'Sileas.Brooksbank@kilburnazon.com', '1993-05-27', 6, 136, '2019-10-06', 'Freelance', 'JF077926D', 'Innovatech (2007 - 2009), VisionTech (2009 - 2011), CyberDynamics (2011 - 2013)'),
(12315187, 'Cayla Manginot', 9, 'Cayla.Manginot@kilburnazon.com', '2005-08-03', 6, 137, '2021-12-20', 'Full-Time', 'PW746511A', 'GlobalSoft (2009 - 2011), PrimeCode Inc. (2011 - 2013), FutureWare (2013 - 2015)'),
(12315752, 'Evvie Chesters', 9, 'Evvie.Chesters@kilburnazon.com', '1997-09-04', 1, 138, '2015-07-14', 'Freelance', 'AN202720C', 'GlobalSoft (2003 - 2005), NextGen Solutions (2005 - 2007), FutureWare (2007 - 2009)'),
(12315825, 'Dorita Ilyunin', 9, 'Dorita.Ilyunin@kilburnazon.com', '2002-07-09', 5, 139, '2018-03-13', 'Full-Time', 'OU700204C', 'Alpha Systems (2006 - 2008), CyberDynamics (2008 - 2010), BlueChip Co. (2010 - 2012)'),
(12315928, 'Rubetta Dienes', 9, 'Rubetta.Dienes@kilburnazon.com', '2009-04-22', 3, 140, '2018-02-12', 'Full-Time', 'TP293641C', 'TechCorp (2006 - 2008), NextGen Solutions (2008 - 2010), CyberDynamics (2010 - 2012)'),
(12316053, 'Donn Muscat', 9, 'Donn.Muscat@kilburnazon.com', '1999-05-26', 5, 141, '2022-11-06', 'Full-Time', 'MM977993D', 'PrimeCode Inc. (2010 - 2012), Alpha Systems (2012 - 2014), VisionTech (2014 - 2016)'),
(12316237, 'Bald Spindler', 9, 'Bald.Spindler@kilburnazon.com', '1977-11-12', 1, 142, '2018-08-29', 'Full-Time', 'KY965343C', 'PrimeCode Inc. (2006 - 2008), CyberDynamics (2008 - 2010), FutureWare (2010 - 2012)'),
(12316925, 'Jacklyn Schuricke', 9, 'Jacklyn.Schuricke@kilburnazon.com', '1999-11-21', 3, 143, '2016-08-17', 'Full-Time', 'TW771202A', 'TechCorp (2004 - 2006), NextGen Solutions (2006 - 2008), FutureWare (2008 - 2010)'),
(12317808, 'Philippine Hinchcliffe', 9, 'Philippine.Hinchcliffe@kilburnazon.com', '2003-04-24', 6, 144, '2015-08-13', 'Freelance', 'FZ330174A', 'NextGen Solutions (2003 - 2005), PrimeCode Inc. (2005 - 2007), Alpha Systems (2007 - 2009)'),
(12317934, 'Phylis Shemwell', 9, 'Phylis.Shemwell@kilburnazon.com', '1987-11-05', 1, 145, '2016-04-08', 'Full-Time', 'LT510431B', 'GlobalSoft (2004 - 2006), PrimeCode Inc. (2006 - 2008), FutureWare (2008 - 2010)'),
(12318662, 'Viki Maddinon', 9, 'Viki.Maddinon@kilburnazon.com', '1990-03-09', 7, 146, '2020-03-15', 'Freelance', 'TI165499C', 'Innovatech (2008 - 2010), GlobalSoft (2010 - 2012), PrimeCode Inc. (2012 - 2014)'),
(12319513, 'Hillie Hele', 9, 'Hillie.Hele@kilburnazon.com', '1999-02-04', 3, 147, '2021-07-25', 'Full-Time', 'ZO227530D', 'TechCorp (2009 - 2011), PrimeCode Inc. (2011 - 2013), Alpha Systems (2013 - 2015)'),
(12319914, 'Saidee Favela', 9, 'Saidee.Favela@kilburnazon.com', '1999-04-16', 2, 148, '2016-11-10', 'Full-Time', 'ZV971333B', 'CyberDynamics (2004 - 2006), BlueChip Co. (2006 - 2008), FutureWare (2008 - 2010)'),
(13110482, 'Jayme Greiswood', 10, 'Jayme.Greiswood@kilburnazon.com', '1991-11-11', 4, 149, '2018-08-16', 'Full-Time', 'PH455369B', 'GlobalSoft (2006 - 2008), NextGen Solutions (2008 - 2010), FutureWare (2010 - 2012)'),
(13111738, 'Mirabella Gullane', 10, 'Mirabella.Gullane@kilburnazon.com', '1996-05-20', 8, 150, '2020-12-28', 'Part-Time', 'KF883937B', 'PrimeCode Inc. (2008 - 2010), Alpha Systems (2010 - 2012), FutureWare (2012 - 2014)'),
(13117262, 'Samara Le febre', 10, 'Samara.Le febre@kilburnazon.com', '1990-05-16', 8, 151, '2021-12-14', 'Full-Time', 'XA964107B', 'Innovatech (2009 - 2011), NextGen Solutions (2011 - 2013), Alpha Systems (2013 - 2015)'),
(13211973, 'Elden Toy', 11, 'Elden.Toy@kilburnazon.com', '2004-06-04', 8, 152, '2023-01-02', 'Full-Time', 'NL822476D', 'Innovatech (2011 - 2013), NextGen Solutions (2013 - 2015), BlueChip Co. (2015 - 2017)'),
(13212738, 'Paolo Lewin', 11, 'Paolo.Lewin@kilburnazon.com', '1995-07-27', 4, 153, '2020-08-13', 'Full-Time', 'RI019366A', 'Innovatech (2008 - 2010), GlobalSoft (2010 - 2012), FutureWare (2012 - 2014)'),
(14111094, 'Gerek Davenell', 12, 'Gerek.Davenell@kilburnazon.com', '1993-07-28', 8, 154, '2020-09-20', 'Freelance', 'ZX739819A', 'Innovatech (2008 - 2010), GlobalSoft (2010 - 2012), NextGen Solutions (2012 - 2014)'),
(14113626, 'Eberhard Pepi', 12, 'Eberhard.Pepi@kilburnazon.com', '1978-09-03', 4, 155, '2020-08-11', 'Full-Time', 'BY151362A', 'TechCorp (2008 - 2010), GlobalSoft (2010 - 2012), CyberDynamics (2012 - 2014)'),
(14118236, 'Emogene Burchard', 12, 'Emogene.Burchard@kilburnazon.com', '1988-07-19', 9, 156, '2022-09-29', 'Part-Time', 'UZ112160A', 'NextGen Solutions (2010 - 2012), VisionTech (2012 - 2014), BlueChip Co. (2014 - 2016)'),
(14119372, 'Peirce Stoyell', 12, 'Peirce.Stoyell@kilburnazon.com', '1982-10-03', 8, 157, '2020-10-13', 'Freelance', 'VQ308399D', 'TechCorp (2008 - 2010), Innovatech (2010 - 2012), GlobalSoft (2012 - 2014)'),
(14212158, 'Zacharias Tomlett', 13, 'Zacharias.Tomlett@kilburnazon.com', '1986-08-20', 8, 158, '2018-05-01', 'Full-Time', 'TK940382B', 'Innovatech (2006 - 2008), PrimeCode Inc. (2008 - 2010), CyberDynamics (2010 - 2012)'),
(14213503, 'Merle Lehrahan', 13, 'Merle.Lehrahan@kilburnazon.com', '1990-12-16', 8, 159, '2024-03-03', 'Full-Time', 'CP398627A', 'NextGen Solutions (2012 - 2014), CyberDynamics (2014 - 2016), FutureWare (2016 - 2018)'),
(14216011, 'Berny Mountstephen', 13, 'Berny.Mountstephen@kilburnazon.com', '1986-12-16', 8, 160, '2020-11-07', 'Full-Time', 'CM316192A', 'GlobalSoft (2008 - 2010), VisionTech (2010 - 2012), CyberDynamics (2012 - 2014)'),
(14216103, 'Doretta Lavrick', 13, 'Doretta.Lavrick@kilburnazon.com', '2002-03-02', 8, 161, '2019-10-11', 'Full-Time', 'IN506488A', 'PrimeCode Inc. (2007 - 2009), Alpha Systems (2009 - 2011), VisionTech (2011 - 2013)'),
(14218309, 'Colette McChruiter', 13, 'Colette.McChruiter@kilburnazon.com', '1996-09-27', 9, 162, '2023-05-01', 'Freelance', 'YK615192A', 'GlobalSoft (2011 - 2013), Alpha Systems (2013 - 2015), BlueChip Co. (2015 - 2017)'),
(14219116, 'Cosmo Challicombe', 13, 'Cosmo.Challicombe@kilburnazon.com', '1997-02-13', 4, 163, '2019-11-29', 'Full-Time', 'IB014432A', 'Innovatech (2007 - 2009), GlobalSoft (2009 - 2011), VisionTech (2011 - 2013)'),
(14311409, 'Karlotte Jeffry', 14, 'Karlotte.Jeffry@kilburnazon.com', '1991-07-20', 4, 164, '2023-11-13', 'Full-Time', 'VP996371C', 'NextGen Solutions (2011 - 2013), PrimeCode Inc. (2013 - 2015), BlueChip Co. (2015 - 2017)'),
(14311984, 'Annis Cranna', 14, 'Annis.Cranna@kilburnazon.com', '1987-08-17', 9, 165, '2021-05-18', 'Full-Time', 'RJ336182A', 'NextGen Solutions (2009 - 2011), Alpha Systems (2011 - 2013), BlueChip Co. (2013 - 2015)'),
(14312012, 'Ondrea Brewitt', 14, 'Ondrea.Brewitt@kilburnazon.com', '1979-12-18', 4, 166, '2016-06-02', 'Full-Time', 'WQ882395C', 'TechCorp (2004 - 2006), GlobalSoft (2006 - 2008), PrimeCode Inc. (2008 - 2010)'),
(14312778, 'Andris O\'Coskerry', 14, 'Andris.O\'Coskerry@kilburnazon.com', '1988-04-08', 9, 167, '2017-04-05', 'Full-Time', 'DE252849D', 'TechCorp (2005 - 2007), Innovatech (2007 - 2009), NextGen Solutions (2009 - 2011)'),
(14315369, 'Uta Ashbee', 14, 'Uta.Ashbee@kilburnazon.com', '1989-10-09', 8, 168, '2015-12-30', 'Full-Time', 'RY032334C', 'GlobalSoft (2003 - 2005), PrimeCode Inc. (2005 - 2007), BlueChip Co. (2007 - 2009)'),
(14316158, 'Janessa Hilldrup', 14, 'Janessa.Hilldrup@kilburnazon.com', '2008-07-12', 8, 169, '2016-08-21', 'Full-Time', 'JO147528A', 'GlobalSoft (2004 - 2006), Alpha Systems (2006 - 2008), CyberDynamics (2008 - 2010)'),
(14316558, 'Portie Shera', 14, 'Portie.Shera@kilburnazon.com', '1989-12-28', 4, 170, '2016-02-04', 'Full-Time', 'AU408831D', 'GlobalSoft (2004 - 2006), NextGen Solutions (2006 - 2008), CyberDynamics (2008 - 2010)'),
(14319195, 'Loutitia Marsay', 14, 'Loutitia.Marsay@kilburnazon.com', '1999-05-15', 4, 171, '2020-10-30', 'Full-Time', 'KF921497D', 'NextGen Solutions (2008 - 2010), VisionTech (2010 - 2012), BlueChip Co. (2012 - 2014)'),
(14319749, 'Brendon Pinck', 14, 'Brendon.Pinck@kilburnazon.com', '1983-03-15', 4, 172, '2021-09-10', 'Full-Time', 'QT527452D', 'NextGen Solutions (2009 - 2011), VisionTech (2011 - 2013), FutureWare (2013 - 2015)'),
(14319953, 'Cornelle Plowright', 14, 'Cornelle.Plowright@kilburnazon.com', '1993-03-15', 4, 173, '2015-03-22', 'Full-Time', 'UG075011C', 'Innovatech (2003 - 2005), NextGen Solutions (2005 - 2007), Alpha Systems (2007 - 2009)'),
(15111844, 'Tiphany Ricci', 15, 'Tiphany.Ricci@kilburnazon.com', '1987-12-19', 8, 174, '2018-11-21', 'Freelance', 'OJ317301B', 'GlobalSoft (2006 - 2008), CyberDynamics (2008 - 2010), FutureWare (2010 - 2012)'),
(15112846, 'Quintina Stannard', 15, 'Quintina.Stannard@kilburnazon.com', '2002-10-24', 8, 175, '2018-04-30', 'Part-Time', 'OS711286D', 'Innovatech (2006 - 2008), NextGen Solutions (2008 - 2010), FutureWare (2010 - 2012)'),
(15113827, 'Codie Beards', 15, 'Codie.Beards@kilburnazon.com', '2004-11-17', 4, 176, '2024-03-12', 'Freelance', 'QS611097B', 'GlobalSoft (2012 - 2014), Alpha Systems (2014 - 2016), VisionTech (2016 - 2018)'),
(15114920, 'Archie Mongeot', 15, 'Archie.Mongeot@kilburnazon.com', '1986-06-05', 4, 177, '2023-04-05', 'Freelance', 'DS458797C', 'Alpha Systems (2011 - 2013), CyberDynamics (2013 - 2015), BlueChip Co. (2015 - 2017)'),
(15118902, 'Torrey Lidgertwood', 15, 'Torrey.Lidgertwood@kilburnazon.com', '2006-02-12', 8, 178, '2023-05-07', 'Full-Time', 'MB541802C', 'Innovatech (2011 - 2013), Alpha Systems (2013 - 2015), BlueChip Co. (2015 - 2017)'),
(15119246, 'Felisha Folke', 15, 'Felisha.Folke@kilburnazon.com', '1982-07-29', 9, 179, '2018-08-14', 'Part-Time', 'DY315283B', 'Innovatech (2006 - 2008), NextGen Solutions (2008 - 2010), FutureWare (2010 - 2012)'),
(15119273, 'Jolene Leeuwerink', 15, 'Jolene.Leeuwerink@kilburnazon.com', '1989-03-28', 9, 180, '2018-01-24', 'Part-Time', 'FL470973C', 'TechCorp (2006 - 2008), NextGen Solutions (2008 - 2010), FutureWare (2010 - 2012)'),
(15210019, 'Philipa Secret', 16, 'Philipa.Secret@kilburnazon.com', '1995-12-15', 9, 181, '2020-02-05', 'Part-Time', 'BU955906D', 'Alpha Systems (2008 - 2010), CyberDynamics (2010 - 2012), FutureWare (2012 - 2014)'),
(15210392, 'Gert Romagnosi', 16, 'Gert.Romagnosi@kilburnazon.com', '1995-04-29', 4, 182, '2016-08-21', 'Full-Time', 'TG492624A', 'TechCorp (2004 - 2006), Innovatech (2006 - 2008), CyberDynamics (2008 - 2010)'),
(15211173, 'Colas Rignoldes', 16, 'Colas.Rignoldes@kilburnazon.com', '1982-09-21', 4, 183, '2022-04-09', 'Full-Time', 'TM708308D', 'TechCorp (2010 - 2012), VisionTech (2012 - 2014), FutureWare (2014 - 2016)'),
(15212726, 'Ad Gitthouse', 16, 'Ad.Gitthouse@kilburnazon.com', '2008-05-06', 8, 184, '2018-08-21', 'Full-Time', 'YF342757B', 'Innovatech (2006 - 2008), NextGen Solutions (2008 - 2010), VisionTech (2010 - 2012)'),
(15214928, 'Eb Scotter', 16, 'Eb.Scotter@kilburnazon.com', '2001-09-25', 4, 185, '2021-11-14', 'Freelance', 'UQ114832D', 'VisionTech (2009 - 2011), CyberDynamics (2011 - 2013), BlueChip Co. (2013 - 2015)'),
(15218274, 'Brooke Bevir', 16, 'Brooke.Bevir@kilburnazon.com', '1992-12-08', 9, 186, '2020-04-15', 'Full-Time', 'SJ671620A', 'GlobalSoft (2008 - 2010), NextGen Solutions (2010 - 2012), Alpha Systems (2012 - 2014)'),
(15310538, 'Barnie Howsden', 17, 'Barnie.Howsden@kilburnazon.com', '2004-05-28', 8, 187, '2017-04-26', 'Part-Time', 'QW437381C', 'TechCorp (2005 - 2007), GlobalSoft (2007 - 2009), BlueChip Co. (2009 - 2011)'),
(15311928, 'Hobard McQuillen', 17, 'Hobard.McQuillen@kilburnazon.com', '1981-12-30', 8, 188, '2023-11-24', 'Part-Time', 'VN239373D', 'PrimeCode Inc. (2011 - 2013), VisionTech (2013 - 2015), BlueChip Co. (2015 - 2017)'),
(15311947, 'Tamqrah Havill', 17, 'Tamqrah.Havill@kilburnazon.com', '1974-11-30', 4, 189, '2019-11-23', 'Part-Time', 'ZU142453A', 'NextGen Solutions (2007 - 2009), PrimeCode Inc. (2009 - 2011), VisionTech (2011 - 2013)'),
(15314926, 'Brunhilde Doring', 17, 'Brunhilde.Doring@kilburnazon.com', '1989-03-04', 8, 190, '2023-06-05', 'Full-Time', 'DY737542D', 'Alpha Systems (2011 - 2013), VisionTech (2013 - 2015), FutureWare (2015 - 2017)'),
(15413482, 'Brande Setch', 18, 'Brande.Setch@kilburnazon.com', '2000-06-01', 4, 191, '2020-09-11', 'Full-Time', 'CM199844A', 'NextGen Solutions (2008 - 2010), CyberDynamics (2010 - 2012), BlueChip Co. (2012 - 2014)'),
(15413871, 'Tobit Blacker', 18, 'Tobit.Blacker@kilburnazon.com', '2005-09-26', 9, 192, '2023-01-21', 'Internship', 'PX409930A', 'Innovatech (2011 - 2013), PrimeCode Inc. (2013 - 2015), FutureWare (2015 - 2017)'),
(15419183, 'Bevvy Counihan', 18, 'Bevvy.Counihan@kilburnazon.com', '1992-04-05', 9, 193, '2023-07-04', 'Part-Time', 'CU409429A', 'GlobalSoft (2011 - 2013), PrimeCode Inc. (2013 - 2015), BlueChip Co. (2015 - 2017)'),
(15419236, 'Raynard Scriviner', 18, 'Raynard.Scriviner@kilburnazon.com', '2008-03-27', 4, 194, '2023-03-26', 'Part-Time', 'ST135719D', 'NextGen Solutions (2011 - 2013), Alpha Systems (2013 - 2015), VisionTech (2015 - 2017)'),
(15419427, 'Fergus Blacker', 18, 'Fergus.Blacker@kilburnazon.com', '2005-09-26', 9, 192, '2023-01-21', 'Internship', 'AJ281735A', 'Innovatech (2011 - 2013), PrimeCode Inc. (2013 - 2015), VisionTech (2015 - 2017)'),
(15512916, 'Sherye Larrat', 19, 'Sherye.Larrat@kilburnazon.com', '1993-12-23', 4, 195, '2018-03-08', 'Part-Time', 'ZK749313A', 'Innovatech (2006 - 2008), VisionTech (2008 - 2010), FutureWare (2010 - 2012)'),
(15518273, 'Julissa Pedrocchi', 19, 'Julissa.Pedrocchi@kilburnazon.com', '1989-02-28', 8, 196, '2022-02-21', 'Part-Time', 'XA340620B', 'PrimeCode Inc. (2010 - 2012), VisionTech (2012 - 2014), CyberDynamics (2014 - 2016)');

--
-- Triggers `Employee`
--
DELIMITER $$
CREATE TRIGGER `after_employee_insert` AFTER INSERT ON `Employee` FOR EACH ROW BEGIN
    DECLARE years_employed INT;
    DECLARE annual_leave_total INT;

    SET years_employed = TIMESTAMPDIFF(YEAR, NEW.hired_date, CURDATE());
    SET annual_leave_total = 28 + (2 * years_employed);

    INSERT INTO LeaveManagement (employee_id, years_employed, annual_leave_total, annual_leave_left)
    VALUES (NEW.id, years_employed, annual_leave_total, annual_leave_total);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_employee_delete` BEFORE DELETE ON `Employee` FOR EACH ROW BEGIN
    DELETE FROM EmergencyContact WHERE employee_id = OLD.id;

    DELETE FROM User WHERE employee_id = OLD.id;

    DELETE FROM LeaveManagement WHERE employee_id = OLD.id;

    DELETE FROM LeaveTable  WHERE employee_id = OLD.id;
    DELETE FROM Payroll WHERE employee_id = OLD.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeAudit`
--

CREATE TABLE `EmployeeAudit` (
  `audit_id` int(11) NOT NULL,
  `deleted_employee_name` varchar(255) NOT NULL,
  `deleted_employee_email` varchar(255) NOT NULL,
  `deleted_by_user_id` int(11) NOT NULL,
  `notes` text DEFAULT NULL,
  `deletion_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `EmployeeAudit`
--

INSERT INTO `EmployeeAudit` (`audit_id`, `deleted_employee_name`, `deleted_employee_email`, `deleted_by_user_id`, `notes`, `deletion_time`) VALUES
(1, 'Shaheer', 'Shaher@somethign.uk', 11223214, NULL, '2024-12-03 00:57:04'),
(2, 'kalmani', 'faroqu@email.com', 11223214, NULL, '2024-12-03 01:02:21'),
(3, 'Hamza Khan', 'Hamza.Khan@Kilburn.com', 11223214, NULL, '2024-12-03 01:14:52'),
(4, 'Hamza Khan', 'Hamza.Khan@rochdale.com', 12113666, 'Had to go.', '2024-12-03 16:38:00');

-- --------------------------------------------------------

--
-- Table structure for table `LeaveManagement`
--

CREATE TABLE `LeaveManagement` (
  `employee_id` int(11) NOT NULL,
  `years_employed` int(11) NOT NULL,
  `annual_leave_total` int(11) NOT NULL,
  `annual_leave_left` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `LeaveManagement`
--

INSERT INTO `LeaveManagement` (`employee_id`, `years_employed`, `annual_leave_total`, `annual_leave_left`) VALUES
(1221265, 9, 46, 46),
(1221452, 9, 46, 46),
(1221709, 4, 36, 36),
(1221792, 1, 30, 30),
(1221832, 8, 44, 44),
(1221908, 2, 32, 32),
(11123211, 10, 48, 48),
(11214682, 9, 46, 46),
(11223214, 7, 42, 42),
(11224403, 9, 46, 46),
(11226496, 8, 44, 44),
(11229804, 7, 42, 42),
(12110062, 7, 42, 42),
(12111088, 1, 30, 30),
(12111522, 2, 32, 32),
(12112639, 1, 30, 30),
(12112712, 1, 30, 30),
(12112750, 8, 44, 44),
(12113642, 1, 30, 30),
(12113666, 5, 38, 13),
(12114168, 2, 32, 32),
(12116288, 8, 44, 44),
(12116601, 7, 42, 42),
(12118412, 8, 44, 44),
(12211065, 1, 30, 30),
(12211197, 1, 30, 30),
(12211317, 7, 42, 42),
(12211356, 5, 38, 38),
(12211384, 5, 38, 38),
(12211435, 3, 34, 34),
(12211587, 2, 32, 32),
(12211691, 3, 34, 34),
(12211861, 3, 34, 34),
(12212092, 6, 40, 40),
(12212102, 8, 44, 44),
(12212104, 7, 42, 42),
(12212133, 6, 40, 40),
(12212155, 8, 44, 44),
(12212183, 3, 34, 34),
(12212299, 5, 38, 38),
(12212488, 2, 32, 32),
(12212691, 2, 32, 32),
(12212751, 0, 28, 28),
(12212803, 6, 40, 40),
(12212831, 4, 36, 36),
(12212901, 4, 36, 36),
(12212982, 8, 44, 44),
(12212991, 6, 40, 40),
(12213124, 9, 46, 46),
(12213338, 8, 44, 44),
(12213491, 9, 46, 46),
(12213598, 5, 38, 38),
(12213724, 8, 44, 44),
(12213809, 5, 38, 38),
(12213841, 7, 42, 42),
(12213973, 3, 34, 34),
(12213974, 7, 42, 42),
(12213983, 7, 42, 42),
(12214007, 3, 34, 34),
(12214028, 2, 32, 32),
(12214048, 4, 36, 36),
(12214105, 5, 38, 38),
(12214121, 3, 34, 34),
(12214152, 3, 34, 34),
(12214303, 3, 34, 34),
(12214418, 8, 44, 44),
(12214573, 6, 40, 40),
(12214750, 0, 28, 28),
(12214822, 2, 32, 32),
(12215160, 7, 42, 42),
(12215254, 5, 38, 38),
(12215263, 1, 30, 30),
(12215349, 7, 42, 42),
(12215479, 7, 42, 42),
(12215484, 7, 42, 42),
(12215504, 2, 32, 32),
(12215537, 1, 30, 30),
(12215562, 8, 44, 44),
(12215594, 1, 30, 30),
(12215734, 4, 36, 36),
(12215785, 6, 40, 40),
(12215805, 1, 30, 30),
(12215877, 7, 42, 42),
(12215968, 6, 40, 40),
(12216093, 1, 30, 30),
(12216138, 7, 42, 42),
(12216285, 2, 32, 32),
(12216342, 9, 46, 46),
(12217046, 1, 30, 30),
(12217234, 9, 46, 46),
(12217291, 5, 38, 38),
(12217385, 9, 46, 46),
(12217466, 8, 44, 44),
(12217623, 9, 46, 46),
(12217795, 0, 28, 28),
(12217867, 3, 34, 34),
(12217876, 7, 42, 42),
(12218012, 8, 44, 44),
(12218053, 2, 32, 32),
(12218242, 3, 34, 34),
(12218688, 5, 38, 38),
(12218788, 3, 34, 34),
(12218834, 5, 38, 38),
(12218854, 2, 32, 32),
(12218878, 2, 32, 32),
(12218960, 8, 44, 44),
(12219024, 6, 40, 40),
(12219175, 5, 38, 38),
(12219204, 8, 44, 44),
(12219325, 2, 32, 32),
(12219474, 6, 40, 40),
(12219510, 4, 36, 36),
(12219550, 1, 30, 30),
(12219584, 9, 46, 46),
(12219595, 2, 32, 32),
(12219646, 6, 40, 40),
(12219701, 3, 34, 34),
(12219779, 3, 34, 34),
(12311037, 8, 44, 44),
(12311055, 4, 36, 36),
(12311153, 7, 42, 42),
(12311581, 0, 28, 28),
(12311667, 0, 28, 28),
(12311703, 1, 30, 30),
(12312622, 3, 34, 34),
(12312658, 5, 38, 38),
(12312661, 6, 40, 40),
(12312718, 8, 44, 44),
(12313264, 4, 36, 36),
(12313366, 8, 44, 44),
(12313725, 7, 42, 42),
(12313980, 8, 44, 44),
(12314042, 9, 46, 46),
(12314327, 6, 40, 40),
(12314528, 7, 42, 42),
(12314667, 5, 38, 38),
(12315187, 2, 32, 32),
(12315752, 9, 46, 46),
(12315825, 6, 40, 40),
(12315928, 6, 40, 40),
(12316053, 2, 32, 32),
(12316237, 6, 40, 40),
(12316925, 8, 44, 44),
(12317808, 9, 46, 46),
(12317934, 8, 44, 44),
(12318662, 4, 36, 36),
(12319513, 3, 34, 34),
(12319914, 8, 44, 44),
(13110482, 6, 40, 40),
(13111738, 3, 34, 34),
(13117262, 2, 32, 32),
(13211973, 1, 30, 30),
(13212738, 4, 36, 36),
(14111094, 4, 36, 36),
(14113626, 4, 36, 36),
(14118236, 2, 32, 32),
(14119372, 4, 36, 36),
(14212158, 6, 40, 40),
(14213503, 0, 28, 28),
(14216011, 4, 36, 36),
(14216103, 5, 38, 38),
(14218309, 1, 30, 30),
(14219116, 5, 38, 38),
(14311409, 1, 30, 30),
(14311984, 3, 34, 34),
(14312012, 8, 44, 44),
(14312778, 7, 42, 42),
(14315369, 8, 44, 44),
(14316158, 8, 44, 44),
(14316558, 8, 44, 44),
(14319195, 4, 36, 36),
(14319749, 3, 34, 34),
(14319953, 9, 46, 46),
(15111844, 6, 40, 40),
(15112846, 6, 40, 40),
(15113827, 0, 28, 28),
(15114920, 1, 30, 30),
(15118902, 1, 30, 30),
(15119246, 6, 40, 40),
(15119273, 6, 40, 40),
(15210019, 4, 36, 36),
(15210392, 8, 44, 44),
(15211173, 2, 32, 32),
(15212726, 6, 40, 40),
(15214928, 3, 34, 34),
(15218274, 4, 36, 36),
(15310538, 7, 42, 42),
(15311928, 1, 30, 30),
(15311947, 5, 38, 38),
(15314926, 1, 30, 30),
(15413482, 4, 36, 36),
(15413871, 1, 30, 30),
(15419183, 1, 30, 30),
(15419236, 1, 30, 30),
(15419427, 1, 30, 30),
(15512916, 6, 40, 40),
(15518273, 2, 32, 32);

-- --------------------------------------------------------

--
-- Table structure for table `LeaveTable`
--

CREATE TABLE `LeaveTable` (
  `leave_id` int(11) NOT NULL,
  `leave_type` varchar(100) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `days_taken` int(11) GENERATED ALWAYS AS (to_days(`end_date`) - to_days(`start_date`) + 1) STORED,
  `reason` text DEFAULT NULL,
  `status` enum('Approved','Pending','Rejected') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `LeaveTable`
--

INSERT INTO `LeaveTable` (`leave_id`, `leave_type`, `employee_id`, `start_date`, `end_date`, `reason`, `status`) VALUES
(1, 'personal', 12113666, '2024-12-12', '2024-12-14', 'Having baby.', 'Approved'),
(2, 'holiday', 12113666, '2024-12-16', '2024-12-16', 'Going Scotland.', 'Approved'),
(3, 'holiday', 12113666, '2024-12-16', '2024-12-16', 'Going Scotland.', 'Rejected'),
(4, 'holiday', 12113666, '2024-12-16', '2024-12-16', 'Going Scotland.', 'Approved'),
(5, 'sick', 12113666, '2024-12-12', '2025-01-31', 'Out bro.', 'Rejected');

--
-- Triggers `LeaveTable`
--
DELIMITER $$
CREATE TRIGGER `after_leave_update` AFTER UPDATE ON `LeaveTable` FOR EACH ROW BEGIN
	DECLARE days_off INT;
    SET days_off = DATEDIFF(NEW.end_date, NEW.start_date) + 1;
    
    IF NEW.status = 'Approved' THEN
        UPDATE LeaveManagement
        SET annual_leave_left = annual_leave_left - days_off
        WHERE employee_id = NEW.employee_id;
    END IF;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_leave_insert` BEFORE INSERT ON `LeaveTable` FOR EACH ROW BEGIN
    DECLARE days_off INT;
    DECLARE leave_left INT;

    SET days_off = DATEDIFF(NEW.end_date, NEW.start_date) + 1;
    SELECT annual_leave_left INTO leave_left
    FROM LeaveManagement
    WHERE employee_id = NEW.employee_id;

    IF (days_off > leave_left) THEN
        SET NEW.status = 'Rejected';
    END IF;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Office`
--

CREATE TABLE `Office` (
  `office_id` int(11) NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `office_name` varchar(100) NOT NULL,
  `phone_number` varchar(16) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `average_rating` decimal(2,1) DEFAULT NULL CHECK (0 <= `average_rating` <= 5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Office`
--

INSERT INTO `Office` (`office_id`, `address_id`, `office_name`, `phone_number`, `website`, `average_rating`) VALUES
(1, 257, 'Northern Ireland Distribution Centre', NULL, NULL, NULL),
(2, 264, 'England South Distribution Centre', NULL, 'fpsdistribution.com', 5.0),
(3, 260, 'England Central Distribution Centre', NULL, NULL, NULL),
(4, 259, 'Kilburn Building', '+44 161 306 9280', 'www.cs.manchester.ac.uk', 4.4),
(5, 262, 'Wales Distribution Centre', NULL, NULL, NULL),
(6, 256, 'Scotland Distribution Centre', NULL, NULL, NULL),
(7, 258, 'England North Distribution Centre', '+44 1642 556622', 'burnsidedistribution.co.uk', 4.3),
(8, 261, 'Lewis Building', '+44 800 060 8703', 'www.spacesworks.com', 3.9),
(9, 263, 'Broadgate Tower', NULL, 'www.broadgatetower.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PA`
--

CREATE TABLE `PA` (
  `employee_id` int(11) NOT NULL,
  `average_response_satisfaction` decimal(2,1) DEFAULT NULL CHECK (`average_response_satisfaction` >= 0 and `average_response_satisfaction` <= 5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Payroll`
--

CREATE TABLE `Payroll` (
  `employee_id` int(11) NOT NULL,
  `base_salary` decimal(10,2) NOT NULL,
  `bonus` decimal(10,2) DEFAULT 0.00,
  `allowance` decimal(10,2) DEFAULT 0.00,
  `tax` decimal(10,2) DEFAULT 0.00,
  `insurance` decimal(10,2) DEFAULT 0.00,
  `retirement` decimal(10,2) DEFAULT 0.00,
  `net_pay` decimal(10,2) GENERATED ALWAYS AS (`base_salary` + `bonus` + `allowance` - (`tax` + `insurance` + `retirement`)) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Payroll`
--

INSERT INTO `Payroll` (`employee_id`, `base_salary`, `bonus`, `allowance`, `tax`, `insurance`, `retirement`) VALUES
(1221265, 25416.00, 2541.60, 1270.80, 3812.40, 1270.80, 1270.80),
(1221452, 29230.00, 2923.00, 1461.50, 4384.50, 1461.50, 1461.50),
(1221709, 27263.00, 2726.30, 1363.15, 4089.45, 1363.15, 1363.15),
(1221792, 25773.00, 2577.30, 1288.65, 3865.95, 1288.65, 1288.65),
(1221832, 29058.00, 2905.80, 1452.90, 4358.70, 1452.90, 1452.90),
(1221908, 26375.00, 2637.50, 1318.75, 3956.25, 1318.75, 1318.75),
(11123211, 49180.00, 4918.00, 2459.00, 7377.00, 2459.00, 2459.00),
(11214682, 75000.00, 7500.00, 3750.00, 11250.00, 3750.00, 3750.00),
(11223214, 45876.00, 4587.60, 2293.80, 6881.40, 2293.80, 2293.80),
(11224403, 31520.00, 3152.00, 1576.00, 4728.00, 1576.00, 1576.00),
(11226496, 30032.00, 3003.20, 1501.60, 4504.80, 1501.60, 1501.60),
(11229804, 47215.00, 4721.50, 2360.75, 7082.25, 2360.75, 2360.75),
(12110062, 28546.00, 2854.60, 1427.30, 4281.90, 1427.30, 1427.30),
(12111088, 33774.00, 3377.40, 1688.70, 5066.10, 1688.70, 1688.70),
(12111522, 29570.00, 2957.00, 1478.50, 4435.50, 1478.50, 1478.50),
(12112639, 23283.00, 2328.30, 1164.15, 3492.45, 1164.15, 1164.15),
(12112712, 32861.00, 3286.10, 1643.05, 4929.15, 1643.05, 1643.05),
(12112750, 25195.00, 2519.50, 1259.75, 3779.25, 1259.75, 1259.75),
(12113642, 29686.00, 2968.60, 1484.30, 4452.90, 1484.30, 1484.30),
(12113666, 27512.00, 2751.20, 1375.60, 4126.80, 1375.60, 1375.60),
(12114168, 22947.00, 2294.70, 1147.35, 3442.05, 1147.35, 1147.35),
(12116288, 34693.00, 3469.30, 1734.65, 5203.95, 1734.65, 1734.65),
(12116601, 23242.00, 2324.20, 1162.10, 3486.30, 1162.10, 1162.10),
(12118412, 33345.00, 3334.50, 1667.25, 5001.75, 1667.25, 1667.25),
(12211065, 23375.00, 2337.50, 1168.75, 3506.25, 1168.75, 1168.75),
(12211197, 22669.00, 2266.90, 1133.45, 3400.35, 1133.45, 1133.45),
(12211317, 29224.00, 2922.40, 1461.20, 4383.60, 1461.20, 1461.20),
(12211356, 24899.00, 2489.90, 1244.95, 3734.85, 1244.95, 1244.95),
(12211384, 26857.00, 2685.70, 1342.85, 4028.55, 1342.85, 1342.85),
(12211435, 26893.00, 2689.30, 1344.65, 4033.95, 1344.65, 1344.65),
(12211587, 23519.00, 2351.90, 1175.95, 3527.85, 1175.95, 1175.95),
(12211691, 22074.00, 2207.40, 1103.70, 3311.10, 1103.70, 1103.70),
(12211861, 24642.00, 2464.20, 1232.10, 3696.30, 1232.10, 1232.10),
(12212092, 24478.00, 2447.80, 1223.90, 3671.70, 1223.90, 1223.90),
(12212102, 26100.00, 2610.00, 1305.00, 3915.00, 1305.00, 1305.00),
(12212104, 29807.00, 2980.70, 1490.35, 4471.05, 1490.35, 1490.35),
(12212133, 24560.00, 2456.00, 1228.00, 3684.00, 1228.00, 1228.00),
(12212155, 23437.00, 2343.70, 1171.85, 3515.55, 1171.85, 1171.85),
(12212183, 25216.00, 2521.60, 1260.80, 3782.40, 1260.80, 1260.80),
(12212299, 26292.00, 2629.20, 1314.60, 3943.80, 1314.60, 1314.60),
(12212488, 29674.00, 2967.40, 1483.70, 4451.10, 1483.70, 1483.70),
(12212691, 24961.00, 2496.10, 1248.05, 3744.15, 1248.05, 1248.05),
(12212751, 27487.00, 2748.70, 1374.35, 4123.05, 1374.35, 1374.35),
(12212803, 28490.00, 2849.00, 1424.50, 4273.50, 1424.50, 1424.50),
(12212831, 26642.00, 2664.20, 1332.10, 3996.30, 1332.10, 1332.10),
(12212901, 28395.00, 2839.50, 1419.75, 4259.25, 1419.75, 1419.75),
(12212982, 24840.00, 2484.00, 1242.00, 3726.00, 1242.00, 1242.00),
(12212991, 27826.00, 2782.60, 1391.30, 4173.90, 1391.30, 1391.30),
(12213124, 25612.00, 2561.20, 1280.60, 3841.80, 1280.60, 1280.60),
(12213338, 27977.00, 2797.70, 1398.85, 4196.55, 1398.85, 1398.85),
(12213491, 24461.00, 2446.10, 1223.05, 3669.15, 1223.05, 1223.05),
(12213598, 29448.00, 2944.80, 1472.40, 4417.20, 1472.40, 1472.40),
(12213724, 26303.00, 2630.30, 1315.15, 3945.45, 1315.15, 1315.15),
(12213809, 26798.00, 2679.80, 1339.90, 4019.70, 1339.90, 1339.90),
(12213841, 27880.00, 2788.00, 1394.00, 4182.00, 1394.00, 1394.00),
(12213973, 29053.00, 2905.30, 1452.65, 4357.95, 1452.65, 1452.65),
(12213974, 26620.00, 2662.00, 1331.00, 3993.00, 1331.00, 1331.00),
(12213983, 25026.00, 2502.60, 1251.30, 3753.90, 1251.30, 1251.30),
(12214007, 29193.00, 2919.30, 1459.65, 4378.95, 1459.65, 1459.65),
(12214028, 22078.00, 2207.80, 1103.90, 3311.70, 1103.90, 1103.90),
(12214048, 24867.00, 2486.70, 1243.35, 3730.05, 1243.35, 1243.35),
(12214105, 28395.00, 2839.50, 1419.75, 4259.25, 1419.75, 1419.75),
(12214121, 27388.00, 2738.80, 1369.40, 4108.20, 1369.40, 1369.40),
(12214152, 29285.00, 2928.50, 1464.25, 4392.75, 1464.25, 1464.25),
(12214303, 28963.00, 2896.30, 1448.15, 4344.45, 1448.15, 1448.15),
(12214418, 27243.00, 2724.30, 1362.15, 4086.45, 1362.15, 1362.15),
(12214573, 23750.00, 2375.00, 1187.50, 3562.50, 1187.50, 1187.50),
(12214750, 26338.00, 2633.80, 1316.90, 3950.70, 1316.90, 1316.90),
(12214822, 29524.00, 2952.40, 1476.20, 4428.60, 1476.20, 1476.20),
(12215160, 25429.00, 2542.90, 1271.45, 3814.35, 1271.45, 1271.45),
(12215254, 27170.00, 2717.00, 1358.50, 4075.50, 1358.50, 1358.50),
(12215263, 22185.00, 2218.50, 1109.25, 3327.75, 1109.25, 1109.25),
(12215349, 27174.00, 2717.40, 1358.70, 4076.10, 1358.70, 1358.70),
(12215479, 24709.00, 2470.90, 1235.45, 3706.35, 1235.45, 1235.45),
(12215484, 22682.00, 2268.20, 1134.10, 3402.30, 1134.10, 1134.10),
(12215504, 28468.00, 2846.80, 1423.40, 4270.20, 1423.40, 1423.40),
(12215537, 29149.00, 2914.90, 1457.45, 4372.35, 1457.45, 1457.45),
(12215562, 27210.00, 2721.00, 1360.50, 4081.50, 1360.50, 1360.50),
(12215594, 27496.00, 2749.60, 1374.80, 4124.40, 1374.80, 1374.80),
(12215734, 23196.00, 2319.60, 1159.80, 3479.40, 1159.80, 1159.80),
(12215785, 26277.00, 2627.70, 1313.85, 3941.55, 1313.85, 1313.85),
(12215805, 22579.00, 2257.90, 1128.95, 3386.85, 1128.95, 1128.95),
(12215877, 28331.00, 2833.10, 1416.55, 4249.65, 1416.55, 1416.55),
(12215968, 22214.00, 2221.40, 1110.70, 3332.10, 1110.70, 1110.70),
(12216093, 25094.00, 2509.40, 1254.70, 3764.10, 1254.70, 1254.70),
(12216138, 23051.00, 2305.10, 1152.55, 3457.65, 1152.55, 1152.55),
(12216285, 22899.00, 2289.90, 1144.95, 3434.85, 1144.95, 1144.95),
(12216342, 22389.00, 2238.90, 1119.45, 3358.35, 1119.45, 1119.45),
(12217046, 28581.00, 2858.10, 1429.05, 4287.15, 1429.05, 1429.05),
(12217234, 23923.00, 2392.30, 1196.15, 3588.45, 1196.15, 1196.15),
(12217291, 28884.00, 2888.40, 1444.20, 4332.60, 1444.20, 1444.20),
(12217385, 25837.00, 2583.70, 1291.85, 3875.55, 1291.85, 1291.85),
(12217466, 22660.00, 2266.00, 1133.00, 3399.00, 1133.00, 1133.00),
(12217623, 25826.00, 2582.60, 1291.30, 3873.90, 1291.30, 1291.30),
(12217795, 25346.00, 2534.60, 1267.30, 3801.90, 1267.30, 1267.30),
(12217867, 23623.00, 2362.30, 1181.15, 3543.45, 1181.15, 1181.15),
(12217876, 25796.00, 2579.60, 1289.80, 3869.40, 1289.80, 1289.80),
(12218012, 28948.00, 2894.80, 1447.40, 4342.20, 1447.40, 1447.40),
(12218053, 23852.00, 2385.20, 1192.60, 3577.80, 1192.60, 1192.60),
(12218242, 29838.00, 2983.80, 1491.90, 4475.70, 1491.90, 1491.90),
(12218688, 24395.00, 2439.50, 1219.75, 3659.25, 1219.75, 1219.75),
(12218788, 29490.00, 2949.00, 1474.50, 4423.50, 1474.50, 1474.50),
(12218834, 27114.00, 2711.40, 1355.70, 4067.10, 1355.70, 1355.70),
(12218854, 29163.00, 2916.30, 1458.15, 4374.45, 1458.15, 1458.15),
(12218878, 26072.00, 2607.20, 1303.60, 3910.80, 1303.60, 1303.60),
(12218960, 23982.00, 2398.20, 1199.10, 3597.30, 1199.10, 1199.10),
(12219024, 25277.00, 2527.70, 1263.85, 3791.55, 1263.85, 1263.85),
(12219175, 23367.00, 2336.70, 1168.35, 3505.05, 1168.35, 1168.35),
(12219204, 27984.00, 2798.40, 1399.20, 4197.60, 1399.20, 1399.20),
(12219325, 26637.00, 2663.70, 1331.85, 3995.55, 1331.85, 1331.85),
(12219474, 23557.00, 2355.70, 1177.85, 3533.55, 1177.85, 1177.85),
(12219510, 28410.00, 2841.00, 1420.50, 4261.50, 1420.50, 1420.50),
(12219550, 27710.00, 2771.00, 1385.50, 4156.50, 1385.50, 1385.50),
(12219584, 27538.00, 2753.80, 1376.90, 4130.70, 1376.90, 1376.90),
(12219595, 27289.00, 2728.90, 1364.45, 4093.35, 1364.45, 1364.45),
(12219646, 28901.00, 2890.10, 1445.05, 4335.15, 1445.05, 1445.05),
(12219701, 23595.00, 2359.50, 1179.75, 3539.25, 1179.75, 1179.75),
(12219779, 24658.00, 2465.80, 1232.90, 3698.70, 1232.90, 1232.90),
(12311037, 29913.00, 2991.30, 1495.65, 4486.95, 1495.65, 1495.65),
(12311055, 31513.00, 3151.30, 1575.65, 4726.95, 1575.65, 1575.65),
(12311153, 25745.00, 2574.50, 1287.25, 3861.75, 1287.25, 1287.25),
(12311581, 27848.00, 2784.80, 1392.40, 4177.20, 1392.40, 1392.40),
(12311667, 30717.00, 3071.70, 1535.85, 4607.55, 1535.85, 1535.85),
(12311703, 26213.00, 2621.30, 1310.65, 3931.95, 1310.65, 1310.65),
(12312622, 31890.00, 3189.00, 1594.50, 4783.50, 1594.50, 1594.50),
(12312658, 25278.00, 2527.80, 1263.90, 3791.70, 1263.90, 1263.90),
(12312661, 34275.00, 3427.50, 1713.75, 5141.25, 1713.75, 1713.75),
(12312718, 33264.00, 3326.40, 1663.20, 4989.60, 1663.20, 1663.20),
(12313264, 26346.00, 2634.60, 1317.30, 3951.90, 1317.30, 1317.30),
(12313366, 28300.00, 2830.00, 1415.00, 4245.00, 1415.00, 1415.00),
(12313725, 32593.00, 3259.30, 1629.65, 4888.95, 1629.65, 1629.65),
(12313980, 31733.00, 3173.30, 1586.65, 4759.95, 1586.65, 1586.65),
(12314042, 29544.00, 2954.40, 1477.20, 4431.60, 1477.20, 1477.20),
(12314327, 28500.00, 2850.00, 1425.00, 4275.00, 1425.00, 1425.00),
(12314528, 33011.00, 3301.10, 1650.55, 4951.65, 1650.55, 1650.55),
(12314667, 25331.00, 2533.10, 1266.55, 3799.65, 1266.55, 1266.55),
(12315187, 30474.00, 3047.40, 1523.70, 4571.10, 1523.70, 1523.70),
(12315752, 26877.00, 2687.70, 1343.85, 4031.55, 1343.85, 1343.85),
(12315825, 25521.00, 2552.10, 1276.05, 3828.15, 1276.05, 1276.05),
(12315928, 30488.00, 3048.80, 1524.40, 4573.20, 1524.40, 1524.40),
(12316053, 27092.00, 2709.20, 1354.60, 4063.80, 1354.60, 1354.60),
(12316237, 28972.00, 2897.20, 1448.60, 4345.80, 1448.60, 1448.60),
(12316925, 28147.00, 2814.70, 1407.35, 4222.05, 1407.35, 1407.35),
(12317808, 32534.00, 3253.40, 1626.70, 4880.10, 1626.70, 1626.70),
(12317934, 26136.00, 2613.60, 1306.80, 3920.40, 1306.80, 1306.80),
(12318662, 31908.00, 3190.80, 1595.40, 4786.20, 1595.40, 1595.40),
(12319513, 33855.00, 3385.50, 1692.75, 5078.25, 1692.75, 1692.75),
(12319914, 31935.00, 3193.50, 1596.75, 4790.25, 1596.75, 1596.75),
(13110482, 33681.00, 3368.10, 1684.05, 5052.15, 1684.05, 1684.05),
(13111738, 38988.00, 3898.80, 1949.40, 5848.20, 1949.40, 1949.40),
(13117262, 44372.00, 4437.20, 2218.60, 6655.80, 2218.60, 2218.60),
(13211973, 39153.00, 3915.30, 1957.65, 5872.95, 1957.65, 1957.65),
(13212738, 32254.00, 3225.40, 1612.70, 4838.10, 1612.70, 1612.70),
(14111094, 28285.00, 2828.50, 1414.25, 4242.75, 1414.25, 1414.25),
(14113626, 23218.00, 2321.80, 1160.90, 3482.70, 1160.90, 1160.90),
(14118236, 25249.00, 2524.90, 1262.45, 3787.35, 1262.45, 1262.45),
(14119372, 22515.00, 2251.50, 1125.75, 3377.25, 1125.75, 1125.75),
(14212158, 28703.00, 2870.30, 1435.15, 4305.45, 1435.15, 1435.15),
(14213503, 29514.00, 2951.40, 1475.70, 4427.10, 1475.70, 1475.70),
(14216011, 24129.00, 2412.90, 1206.45, 3619.35, 1206.45, 1206.45),
(14216103, 25206.00, 2520.60, 1260.30, 3780.90, 1260.30, 1260.30),
(14218309, 28946.00, 2894.60, 1447.30, 4341.90, 1447.30, 1447.30),
(14219116, 27254.00, 2725.40, 1362.70, 4088.10, 1362.70, 1362.70),
(14311409, 23759.00, 2375.90, 1187.95, 3563.85, 1187.95, 1187.95),
(14311984, 24243.00, 2424.30, 1212.15, 3636.45, 1212.15, 1212.15),
(14312012, 22872.00, 2287.20, 1143.60, 3430.80, 1143.60, 1143.60),
(14312778, 23747.00, 2374.70, 1187.35, 3562.05, 1187.35, 1187.35),
(14315369, 23762.00, 2376.20, 1188.10, 3564.30, 1188.10, 1188.10),
(14316158, 24021.00, 2402.10, 1201.05, 3603.15, 1201.05, 1201.05),
(14316558, 25682.00, 2568.20, 1284.10, 3852.30, 1284.10, 1284.10),
(14319195, 29351.00, 2935.10, 1467.55, 4402.65, 1467.55, 1467.55),
(14319749, 25881.00, 2588.10, 1294.05, 3882.15, 1294.05, 1294.05),
(14319953, 28686.00, 2868.60, 1434.30, 4302.90, 1434.30, 1434.30),
(15111844, 38197.00, 3819.70, 1909.85, 5729.55, 1909.85, 1909.85),
(15112846, 48586.00, 4858.60, 2429.30, 7287.90, 2429.30, 2429.30),
(15113827, 38820.00, 3882.00, 1941.00, 5823.00, 1941.00, 1941.00),
(15114920, 46420.00, 4642.00, 2321.00, 6963.00, 2321.00, 2321.00),
(15118902, 37008.00, 3700.80, 1850.40, 5551.20, 1850.40, 1850.40),
(15119246, 38958.00, 3895.80, 1947.90, 5843.70, 1947.90, 1947.90),
(15119273, 43182.00, 4318.20, 2159.10, 6477.30, 2159.10, 2159.10),
(15210019, 39583.00, 3958.30, 1979.15, 5937.45, 1979.15, 1979.15),
(15210392, 37617.00, 3761.70, 1880.85, 5642.55, 1880.85, 1880.85),
(15211173, 35925.00, 3592.50, 1796.25, 5388.75, 1796.25, 1796.25),
(15212726, 38896.00, 3889.60, 1944.80, 5834.40, 1944.80, 1944.80),
(15214928, 35585.00, 3558.50, 1779.25, 5337.75, 1779.25, 1779.25),
(15218274, 41271.00, 4127.10, 2063.55, 6190.65, 2063.55, 2063.55),
(15310538, 78124.00, 7812.40, 3906.20, 11718.60, 3906.20, 3906.20),
(15311928, 68912.00, 6891.20, 3445.60, 10336.80, 3445.60, 3445.60),
(15311947, 89016.00, 8901.60, 4450.80, 13352.40, 4450.80, 4450.80),
(15314926, 82064.00, 8206.40, 4103.20, 12309.60, 4103.20, 4103.20),
(15413482, 53173.00, 5317.30, 2658.65, 7975.95, 2658.65, 2658.65),
(15413871, 22000.00, 2200.00, 1100.00, 3300.00, 1100.00, 1100.00),
(15419183, 95590.00, 9559.00, 4779.50, 14338.50, 4779.50, 4779.50),
(15419236, 68175.00, 6817.50, 3408.75, 10226.25, 3408.75, 3408.75),
(15419427, 22000.00, 2200.00, 1100.00, 3300.00, 1100.00, 1100.00),
(15512916, 63743.00, 6374.30, 3187.15, 9561.45, 3187.15, 3187.15),
(15518273, 62946.00, 6294.60, 3147.30, 9441.90, 3147.30, 3147.30);

-- --------------------------------------------------------

--
-- Table structure for table `Position`
--

CREATE TABLE `Position` (
  `position_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `position_name` varchar(100) NOT NULL,
  `min_salary` decimal(10,2) DEFAULT NULL,
  `max_salary` decimal(10,2) DEFAULT NULL,
  `bonus` decimal(10,2) DEFAULT NULL,
  `is_executive` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Position`
--

INSERT INTO `Position` (`position_id`, `department_id`, `position_name`, `min_salary`, `max_salary`, `bonus`, `is_executive`) VALUES
(1, 4, 'Factory Worker', NULL, NULL, NULL, 0),
(2, 1, 'CEO', NULL, NULL, NULL, 1),
(3, 1, 'PA', NULL, NULL, NULL, 1),
(4, 1, 'CTO', NULL, NULL, NULL, 1),
(5, 1, 'CMO', NULL, NULL, NULL, 1),
(6, 1, 'CFO', NULL, NULL, NULL, 1),
(7, 1, 'COO', NULL, NULL, NULL, 1),
(8, 4, 'Health & Safety Officer', NULL, NULL, NULL, 0),
(9, 4, 'Delivery Driver', NULL, NULL, NULL, 0),
(10, 2, 'Accountant', NULL, NULL, NULL, 0),
(11, 2, 'Financial Analyst', NULL, NULL, NULL, 0),
(12, 3, 'Brand Developer', NULL, NULL, NULL, 0),
(13, 3, 'Industry Researcher', NULL, NULL, NULL, 0),
(14, 3, 'Product Designer', NULL, NULL, NULL, 0),
(15, 5, 'Front End Developer', NULL, NULL, NULL, 0),
(16, 5, 'Back End Developer', NULL, NULL, NULL, 0),
(17, 5, 'Full Stack Developer', NULL, NULL, NULL, 0),
(18, 5, 'Junior Developer', NULL, NULL, NULL, 0),
(19, 5, 'Cyber Security', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `uniq_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `manufacturer` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL CHECK (`price` > 0),
  `number_available_in_stock` int(11) NOT NULL,
  `number_of_reviews` int(11) NOT NULL DEFAULT 0,
  `number_of_answered_questions` int(11) NOT NULL DEFAULT 0,
  `average_review_rating` decimal(2,1) NOT NULL CHECK (`average_review_rating` >= 0 and `average_review_rating` <= 5),
  `category_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `centre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Question`
--

CREATE TABLE `Question` (
  `question_id` int(11) NOT NULL,
  `uniq_id` int(11) NOT NULL,
  `question_text` text DEFAULT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Review`
--

CREATE TABLE `Review` (
  `review_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `uniq_id` int(11) NOT NULL,
  `rating` decimal(2,1) DEFAULT NULL CHECK (`rating` >= 0 and `rating` <= 5),
  `is_rating_low` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SubCategory`
--

CREATE TABLE `SubCategory` (
  `sub_category_id` int(11) NOT NULL,
  `sub_category_name` varchar(100) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `employee_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`employee_id`, `email`, `password`) VALUES
(1221265, 'Russ.Cutchie@kilburnazon.com', '$2y$12$WSs0HiM1dxH/eKlsXumI3ek5wNYfWfhEPfsn2gdjxdsYK5faxShvS'),
(11123211, 'Elon.Bazos@kilburnazon.com', '$2y$12$Nvbio0lOee9Hq4HVqDkC8.ypCndLPgrrE5ot.Wfhh8RmrZH.Im7X6'),
(11223214, 'Sarah.Turing@kilburnazon.com', '$2y$12$lQMp3/afnmC06BKARCSpI.E79HwjIwXMVxl7EprqOoPnyT03Tf6S.'),
(11229804, 'Tracey.Gates@kilburnazon.com', '$2y$12$mwb5lWKG9ddfnNaZ4BqLNuZ1GJ1OSIkh94cRnc2v7loIxMOiltDY6'),
(12113666, 'Edythe.Colisbe@kilburnazon.com', '$2y$12$Ac8yJSc2VIV8JHBeXqqpkuv89QnofCbF1h1y50tSOjG6Ci25R7tpS');

-- --------------------------------------------------------

--
-- Table structure for table `Vehicle`
--

CREATE TABLE `Vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `vehicle_type` varchar(100) NOT NULL,
  `registration_plate` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Address`
--
ALTER TABLE `Address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `Answer`
--
ALTER TABLE `Answer`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `Area`
--
ALTER TABLE `Area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `ContactInformation`
--
ALTER TABLE `ContactInformation`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `CustomerOrder`
--
ALTER TABLE `CustomerOrder`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `uniq_id` (`uniq_id`);

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`department_id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Indexes for table `DistributionCentre`
--
ALTER TABLE `DistributionCentre`
  ADD PRIMARY KEY (`centre_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `Driver`
--
ALTER TABLE `Driver`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `emergencycontact`
--
ALTER TABLE `emergencycontact`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nin` (`nin`),
  ADD KEY `position_id` (`position_id`),
  ADD KEY `address_id` (`address_id`),
  ADD KEY `office_id` (`office_id`);

--
-- Indexes for table `EmployeeAudit`
--
ALTER TABLE `EmployeeAudit`
  ADD PRIMARY KEY (`audit_id`),
  ADD KEY `deleted_by_user_id` (`deleted_by_user_id`);

--
-- Indexes for table `LeaveManagement`
--
ALTER TABLE `LeaveManagement`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `LeaveTable`
--
ALTER TABLE `LeaveTable`
  ADD PRIMARY KEY (`leave_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `Office`
--
ALTER TABLE `Office`
  ADD PRIMARY KEY (`office_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `PA`
--
ALTER TABLE `PA`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `Payroll`
--
ALTER TABLE `Payroll`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `Position`
--
ALTER TABLE `Position`
  ADD PRIMARY KEY (`position_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`uniq_id`),
  ADD KEY `centre_id` (`centre_id`);

--
-- Indexes for table `Question`
--
ALTER TABLE `Question`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `uniq_id` (`uniq_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `Review`
--
ALTER TABLE `Review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `uniq_id` (`uniq_id`);

--
-- Indexes for table `SubCategory`
--
ALTER TABLE `SubCategory`
  ADD PRIMARY KEY (`sub_category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `Vehicle`
--
ALTER TABLE `Vehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Address`
--
ALTER TABLE `Address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `Answer`
--
ALTER TABLE `Answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Area`
--
ALTER TABLE `Area`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ContactInformation`
--
ALTER TABLE `ContactInformation`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Customer`
--
ALTER TABLE `Customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CustomerOrder`
--
ALTER TABLE `CustomerOrder`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Department`
--
ALTER TABLE `Department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `DistributionCentre`
--
ALTER TABLE `DistributionCentre`
  MODIFY `centre_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Employee`
--
ALTER TABLE `Employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15518331;

--
-- AUTO_INCREMENT for table `EmployeeAudit`
--
ALTER TABLE `EmployeeAudit`
  MODIFY `audit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `LeaveTable`
--
ALTER TABLE `LeaveTable`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Office`
--
ALTER TABLE `Office`
  MODIFY `office_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Position`
--
ALTER TABLE `Position`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `uniq_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Question`
--
ALTER TABLE `Question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Review`
--
ALTER TABLE `Review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SubCategory`
--
ALTER TABLE `SubCategory`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Vehicle`
--
ALTER TABLE `Vehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Answer`
--
ALTER TABLE `Answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`),
  ADD CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `Question` (`question_id`);

--
-- Constraints for table `ContactInformation`
--
ALTER TABLE `ContactInformation`
  ADD CONSTRAINT `contactinformation_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `Address` (`address_id`);

--
-- Constraints for table `CustomerOrder`
--
ALTER TABLE `CustomerOrder`
  ADD CONSTRAINT `customerorder_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`),
  ADD CONSTRAINT `customerorder_ibfk_2` FOREIGN KEY (`uniq_id`) REFERENCES `Product` (`uniq_id`);

--
-- Constraints for table `Department`
--
ALTER TABLE `Department`
  ADD CONSTRAINT `manager_id` FOREIGN KEY (`manager_id`) REFERENCES `Employee` (`id`);

--
-- Constraints for table `DistributionCentre`
--
ALTER TABLE `DistributionCentre`
  ADD CONSTRAINT `distributioncentre_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `Address` (`address_id`);

--
-- Constraints for table `Driver`
--
ALTER TABLE `Driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `CustomerOrder` (`order_id`);

--
-- Constraints for table `emergencycontact`
--
ALTER TABLE `emergencycontact`
  ADD CONSTRAINT `emergencycontact_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `Employee` (`id`);

--
-- Constraints for table `Employee`
--
ALTER TABLE `Employee`
  ADD CONSTRAINT `address_id` FOREIGN KEY (`address_id`) REFERENCES `Address` (`address_id`),
  ADD CONSTRAINT `office_id` FOREIGN KEY (`office_id`) REFERENCES `Office` (`office_id`),
  ADD CONSTRAINT `position_id` FOREIGN KEY (`position_id`) REFERENCES `Position` (`position_id`);

--
-- Constraints for table `EmployeeAudit`
--
ALTER TABLE `EmployeeAudit`
  ADD CONSTRAINT `employeeaudit_ibfk_1` FOREIGN KEY (`deleted_by_user_id`) REFERENCES `User` (`employee_id`);

--
-- Constraints for table `LeaveManagement`
--
ALTER TABLE `LeaveManagement`
  ADD CONSTRAINT `leavemanagement_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `Employee` (`id`);

--
-- Constraints for table `LeaveTable`
--
ALTER TABLE `LeaveTable`
  ADD CONSTRAINT `leavetable_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `Employee` (`id`);

--
-- Constraints for table `Office`
--
ALTER TABLE `Office`
  ADD CONSTRAINT `office_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `Address` (`address_id`);

--
-- Constraints for table `PA`
--
ALTER TABLE `PA`
  ADD CONSTRAINT `pa_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `Employee` (`id`);

--
-- Constraints for table `Payroll`
--
ALTER TABLE `Payroll`
  ADD CONSTRAINT `payroll_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `Employee` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `Position`
--
ALTER TABLE `Position`
  ADD CONSTRAINT `position_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `Department` (`department_id`);

--
-- Constraints for table `Product`
--
ALTER TABLE `Product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`centre_id`) REFERENCES `DistributionCentre` (`centre_id`);

--
-- Constraints for table `Question`
--
ALTER TABLE `Question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`uniq_id`) REFERENCES `Product` (`uniq_id`),
  ADD CONSTRAINT `question_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`);

--
-- Constraints for table `Review`
--
ALTER TABLE `Review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`uniq_id`) REFERENCES `Product` (`uniq_id`);

--
-- Constraints for table `SubCategory`
--
ALTER TABLE `SubCategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `SubCategory` (`sub_category_id`);

--
-- Constraints for table `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `Employee` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
