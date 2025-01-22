-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 26, 2024 at 06:36 AM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u304344616_logistica`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE `quote` (
  `id` int(11) NOT NULL,
  `tracking` varchar(250) NOT NULL,
  `pero_name` varchar(250) NOT NULL,
  `perso_email` varchar(250) NOT NULL,
  `perso_mobile` varchar(250) NOT NULL,
  `freight` varchar(250) NOT NULL,
  `pick_country` varchar(250) DEFAULT NULL,
  `pick_street` varchar(250) NOT NULL,
  `pick_city` varchar(250) NOT NULL,
  `receive_name` varchar(500) NOT NULL,
  `receive_contact` varchar(200) NOT NULL,
  `drop_country` varchar(250) DEFAULT NULL,
  `drop_street` varchar(250) NOT NULL,
  `drop_city` varchar(250) NOT NULL,
  `weigt` varchar(250) NOT NULL,
  `quantity` varchar(250) DEFAULT NULL,
  `carrier` varchar(250) DEFAULT NULL,
  `carrier_reference` varchar(250) DEFAULT NULL,
  `pickup_date` varchar(250) DEFAULT NULL,
  `statuss` varchar(250) DEFAULT NULL,
  `current_location` varchar(250) DEFAULT NULL,
  `pick_time` varchar(250) DEFAULT NULL,
  `product` varchar(250) NOT NULL,
  `latitude` varchar(250) NOT NULL,
  `longitudes` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `quote`
--

INSERT INTO `quote` (`id`, `tracking`, `pero_name`, `perso_email`, `perso_mobile`, `freight`, `pick_country`, `pick_street`, `pick_city`, `receive_name`, `receive_contact`, `drop_country`, `drop_street`, `drop_city`, `weigt`, `quantity`, `carrier`, `carrier_reference`, `pickup_date`, `statuss`, `current_location`, `pick_time`, `product`, `latitude`, `longitudes`) VALUES
(15, 'AUSP5564-248', 'slimdunkin                                               ', '', '_________', '$100', 'USA', '', 'Bel air', 'Jason Olso', '(218)414 0509', 'USA', '', '12435 state hwy 64 sw motley MN, 56466', '2lb', '1', 'AUS-OVN', 'AUSP5564-OVN', ' 01/03/2024 ', 'IN-TRANSIT', ' CA-MN ', '9:00pm                                              ', 'fragile ', '  ', ''),
(17, 'AUSP2-3647', 'slim d                                                                                              ', '', '513 259 6369', '$100', 'USA', 'Bel air', 'Los Angeles', 'William Combs', 'LaughlaterLLC@proton.me', 'USA', '', '2701 Andersom Ferry Rd Cincinnati Ohio 45238', '3lb', '1', 'overnight ', '3647', '  10/01/2024  ', 'ACTIVE', '  LA-CI  ', '9pm                                                                                              ', 'Discreet', '  33.942791 ', '  118.410042'),
(20, 'AUSP6559241', 'Ryan muggles                                                                                                                                                                                                                                              ', 'infocubancigar@gmail.com', '', '$100', 'Spain', '', 'Madrid', 'Chen hsaing sung', 'hsaingsung@icloud.com', 'China', '', '3f, No. 31, Lane 76, Section 3, Chenggong Road, Neihu district , Taipei City', '1000g', '1', 'AUSEXPRESS', 'AUS655', '      22/01/2024      ', 'ON-HOLD', 'Taoyuan, Taiwan', '2:00pm                                                                                                                                                                                                                                                    ', 'Cuban cigar', '25.076068', '121.231625'),
(21, 'AUSP52785', 'Slimdunkin', 'PSTEF762@icloud.com', '_________', '$200', 'USA', 'bel air', 'Los Angeles', 'Peter G Stefani', '3525148189', 'USA', '', '2510 nw 74th ave chiefland FL 32626', '10LB', '1', '', 'aus52', '01/25/2024', 'PENDING', 'CA-FL', '3:30pm', 'THC', '', ''),
(22, 'AUSP42658', 'simdunk', 'JTAYLOR3197@gmail.com', '_________', '$200', 'USA', '', 'Bel air', 'Jason Taylor', '3472652934', 'USA', '', '754 E 217th ST bronx, NY 10467, USA', '7LB', '1', 'AusExpress', 'aus42', '01/25/2024', 'PENDING', 'CA-NY', '3:30pm', 'THC', '', ''),
(23, 'AUSP34725', 'Slimdunk                                                                                              ', 'mj0053228@gmail.com', '________', '$200', 'USA', '', 'bel air', 'Carlos Garcia', '3317584742', 'USA', '', '611 pheasant trail st charles IL 60174', '4LB', '1', 'ausExpress', 'AUS34', '  01/24/2024  ', 'PENDING', '  CA-IL  ', '3:30pm                                                                                              ', 'THC', '    ', ''),
(24, 'AUSP74936', 'slimdunk', 'Biglow691@gmail.com', '_________', '$200', 'USAB', '', '', '', '', '', '', '', '', '', '', '', '', 'PENDING', '', '', '', '', ''),
(25, 'AUSP7342', 'Slimdunk', 'biglow691@gmail.com', '_________', '$200', 'USA', '', 'Bel air', 'Carlos Garcia', '3317584742', 'USA', '', '611 pheasant trail st charles IL 60174', '4LB', '1', 'ausExpress', 'aus73', '01/25/2024', 'PENDING', 'CA-IL', '3:30pm', 'THC', '', ''),
(55, 'AUS5476114', 'Slimdunkin                                                                                                                                                                                                                                                ', 'Troyromano91@gmail.com', '.........', '$400', 'USA', '', 'Los Angeles', 'Troy Romano', '7276921815', 'USA', '', '11487 81st Ave Seminole FL 33772', '5lb', '4', 'AUS114', 'AUSEXPRESS', '      05/17/2024      ', 'COMPLETED', '      CA-FL      ', '11:30am                                                                                                                                                                                                                                                   ', 'Fragile', '            ', ''),
(61, 'AUSP-604-4015', 'moe                                                                                                                                                                                                                                                       ', '', '', '$50', '', '', '', 'Nate Jones', 'jonesnate714@gmail.com', 'USA', '303 pine meadow dr, chapin SC 29036', '303 pine meadow dr, chapin SC 29036', '1.07kg', '1', 'FedEx', 'AUSP-604-4015', '         05/20/2024         ', 'DELIVERY', '         LA-SC         ', '3pm                                                                                                                                                                                                                                                       ', 'discrete', '', ''),
(62, 'AUSP-604-6715', 'moe                                                                                                                                                                                                                                                       ', '', '', '$50', '', '', '', 'Alexis coley', 'Montoya7490@gmail.com', 'USA', '175 countryside In.Rocky mount, NC 27801', '175 countryside In.Rocky mount, NC 27801', '1.01kg', '1', 'FedEx', 'AUSP-604-6715', '        05/23/2024        ', 'DELIVERY', 'NC', '3:30pm                                                                                                                                                                                                                                                    ', 'discrete', '    ', ''),
(63, 'AUS548224', 'Amigo F', '_________', '________', '$350', 'USA', '', 'Los Angeles', 'Sandy Woodard', 'nogoodrap@gmail.com', 'USA', '', '8645 Lacey Heights ave Rockingham VA 22802 United State', '15lb', '1', 'overnight ', '548224', '05/27/2024', 'IN-TRANSIT', 'CA-VA', '2:00pm', 'Discreet marijuana related ', '', ''),
(67, 'AUSP-104-9015', 'moe                                                                                                                                                                                                                                                       ', '', '', '$50', '', '', '', 'Eli Poust', 'tommyglansesfurg@gmail.com', 'USA', '104 wyanet street walnut illinois', '104 wyanet street walnut illinois', '86g', '1', 'FedEx', 'AUSP-104-9015', '        06/03/2024        ', 'COMPLETED', '        CA-IL        ', '3:30pm                                                                                                                                                                                                                                                    ', 'discrete', '  ', ''),
(68, 'AUSP-4009-2015', 'moe                                                                                              ', '', '', '$50', '', '', '', 'Zachary Johnson ', 'Dannym799@gmail.com', 'USA', '', '358 Knox dr Brunswick ga', '86g', '1', 'FedEx', 'AUSP-4009-2015', '  06/03/2024  ', 'ON-HOLD', '  CA-GA  ', '3:30pm                                                                                              ', 'discrete', '35.05145', '-89.78946'),
(70, 'AUS523853', 'slim dunk', 'Mclovenchow@gmail.com', '_________', '$200', 'USA', '', 'Los Angeles', 'Jose Dominguez', '_________', 'USA', '', '48 lilac street 28806 NC', '2lb', '1', 'overnight ', 'AUS523', '06/05/2024', 'PENDING', 'CA-NC', '3:300pm', 'FRAGILE', '', ''),
(74, 'AUSP-2024-0300', 'Moe                                                                                                                                             ', '', '', '', '', '', '', 'Raymond Tarin', 'duke40222@gmail.com', 'USA', '211 N. Hayden Street P.O Box 541 Walthill, NE 68067', '211 N. Hayden Street P.O Box 541 Walthill, NE 68067', '34g', '1', 'AUSP-2024-0300', 'FedEx', '   06/08/2024   ', 'ON-HOLD', '   CA-NE   ', '3pm                                                                                                                                             ', 'Discreet', '39.849312', '-104.673828'),
(75, 'AUSPOSTAL43556', 'Slimdunkin', '_________', '_________', '$100', 'USA', '', 'Los angeles', 'Miguel Moreno', 'otcmoreno223@icloud.com', 'USA', '', '1505 Pecos Dr Roswell NM 88203', '3Lb', '1', 'AUS5377', 'OVERNIGHT', '06/14/2024', 'IN-TRANSIT', 'CA-NM', '4:30', 'FRAGILE', '', ''),
(76, 'AUSP-8249-2024-1', 'moe                                                                                                                                                                                                                                                       ', '', '', '', '', '', '', 'Travis Spicer', 'tspicer2734@gmail,com', 'USA', '177 Broadway St Austin, IN 47102', '177 Broadway St Austin, IN 47102', '80g', '1', 'FedEx', 'AUSP-8249-2024-1', '           06/21/2024           ', 'DELIVERY', '           CA-TX           ', '3pm                                                                                                                                                                                                                                                       ', 'Descrete', '', ''),
(77, 'AUS856784', 'Amigo', 'Astronaut2100@gmail.com', '_________', '$200', 'CA', '', 'Bel Air', 'Freddie', '', 'USA', '', '2120 Arnold Rd Lexington NC 27295', '5lb', '1', 'OVERNIGHT', 'AUP784', '06/20/2024', 'PENDING', 'Charlotte Douglas international airport ', '7pm', 'Fragile', '', ''),
(78, 'AUSP54386215', 'Blk xotic', 'Cbo75501@gmail.com', '_________', '$400', 'USA', '', 'Bel Air', 'Cory Spencer', '_________', 'USA', '', '4323 North 53 Street Milwaukee Wisconsin 53216', '20Lb', '1', 'OVERNIGHT', 'AUS215', '06/27/2024', 'PENDING', 'CA-WI', '7pm', 'Fragile', '', ''),
(79, 'AUSP-7530-25', 'moe                                                                                                                                                                                                                                                       ', '', '', '$50', '', '', '', 'Yaya Martinez', 'emarti5144@gmail.com', 'USA', '912 E Watersville Rd', '912 E Watersville Rd', '75kg', '1', 'FedEx', 'AUSP-7530-25', '      07/04/2024      ', 'PENDING', '      CA-MD      ', '3:30pm                                                                                                                                                                                                                                                    ', 'Descrete', '    39.9922    ', '    -82.8885'),
(80, 'AUSP-2024-0300-21', 'Kean                                                                                              ', '', '', '50', '', '', '', 'Arminas Jasikonis', 'arminas@jasikonis.com', 'Lithaunia', 'J.matuso g. 60, kaunas 47250, Lithaunia', 'J.matuso g. 60, kaunas 47250, Lithaunia', '34g', '1', 'FedEx', 'AUSP-2024-0300-21', '  04/07/2024  ', 'ON-HOLD', ' Lithuania  ', '11:30am                                                ', 'Discreet', '  ', ''),
(81, 'AUSP-2024-0220', 'Moe                                                                                                                                                                                                                                                       ', '', '', '$50', '', '', '', 'Tristen Manning', 'gking0319@yahoo.com', 'USA', '8262 Springleaf lake drive cincinnati Ohio 45247', '8262 Springleaf lake drive cincinnati Ohio 45247', '450g', '1', 'FedEx', 'AUSP-2024-0220', '         07/11/2024         ', 'ON-HOLD', '   Cincinnati    ', '3:30pm                                                                                                                                                                                                                                                    ', 'Discreet', '      ', ''),
(82, 'AUSP628641', 'Slimdunkin', 'luisangeles2786@icloud.com', '_________', '$150', 'USA', '', 'Bel air', 'Luis Angeles', '', 'USA', '', '3710 Thomas Drive Homa Louisiana 70363', '4lb', '1', 'OVERNIGHT', 'AUS641', '07/08/2024', 'ACTIVE', 'CA-LA', '3:30pm', 'Fragile', '', ''),
(83, 'AUSP6465387', 'Miguel H                                                                                                                                             ', 'elipaheco@gmail.com', '_________', '150€', 'Germany', '', 'Dortmund', 'Elizabete Pacheco', '_________', 'Portugal', '', 'Rua Professor Jose do Vale Patronilo, 9 Penalva 2835-619 Santo Antonio da Charneca', '1Lb', '1', 'OVERNIGHT', 'AUS387', '   13/07/2024   ', 'ACTIVE', '   Germany   ', '7pm                                                                                                                                             ', 'Fragile', '      ', ''),
(84, 'AUSP643869', 'Miguel H                                               ', 'vlahonenadic12@gmail.com', '+385996633516', '€50', 'Uk', '', 'London', 'vlahonen adic', '', 'Croatia', '', 'Cilipska 21a Dubrovnik 20000 Croatia', '1lb', '1', 'Piority', 'AUS4378', ' 13/07/2024 ', 'ACTIVE', ' UK', '7pm                                               ', 'Fragile', '  ', ''),
(87, 'AUSP-2024-10', 'Wilson Tony Reyes                                                                                                                                                                                            ', '', '', '$50', '', '', '', 'Hector A Villalta Jr', 'villaltahector586@gmail.com', 'USA', '743 Winthorne Dr 37217', '743 Winthorne Dr 37217', '75.08lp', '1', 'FedEx', 'AUSP-2024-10', '    07/22/2024    ', 'PENDING', '    AZ-TN    ', '3:30pm                                                                                                                                                                                            ', 'Discreet', ' 41.3031 ', ' -95.8942'),
(88, 'AUSP-2024-1030', 'Moe', '', '', '$50', '', '', '', 'Stephen Jr', 'stephenjr@centrallink.com', 'USA', '155 N. League ranch rd waco Texas 76705', '155 N. League ranch rd waco Texas 76705', '450g', '1', 'FedEx', 'AUSP-2024-1030', '07/25/2024', 'ACTIVE', 'CA-TX', '3:30pm', 'Discreet', '33.942791', '-118.410042'),
(91, 'AUSP-1536-24', 'Moe                                                                                                                                     ', '', '', '$50', '', '', '', 'Joseph Deatherage', 'jsdeath227766@gmail.com', 'USA', '1111 Ashland Avenue, st Joseph missouri', '1111 Ashland Avenue, st Joseph missouri', '75kg', '1', 'FedEx', 'AUSP-1536-24', '   08/15/2024   ', 'PENDING', '   LA-MO   ', '3:30pm                                                                                                                                             ', 'Descrete', '', ''),
(92, 'AUSP75634289', 'Slim', 'shylopez5@icloud.com', '_________', '$100', 'USA', '', 'Los angeles', 'Shyenne Lopez', '5059345840', 'USA', '', '9015 El ojito   Ct NW albuquerque NM 87144 USA', '2lb', '1', 'AUS756', '34289', '09/07/2024', 'PENDING', 'CA-NM', '4PM', 'Fragile', '', ''),
(95, 'Gsp27467M', 'Elizabeth John Kaveh                                                                                                                                                                                            ', 'brendalynn203@gmail.com', '.........', '$70', '', '', '', 'jayla owen', '2707722166', 'USA', '3034 Franklin rd Russeville KY 42276', 'Russeville', '6lb', '1', 'EXPRESS', '4569024', '    sunday 08 2024    ', 'ON-HOLD', '    Frankfort ky    ', '3;00pm                                                                                                                                                                                            ', 'pet', '        ', ''),
(96, 'AUSP745326', 'Slimdunkin', 'Balientej@aol.com', '_________', '$100', 'USA', '', 'Los Angeles', 'Jorge chavez', '_________', 'USA', '', '2501 Wickersham Lane Apt 223 78741', '2lb', '1', 'overnight ', '5326', '09/12/2024', 'PENDING', 'CA', '4pm', 'Fragile', '', ''),
(97, 'AUSP-56547-2024', 'Wilson Tony Reyes                                               ', '', '', '$100', '', '', '', 'Brian Gill', 'briangill05@gmail.com', 'USA', '', '910 ward Rd Madison, TN 37115', '1005lbs', '1', 'FedEx', 'AUSP-56547-2024', ' 09/18/2024 ', 'ON-HOLD', ' AZ-TN ', '3:30pm                                               ', 'Discreet', '35.95967', '-89.95082'),
(99, 'AUS7590025', 'Amanda Jones                                               ', 'brendalynn203@gmail.co ', '...', '..', 'usa', '...', 'sanfrancisco', 'MyriamMendoza-Perez', '323 714 4617', 'usa', '6941 Cedar street Huntington Park,CA 90255', 'Huntington Park', '..', '2', 'Females maltipo', '456u', ' 21/09/2024 ', 'CANCELLED', ' sanfrancisco ', '5:30pm                                               ', 'pet', '  ', ''),
(100, 'AUSP-2024-1011', 'Flecher Billy', '', '', '$100', '', '', '', 'Renniel Jacinto', 'kyuankaizel@gmail.com', 'Philippiens', '', '2730 palanas bagong barrio pandi bulcan', '3.50kg', '1', 'DHL ', 'AUSP-2024-1011', '22/09/2024', 'ACTIVE', '   AUS-PHL ', '1:30pm', 'Fragile ', '-37.663712', '144.844788'),
(101, 'AUS-76958490', '                                Chris wissler                                                                                                             ', 'acc53156@gmail.com', '/', '1', 'usa', '/', 'philadelphia', 'Daniel Poplin', '9805811663', 'usa', '24615 NC 24 27 Albemarle NC 28001', 'Albemarle', '/', '1', '09', 'AUS09', '   10/19/2024   ', 'CANCELLED', '   philadelphia pa   ', '10AM                                                                                                                                             ', 'Radio icom 706', '      ', ''),
(103, 'AUSP3302_2021', 'LARRY BRIAN                                                                                                                                             ', 'larrybrian728@gmail.com', '3476748182', '$50.00', 'USA', '', 'EL PASO', 'HECTOR ENRIQUE', 'HECTOR_ES1@YAHOO.COM', 'USA', '', '640 MESILLA VIEW DR, CHAPARRAL, NM 88081', '8 OUNCE', '1', 'DHL', 'AUSP3302_2021', '   10/25/2024   ', 'ON-HOLD', '   AZ-NM   ', '03:30 P.M                                                                                                                                             ', ' ENVELOPE', ' 33.435249 ', ' -112.010216'),
(120, 'AUS–347768300', 'David Howard                                                                                              ', 'acc53156@gmail.com', '', '1', 'australia', 'melbourne‚vic', 'carlton', 'Steven Chamberlain', '043467211', 'Australia', '13 carrington street', 'st marys 2760 nsw', '', '1', '09', 'AUS09', '  saturday‚16 nov 2024  ', 'IN-TRANSIT', '  melbourne vic  ', '1PM                                                                                              ', 'pet', '    ', ''),
(124, 'AUS-769584878', 'Pauhla Zahn Smith', 'brendalynn203@gmail.com', '/', ' $50', 'usa', 'dexter mi', 'dexter', 'Brad Freeborn', '6786872543', 'usa', '250 Cedar Height road lot #314 Carrn GA 30116', '250 Cedar Height road lot #314 Carrn GA 30116', '/', '1', '09', 'AUS09', '25/11/2024', 'PENDING', 'dexter MI', '10AM', 'Radio icom  IC 706MKIIG', '', ''),
(125, 'AUSP53681', 'Slim', 'Dalton_8805@icloud.com', '_________', '$100', '', '', 'LA', 'John Dee', '_________', '', '', '3071 S Salemburg Hwy NC 28382', '3lb', '1', 'overnight ', 'aus681', '11/27/2024', 'IN-TRANSIT', 'CA-NC', '5:00pm', 'discreet / fragile ', '', ''),
(126, 'AUSP6435892', 'Jason Jordan', '', '', '$160', 'USA', '', '', 'Olawale I Maiyegun', '9157405065', '', '', '421 Northdown Drive Dove DE 19904', '75Kg', '1', 'Express', '5892Aus', '12/07/2024', 'IN-TRANSIT', 'NY-DE', '3:30pm', 'Pallets', '', ''),
(127, 'AUSP842584T6', 'Jason Jordan', '', '9157405065', '$180', 'USA', '', 'NY', 'Olawale I Maiyegun', 'Maiyegun@hotmail.com', 'USA', '', '421 Northdown Drive Dover DE 19904', '65Kg', '1', 'AUS4T6', 'Express', '12/07/2024', 'IN-TRANSIT', 'NY-DE', '4:40pm', 'Pallets', '', ''),
(128, 'AUSP2564793', 'Amigo F                                                                                                                                             ', 'Yungtmac7414@gmail.com', '_________', '$160', 'USA', '', 'Los Angeles', 'James Sanders', '_______', 'USA', '', '1123 9th Ave S, Saint Cloud MN 56301', '5Lb', '1', 'UPS', 'ups4793', ' 12_23_2024', 'ON-HOLD', '   CA-MN   ', '4:20pm                                                                                                                                             ', 'Fragile / Discreet', '      ', ''),
(129, 'AUSP863489', 'Slim D', 'Rjsusfolk201@gmail.com', '__________', '$240', 'USA', '', 'Los Angeles', 'Richie  R', '_________', 'USA', '', '8219 Witkop Ave, Niagara Falls NY 14304 USA', '6lb', '1', 'UPS', 'AUS489', '12-12-2024', 'PENDING', '__', '5:30pm', 'Fragile / Discreet', '', ''),
(130, 'AUS–347768300IO', 'James Meconnell', 'brendalynn203@gmail.com', '/', ' $150', 'usa', 'Hiawatha iowa', 'Hiawatha', 'Kaitlin  malloy & Austin Malloy', '4023327295', 'usa', '1912 parkwild drive council bluffs iowa ', '1912 parkwild drive council bluffs iowa ', '', '1', '09', 'AUS09', '12/14/2024', 'PENDING', 'Hiawatha iowa', '3pm', 'pet', '', ''),
(133, 'AUSP3315_2021', 'CONOR BRIAN                                               ', 'info@mineshops.eu', '', '200.00', 'IRELAND', 'UNIT 58-60 BREWERY BUSINESS PARK', 'DUNDALK', 'PATRICK HARVEY- HARVEY ENTERPRISE', 'paharv@comcast.net', 'UNITED STATES', '202 PRATO WAY', 'LIVERMORE', '7.5 KG', '1', 'AIR-FREIGHT', 'AUSP3315_2021', ' 12-18-2024 ', 'ON-HOLD', ' IRELAND ', '05:00 P.M                                               ', 'PACKAGE', ' 53.9979451 ', ' -6.405957'),
(135, 'AUSP3318_2021', 'TYREL GOURDINE                                               ', 'tyrelgourdine5@gmail.com', '347-674-8182', '$300.00', 'UNITED STATES', '3416 NW 26TH ST', 'GAINESVILLE', 'NOAH SOUTHCOMBE', 'NOAH.SOUTHC@GMAIL.COM', 'AUSTRALIA', '633 PLUNKETT ROAD', 'CEDAR CREEK', '205g', '1', 'AIR-FREIGHT', 'AUSP3318_2021', ' 12-23-2024 ', 'PENDING', ' FLORIDA TO QUEENSLAND ', '06:10 P.M                                               ', 'PACKAGE', ' 25.795160 ', ' -80.279594'),
(136, 'AUSP76848E93', 'Amigo F', 'twoentitledofficial@gmail.com', '_________', '$200', 'USA', '', 'Los Angeles', 'Two Entitled LLC', '_________', 'USA', '', '1402 Joye St Springdale AR 72762 United State', '7LB', '1', 'AUSP665', 'DISCREET', '4:30pm', 'IN-TRANSIT', 'CA-AR', '12-23-2024', 'Fragile FG', '', ''),
(137, 'AUSP7635947', 'Amigo F', '', '__________', '$150', 'USA', '', 'Los Angeles', '', '_________', 'USA', '', '', '', '1', 'AUSP645', 'DISCREET', '12', 'IN-TRANSIT', '', '5:30pm', '', '', ''),
(138, 'AUSP863466', 'Amigo F', 'Lilnatesmith@gmail.com', '__________', '$150', 'USA', '', 'Los Angeles', 'Lil Nate', '_________', 'USA', '', '525 14th St Apt #1 st.cloud MN 56301', '5LB', '1', 'UPS', 'DISCREET', '12-21-2024', 'IN-TRANSIT', 'CA-MN', '5:30pm', 'Fragile FG', '', ''),
(140, 'AUSP-903430', 'Amigo F', '___________', '__________', '  $150', '', '', '', 'Richard Montgomery', 'thomassaenz17@yahoo.com', 'USA', '', '1612 Chippeway lane Austin TX. 78745', '5LB', '1', 'UPS', 'DISCREET', ' 12-23-2024 ', 'ACTIVE', ' CA-TX ', '5:30pm', 'Fragile FG', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `pass` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `pass`) VALUES
(1, 'tash', 'tash@gmail.com', 'tash@sheltar23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quote`
--
ALTER TABLE `quote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
