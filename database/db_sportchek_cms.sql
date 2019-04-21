-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 21, 2019 at 02:06 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_sportchek_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arating`
--

CREATE TABLE `tbl_arating` (
  `arating_id` smallint(5) UNSIGNED NOT NULL,
  `arating_name` varchar(125) NOT NULL,
  `arating_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_arating`
--

INSERT INTO `tbl_arating` (`arating_id`, `arating_name`, `arating_desc`) VALUES
(1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),
(2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	&ldquo;parental guidance&rdquo;. '),
(3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),
(5, 'NC-17', 'NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cast`
--

CREATE TABLE `tbl_cast` (
  `cast_id` mediumint(8) UNSIGNED NOT NULL,
  `cast_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cast`
--

INSERT INTO `tbl_cast` (`cast_id`, `cast_name`) VALUES
(36, 'Amy Adams'),
(26, 'Andrew Garfield'),
(8, 'Aneurin Barnard'),
(42, 'Anna Kendrick'),
(14, 'Boyd Holbrook'),
(5, 'Bradley Cooper'),
(1, 'Chris Pratt'),
(19, 'Colm Hill'),
(13, 'Dafne Keen'),
(7, 'Damien Bonnard'),
(22, 'Dan Stevens'),
(30, 'Darcy Bryce'),
(3, 'Dave Bautista'),
(33, 'Ed Skrein'),
(21, 'Emma Watson'),
(6, 'Fionn Whitehead'),
(38, 'Forest Whitaker'),
(46, 'Harrison Ford'),
(11, 'Hugh Jackman'),
(28, 'Jacob Warner'),
(10, 'James Bloor'),
(37, 'Jeremy Renner'),
(45, 'Joseph Gordon-Levitt'),
(24, 'Josh Gad'),
(32, 'Karan Soni'),
(20, 'Kathryn Kirkpatrick'),
(25, 'Kevin Kline'),
(9, 'Lee Armstrong'),
(43, 'Leonardo DiCaprio'),
(23, 'Luke Evans'),
(40, 'Mark OBrien'),
(34, 'Michael Benyaer'),
(18, 'Michael Mitton'),
(39, 'Michael Stuhlbarg'),
(47, 'Miles Teller'),
(29, 'Milo Gibson'),
(12, 'Patrick Stewart'),
(27, 'Richard Pyros'),
(31, 'Ryan Reynolds'),
(52, 'Sandra Bullock'),
(44, 'Saoirse Ronan'),
(17, 'Sheena Kamal'),
(35, 'Stefan Kapicic'),
(15, 'Stephen Merchant'),
(53, 'Suraj Sharma'),
(16, 'Tilda Swinton'),
(41, 'Tom Costello'),
(4, 'Vin Diesel'),
(2, 'Zoe Saldana');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comments_id` mediumint(8) UNSIGNED NOT NULL,
  `comments_auth` varchar(125) NOT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` smallint(3) NOT NULL,
  `country_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Albania'),
(2, 'Algeria'),
(3, 'Andorra'),
(4, 'Angola'),
(5, 'Anguilla'),
(6, 'Antarctica'),
(7, 'Antigua'),
(8, 'Antilles'),
(9, 'Argentina'),
(10, 'Armenia'),
(11, 'Aruba'),
(12, 'Australia'),
(13, 'Austria'),
(14, 'Azerbaijan'),
(15, 'Bahamas'),
(16, 'Bangladesh'),
(17, 'Barbados'),
(18, 'Belarus'),
(19, 'Belgium'),
(20, 'Belize'),
(21, 'Benin'),
(22, 'Bermuda'),
(23, 'Bhutan'),
(24, 'Bolivia'),
(25, 'Bosnia'),
(26, 'Botswana'),
(27, 'Brazil'),
(28, 'Brunei'),
(29, 'Bulgaria'),
(30, 'Burkina Faso'),
(31, 'Burundi'),
(32, 'Cambodia'),
(33, 'Cameroon'),
(34, 'Canada'),
(35, 'Cape Verde'),
(36, 'Cayman Islands'),
(37, 'Central Africa'),
(38, 'Chad'),
(39, 'Chile'),
(40, 'China'),
(41, 'Colombia'),
(42, 'Comoros'),
(43, 'Congo'),
(44, 'Cook Islands'),
(45, 'Costa Rica'),
(46, 'Cote D\'Ivoire'),
(47, 'Croatia'),
(48, 'Cuba'),
(49, 'Cyprus'),
(50, 'Czech Republic'),
(51, 'Denmark'),
(52, 'Djibouti'),
(53, 'Dominica'),
(54, 'Dominican Rep.'),
(55, 'Ecuador'),
(56, 'Egypt'),
(57, 'El Salvador'),
(58, 'Eritrea'),
(59, 'Estonia'),
(60, 'Ethiopia'),
(61, 'Fiji'),
(62, 'Finland'),
(63, 'Falkland Islands'),
(64, 'France'),
(65, 'Gabon'),
(66, 'Gambia'),
(67, 'Georgia'),
(68, 'Germany'),
(69, 'Ghana'),
(70, 'Gibraltar'),
(71, 'Greece'),
(72, 'Greenland'),
(73, 'Grenada'),
(74, 'Guam'),
(75, 'Guatemala'),
(76, 'Guiana'),
(77, 'Guinea'),
(78, 'Guyana'),
(79, 'Haiti'),
(80, 'Hondoras'),
(81, 'Hong Kong'),
(82, 'Hungary'),
(83, 'Iceland'),
(84, 'India'),
(85, 'Indonesia'),
(86, 'Iran'),
(87, 'Iraq'),
(88, 'Ireland'),
(89, 'Israel'),
(90, 'Italy'),
(91, 'Jamaica'),
(92, 'Japan'),
(93, 'Jordan'),
(94, 'Kazakhstan'),
(95, 'Kenya'),
(96, 'Kiribati'),
(97, 'Korea'),
(98, 'Kyrgyzstan'),
(99, 'Lao'),
(100, 'Latvia'),
(101, 'Lesotho'),
(102, 'Liberia'),
(103, 'Liechtenstein'),
(104, 'Lithuania'),
(105, 'Luxembourg'),
(106, 'Macau'),
(107, 'Macedonia'),
(108, 'Madagascar'),
(109, 'Malawi'),
(110, 'Malaysia'),
(111, 'Maldives'),
(112, 'Mali'),
(113, 'Malta'),
(114, 'Marshal Islands'),
(115, 'Martinique'),
(116, 'Mauritania'),
(117, 'Mauritius'),
(118, 'Mayotte'),
(119, 'Mexico'),
(120, 'Micronesia'),
(121, 'Moldova'),
(122, 'Monaco'),
(123, 'Mongolia'),
(124, 'Montserrat'),
(125, 'Morocco'),
(126, 'Mozambique'),
(127, 'Myanmar'),
(128, 'Namibia'),
(129, 'Nauru'),
(130, 'Nepal'),
(131, 'Netherlands'),
(132, 'New Caledonia'),
(133, 'New Guinea'),
(134, 'New Zealand'),
(135, 'Nicaragua'),
(136, 'Nigeria'),
(137, 'Niue'),
(138, 'Norfolk Island'),
(139, 'Norway'),
(140, 'Palau'),
(141, 'Panama'),
(142, 'Paraguay'),
(143, 'Peru'),
(144, 'Puerto'),
(145, 'Philippines'),
(146, 'Poland'),
(147, 'Polynesia'),
(148, 'Portugal'),
(149, 'Romania'),
(150, 'Russia'),
(151, 'Rwanda'),
(152, 'Saint Lucia'),
(153, 'Samoa'),
(154, 'San Marino'),
(155, 'Senegal'),
(156, 'Seychelles'),
(157, 'Sierra Leone'),
(158, 'Singapore'),
(159, 'Slovakia'),
(160, 'Slovenia'),
(161, 'Somalia'),
(162, 'South Africa'),
(163, 'Spain'),
(164, 'Sri Lanka'),
(165, 'St. Helena'),
(166, 'Sudan'),
(167, 'Suriname'),
(168, 'Swaziland'),
(169, 'Sweden'),
(170, 'Switzerland'),
(171, 'Taiwan'),
(172, 'Tajikistan'),
(173, 'Tanzania'),
(174, 'Thailand'),
(175, 'Togo'),
(176, 'Tokelau'),
(177, 'Tonga'),
(178, 'Trinidad'),
(179, 'Tunisia'),
(180, 'Turkey'),
(181, 'Uganda'),
(182, 'Ukraine'),
(183, 'United Kingdom'),
(184, 'United States'),
(185, 'Uruguay'),
(186, 'Uzbekistan'),
(187, 'Vanuatu'),
(188, 'Venezuela'),
(189, 'Vietnam'),
(190, 'Virgin Islands'),
(191, 'Yugoslavia'),
(192, 'Zaire'),
(193, 'Zambia'),
(194, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_director`
--

CREATE TABLE `tbl_director` (
  `director_id` smallint(5) UNSIGNED NOT NULL,
  `director_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_director`
--

INSERT INTO `tbl_director` (`director_id`, `director_name`) VALUES
(1, 'James Gunn'),
(2, 'Christopher Nolan'),
(3, 'James Mangold'),
(4, 'Joon-ho Bong'),
(5, 'Bill Condon'),
(6, 'Mel Gibson'),
(7, 'Tim Miller'),
(8, 'Denis Villeneuve '),
(9, 'Dexter Fletcher'),
(10, 'Mike Mitchell'),
(11, 'Walt Dohrn'),
(12, 'Alejandro Gonzalez Inarritu'),
(13, 'John Crowley '),
(14, 'Robert Zemeckis'),
(15, 'Florian Gallenberger '),
(16, 'J.J. Abrams'),
(17, 'Damien Chazelle'),
(18, 'Joseph Gordon-Levitt '),
(19, 'Alfonso Cuaron'),
(20, 'Ang Lee'),
(21, 'David O. Russell');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL,
  `genre_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Men'),
(2, 'Women'),
(3, 'Kids'),
(4, 'Electronics'),
(5, 'Gear'),
(6, 'Jerseys'),
(7, 'Footwear');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` smallint(5) UNSIGNED NOT NULL,
  `lang_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`) VALUES
(1, 'Abkhaz'),
(2, 'Afar'),
(3, 'Afrikaans'),
(4, 'Akan'),
(5, 'Albanian'),
(6, 'Amharic'),
(7, 'Arabic'),
(8, 'Aragonese'),
(9, 'Armenian'),
(10, 'Assamese'),
(11, 'Avaric'),
(12, 'Avestan'),
(13, 'Aymara'),
(14, 'Azerbaijani'),
(15, 'Bambara'),
(16, 'Bashkir'),
(17, 'Basque'),
(18, 'Belarusian'),
(19, 'Bengali'),
(20, 'Bihari'),
(21, 'Bislama'),
(22, 'Bosnian'),
(23, 'Breton'),
(24, 'Bulgarian'),
(25, 'Burmese'),
(26, 'Catalan'),
(27, 'Valencian'),
(28, 'Chamorro'),
(29, 'Chechen'),
(30, 'Chichewa'),
(31, 'Chewa'),
(32, 'Nyanja'),
(33, 'Chinese'),
(34, 'Chuvash'),
(35, 'Cornish'),
(36, 'Corsican'),
(37, 'Cree'),
(38, 'Croatian'),
(39, 'Czech'),
(40, 'Danish'),
(41, 'Divehi'),
(42, 'Dhivehi'),
(43, 'Maldivian'),
(44, 'Dutch'),
(45, 'English'),
(46, 'Esperanto'),
(47, 'Estonian'),
(48, 'Ewe'),
(49, 'Faroese'),
(50, 'Fijian'),
(51, 'Finnish'),
(52, 'French'),
(53, 'Fula'),
(54, 'Fulah'),
(55, 'Pulaar'),
(56, 'Pular'),
(57, 'Galician'),
(58, 'Georgian'),
(59, 'German'),
(60, 'Greek'),
(61, 'Guaraní'),
(62, 'Gujarati'),
(63, 'Haitian'),
(64, 'Haitian Creole'),
(65, 'Hausa'),
(66, 'Hebrew'),
(67, 'Herero'),
(68, 'Hindi'),
(69, 'Hiri Motu'),
(70, 'Hungarian'),
(71, 'Interlingua'),
(72, 'Indonesian'),
(73, 'Interlingue'),
(74, 'Irish'),
(75, 'Igbo'),
(76, 'Inupiaq'),
(77, 'Ido'),
(78, 'Icelandic'),
(79, 'Italian'),
(80, 'Inuktitut'),
(81, 'Japanese'),
(82, 'Javanese'),
(83, 'Kalaallisut'),
(84, 'Greenlandic'),
(85, 'Kannada'),
(86, 'Kanuri'),
(87, 'Kashmiri'),
(88, 'Kazakh'),
(89, 'Khmer'),
(90, 'Kikuyu'),
(91, 'Gikuyu'),
(92, 'Kinyarwanda'),
(93, 'Kirghiz'),
(94, 'Kyrgyz'),
(95, 'Komi'),
(96, 'Kongo'),
(97, 'Korean'),
(98, 'Kurdish'),
(99, 'Kwanyama'),
(100, 'Kuanyama'),
(101, 'Latin'),
(102, 'Luxembourgish'),
(103, 'Letzeburgesch'),
(104, 'Luganda'),
(105, 'Limburgish'),
(106, 'Limburgan'),
(107, 'Limburger'),
(108, 'Lingala'),
(109, 'Lao'),
(110, 'Lithuanian'),
(111, 'Luba-Katanga'),
(112, 'Latvian'),
(113, 'Manx'),
(114, 'Macedonian'),
(115, 'Malagasy'),
(116, 'Malay'),
(117, 'Malayalam'),
(118, 'Maltese'),
(119, 'Maori'),
(120, 'Marathi'),
(121, 'Marshallese'),
(122, 'Mongolian'),
(123, 'Nauru'),
(124, 'Navajo'),
(125, 'Navaho'),
(126, 'Norwegian Bokmal'),
(127, 'North Ndebele'),
(128, 'Nepali'),
(129, 'Ndonga'),
(130, 'Norwegian Nynorsk'),
(131, 'Norwegian'),
(132, 'Nuosu'),
(133, 'South Ndebele'),
(134, 'Occitan'),
(135, 'Ojibwe'),
(136, 'Ojibwa'),
(137, 'Old Church Slavonic'),
(138, 'Church Slavic'),
(139, 'Church Slavonic'),
(140, 'Old Bulgarian'),
(141, 'Old Slavonic'),
(142, 'Oromo'),
(143, 'Oriya'),
(144, 'Ossetian'),
(145, 'Ossetic'),
(146, 'Panjabi'),
(147, 'Punjabi'),
(148, 'Pali'),
(149, 'Persian'),
(150, 'Polish'),
(151, 'Pashto'),
(152, 'Pushto'),
(153, 'Portuguese'),
(154, 'Quechua'),
(155, 'Romansh'),
(156, 'Kirundi'),
(157, 'Romanian'),
(158, 'Moldavian'),
(159, 'Moldovan'),
(160, 'Russian'),
(161, 'Sanskrit'),
(162, 'Sardinian'),
(163, 'Sindhi'),
(164, 'Northern Sami'),
(165, 'Samoan'),
(166, 'Sango'),
(167, 'Serbian'),
(168, 'Scottish Gaelic'),
(169, 'Gaelic'),
(170, 'Shona'),
(171, 'Sinhala'),
(172, 'Sinhalese'),
(173, 'Slovak'),
(174, 'Slovene'),
(175, 'Somali'),
(176, 'Southern Sotho'),
(177, 'Spanish'),
(178, 'Castilian'),
(179, 'Sundanese'),
(180, 'Swahili'),
(181, 'Swati'),
(182, 'Swedish'),
(183, 'Tamil'),
(184, 'Telugu'),
(185, 'Tajik'),
(186, 'Thai'),
(187, 'Tigrinya'),
(188, 'Tibetan Standard'),
(189, 'Tibetan'),
(190, 'Turkmen'),
(191, 'Tagalog'),
(192, 'Tswana'),
(193, 'Tonga'),
(194, 'Turkish'),
(195, 'Tsonga'),
(196, 'Tatar'),
(197, 'Twi'),
(198, 'Tahitian'),
(199, 'Uighur'),
(200, 'Uyghur'),
(201, 'Ukrainian'),
(202, 'Urdu'),
(203, 'Uzbek'),
(204, 'Venda'),
(205, 'Vietnamese'),
(206, 'Volapuk'),
(207, 'Walloon'),
(208, 'Welsh'),
(209, 'Wolof'),
(210, 'Western Frisian'),
(211, 'Xhosa'),
(212, 'Yiddish'),
(213, 'Yoruba'),
(214, 'Zhuang'),
(215, 'Chuang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(23, 'electronics_apple_watch.png', 'Apple Watch Series 4 GPS, 40 mm Gold Aluminum', '', '', 'The New Apple Watch Series 4 is here! Fundamentally redesigned and re-engineered. The largest Apple Watch display yet. Built-in electrical heart sensor. New Digital Crown with haptic feedback. Low and high heart rate notifications. Fall detection and Emergency SOS. New Breathe watch faces. Automatic workout detection. New yoga and hiking workouts. Advanced features for runners like cadence and pace alerts. New head-to-head competitions. Activity sharing with friends. Personalized coaching. ', '', ''),
(24, 'electronics_beats_headphones.png', 'Beats Headphones', '', '', 'Wireless Headphones - Gloss White', '', ''),
(25, 'electronics_fitbit_scale.png', 'Aria 2 Wi-Fi Smart Scale - Black', '', '', 'Get a clear picture of your health with the Fitbit Aria 2™ Wi-Fi Smart Scale. Easy to set up and even easier to use, this sleek scale measures weight, body fat, lean mass and BMI. Your stats sync automatically to the Fitbit app, so you can see how everything you do adds up—from steps to exercise to nutrition. ', '', ''),
(26, 'electronics_fitbit_watch.png', 'Versa Smartwatch - Peach/Rose Gold Aluminum', '', '', 'The Versa is a lightweight, water-resistant smartwatch that empowers you to reach health and fitness goals with actionable insights, personalized guidance, on-screen workouts and more. The Fitbit ecosystem is now possible with this Versa smartwatch which can play music over Bluetooth to your Fitbit Flyer headphones. Track your weight and BMI using the Fitbit Aria Smart Scale and view your overall health and fitness on Fitbit Dashboard. ', '', ''),
(27, 'electronics_garmin_gps.png', 'inReach Explorer + Satellite Communicator and GPS', '', '', 'Explore anywhere. Communicate everywhere. inReach Explorer®+ is the rugged satellite communicator and GPS navigator that uses 100% global Iridium coverage for 2-way text messaging and tracking, anywhere in the world. Navigate with detailed, preloaded TOPO maps, follow routes, mark waypoints and find your way back with a high-detail bread crumb trail. Using GPS tracking, you can easily share your location with family, friends, social media or emergency responders. ', '', ''),
(29, 'foot_adidas_boys.png', 'Kids\' Pure Boost Go Grade School Shoes', '', '', 'These juniors’ running shoes support an unrestricted stride on city streets with a minimalist knit upper and energy-returning Boost cushioning underfoot. A heel plate supports and comforts your foot while a flexible outsole allows it to splay naturally at touchdown.', '', ''),
(30, 'foot_adidas_mens.png', 'Men\'s Ultraboost 19 Running Shoes', '', '', 'The adidas Men’s Ultra Boost 19 Running Shoes combine comfort and performance to reinvent your run. They have a seamless adidas Primeknit 360 upper that’s engineered with motion weave technology to stretch and support your foot. Optimised Boost maximises energy return, and a 3D heel frame provides a locked-down fit that allows natural heel movement.', '', ''),
(31, 'foot_asics_kids.png', 'Preschool GT-1000 7 Shoes', '', '', 'Exceptional performance meets incredible value. With its balanced cushioned support and guided stability, the sleek ASICS Preschool GT-1000 7 Shoes caters to young runners of all levels. Featuring GEL technology and SPeVA®Foam 45 lasting soft platform, the GT-1000 7 GS provides the bounce and stability young runners need to go further. Comfort is enhanced by the EVA sockliner which keeps skin dry, and a breathable mesh upper.', '', ''),
(32, 'foot_asics_toddler.png', 'Toddler Pre-Contend 4 Shoes', '', '', 'A versatile, everyday shoe for the little ones, the ASICS Toddler\'s Pre-Contend 4 Shoes features comfy cushioning and superior durability in a variety of vibrant playground-perfect colors. A hook-and-loop closure system allows for easy on/off while the removable sockliner provides room for orthotics if needed. Endorsed by the American Podiatric Medical Association, you can rest easy knowing they\'re getting the support they need.', '', ''),
(33, 'foot_nike_womens.png', 'Women\'s Air Zoom Wildhorse 5 Running Shoes', '', '', 'Built specifically for trails, the Nike Women’s Air Zoom Wildhorse 5 Running Shoes keeps you galloping over rough terrain in breathable, multi-layer mesh. A rock plate helps shield your foot, while a Zoom Air heel unit cushions your stride on and off the path.', '', ''),
(34, 'gear_ccm_skates.png', 'Tacks 9060 Senior Hockey Skates', '', '', 'The CCM Tacks 9060 Senior Hockey Skates incorporate Speedcore for a lightweight and rigid skate that provides great stability and performance. The HD Micro Fiber Liner provides excellent abrasion protection with great comfort at the same time.', '', ''),
(35, 'gear_nike_bag.png', 'Brasilia XL Backpack - Black', '', '', 'The Nike Brasilia Training Backpack (Extra Large) is built for secure storage, with multiple zippered pockets inside and out. Its durable design includes padded shoulder straps for comfort on the go.', '', ''),
(36, 'gear_powerbilt_golf.png', 'TPX Junior Tour Girl\'s Golf Set', '', '', 'The Powerbilt TPX Junior Tour Girl\'s Golf Set for ages 9-12 is the perfect set for an enthusiastic junior who doesn\'t fit into adults clubs yet. This set includes a driver for tee shots, hybrid for longer shots from the fairway or rough, a long and short iron, putter, golf bag, and headcovers. ', '', ''),
(37, 'gear_rossignol_skis.png', 'Men\'s Skis 2018/2019', '', '', 'Whether you’re a beginner or have progressed to intermediate-level technique, the Rossignol Pursuit Men’s Skis 2018/19 will help you masterfully carve the trails. Prop Tech adaptive torsional flex increases contact to help you stay in control, while the On-Trail Rocker lets you effortlessly guide through turns on hard snow. NOTE: Bindings will automatically be added to your cart. To avoid shipping delays, please purchase additional items separately.', '', ''),
(38, 'gear_warrior_stick.png', 'Covert QRL SE Grip Senior Hockey Stick', '', '', 'Score in style with the Warrior Covert QRL SE Senior Hockey Stick and Lightning Quick Release. The Pro Cortex Grip has a tacky soft grip for optimum hand control while True 1 gives you Warrior\'s lightest sticks with blade light balance and exceptional feel.', '', ''),
(39, 'jerseys_cfl_stampeders.png', 'Youth Calgary Stampeders Mitchell Replica Jersey', '', '', 'Support the team from Calgary as they put their hard-hitting style to work on the field. This youth football jersey is styled after the Stamps’ team uniform and features a bold \"Stampeders\" printed across the front and Mitchell name and numbers.', '', ''),
(40, 'jerseys_mlb_jays.png', 'New England Patriots Men\'s Rob Gronkowski Jersey', '', '', 'Show off your sense of style and your support for your favourite MLB player at the same time. The Toronto Blue Jays Kevin Pillar Women’s Tee has a tapered shape to flaunt your curves and is finished with the centre fielder’s on its reverse.', '', ''),
(41, 'jerseys_nba_warriors.png', 'Golden State Warriors Men\'s Curry Swingman Jersey', '', '', 'Based on the authentic NBA jersey, this City Edition of the Swingman Warriors Nike NBA Connected Jersey honors the Bay Area’s Chinese heritage. Inspired by Chinese coins and the art of paper cutting, the design features highly detailed Chinese Zodiac graphics.', '', ''),
(42, 'jerseys_nfl_patriots.png', 'New England Patriots Men\'s Rob Gronkowski Jersey', '', '', 'Dri-Fit Pique Body Fabric To Help Keep You Cool And Comfortable. Chain Mail Mesh Grill At Front Neck And Back Seam Lines Inspired By The Authentic On Field Jersey. Sublimated Twill Names And Numbers And Premium Team Detailing And Trims. Stitched Down Nil Shield. Standard Fit: Not Too Tight And Not Too Loose. Made For The Passionate Fan Looking For A Jersey That Combines Authentic Team Detailing With Everyday Style.', '', ''),
(43, 'jerseys_nhl_leafs.png', 'Toronto Maple Leafs Breakaway Home Hockey Jersey', '', '', 'When the puck drops represent your favourite team with the new Toronto Maple Leafs Breakaway hockey jersey by Fanatics. All new fit and fabrics make it the most comfortable jersey you can wear to the game or wherever you are.', '', ''),
(44, 'kids_adidas_pants.png', 'Boys\' Urban Football Tiro Pants', '', '', 'Bring some style to the street in these junior Boys\' tapered-leg pants. Made of smooth doubleknit, these moisture-wicking pants are designed to help keep you dry. They feature zip pockets in front and a drop crotch that lets you move freely. Both sides are finished with 3-Stripes.', '', ''),
(45, 'kids_adidas_set.png', 'Baby Zebra Superstar Set', '', '', 'The classic track suit gets sized down for the next generation. Bold zebra print puts a fun spin on adidas 3-Stripes heritage. It\'s made of cosy velour to keep little ones comfy.', '', ''),
(46, 'kids_nike_jacket.png', 'Girls\' Unicorn Windrunner Jacket', '', '', 'The Nike Sportswear Windrunner Girls’ Hooded Jacket updates an iconic design with cozy Sherpa fabric on the top and lightweight rain-repellent fabric on the bottom. The pockets are lined with Sherpa for extra warmth when you need it.', '', ''),
(47, 'kids_nike_windrunner.png', 'Boys\' HD Windrunner Jacket', '', '', 'With water-repellent ripstop fabric and a shaped hood, the Boys’ Nike Sportswear Windrunner Jacket delivers lightweight coverage from the elements. The full-zip design is lined for comfort and includes a back vent for breathability.', '', ''),
(48, 'kids_roxy_dress.png', 'Girls\' Mermaid Her Fantasy Dress', '', '', 'This beautiful mid-length dress in a floral printed viscose fabric is part of the ROXY x Disney Little Mermaid Collection. Featuring a regular fit, short sleeves, v-neck with crossed over panels at front and hidden metal snap at front. ', '', ''),
(49, 'women_adidas_bra.png', 'Women\'s Halter 2.0 Logo Sports Bra - True Pink', '', '', 'Made for heat-building workouts like circuit training, this sports bra keeps the air moving to help you stay cool. The pullover style has a high neck for full coverage and a strappy back design for freedom of movement. Internal power mesh creates a compressive fit that offers medium support.', '', ''),
(50, 'women_adidas_shirt.png', 'Women\'s Trefoil T Shirt', '', '', 'A knotted detail gives fresh inspiration to the classic look of this t shirt. It’s made of soft, comfortable cotton jersey with a touch of stretch. An oversize Trefoil logo stands out on the chest.', '', ''),
(51, 'women_helly_jacket.png', 'Women\'s Woven Jacket', '', '', 'The Nike Sportswear Women’s Woven Jacket is designed with a large hood and mesh lining to help you stay dry and comfortable in style.', '', ''),
(52, 'women_mckinley_jacket.png', 'Women\'s Jackie II Long Shell Jacket', '', '', 'McKINLEY’s Jackie II wms is a longer cut, parka-style waterproof rain jacket with traditional fish tail and a generous hood with drawcord for adjustability. Keeping you on the dry side in any weather, this hooded coat is complete with two side pockets with flap and press-button closure, and a button panel for individual ventilation.', '', ''),
(53, 'women_nike_jacket.png', 'Women\'s Woven Jacket', '', '', 'The Nike Sportswear Women’s Woven Jacket is designed with a large hood and mesh lining to help you stay dry and comfortable in style.', '', ''),
(54, 'men_adidas_pullover.png', 'Men\'s Team Issue Pullover Hoodie', '', '', 'Slip on cozy comfort before and after workouts. This pullover hoodie features lightweight doubleknit for a twist on a classic look. A high neck, asymmetrical hem and longer back length provide extra coverage.', '', ''),
(55, 'men_champion_hoodie.png', 'Men\'s Powerblend Fleece Pullover Hoodie', '', '', 'The same feel as the classic sweatshirt, the Champion Powerblend Pullover Hoodie is made of comfortable fleece fabric and comes with a drawstring hoodie. Keep warm with this hoodie version of a Champion sweater.', '', ''),
(56, 'men_icebreaker_hoodie.png', 'Men\'s Momentum Hoodie - Panther', '', '', 'Whether you’re boarding a flight for the trip of a lifetime, relaxing after an epic hike or squeezing a run into your busy travel schedule, the Momentum Long Sleeve Hood keeps up with the fast pace of everyday life. The Momentum features Icebreaker’s 260gm terry Cool-Lite™ fabric, which blends soft, breathable merino wool with natural TENCEL®, nylon and a touch of LYCRA® for active stretch. ', '', ''),
(57, 'men_northface_pull.png', 'Men\'s Half Dome Stayframe Pullover Hoodie - Grey', '', '', 'Midweight pullover hoodie for staying warmer on rest days.', '', ''),
(58, 'men_puma_pullover.png', 'Men\'s Amplified Pullover Hoodie - Cotton Black', '', '', 'You’re a laidback guy and you want your clothes to be the same. The PUMA Amplified Pullover Hoodie is a PUMA lifestyle essential and is inspired by sport for a sleek look on those relaxed days.', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_cast`
--

CREATE TABLE `tbl_mov_cast` (
  `mov_cast_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `cast_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_cast`
--

INSERT INTO `tbl_mov_cast` (`mov_cast_id`, `movies_id`, `cast_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 4, 16),
(17, 4, 17),
(18, 4, 18),
(19, 4, 19),
(20, 4, 20),
(21, 5, 21),
(22, 5, 22),
(23, 5, 23),
(24, 5, 24),
(25, 5, 25),
(26, 6, 26),
(27, 6, 27),
(28, 6, 28),
(29, 6, 29),
(30, 6, 30),
(31, 7, 31),
(32, 7, 32),
(33, 7, 33),
(34, 7, 34),
(35, 7, 35),
(36, 8, 36),
(37, 8, 37),
(38, 8, 38),
(39, 8, 39),
(40, 8, 40),
(41, 9, 41),
(42, 10, 42),
(43, 11, 43),
(44, 12, 44),
(45, 13, 45),
(46, 14, 21),
(47, 15, 46),
(48, 16, 47),
(49, 17, 1),
(50, 18, 45),
(51, 19, 52),
(52, 20, 53),
(53, 21, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_country`
--

CREATE TABLE `tbl_mov_country` (
  `mov_country_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `country_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_country`
--

INSERT INTO `tbl_mov_country` (`mov_country_id`, `movies_id`, `country_id`) VALUES
(1, 1, 34),
(2, 1, 134),
(3, 1, 184),
(4, 2, 184),
(5, 2, 183),
(6, 2, 131),
(7, 2, 64),
(8, 3, 12),
(9, 3, 34),
(10, 3, 184),
(11, 4, 184),
(12, 4, 97),
(13, 5, 183),
(14, 5, 184),
(15, 6, 184),
(16, 6, 12),
(17, 7, 184),
(18, 8, 184),
(19, 9, 183),
(20, 9, 184),
(21, 9, 68),
(22, 10, 184),
(23, 11, 184),
(24, 11, 81),
(25, 11, 171);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_director`
--

CREATE TABLE `tbl_mov_director` (
  `mov_director_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `director_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_director`
--

INSERT INTO `tbl_mov_director` (`mov_director_id`, `movies_id`, `director_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 10, 11),
(12, 11, 12),
(13, 12, 13),
(14, 13, 14),
(15, 14, 15),
(16, 15, 16),
(17, 16, 17),
(18, 17, 1),
(19, 18, 19),
(20, 19, 20),
(21, 20, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 2, 1),
(5, 2, 5),
(6, 2, 6),
(7, 2, 10),
(8, 3, 1),
(9, 3, 5),
(10, 3, 9),
(11, 4, 1),
(12, 4, 2),
(13, 4, 5),
(14, 4, 9),
(15, 5, 8),
(16, 5, 13),
(17, 5, 14),
(18, 6, 5),
(19, 6, 6),
(20, 6, 10),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 15),
(25, 8, 5),
(26, 8, 9),
(27, 9, 3),
(28, 9, 7),
(29, 9, 16),
(30, 10, 14),
(31, 10, 2),
(32, 10, 3),
(33, 10, 8),
(34, 10, 13),
(35, 11, 2),
(36, 11, 5),
(37, 22, 2),
(38, 23, 4),
(39, 24, 4),
(40, 25, 4),
(41, 26, 4),
(42, 27, 4),
(43, 28, 5),
(44, 29, 7),
(45, 30, 7),
(46, 31, 7),
(47, 32, 7),
(48, 33, 7),
(49, 34, 5),
(50, 35, 5),
(51, 36, 5),
(52, 37, 5),
(53, 38, 5),
(54, 39, 6),
(55, 40, 6),
(56, 41, 6),
(57, 42, 6),
(58, 43, 6),
(59, 44, 3),
(60, 45, 3),
(61, 46, 3),
(62, 47, 3),
(63, 48, 3),
(64, 49, 2),
(65, 50, 2),
(66, 51, 2),
(67, 52, 2),
(68, 53, 2),
(69, 54, 1),
(70, 55, 1),
(71, 56, 1),
(72, 57, 1),
(73, 58, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_lang`
--

CREATE TABLE `tbl_mov_lang` (
  `mov_lang_id` smallint(5) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `language_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_lang`
--

INSERT INTO `tbl_mov_lang` (`mov_lang_id`, `movies_id`, `language_id`) VALUES
(1, 1, 45),
(2, 2, 45),
(3, 2, 52),
(4, 2, 59),
(5, 3, 45),
(6, 3, 177),
(7, 4, 45),
(8, 4, 177),
(9, 4, 97),
(10, 5, 45),
(11, 6, 45),
(12, 6, 81),
(13, 7, 45),
(14, 8, 45),
(15, 8, 33),
(16, 8, 160),
(17, 9, 45),
(18, 9, 126),
(19, 9, 59),
(20, 10, 45),
(21, 11, 45),
(22, 11, 52);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_studio`
--

CREATE TABLE `tbl_mov_studio` (
  `mov_studio_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `studio_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_studio`
--

INSERT INTO `tbl_mov_studio` (`mov_studio_id`, `movies_id`, `studio_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 1),
(18, 18, 17),
(19, 19, 18),
(20, 20, 19),
(21, 21, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studio`
--

CREATE TABLE `tbl_studio` (
  `studio_id` smallint(5) UNSIGNED NOT NULL,
  `studio_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_studio`
--

INSERT INTO `tbl_studio` (`studio_id`, `studio_name`) VALUES
(1, 'Marvel Studios'),
(2, 'Syncopy'),
(3, 'Donners Company'),
(4, 'Kate Street Picture Company'),
(5, 'Mandeville Films'),
(6, 'Cross Creek Pictures'),
(7, 'Twentieth Century Fox Film Corporation'),
(8, 'Lava Bear Films'),
(9, 'Hurwitz Creative'),
(10, 'DreamWorks Animation'),
(11, 'Regency Enterprises'),
(12, 'Wildgaze Films'),
(13, 'Sony Pictures Entertainment (SPE)'),
(14, 'Majestic Filmproduktion'),
(15, 'Lucasfilm'),
(16, 'Bold Films'),
(17, 'Voltage Pictures'),
(18, 'Warner Bros.'),
(19, 'Fox 2000 Pictures'),
(20, 'Weinstein Company');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_urating`
--

CREATE TABLE `tbl_urating` (
  `rating_id` tinyint(3) UNSIGNED NOT NULL,
  `rating_number` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`) VALUES
(7, 'trial', 'trial', 'trial', 'trial@trial.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_arating`
--
ALTER TABLE `tbl_arating`
  ADD PRIMARY KEY (`arating_id`);

--
-- Indexes for table `tbl_cast`
--
ALTER TABLE `tbl_cast`
  ADD PRIMARY KEY (`cast_id`),
  ADD UNIQUE KEY `cast_name` (`cast_name`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_director`
--
ALTER TABLE `tbl_director`
  ADD PRIMARY KEY (`director_id`);

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_mov_cast`
--
ALTER TABLE `tbl_mov_cast`
  ADD PRIMARY KEY (`mov_cast_id`);

--
-- Indexes for table `tbl_mov_country`
--
ALTER TABLE `tbl_mov_country`
  ADD PRIMARY KEY (`mov_country_id`);

--
-- Indexes for table `tbl_mov_director`
--
ALTER TABLE `tbl_mov_director`
  ADD PRIMARY KEY (`mov_director_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_mov_lang`
--
ALTER TABLE `tbl_mov_lang`
  ADD PRIMARY KEY (`mov_lang_id`);

--
-- Indexes for table `tbl_mov_studio`
--
ALTER TABLE `tbl_mov_studio`
  ADD PRIMARY KEY (`mov_studio_id`);

--
-- Indexes for table `tbl_studio`
--
ALTER TABLE `tbl_studio`
  ADD PRIMARY KEY (`studio_id`);

--
-- Indexes for table `tbl_urating`
--
ALTER TABLE `tbl_urating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_arating`
--
ALTER TABLE `tbl_arating`
  MODIFY `arating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_cast`
--
ALTER TABLE `tbl_cast`
  MODIFY `cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comments_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `tbl_director`
--
ALTER TABLE `tbl_director`
  MODIFY `director_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tbl_mov_cast`
--
ALTER TABLE `tbl_mov_cast`
  MODIFY `mov_cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_mov_country`
--
ALTER TABLE `tbl_mov_country`
  MODIFY `mov_country_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_mov_director`
--
ALTER TABLE `tbl_mov_director`
  MODIFY `mov_director_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tbl_mov_lang`
--
ALTER TABLE `tbl_mov_lang`
  MODIFY `mov_lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_mov_studio`
--
ALTER TABLE `tbl_mov_studio`
  MODIFY `mov_studio_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_studio`
--
ALTER TABLE `tbl_studio`
  MODIFY `studio_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_urating`
--
ALTER TABLE `tbl_urating`
  MODIFY `rating_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;