-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2015 at 02:31 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `teamrokomari`
--
CREATE DATABASE IF NOT EXISTS `teamroko_teamrokomari` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `teamroko_teamrokomari`;

-- --------------------------------------------------------

--
-- Table structure for table `batting_innings`
--

CREATE TABLE IF NOT EXISTS `batting_innings` (
  `match_bat` int(11) NOT NULL AUTO_INCREMENT,
  `match_index` int(11) DEFAULT NULL,
  `run` int(10) DEFAULT NULL,
  `ball_faced` int(10) DEFAULT NULL,
  `four` int(10) DEFAULT NULL,
  `six` int(10) DEFAULT NULL,
  `sr` float DEFAULT NULL,
  `out_by` int(20) DEFAULT NULL,
  `out_type` varchar(20) DEFAULT NULL,
  `batsman_id` int(20) DEFAULT NULL,
  KEY `fk_match_id` (`match_bat`),
  KEY `fk_out_by` (`out_by`),
  KEY `fk_batsman_id` (`batsman_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `batting_innings`
--

INSERT INTO `batting_innings` (`match_bat`, `match_index`, `run`, `ball_faced`, `four`, `six`, `sr`, `out_by`, `out_type`, `batsman_id`) VALUES
(1, 1, 130, 10, 7676676, 89, 98, 0, 'c', 36),
(1, 1, 989, 1, 9, 4, 5, 0, 'lbw', 20),
(1, 1, 0, 1, 0, 9090, 0, 2, 'b', 37),
(2, 1, 0, NULL, 0, 0, 0, 21, 'b', 1),
(2, 1, 0, NULL, 0, 0, 0, 38, 'b', 0),
(2, 2, 1, 1, 111, 1, 1.11, 0, 'c', 21),
(1, 2, 10, 100, 10, 10, 10, 20, 'lbw', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bowling_innings`
--

CREATE TABLE IF NOT EXISTS `bowling_innings` (
  `match_bowl` int(20) DEFAULT NULL,
  `match_index` int(11) DEFAULT NULL,
  `over` float DEFAULT NULL,
  `run_given` int(10) DEFAULT NULL,
  `match_wicket` int(11) DEFAULT NULL,
  `maiden` int(10) DEFAULT NULL,
  `4s` int(10) DEFAULT NULL,
  `6s` int(10) DEFAULT NULL,
  `sr` float DEFAULT NULL,
  `wide` int(10) DEFAULT NULL,
  `no_ball` int(10) DEFAULT NULL,
  `lb` int(10) DEFAULT NULL,
  `player_bowl` int(20) NOT NULL,
  KEY `fk_player_bowl` (`player_bowl`),
  KEY `fk_match_id` (`match_bowl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bowling_innings`
--

INSERT INTO `bowling_innings` (`match_bowl`, `match_index`, `over`, `run_given`, `match_wicket`, `maiden`, `4s`, `6s`, `sr`, `wide`, `no_ball`, `lb`, `player_bowl`) VALUES
(2, 1, 7, 9, 0, 7, 6, 7, 76, 1, 8, 0, 20),
(1, 1, 1, 1, 1, 10, NULL, NULL, 1, NULL, NULL, NULL, 1),
(1, 2, 1, 1, 1, 10, NULL, NULL, 1.09, NULL, NULL, NULL, 20),
(1, 2, 1, 1, 1, 1, NULL, NULL, 2.22, NULL, NULL, NULL, 36),
(1, 2, 1, 1, 1, 1, NULL, NULL, 2.3, NULL, NULL, NULL, 37);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `message` varchar(2000) DEFAULT NULL,
  `date_t` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `mail`, `message`, `date_t`) VALUES
(31, 'yfyf', 'yfyu', NULL, '12-01-2015 00:50'),
(32, 'ihyoo', 'ugigi', NULL, '12-01-2015 00:54'),
(33, 'ihyoo', 'ugigi', NULL, '12-01-2015 00:55'),
(34, 'gijgi', 'iih', NULL, '12-01-2015 00:56'),
(35, 'hfuy', 'ugu', NULL, '12-01-2015 07:21'),
(36, '', '', NULL, '12-01-2015 10:11'),
(37, 'dguegd', 'udgddfu@gmail.com', 'gdugfiuegk', '21-04-2015 18:55'),
(38, 'fgyg', 'iugiu@ugu.com', 'hh8ihi9', '21-04-2015 19:13'),
(39, '', '', '', '21-04-2015 19:14'),
(40, '', '', '', '21-04-2015 19:14'),
(41, '', '', '', '21-04-2015 19:15'),
(42, '', '', '', '21-04-2015 19:48'),
(43, 'idchidcihdic', 'dhfihri@gmail.com', 'hcidihc', '21-04-2015 19:48'),
(44, '', '', '', '21-04-2015 19:54'),
(45, 'ovjorihi', 'hrigf8r@jsj.com', 'kijhviojro', '21-04-2015 19:54'),
(46, '', '', '', '21-04-2015 19:57'),
(47, 'hcid', 'udhf8ue@ishdcui.com', 'hdicd', '21-04-2015 19:57'),
(48, '', '', '', '21-04-2015 20:29'),
(49, '', '', '', '21-04-2015 20:29'),
(50, '', '', '', '21-04-2015 20:29'),
(51, '', '', '', '21-04-2015 20:31'),
(52, '', '', '', '21-04-2015 20:33'),
(53, '', '', '', '21-04-2015 20:34'),
(54, '', '', '', '21-04-2015 20:35'),
(55, '', '', '', '21-04-2015 20:37'),
(56, '', '', '', '21-04-2015 20:46'),
(57, '', '', '', '21-04-2015 20:46'),
(58, 'bubhuuububububub', '', '', '21-04-2015 20:49'),
(59, '', '', '', '21-04-2015 20:52'),
(60, '', '', '', '21-04-2015 20:53'),
(61, '', '', '', '21-04-2015 20:54'),
(62, 'fufhgyr7', 'ufbfguef@igt.com', 'yff7ye', '21-04-2015 21:09'),
(63, 'uf', 'ighti@udiuf.com', 'fkvhif', '21-04-2015 21:10'),
(64, '', '', '', '25-04-2015 16:43'),
(65, '', '', '', '25-04-2015 16:44'),
(66, '', '', '', '25-04-2015 16:47'),
(67, '', '', '', '25-04-2015 16:55'),
(68, '', '', '', '25-04-2015 18:05'),
(69, '', '', '', '25-04-2015 18:06'),
(70, 'ufgur', 'ehfuey8f@uddfuer.com', 'igfireh9tf4i', '25-04-2015 18:06'),
(71, '', '', '', '25-04-2015 23:45'),
(72, '', '', '', '25-04-2015 23:45'),
(73, 'ug7u7', 'gyuguguu@gmail.com', '7g7g7', '25-04-2015 23:45'),
(74, '', '', '', '26-04-2015 19:34'),
(75, 'eudue', 'hfeihfihei@gmail.com', 'eihdie3hdi', '26-04-2015 19:35'),
(76, '', '', '', '26-04-2015 19:56');

-- --------------------------------------------------------

--
-- Table structure for table `cvs`
--

CREATE TABLE IF NOT EXISTS `cvs` (
  `cv_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  `phone` varchar(70) NOT NULL,
  `email` varchar(70) NOT NULL,
  `address` varchar(200) NOT NULL,
  `details` varchar(500) NOT NULL,
  PRIMARY KEY (`cv_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `cvs`
--

INSERT INTO `cvs` (`cv_id`, `name`, `phone`, `email`, `address`, `details`) VALUES
(1, '', '', '', '', ''),
(2, 'ofihrehfoirh4ofhr4ghor4hogireho8ghreohgoirehgpreoigurugre909', 'oiwehrhe3oihfoewhfoiwehoifhweohfoew', 'klheoife3ohiwo83who3owe', 'khfioweiofjewoioiweiowe', 'irhoighreoihgirehiorehoihreo'),
(3, '', '', '', '', ''),
(4, '', '', '', '', ''),
(5, '', '', '', '', ''),
(6, '', '', '', '', ''),
(7, '', '', '', '', ''),
(8, '', '', '', '', ''),
(9, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE IF NOT EXISTS `logins` (
  `user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`user`, `password`) VALUES
('teamroko', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE IF NOT EXISTS `matches` (
  `match_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_1` int(11) NOT NULL,
  `team_2` int(11) NOT NULL,
  `toss_won` int(11) NOT NULL,
  `bat_first` int(20) NOT NULL,
  `m_o_m` int(20) NOT NULL,
  `date_y` varchar(40) DEFAULT NULL,
  `date_m` varchar(50) NOT NULL,
  `date` varchar(10) NOT NULL,
  `match_name` varchar(100) NOT NULL,
  `venue` char(30) DEFAULT NULL,
  PRIMARY KEY (`match_id`),
  KEY `fk_team_1` (`team_1`),
  KEY `fk_team_2` (`team_2`),
  KEY `fk_toss_won` (`toss_won`),
  KEY `fk_bat_first` (`bat_first`),
  KEY `fk_mom` (`m_o_m`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`match_id`, `team_1`, `team_2`, `toss_won`, `bat_first`, `m_o_m`, `date_y`, `date_m`, `date`, `match_name`, `venue`) VALUES
(1, 1, 3, 1, 3, 3, '7', '1', '1', 'যাত্রাবাড়ী বনাম টিম রকমারি.কম। ', 'যাত্রাবাড়ী'),
(2, 1, 5, 5, 1, 4, '6', '4', '1', 'ইন্দিরা রোড ক্রিকেট টিম বনাম টিম রকমারি.কম', 'ঢাকা');

-- --------------------------------------------------------

--
-- Table structure for table `pic`
--

CREATE TABLE IF NOT EXISTS `pic` (
  `pic_id` int(20) NOT NULL,
  `pic_link` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `player_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_cat` varchar(50) DEFAULT NULL,
  `blood_group` varchar(20) DEFAULT NULL,
  `player_name` varchar(45) DEFAULT NULL,
  `style` char(20) DEFAULT NULL,
  `bat_pos` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `birth_date` varchar(100) NOT NULL,
  `add` varchar(100) NOT NULL,
  `per_add` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `merits` varchar(100) NOT NULL,
  `fav_player` varchar(100) NOT NULL,
  `shot` varchar(100) NOT NULL,
  `r_w` varchar(100) NOT NULL,
  `profile` varchar(1000) DEFAULT NULL,
  `match_played` int(10) DEFAULT NULL,
  `run_scored` int(10) DEFAULT NULL,
  `wicket` int(10) DEFAULT NULL,
  `pic_link` varchar(300) DEFAULT NULL,
  `team_id` int(20) NOT NULL,
  `full_name` varchar(500) NOT NULL,
  `teams` varchar(500) NOT NULL,
  `self` varchar(2000) NOT NULL,
  `special_style` varchar(50) NOT NULL,
  `match_num` varchar(50) DEFAULT NULL,
  `innings_num` varchar(50) DEFAULT NULL,
  `highest` varchar(50) DEFAULT NULL,
  `avarage` varchar(50) DEFAULT NULL,
  `strike_rate` varchar(50) DEFAULT NULL,
  `100run` varchar(50) DEFAULT NULL,
  `50run` varchar(50) DEFAULT NULL,
  `4s` varchar(50) DEFAULT NULL,
  `6s` varchar(50) DEFAULT NULL,
  `catch` varchar(50) DEFAULT NULL,
  `stamping` varchar(50) DEFAULT NULL,
  `match_ball` varchar(50) DEFAULT NULL,
  `innings_ball` varchar(50) DEFAULT NULL,
  `over` varchar(50) DEFAULT NULL,
  `ave` varchar(50) DEFAULT NULL,
  `eco` varchar(50) DEFAULT NULL,
  `5wicket` varchar(50) DEFAULT NULL,
  `best` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  KEY `fk_team_id` (`team_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`player_id`, `player_cat`, `blood_group`, `player_name`, `style`, `bat_pos`, `height`, `birth_date`, `add`, `per_add`, `occupation`, `merits`, `fav_player`, `shot`, `r_w`, `profile`, `match_played`, `run_scored`, `wicket`, `pic_link`, `team_id`, `full_name`, `teams`, `self`, `special_style`, `match_num`, `innings_num`, `highest`, `avarage`, `strike_rate`, `100run`, `50run`, `4s`, `6s`, `catch`, `stamping`, `match_ball`, `innings_ball`, `over`, `ave`, `eco`, `5wicket`, `best`) VALUES
(0, NULL, NULL, 'সমিক', 'ব্যাটসম্যান', 'ওয়ান ডাউন', '৬০ কেজি, ৫.৯”', '৩১/১২/১৯৯২', 'পশ্চিম শেওড়াপাড়া', 'রাজবাড়ি', 'ছাত্র', 'গল্পের বই পড়া', 'সাকিব আল হাসান', 'লং অন/ লং অফ/ ইয়র্ক লেন্থ', '৮০ রান ', 'ব্যক্তিগত জীবনে আর্থিক সমস্যা তার খেলায় বাধা সৃষ্টি করে। কিন্তু ক্রিকেটকে ভালোবাসার কারণে খেলায় মনোনিবেশ করতে পারেন। এক্ষেত্রে তিনি সবচেয়ে বেশি সহযোগিতা পান তার বাবার কাছ থেকে। তার খেলার পেছনে সবচেয়ে বেশী অবদান রয়েছে তার বাবার। খেলাকে গুরুত্ব দিতে গিয়ে তিনি তার পড়াশুনাকে ত্যাগ করেছেন। ক্রিকেটে তার হাতেখড়ি তরিকুল ইসলামের কাছে। তার বেস্ট স্কোর ৩৭ রানে ২ উইকেট, টিম রকমারির হয়ে। তার স্বপ্ন জাতীয় দম পর্যন্ত যাওয়া এবং টিম রকমারিকে প্রিমিয়ার লীগে দেখা এবং খেলা।', NULL, NULL, NULL, 'img/player/somik.jpg', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, NULL, NULL, 'হারুন', 'অলরাউন্ডার', 'মিডলঅর্ডার', '৬৬ কেজি, ৫.১১”', '০৩/০২/১৯৯২', 'পূর্ব বাসাবো', 'পূর্ব বাসাবো', 'ছাত্র', 'বইপড়া', 'এম.এস.ধোনি', 'ফিল্ক/ইয়র্কার', '১৫০ রান, ৭ উইকেট', 'ব্যক্তিগত জীবনে পারিবারিক সমস্যা ও যথাযথ সুযোগ-সুবিধার অভাব তাকে খেলতে বাধা সৃষ্টি করে। কিন্তু তার জীবনের প্রথম লক্ষ্য ক্রিকেট তাই শত বাধা উপেক্ষা করেও খেলায় মনোনিবেশ করতে পারেন। তার খেলার পেছনে সবচেয়ে বেশি অবদান রয়েছে তার বাবার। খেলাকে গুরুত্ব দিতে গিয়ে তিনি সব ধরণের বাধা উপেক্ষা করেছেন। তার বেস্ট স্কোর ১২১ রান, বিপক্ষ দল বাসাবো তরুণ সংঘ এবং ভেন্যু বাসাবো মাঠ। তার স্বপ্ন ক্রিকেটে যথাযথ ভালো পর্যায়ে নিজেকে প্রদর্শন করা, সর্বদা টিম রকমারিকে সাপোর্ট করা এবং তাদের সাথে থাকা।', NULL, NULL, NULL, 'images\\player\\harun.png', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, 'হাসান ', 'ব্যাটসম্যান', '৫/৬ নম্বর', '৬২, ৫.৫”', '০৬/০৫/১৯৯৩', '১০৯/২ পাটোয়ারি গলি, বাসাবো', 'জগন্নাথপুর, নেত্রকোনা', 'ছাত্র', 'বই পড়া', 'মাশরাফি বিন মর্তুজা', 'স্কয়ার কাট', '৬৭ রান', '\r\nব্যক্তিগত জীবনে আর্থিক সমস্যা ও পারিবারিক সমস্যা তাকে খেলতে বাধা সৃষ্টি করে। কিন্তু তার খেলার প্রতি প্রচণ্ড একাগ্রতা ও ভালোবাসার কারণে খেলায় মনোনিবেশ করতে পারেন। এক্ষেত্রে সবচেয়ে বেশী সহযোগিতা ও তার খেলার পেছনে সবচেয়ে বেশী অবদান রয়েছে তার এলাকার বন্ধুদের, যাদের সাথে তিনি ছোটবেলা থেকে খেলে বড় হয়েছেন। খেলাকে গুরুত্ব দিতে গিয়ে তাকে প্রায়শই পড়াশোনায় চার দিতে হচ্ছে। তার ক্রিকেটে হাতেখড়ি পাড়ার এক বড় ভাইয়ের কাছে। তার বেস্ট স্কোর ৫৪ রান, স্কুল টুর্নামেন্টে। তার স্বপ্ন বাংলাদেশ জাতীয় দলে খেলা এবং টিম রকমারির সাথে প্রিমিয়ার লীগে খেলা।\r\n', NULL, NULL, NULL, 'images\\player\\hasan.png', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, 'হাসিব', 'উইকেট কিপার', 'ওয়ান ডাউন', '৫৩, ৫.৫”', '২৮/০২/১৯৯২', '১৫০/২ মাদারটেক, বাসাবো', 'সরিষাবাড়ি, জামালপুর', 'ছাত্র', 'সদা হাশিখুশি থাকা, মিশুক প্রকৃতির', 'আশরাফুল, মুশফিকুর রহিম, এম.এস.ধোনি', 'ফ্লিক শট, স্ট্রেট শট', '৮৯ রান', 'ব্যক্তিগত জীবনে আর্থিক ও পারিবারিক সমস্যা তাকে খেলতে বাধা সৃষ্টি করে। কিন্তু ক্রিকেটকেই তার জীবন ভেবে তিনি খেলায় মনোনিবেশ করেছেন। এক্ষেত্রে সবচেয়ে বেশী সহযোগিতা ও তার খেলার পেছনে সবচেয়ে বেশী অবদান রয়েছে তার বাবা ও এক বড়ভাইয়ের। ক্রিকেটকে গুরুত্ব দিতে গিয়ে তিনি তার লেখাপড়াকে উপেক্ষা করছেন। তার ক্রিকেটে হাতেখড়ি ২০০৬ সালে ওয়াহিদুল গনি স্যারের কাছে। তার বেস্ট স্কোর ১০২ রান, বিপক্ষ দল রাজশাহী অনূর্ধ্ব-১৮, ভেন্যু বরিশাল। তার স্বপ্ন জাতীয় দলে খেলা এবং টিম রকমারিকে প্রিমিয়ার ডিভিশনে নিয়ে যাওয়া।', NULL, NULL, NULL, 'images\\player\\hasib.png', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'টপওর্ডার', 'বি পজেটিভ', 'লালসান', 'ব্যাটসম্যান', 'ওপেনিং', '৬৫ কেজি, ৫.৭”', '১০/০৯/১৯৯২', '১৬২ উত্তর বাসাবো', 'বাঁশপড়া, ছাগলনাইয়া, ফেনী', 'ছাত্র', 'সৎপথে চলা', 'হাশিম আমলা, শচীন টেন্ডুলকার', 'কাভার ড্রাইভ', '১৩৪ রান', 'ব্যক্তিগত জীবনে পারিবারিক বাধা নিষেধ তাকে খেলতে বাধা সৃষ্টি করে। কিন্তু তিনি ক্রিকেটকে মনেপ্রাণে ভালোবাসেন বলে খেলায় মনোনিবেশ করতে পারেন। এক্ষেত্রে তিনি সবচেয়ে বেশি সহযোগিতা পান তার মেঝো ভাই এবং বন্ধুদের কাছ থেকে। তার খেলার পেছনে সবচেয়ে বেশি অবদান রয়েছে তার পাড়ার বড়ভাই সুমনের। খেলাকে গুরুত্ব দিতে গিয়ে তিনি তার পড়াশুনাকে উপেক্ষা করছেন। ক্রিকেটে তার হাতেখড়ি ২০০০ সালে পাড়ার বড়ভাইয়ের কাছে। তার বেস্ট স্কোর ৯১ রান, রিস্ক রাইডার্সের হয়ে। তার স্বপ্ন বাংলাদেশের জাতীয় দলে খেলা এবং টিম রকমারিকে দেশের অন্যতম ক্রিকেট টিম হিসাবে সবার কাছে পরিচয় করিয়ে দেয়া।', 7, 897, 9, 'images\\player\\lalsun.png', 1, 'মোঃ লালসান', 'বুবিউবিউই', 'জবুভুভুয়ভুয়ভুয়ভ্যুভ্যভ্যুভ', 'কজবিউবুবুবুব্বিউবিউ', 'কঞ্জবিউবিউবিউ', 'ব্জিবুইবিউ', '৮৭৮৭৮', '৯৮', '৮৯৮৯৮৯', '৮৯', '৯৮', '৮৭', '৬৭', '৮৭', '৬৫', '৭৬', '৮৭', '০৯', '০৯', '৯৮', '৪', 'hjvjvjvgj'),
(5, NULL, NULL, 'রানা', 'বোলার', 'টেল এন্ডার', '৫০ কেজি, ৫.৪”', '২৭/১০/১৯৯৪', 'মোহাম্মদপুর আই/১১', 'সাটুরিয়া', 'ছাত্র', 'ভালো ছাত্র, গান করা, রান্না করা', 'সাকিব আল হাসান', 'স্কয়ার কাট/গুড লেন্থ', '১৩২ রান, ৭ উইকেট ', '\r\nব্যক্তিগত জীবনে পারিবারিক সমস্যা তাকে খেলতে বাধা সৃষ্টি করে। কিন্তু তিনি ক্রিকেটকে অনেক ভালোবাসেন তাই খেলায় মনোনিবেশ করতে পারেন। তার খেলার পেছনে সবচেয়ে বেশি অবদান রয়েছে তার ভাই এবং মা’র। খেলাকে গুরুত্ব দিতে গিয়ে তিনি ঐরকমভাবে গুরুত্ব দিতে পারছেননা। ক্রিকেটে তার হাতেখড়ি কোচের কাছে। তার বেস্ট স্কোর ৪৯ রান, বিপক্ষ ভেন্যু পাকুটিয়া। তার স্বপ্ন একজন বড় ক্রিকেটার হওয়া এবং টিম রকমারি একদিন অনেক বড় লেভেলে খেলবে।\r\n', NULL, NULL, NULL, 'images\\player\\rana.png', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, 'উল্লাস', 'বোলার', 'আট নম্বরে', '৬৬, ৫.৭”', '২৩/০৬/১৯৯৪', '১/১ নুরের চালা, বাড্ডা, ঢাকা', 'থোকসা, শোমসপুর, কুষ্টিয়া', 'ছাত্র', 'দায়িত্বশীলতা', 'মাশরাফি', 'গুড লেন্থ', '৭ উইকেট ', 'ব্যক্তিগত জীবনে আর্থিক সমস্যা ও পারিবারিক সমস্যা তাকে খেলতে বাধা সৃষ্টি করে। কিন্তু তিনি ক্রিকেটকে অনেক ভালবাসেন, আর ক্রিকেটার হতে চান এটাই তার জীবনের লক্ষ্য তাই খেলায় মনোনিবেশ করতে তার সমস্যা হয়না। খেলার প্রতি তার আব্বু, আম্মু, বন্ধুরা আর টিম রকমারি ডটকম সহযোগিতা করে। তার খেলার পেছনে সবচেয়ে বেশি অবদান রয়েছে মাহফুজ সিদ্দিকি হিমালয়ের। খেলাকে গুরুত্ব দিতে গিয়ে তিনি অনেক কিছু উপেক্ষা করেছেন, এমনকি তার পড়াশুনাতেও বিরতি পড়ছে শুধু ক্রিকেটের কারণে। নিজে নিজেই অনেক ছোটবেলা থেকে ক্রিকেটে হাতেখড়ি। তার বেস্ট স্কোর ৩৮ ', NULL, NULL, NULL, 'img/player/ullash.jpg', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, NULL, 'হামিদ', NULL, '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, NULL, 'jbhughibuhug..............', NULL, '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, 'gugugyguguguyguguggu', NULL, '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, NULL, NULL, 'ohku', NULL, '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, NULL, 'iuiyiuy', NULL, '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, NULL, NULL, 'uiu', NULL, '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `siteinfo`
--

CREATE TABLE IF NOT EXISTS `siteinfo` (
  `id` int(10) DEFAULT NULL,
  `welcome_text` varchar(45) DEFAULT NULL,
  `intro_text` varchar(45) DEFAULT NULL,
  `footer_text` varchar(45) DEFAULT NULL,
  `contact_name` varchar(45) DEFAULT NULL,
  `contact_mail` varchar(45) DEFAULT NULL,
  `contact_message` varchar(45) DEFAULT NULL,
  `msg_time` varchar(45) DEFAULT NULL,
  `msg_date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(450) NOT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_id`, `team_name`) VALUES
(1, 'টিম রকমারি.কম'),
(3, 'যাত্রাবাড়ী ক্রিকেট একাডেমী'),
(5, 'সেভ ক্রিকেট একাডেমী');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user` varchar(30) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user`, `password`) VALUES
('sourav', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `video_link` varchar(300) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `date_place` varchar(50) NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`video_id`, `video_link`, `title`, `date_place`) VALUES
(1, 'aVg9iNV-J64', 'জামালপুর', 'জামালপুর ১০-০৪-২০১১'),
(2, 'zehOS_6R2RY', 'ঢাকা কলেজ', 'ঢাকা কলেজ ১৩-০৬-২০১২'),
(3, '8IHbqmU-QfE', 'সিরাজগঞ্জ', 'সিরাজগঞ্জ ১৭-০৯-২০১৩'),
(4, 'Uq2a6bRQmLA', 'মিরপুর', 'মিরপুর ২২-০৯-২০১৪'),
(5, 'o_Qeq47QlSY', 'সাভার', 'সাভার ২৩-০৯-২০১৫'),
(6, 'HREGRnVrjcI', 'নারায়ণগঞ্জ', 'নারায়ণগঞ্জ ১২-০৮-২০১৫');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `batting_innings`
--
ALTER TABLE `batting_innings`
  ADD CONSTRAINT `batting_innings_ibfk_1` FOREIGN KEY (`match_bat`) REFERENCES `matches` (`match_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `batting_innings_ibfk_2` FOREIGN KEY (`out_by`) REFERENCES `players` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `batting_innings_ibfk_3` FOREIGN KEY (`batsman_id`) REFERENCES `players` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bowling_innings`
--
ALTER TABLE `bowling_innings`
  ADD CONSTRAINT `bowling_innings_ibfk_1` FOREIGN KEY (`match_bowl`) REFERENCES `matches` (`match_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bowling_innings_ibfk_2` FOREIGN KEY (`player_bowl`) REFERENCES `players` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`team_1`) REFERENCES `teams` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matches_ibfk_2` FOREIGN KEY (`team_2`) REFERENCES `teams` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matches_ibfk_3` FOREIGN KEY (`toss_won`) REFERENCES `teams` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matches_ibfk_4` FOREIGN KEY (`m_o_m`) REFERENCES `players` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matches_ibfk_5` FOREIGN KEY (`bat_first`) REFERENCES `teams` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
