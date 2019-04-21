-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 21, 2019 at 06:06 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_sportchek_cms`
--

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
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_storyline` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_storyline`) VALUES
(23, 'electronics_apple_watch.png', 'Apple Watch Series 4 GPS, 40 mm Gold Aluminum', 'The New Apple Watch Series 4 is here! Fundamentally redesigned and re-engineered. The largest Apple Watch display yet. Built-in electrical heart sensor. New Digital Crown with haptic feedback. Low and high heart rate notifications. Fall detection and Emergency SOS. New Breathe watch faces. Automatic workout detection. New yoga and hiking workouts. Advanced features for runners like cadence and pace alerts. New head-to-head competitions. Activity sharing with friends. Personalized coaching. '),
(24, 'electronics_beats_headphones.png', 'Beats Headphones - Glossy White', 'With up to 40 hours of battery life, Beats Solo Wireless is your perfect everyday headphone. Get the most out of your music with an award-winning, emotionally charged Beats listening experience.'),
(25, 'electronics_fitbit_scale.png', 'Aria 2 Wi-Fi Smart Scale - Black', 'Get a clear picture of your health with the Fitbit Aria 2™ Wi-Fi Smart Scale. Easy to set up and even easier to use, this sleek scale measures weight, body fat, lean mass and BMI. Your stats sync automatically to the Fitbit app, so you can see how everything you do adds up—from steps to exercise to nutrition. '),
(26, 'electronics_fitbit_watch.png', 'Versa Smartwatch - Peach/Rose Gold Aluminum', 'The Versa is a lightweight, water-resistant smartwatch that empowers you to reach health and fitness goals with actionable insights, personalized guidance, on-screen workouts and more. The Fitbit ecosystem is now possible with this Versa smartwatch which can play music over Bluetooth to your Fitbit Flyer headphones. Track your weight and BMI using the Fitbit Aria Smart Scale and view your overall health and fitness on Fitbit Dashboard. '),
(27, 'electronics_garmin_gps.png', 'inReach Explorer + Satellite Communicator and GPS', 'Explore anywhere. Communicate everywhere. inReach Explorer®+ is the rugged satellite communicator and GPS navigator that uses 100% global Iridium coverage for 2-way text messaging and tracking, anywhere in the world. Navigate with detailed, preloaded TOPO maps, follow routes, mark waypoints and find your way back with a high-detail bread crumb trail. Using GPS tracking, you can easily share your location with family, friends, social media or emergency responders. '),
(29, 'foot_adidas_boys.png', 'Kids\' Pure Boost Go Grade School Shoes', 'These juniors’ running shoes support an unrestricted stride on city streets with a minimalist knit upper and energy-returning Boost cushioning underfoot. A heel plate supports and comforts your foot while a flexible outsole allows it to splay naturally at touchdown.'),
(30, 'foot_adidas_mens.png', 'Men\'s Ultraboost 19 Running Shoes', 'The adidas Men’s Ultra Boost 19 Running Shoes combine comfort and performance to reinvent your run. They have a seamless adidas Primeknit 360 upper that’s engineered with motion weave technology to stretch and support your foot. Optimised Boost maximises energy return, and a 3D heel frame provides a locked-down fit that allows natural heel movement.'),
(31, 'foot_asics_kids.png', 'Preschool GT-1000 7 Shoes', 'Exceptional performance meets incredible value. With its balanced cushioned support and guided stability, the sleek ASICS Preschool GT-1000 7 Shoes caters to young runners of all levels. Featuring GEL technology and SPeVA®Foam 45 lasting soft platform, the GT-1000 7 GS provides the bounce and stability young runners need to go further. Comfort is enhanced by the EVA sockliner which keeps skin dry, and a breathable mesh upper.'),
(32, 'foot_asics_toddler.png', 'Toddler Pre-Contend 4 Shoes', 'A versatile, everyday shoe for the little ones, the ASICS Toddler\'s Pre-Contend 4 Shoes features comfy cushioning and superior durability in a variety of vibrant playground-perfect colors. A hook-and-loop closure system allows for easy on/off while the removable sockliner provides room for orthotics if needed. Endorsed by the American Podiatric Medical Association, you can rest easy knowing they\'re getting the support they need.'),
(33, 'foot_nike_womens.png', 'Women\'s Air Zoom Wildhorse 5 Running Shoes', 'Built specifically for trails, the Nike Women’s Air Zoom Wildhorse 5 Running Shoes keeps you galloping over rough terrain in breathable, multi-layer mesh. A rock plate helps shield your foot, while a Zoom Air heel unit cushions your stride on and off the path.'),
(34, 'gear_ccm_skates.png', 'Tacks 9060 Senior Hockey Skates', 'The CCM Tacks 9060 Senior Hockey Skates incorporate Speedcore for a lightweight and rigid skate that provides great stability and performance. The HD Micro Fiber Liner provides excellent abrasion protection with great comfort at the same time.'),
(35, 'gear_nike_bag.png', 'Brasilia XL Backpack - Black', 'The Nike Brasilia Training Backpack (Extra Large) is built for secure storage, with multiple zippered pockets inside and out. Its durable design includes padded shoulder straps for comfort on the go.'),
(36, 'gear_powerbilt_golf.png', 'TPX Junior Tour Girl\'s Golf Set', 'The Powerbilt TPX Junior Tour Girl\'s Golf Set for ages 9-12 is the perfect set for an enthusiastic junior who doesn\'t fit into adults clubs yet. This set includes a driver for tee shots, hybrid for longer shots from the fairway or rough, a long and short iron, putter, golf bag, and headcovers. '),
(37, 'gear_rossignol_skis.png', 'Men\'s Skis 2018/2019', 'Whether you’re a beginner or have progressed to intermediate-level technique, the Rossignol Pursuit Men’s Skis 2018/19 will help you masterfully carve the trails. Prop Tech adaptive torsional flex increases contact to help you stay in control, while the On-Trail Rocker lets you effortlessly guide through turns on hard snow. NOTE: Bindings will automatically be added to your cart. To avoid shipping delays, please purchase additional items separately.'),
(38, 'gear_warrior_stick.png', 'Covert QRL SE Grip Senior Hockey Stick', 'Score in style with the Warrior Covert QRL SE Senior Hockey Stick and Lightning Quick Release. The Pro Cortex Grip has a tacky soft grip for optimum hand control while True 1 gives you Warrior\'s lightest sticks with blade light balance and exceptional feel.'),
(39, 'jerseys_cfl_stampeders.png', 'Youth Calgary Stampeders Mitchell Replica Jersey', 'Support the team from Calgary as they put their hard-hitting style to work on the field. This youth football jersey is styled after the Stamps’ team uniform and features a bold \"Stampeders\" printed across the front and Mitchell name and numbers.'),
(40, 'jerseys_mlb_jays.png', 'New England Patriots Men\'s Rob Gronkowski Jersey', 'Show off your sense of style and your support for your favourite MLB player at the same time. The Toronto Blue Jays Kevin Pillar Women’s Tee has a tapered shape to flaunt your curves and is finished with the centre fielder’s on its reverse.'),
(41, 'jerseys_nba_warriors.png', 'Golden State Warriors Men\'s Curry Swingman Jersey', 'Based on the authentic NBA jersey, this City Edition of the Swingman Warriors Nike NBA Connected Jersey honors the Bay Area’s Chinese heritage. Inspired by Chinese coins and the art of paper cutting, the design features highly detailed Chinese Zodiac graphics.'),
(42, 'jerseys_nfl_patriots.png', 'New England Patriots Men\'s Rob Gronkowski Jersey', 'Dri-Fit Pique Body Fabric To Help Keep You Cool And Comfortable. Chain Mail Mesh Grill At Front Neck And Back Seam Lines Inspired By The Authentic On Field Jersey. Sublimated Twill Names And Numbers And Premium Team Detailing And Trims. Stitched Down Nil Shield. Standard Fit: Not Too Tight And Not Too Loose. Made For The Passionate Fan Looking For A Jersey That Combines Authentic Team Detailing With Everyday Style.'),
(43, 'jerseys_nhl_leafs.png', 'Toronto Maple Leafs Breakaway Home Hockey Jersey', 'When the puck drops represent your favourite team with the new Toronto Maple Leafs Breakaway hockey jersey by Fanatics. All new fit and fabrics make it the most comfortable jersey you can wear to the game or wherever you are.'),
(44, 'kids_adidas_pants.png', 'Boys\' Urban Football Tiro Pants', 'Bring some style to the street in these junior Boys\' tapered-leg pants. Made of smooth doubleknit, these moisture-wicking pants are designed to help keep you dry. They feature zip pockets in front and a drop crotch that lets you move freely. Both sides are finished with 3-Stripes.'),
(45, 'kids_adidas_set.png', 'Baby Zebra Superstar Set', 'The classic track suit gets sized down for the next generation. Bold zebra print puts a fun spin on adidas 3-Stripes heritage. It\'s made of cosy velour to keep little ones comfy.'),
(46, 'kids_nike_jacket.png', 'Girls\' Unicorn Windrunner Jacket', 'The Nike Sportswear Windrunner Girls’ Hooded Jacket updates an iconic design with cozy Sherpa fabric on the top and lightweight rain-repellent fabric on the bottom. The pockets are lined with Sherpa for extra warmth when you need it.'),
(47, 'kids_nike_windrunner.png', 'Boys\' HD Windrunner Jacket', 'With water-repellent ripstop fabric and a shaped hood, the Boys’ Nike Sportswear Windrunner Jacket delivers lightweight coverage from the elements. The full-zip design is lined for comfort and includes a back vent for breathability.'),
(48, 'kids_roxy_dress.png', 'Girls\' Mermaid Her Fantasy Dress', 'This beautiful mid-length dress in a floral printed viscose fabric is part of the ROXY x Disney Little Mermaid Collection. Featuring a regular fit, short sleeves, v-neck with crossed over panels at front and hidden metal snap at front. '),
(49, 'women_adidas_bra.png', 'Women\'s Halter 2.0 Logo Sports Bra - True Pink', 'Made for heat-building workouts like circuit training, this sports bra keeps the air moving to help you stay cool. The pullover style has a high neck for full coverage and a strappy back design for freedom of movement. Internal power mesh creates a compressive fit that offers medium support.'),
(50, 'women_adidas_shirt.png', 'Women\'s Trefoil T Shirt', 'A knotted detail gives fresh inspiration to the classic look of this t shirt. It’s made of soft, comfortable cotton jersey with a touch of stretch. An oversize Trefoil logo stands out on the chest.'),
(51, 'women_helly_jacket.png', 'Women\'s Woven Jacket', 'The Nike Sportswear Women’s Woven Jacket is designed with a large hood and mesh lining to help you stay dry and comfortable in style.'),
(52, 'women_mckinley_jacket.png', 'Women\'s Jackie II Long Shell Jacket', 'McKINLEY’s Jackie II wms is a longer cut, parka-style waterproof rain jacket with traditional fish tail and a generous hood with drawcord for adjustability. Keeping you on the dry side in any weather, this hooded coat is complete with two side pockets with flap and press-button closure, and a button panel for individual ventilation.'),
(53, 'women_nike_jacket.png', 'Women\'s Woven Jacket', 'The Nike Sportswear Women’s Woven Jacket is designed with a large hood and mesh lining to help you stay dry and comfortable in style.'),
(54, 'men_adidas_pullover.png', 'Men\'s Team Issue Pullover Hoodie', 'Slip on cozy comfort before and after workouts. This pullover hoodie features lightweight doubleknit for a twist on a classic look. A high neck, asymmetrical hem and longer back length provide extra coverage.'),
(55, 'men_champion_hoodie.png', 'Men\'s Powerblend Fleece Pullover Hoodie', 'The same feel as the classic sweatshirt, the Champion Powerblend Pullover Hoodie is made of comfortable fleece fabric and comes with a drawstring hoodie. Keep warm with this hoodie version of a Champion sweater.'),
(56, 'men_icebreaker_hoodie.png', 'Men\'s Momentum Hoodie - Panther', 'Whether you’re boarding a flight for the trip of a lifetime, relaxing after an epic hike or squeezing a run into your busy travel schedule, the Momentum Long Sleeve Hood keeps up with the fast pace of everyday life. The Momentum features Icebreaker’s 260gm terry Cool-Lite™ fabric, which blends soft, breathable merino wool with natural TENCEL®, nylon and a touch of LYCRA® for active stretch. '),
(57, 'men_northface_pull.png', 'Men\'s Half Dome Stayframe Pullover Hoodie - Grey', 'Midweight pullover hoodie for staying warmer on rest days.'),
(59, 'men_puma_pullover.png', 'Men\'s Amplified Pullover Hoodie - Cotton Black', 'You’re a laidback guy and you want your clothes to be the same. The PUMA Amplified Pullover Hoodie is a PUMA lifestyle essential and is inspired by sport for a sleek look on those relaxed days.');

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
(73, 58, 1),
(74, 59, 1),
(75, 60, 2),
(76, 61, 1);

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
(7, 'trial', 'trial', 'trial', 'trial@hotmail.com'),
(8, 'admin', 'admin', '123', 'admin@hotmail.com'),
(10, 'Soraya', 'Soraya', 'password', 'soraya@hotmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;