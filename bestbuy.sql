-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2016 at 03:16 AM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bestbuy`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customerID` int(100) NOT NULL,
  `productName` varchar(40) NOT NULL,
  `firstName` varchar(40) NOT NULL,
  `lastName` varchar(40) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `productName`, `firstName`, `lastName`, `phone`, `email`) VALUES
(22, 'apple iphone 7', 'tom', 'roberts', '2147483699', 'tomrobert@gamil.com'),
(25, 'South Park', 'Tim ', 'Gayhart ', '5102343565', 'timgayhart@gamil.com '),
(27, 'Microsoft - Xbox One S ', ' Patria  ', 'Garbutt', '5304565443', 'garbutt@aol.com'),
(30, 'Hustle & Flow ', 'Cinderella ', 'Stejskal', '5303345676', 'cinderellaStejskal@aol.com'),
(32, 'dell Inspiron laptop', 'Sibyl  ', 'Balog', '5301293456', 'sibylbalog@gmail.com '),
(34, 'macbook pro 128gb', 'Hui  ', 'Pardue', '5305958888', 'Pardue@gmail.com'),
(36, 'acer desktop', 'Crysta  ', 'Sechrist', '5304321459', 'Sechrist@gamil.com'),
(37, 'OtterBox Defender iphone 7', 'Bernardina ', 'Dull ', '5102834732', 'bernardinadull@gmail.com'),
(38, 'Grand Theft Auto V - PlayStati', 'Alix  ', 'Deloatch ', '5302312323', 'alixdeloatch@gmail.com'),
(39, 'Nespresso - VertuoLine', 'Terry ', 'Jordahl ', '6049382934', 'terryjordahl@yahoo.com '),
(40, 'iPad 64gb', 'Greg ', 'Twiss ', '8329834754', 'gregtwiss@aol.com'),
(43, 'Grand Theft Auto V - PlayStati', ' Breana  ', 'Hyun', '8312224532', 'breanahyun@gmail.com'),
(44, 'Grand Theft Auto V - PlayStati', ' Deeann ', 'Bohr ', '7437373721', 'deeannbohr@gmail.com '),
(45, 'Microsoft - Xbox 360 Limited ', 'Lieselotte  ', 'Pinkney', '8311234567', 'lieselottepinkney@aol.com'),
(46, 'Nespresso - VertuoLine', 'Jayson  ', 'Bybee', '5102228765', 'jaysonbybee@gmail.com'),
(47, 'Nespresso - VertuoLine', 'Micha  ', 'Benes', '8319384444', 'michabnes@gmail.com'),
(48, 'Logitech G700s mouse ', 'Corinne  ', 'Yancy', '8319992222', 'corinneyancy@gmail.com'),
(49, 'Logitech G700s mouse ', 'Joana  ', 'Tejada', '9483839889', 'joanatejada@yahoo.com '),
(50, 'Spotify $60 Spotify Gift ', 'Mercy ', 'Brook', '8313349849', 'mercybrook@gmail.com'),
(52, 'Nikon - D5500 DSLR ', 'Pamula  ', 'Gilpin', '8319283748', 'pamulagilpin@yahoo.com'),
(54, 'Nikon - D5500 DSLR ', 'Loura  ', 'Phegley', '8319288989', 'louraphegley@aol.com'),
(55, 'Nikon - D5500 DSLR ', 'Ara ', 'Gholston ', '8312618812', 'gholstonAra@yahoo.com'),
(57, 'Nikon - D5500 DSLR ', 'Roman  ', 'Robichaux', '8312103928', 'romanrobichaux@yahoo.com'),
(58, 'Nikon - D5500 DSLR ', 'Truman  ', 'Miley', '8329483721', 'Miley@yahoo.com'),
(59, 'Google - Chromecast ', 'Janessa  ', 'Coday', '8312938783', 'Coday@yahoo.com'),
(60, 'Google - Chromecast ', 'Bryant ', 'Smithson', '8319283743', 'Smith@yahoo.com'),
(64, 'Canon - EOS Rebel T6', 'Lin ', 'Donat ', '8219230493', 'lindonat@yahoo.com'),
(65, 'Canon - EOS Rebel T6', 'Noella  ', 'Montana', '3485948392', 'noellamontana@yahoo.com'),
(66, 'Canon - EOS Rebel T6', 'Tarra  ', 'Schilke', '3485959494', 'tarraschilke@aol.com'),
(68, 'dell XPS', 'Florentina  ', 'Wimer', '8319299999', 'florentinawimer@gmail.com'),
(69, 'dell XPS', ' Shantay  ', 'Lyman', '8313332221', 'shantaylyman@aol.com'),
(70, 'MXL - Microphone', 'Tatum  ', 'Hetzler', '5558884443', 'tatumHetzler@yahoo.com '),
(71, 'MXL - Microphone', 'Meggan  ', 'Ocampo', '3948485869', 'Meggan@yahoo.com'),
(72, 'apple iphone 7', 'Selma  ', 'Marth', '8319293043', 'Marth@gmail.com'),
(73, 'apple iphone 7', 'Rosaria  ', 'Hertlein', '4321234565', 'Hertlein@yahoo.com'),
(74, 'apple iphone 7', 'Iraida  ', 'Osterberg', '8392829130', 'IraidaOsterberg@gmail.com'),
(77, 'Google- Chromecast', ' Felix ', 'Widrick ', '8319283943', 'Widrick '),
(78, 'macbook pro 128gb', 'Conchita ', 'Saathoff ', '8319293048', 'saathoff@gmail.com'),
(79, 'Caribou Coffee', 'Mikaela ', 'Plantz ', '8493284738', 'plantz@yahoo.com'),
(80, 'Amazon- Kindle', 'Aundrea', 'Borders ', '9847943972', ' borders@yahoo.com'),
(84, 'iPad 64bg', 'Lelah ', 'Sparr ', '5102948329', 'sparr@yahoo.com'),
(85, 'Xbox Live 12 Month', 'Love', 'Koopman ', '8312938593', 'love@yahoo.com'),
(89, 'acer desktop', 'Leeann', 'Brogdon ', '5108372783', 'leeann@yahoo.com'),
(90, 'star wars', 'Issac ', 'Oshea ', '8319382913', 'issac@yahoo.com'),
(92, 'HP touch pad', 'Arianna ', 'Grossi ', '8312938211', 'grossi@gmail.com'),
(94, 'apple iphone 7', 'Antonia', 'Lira ', '8319293821', 'anoton@aol.com'),
(95, 'apple iphone 7', 'Jamal ', 'Leung ', '5103432122', 'jamal12@yahoo.com'),
(96, 'Logitech G700s mouse', ' Bettie ', 'Napolitano ', '2147483647', 'nicd@gmail.com'),
(98, 'apple iphone 7', 'tom', 'roberts', '2147483677', 'tomrobert@gamil.com'),
(100, 'dell Inspiron laptop', 'smith', 'kim', '7656789654', 'findme@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `deptID` int(30) NOT NULL,
  `deptName` varchar(15) NOT NULL,
  PRIMARY KEY (`deptName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`deptID`, `deptName`) VALUES
(1, 'Appliance'),
(4, 'Audio'),
(7, 'camera'),
(3, 'Cell Phone'),
(2, 'Computers'),
(5, 'Game'),
(6, 'health&fit'),
(8, 'Mus&Movie');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `employeeID` varchar(10) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `deptID` int(30) NOT NULL,
  PRIMARY KEY (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeID`, `firstName`, `lastName`, `deptID`) VALUES
('01', 'hardesh', 'mohar', 2),
('02', 'Morgan ', 'Juran', 3),
('03', 'chris', 'ngo', 1),
('04', 'miguel', 'lara', 4),
('05', 'john', 'doe', 3),
('06', 'arnold ', 'schwarzenegger', 6),
('07', 'bo', 'mike', 5),
('09', 'lebron', 'james', 6),
('10', 'jim', 'moon', 2),
('20', 'Jeraldine ', 'Randell ', 2),
('21133', 'Creola ', 'Ardito ', 8),
('22', 'Zaida ', 'Urias ', 8),
('23', 'Kelle', ' Greenawalt ', 1),
('23840', 'Despina', ' Dowell ', 7),
('2480', 'Shauna ', 'Valez ', 7),
('259', 'Jeanna ', 'Fairbank ', 6),
('3280', 'Junie ', 'Wooden ', 1),
('32803', 'Cecelia', 'Pal', 5),
('33', 'Jimmy ', 'Trull ', 4),
('34428', 'Fabian', 'Kumm', 6),
('43', 'Shavon ', 'Purser ', 7),
('4380', 'Ilana ', 'Lambert ', 3),
('438023', 'Trudie ', 'Wille ', 7),
('44', 'Reva ', 'Regan ', 5),
('450', 'Tim', 'Kaur', 3),
('4779', 'Toshia ', 'Prasad ', 1),
('47929', 'Roslyn ', 'Weldy ', 6),
('48023', 'Burt ', 'Salinas', 6),
('480320', 'Clark  ', 'Grave', 4),
('4808208', 'Alana ', 'Kindell', 2),
('489', 'Sharri ', 'Engh ', 6),
('4892', 'Yer', 'Pal ', 3),
('4893', 'Alaina ', 'Polanco ', 2),
('4932', 'Judi ', 'Shealy ', 1),
('5802', 'Agueda', ' Uresti ', 6),
('804', 'Annice ', 'So ', 3),
('827', 'Abia', 'Adele', 8),
('8583', 'Bronwyn ', 'Boxx ', 7),
('88', 'Sindy ', 'Boon ', 2),
('8u321', 'Jonathan ', 'Bohler ', 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `deptID` int(30) NOT NULL,
  `productID` varchar(10) NOT NULL,
  `productName` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `price` float NOT NULL,
  `inventory` int(50) NOT NULL,
  `Description` varchar(500) NOT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`deptID`, `productID`, `productName`, `type`, `price`, `inventory`, `Description`) VALUES
(5, '1422002', 'GTA V - PS4 - preowned', 'games', 39.99, 3, 'Experience streets of Los Santos like never before on a fast-paced crime spree'),
(7, '2805027', 'Nikon - D5500 DSLR ', 'camera', 699.99, 8, 'This camera comes with the 18-55 mm lens, with built in vibration reduction.'),
(8, '3142025', 'Hustle & Flow ', 'Mus&Movie', 3.99, 8, 'English, French, Spanish Bluray'),
(4, '3860235', 'MXL - Microphone', 'Audio', 75.99, 7, 'Desktop conference mic with 15" flexible gooseneck to direct the mid towards whoever is speaking. Make your conferences simpler.'),
(5, '4249403', 'Xbox Live 12 Month ', 'games', 59.99, 50, 'Play together with Gold'),
(2, '4266302', 'iPad mini 64gb gold', 'Computers', 449.99, 5, '8MP iSight Camera, 64GB storage, A8 chip'),
(1, '4310000', 'Nespresso - VertuoLine', 'Appliances', 199.99, 4, 'Single serve-style coffee and espresso maker with milk frother.'),
(8, '4397400', 'Google - Chromecast ', 'Mus&Movie', 35, 6, 'Wirelessly display your screen from any Cast-enabled computer, tablet or smartphone; a great alternative to SmartTvs - all you need is an internet connection and an HDMI port.'),
(2, '4445929', 'acer desktop', 'Computers', 399.99, 6, 'AMD Sempron processor; 4GB memory; 500GB hard drive; Special features: Built-in wireless networking; HDMI output; Note: DVD/CD drive not included'),
(2, '4515201', 'Samsung - Galaxy Tab E', 'Computers', 299.99, 5, 'wifi, bluetooth, quad-core tablet with 16GB storage'),
(2, '4523600', 'Microsoft Surface Pro 4', 'Computers', 999.99, 4, '12.3" screen, sd card slot, surface pen, with Cortana digital assistant'),
(2, '4550500', 'dell XPS', 'Computers', 2199.99, 6, 'Beautiful 4k display with 2GB dedicated graphics for enhanced video enjoyment.'),
(1, '4673500', 'Touch Coffeemaker ', 'Appliances', 199.99, 4, '8 cup sizes; flash heating; compatible with K-Cups, Touch Xbold cups and Touch Xlarge cups; 90-oz. water tank; refill jumbo cup; 26-oz. carafe'),
(5, '4705000', 'xbox 360 Forza', 'games', 299.99, 4, 'The best value in games and entertainment'),
(1, '4713001', 'Sharp Console Air Purifier', 'Appliances', 149.99, 2, 'True HEPA filter; up to 225 sq. ft of coverage.'),
(1, '4835900', 'Keurig K425 Brewer', 'Appliances', 139.99, 4, '2.4" color touch display; strength control; customizable settings; multiserve; dishwasher-safe drip tray'),
(4, '4951500', 'Plantronics backbeat go 3', 'Audio', 49.99, 10, 'Compatible with most Bluetooth-enabled cell phones; high-resolution sound; include 4 pairs of ear tips; sweatproof nano-coating; up to 6.5 hours non-stop listening; in-line controls and microphone; portable charging case'),
(2, '5023200', 'Amazon - Fire', 'Computers', 69.99, 23, 'Fire OS 5, Quad Core processor, IPS display'),
(3, '5036000', 'Speck iphone 5', 'Cell Phone', 36.99, 4, 'Compatible with Apple iPhone 5, 5s and SE; impact protection; drop proof; nonslip grip'),
(7, '5091315', 'Canon - EOS Rebel T6', 'camera', 599.99, 5, 'Bundle includes: Case, 18-55mm lens and 75-300mm lens'),
(5, '5117500', 'Sony - PlayStation VR', 'game', 399.99, 50, 'Compatible with Sony PlayStation 4; OLED display; 360° viewing angle; 3D Audio Technology'),
(2, '5252100', 'HP touch pad', 'Computers', 299.99, 4, 'AMD A10-Series processor; 15.6" display; 6GB memory; 1TB hard drive'),
(5, '5263501', 'Battlefield 1 - PlayStation 4', 'games', 59.99, 35, 'Be part of the biggest multiplayer battles ever known to man with the possibility of the complete destruction of vehicles and buildings'),
(8, '5387006', 'South Park 19th Season', 'Mus&Movie', 29.99, 43, 'Bluray'),
(2, '5442403', 'Amazon - Kindle', 'Computers', 79.99, 6, '6" 167 ppi touch screen, 4GB internal memory, Wi-Fi'),
(8, '5467204', 'Star Trek Beyond 4k', 'Mus&Movie', 37.99, 7, 'Bundle with 4k copy, bluray copy and digital copy'),
(3, '5577728', 'OtterBox Defender iphone 7', 'Cell Phone', 49.99, 5, 'Designed for use with Apple iPhone 7; polycarbonate shell and synthetic rubber slipcover; built-in screen protection; play-through design'),
(2, '5579395', 'dell Inspiron laptop', 'Computers', 499.99, 2, '5th Gen Intel® Core™ i5 processor; 15.6" display; 8GB memory; 1TB hard drive; spill resistant keyboard'),
(8, '5580136', 'star wars: force awakens 3D', 'Mus&Movie', 34.99, 8, 'Own the adventure of Rey, Finn and BB-8 in the BluRay release of the latest Star Wars saga in 3D'),
(3, '5580716', 'apple iphone 7', 'Cell Phone', 199.99, 6, 'Newest iPhone, available in all colors on any carrier. New home button and new camera.'),
(5, '5613750', 'Microsoft - Xbox One S ', 'games', 349.99, 7, 'Experience the dawn of all-out war on Xbox One S'),
(3, '5656023', 'Pixel, Phone by Google', 'Cell Phone', 699.99, 4, 'Runs Android Nougat. USB Type-C allows 7 hours of talk time in 15 minutes of charge. Unlimited Google Photo storage allows you to never run out of room for all your memories.'),
(4, '6140094', 'Spotify $60 Spotify Gift ', 'Audio', 60, 25, 'The perfect gift for any birthday or graduation: give them the gift of unlimited music.'),
(8, '7271212', 'No Strings Attached ', 'Mus&Movie', 3.99, 9, 'English, French, Spanish'),
(6, '8389064', 'Fitbit - Flex Wireless', 'health&fit', 79.99, 49, 'water resistant, works with iOS and Android, fits most wrist sizes'),
(2, '8532557', 'macbook pro 128gb', 'Computers', 1299.99, 3, 'MacBook Pro with Retina display - 13.3" Display - 8GB Memory - 128GB Flash Storage'),
(7, '8753712', 'Nikon - D750 DSLR ', 'camera', 1799.99, 2, 'Body only; ISO range from 100-12,800. 24.3 megapixels.'),
(5, '8785461', 'Logitech G700s mouse ', 'games', 69.99, 1, 'Rechargeable mouse with 13 programmable buttons and a dual scrolling wheel. 8200dpi'),
(1, '9082039', 'Caribou Coffee', 'Appliances', 12.99, 4, '18 pack. My Best Buy members pay $11.04 with their member ID.'),
(5, '9529009', 'Xbox Elite Wireless Controller', 'games', 149.99, 5, 'Pro-level customization for a competitive edge');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
