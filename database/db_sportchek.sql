-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 20, 2019 at 08:47 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_sportchek`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Men'),
(2, 'Women'),
(3, 'Kids'),
(4, 'Footwear'),
(5, 'Gear'),
(6, 'Electronics'),
(7, 'Jerseys');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_products`
--

CREATE TABLE `tbl_category_products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category_products`
--

INSERT INTO `tbl_category_products` (`id`, `category_id`, `product_id`) VALUES
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
(35, 7, 35);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_brand` varchar(25) NOT NULL,
  `product_price` varchar(10) NOT NULL,
  `product_desc` varchar(500) NOT NULL,
  `product_img` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `product_brand`, `product_price`, `product_desc`, `product_img`) VALUES
(1, 'Men\'s Team Issue Pullover Hoodie', 'adidas', '74.99', 'Slip on cozy comfort before and after workouts. This pullover hoodie features lightweight doubleknit for a twist on a classic look. A high neck, asymmetrical hem and longer back length provide extra coverage.', 'men_adidas_pullover.png'),
(2, 'Men\'s Amplified Pullover Hoodie - Cotton Black', 'PUMA', '64.99', 'You’re a laidback guy and you want your clothes to be the same. The PUMA Amplified Pullover Hoodie is a PUMA lifestyle essential and is inspired by sport for a sleek look on those relaxed days.', 'men_puma_pullover.png'),
(3, 'Men\'s Powerblend Fleece Pullover Hoodie', 'Champion', '59.99', 'The same feel as the classic sweatshirt, the Champion Powerblend Pullover Hoodie is made of comfortable fleece fabric and comes with a drawstring hoodie. Keep warm with this hoodie version of a Champion sweater.', 'men_champion_hoodie.png'),
(4, 'Men\'s Momentum Hoodie - Panther', 'Icebreaker', '179.99', 'Whether you’re boarding a flight for the trip of a lifetime, relaxing after an epic hike or squeezing a run into your busy travel schedule, the Momentum Long Sleeve Hood keeps up with the fast pace of everyday life. The Momentum features Icebreaker’s 260gm terry Cool-Lite™ fabric, which blends soft, breathable merino wool with natural TENCEL®, nylon and a touch of LYCRA® for active stretch. ', 'men_icebreaker_hoodie.png'),
(5, 'Men\'s Half Dome Stayframe Pullover Hoodie - Grey', 'The North Face', '69.99', 'Midweight pullover hoodie for staying warmer on rest days.', 'men_northface_pull.png'),
(6, 'Women\'s Moss Helox Rain Jacket', 'Helly Hansen', '129.99', 'Inspired by Helly Hansen’s heritage from the city of Moss, comes a line up PU rainwear products that marries traditional design with modern construction and fabrics.', 'women_helly_jacket.png'),
(7, 'Women\'s Jackie II Long Shell Jacket', 'McKINLEY', '79.99', 'McKINLEY’s Jackie II wms is a longer cut, parka-style waterproof rain jacket with traditional fish tail and a generous hood with drawcord for adjustability. Keeping you on the dry side in any weather, this hooded coat is complete with two side pockets with flap and press-button closure, and a button panel for individual ventilation.', 'women_mckinley_jacket.png'),
(8, 'Women\'s Woven Jacket', 'Nike', '80.00', 'The Nike Sportswear Women’s Woven Jacket is designed with a large hood and mesh lining to help you stay dry and comfortable in style.', 'women_nike_jacket.png'),
(9, 'Women\'s Trefoil T Shirt', 'adidas', '44.99', 'A knotted detail gives fresh inspiration to the classic look of this t shirt. It’s made of soft, comfortable cotton jersey with a touch of stretch. An oversize Trefoil logo stands out on the chest.', 'women_adidas_shirt.png'),
(10, 'Women\'s Halter 2.0 Logo Sports Bra - True Pink ', 'adidas', '54.99', 'Made for heat-building workouts like circuit training, this sports bra keeps the air moving to help you stay cool. The pullover style has a high neck for full coverage and a strappy back design for freedom of movement. Internal power mesh creates a compressive fit that offers medium support.', 'women_adidas_bra.png'),
(11, 'Girls\' Unicorn Windrunner Jacket', 'Nike', '71.25', 'The Nike Sportswear Windrunner Girls’ Hooded Jacket updates an iconic design with cozy Sherpa fabric on the top and lightweight rain-repellent fabric on the bottom. The pockets are lined with Sherpa for extra warmth when you need it.', 'kids_nike_jacket.png'),
(12, 'Girls\' Mermaid Her Fantasy Dress', 'Roxy', '54.99', 'This beautiful mid-length dress in a floral printed viscose fabric is part of the ROXY x Disney Little Mermaid Collection. Featuring a regular fit, short sleeves, v-neck with crossed over panels at front and hidden metal snap at front. ', 'kids_roxy_dress.png'),
(13, 'Boys\' HD Windrunner Jacket', 'Nike', '80.00', 'With water-repellent ripstop fabric and a shaped hood, the Boys’ Nike Sportswear Windrunner Jacket delivers lightweight coverage from the elements. The full-zip design is lined for comfort and includes a back vent for breathability.', 'kids_nike_windrunner.png'),
(14, 'Boys\' Urban Football Tiro Pants', 'adidas', '49.99', 'Bring some style to the street in these junior Boys\' tapered-leg pants. Made of smooth doubleknit, these moisture-wicking pants are designed to help keep you dry. They feature zip pockets in front and a drop crotch that lets you move freely. Both sides are finished with 3-Stripes.', 'kids_adidas_pants.png'),
(15, 'Baby Zebra Superstar Set', 'adidas', '74.99', 'The classic track suit gets sized down for the next generation. Bold zebra print puts a fun spin on adidas 3-Stripes heritage. It\'s made of cosy velour to keep little ones comfy.', 'kids_adidas_set.png'),
(16, 'Men\'s Ultraboost 19 Running Shoes', 'adidas', '250.00', 'The adidas Men’s Ultra Boost 19 Running Shoes combine comfort and performance to reinvent your run. They have a seamless adidas Primeknit 360 upper that’s engineered with motion weave technology to stretch and support your foot. Optimised Boost maximises energy return, and a 3D heel frame provides a locked-down fit that allows natural heel movement.', 'foot_adidas_mens.png'),
(17, 'Women\'s Air Zoom Wildhorse 5 Running Shoes', 'Nike', '144.99', 'Built specifically for trails, the Nike Women’s Air Zoom Wildhorse 5 Running Shoes keeps you galloping over rough terrain in breathable, multi-layer mesh. A rock plate helps shield your foot, while a Zoom Air heel unit cushions your stride on and off the path.', 'foot_nike_womens.png'),
(18, 'Kids\' Pure Boost Go Grade School Shoes ', 'adidas', '139.99', 'These juniors’ running shoes support an unrestricted stride on city streets with a minimalist knit upper and energy-returning Boost cushioning underfoot. A heel plate supports and comforts your foot while a flexible outsole allows it to splay naturally at touchdown.', 'foot_adidas_boys.png'),
(19, 'Preschool GT-1000 7 Shoes', 'ASICS', '84.99', 'Exceptional performance meets incredible value. With its balanced cushioned support and guided stability, the sleek ASICS Preschool GT-1000 7 Shoes caters to young runners of all levels. Featuring GEL technology and SPeVA®Foam 45 lasting soft platform, the GT-1000 7 GS provides the bounce and stability young runners need to go further. Comfort is enhanced by the EVA sockliner which keeps skin dry, and a breathable mesh upper.', 'foot_asics_kids.png'),
(20, 'Toddler Pre-Contend 4 Shoes', 'ASICS', '32.95', 'A versatile, everyday shoe for the little ones, the ASICS Toddler\'s Pre-Contend 4 Shoes features comfy cushioning and superior durability in a variety of vibrant playground-perfect colors. A hook-and-loop closure system allows for easy on/off while the removable sockliner provides room for orthotics if needed. Endorsed by the American Podiatric Medical Association, you can rest easy knowing they\'re getting the support they need.', 'foot_asics_toddler.png'),
(21, 'Tacks 9060 Senior Hockey Skates', 'CCM', '229.99', 'The CCM Tacks 9060 Senior Hockey Skates incorporate Speedcore for a lightweight and rigid skate that provides great stability and performance. The HD Micro Fiber Liner provides excellent abrasion protection with great comfort at the same time.', 'gear_ccm_skates.png'),
(22, 'Covert QRL SE Grip Senior Hockey Stick', 'Warrior', '329.99', 'Score in style with the Warrior Covert QRL SE Senior Hockey Stick and Lightning Quick Release. The Pro Cortex Grip has a tacky soft grip for optimum hand control while True 1 gives you Warrior\'s lightest sticks with blade light balance and exceptional feel.', 'gear_warrior_stick.png'),
(23, 'TPX Junior Tour Girl\'s Golf Set', 'Powerbilt', '129.99', 'The Powerbilt TPX Junior Tour Girl\'s Golf Set for ages 9-12 is the perfect set for an enthusiastic junior who doesn\'t fit into adults clubs yet. This set includes a driver for tee shots, hybrid for longer shots from the fairway or rough, a long and short iron, putter, golf bag, and headcovers. ', 'gear_powerbilt_golf.png'),
(24, 'Men\'s Skis 2018/2019', 'Rossignol', '329.97', 'Whether you’re a beginner or have progressed to intermediate-level technique, the Rossignol Pursuit Men’s Skis 2018/19 will help you masterfully carve the trails. Prop Tech adaptive torsional flex increases contact to help you stay in control, while the On-Trail Rocker lets you effortlessly guide through turns on hard snow. NOTE: Bindings will automatically be added to your cart. To avoid shipping delays, please purchase additional items separately.', 'gear_rossignol_skis.png'),
(25, 'Brasilia XL Backpack - Black', 'Nike', '55.00', 'The Nike Brasilia Training Backpack (Extra Large) is built for secure storage, with multiple zippered pockets inside and out. Its durable design includes padded shoulder straps for comfort on the go.', 'gear_nike_bag.png'),
(26, 'Versa Smartwatch - Peach/Rose Gold Aluminum', 'Fitbit', '249.99', 'The Versa is a lightweight, water-resistant smartwatch that empowers you to reach health and fitness goals with actionable insights, personalized guidance, on-screen workouts and more. The Fitbit ecosystem is now possible with this Versa smartwatch which can play music over Bluetooth to your Fitbit Flyer headphones. Track your weight and BMI using the Fitbit Aria Smart Scale and view your overall health and fitness on Fitbit Dashboard. ', 'electronics_fitbit_watch.png'),
(27, 'Apple Watch Series 4 GPS, 40 mm Gold Aluminum', 'Apple', '519.00', 'The New Apple Watch Series 4 is here! Fundamentally redesigned and re-engineered. The largest Apple Watch display yet. Built-in electrical heart sensor. New Digital Crown with haptic feedback. Low and high heart rate notifications. Fall detection and Emergency SOS. New Breathe watch faces. Automatic workout detection. New yoga and hiking workouts. Advanced features for runners like cadence and pace alerts. New head-to-head competitions. Activity sharing with friends. Personalized coaching. ', 'electronics_apple_watch.png'),
(28, 'Wireless Headphones - Gloss White', 'Beats Solo3', '329.99', 'With up to 40 hours of battery life, Beats Solo Wireless is your perfect everyday headphone. Get the most out of your music with an award-winning, emotionally charged Beats listening experience.', 'electronics_beats_headphones.png'),
(29, 'inReach Explorer + Satellite Communicator and GPS', 'Garmin', '589.99', 'Explore anywhere. Communicate everywhere. inReach Explorer®+ is the rugged satellite communicator and GPS navigator that uses 100% global Iridium coverage for 2-way text messaging and tracking, anywhere in the world. Navigate with detailed, preloaded TOPO maps, follow routes, mark waypoints and find your way back with a high-detail bread crumb trail. Using GPS tracking, you can easily share your location with family, friends, social media or emergency responders. ', 'electronic_garmin_gps.png'),
(30, 'Aria 2 Wi-Fi Smart Scale - Black', 'Fitbit', '169.99', 'Get a clear picture of your health with the Fitbit Aria 2™ Wi-Fi Smart Scale. Easy to set up and even easier to use, this sleek scale measures weight, body fat, lean mass and BMI. Your stats sync automatically to the Fitbit app, so you can see how everything you do adds up—from steps to exercise to nutrition. ', 'electronics_fitbit_scale.png'),
(31, 'Toronto Maple Leafs Breakaway Home Hockey Jersey', 'Fanatics', '149.99', 'When the puck drops represent your favourite team with the new Toronto Maple Leafs Breakaway hockey jersey by Fanatics. All new fit and fabrics make it the most comfortable jersey you can wear to the game or wherever you are.', 'jerseys_nhl_leafs.png'),
(32, 'Golden State Warriors Men\'s Curry Swingman Jersey', 'Nike', '130.00', 'Based on the authentic NBA jersey, this City Edition of the Swingman Warriors Nike NBA Connected Jersey honors the Bay Area’s Chinese heritage. Inspired by Chinese coins and the art of paper cutting, the design features highly detailed Chinese Zodiac graphics.', 'jerseys_nba_warriors.png'),
(33, 'Toronto Blue Jays Kevin Pillar Women\'s Tee', 'Majestic', '9.88', 'Show off your sense of style and your support for your favourite MLB player at the same time. The Toronto Blue Jays Kevin Pillar Women’s Tee has a tapered shape to flaunt your curves and is finished with the centre fielder’s on its reverse.', 'jerseys_mlb_jays.png'),
(34, 'New England Patriots Men\'s Rob Gronkowski Jersey', 'Nike', '150.00', 'Dri-Fit Pique Body Fabric To Help Keep You Cool And Comfortable. Chain Mail Mesh Grill At Front Neck And Back Seam Lines Inspired By The Authentic On Field Jersey. Sublimated Twill Names And Numbers And Premium Team Detailing And Trims. Stitched Down Nil Shield. Standard Fit: Not Too Tight And Not Too Loose. Made For The Passionate Fan Looking For A Jersey That Combines Authentic Team Detailing With Everyday Style.', 'jerseys_nfl_patriots.png'),
(35, 'Youth Calgary Stampeders Mitchell Replica Jersey', 'adidas', '79.99', 'Support the team from Calgary as they put their hard-hitting style to work on the field. This youth football jersey is styled after the Stamps’ team uniform and features a bold \"Stampeders\" printed across the front and Mitchell name and numbers.', 'jerseys_cfl_stampeders.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_category_products`
--
ALTER TABLE `tbl_category_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_category_products`
--
ALTER TABLE `tbl_category_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
