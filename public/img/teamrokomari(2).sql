-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2015 at 02:10 PM
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
CREATE DATABASE IF NOT EXISTS `teamrokomari` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `teamrokomari`;

-- --------------------------------------------------------

--
-- Table structure for table `batting_innings`
--

CREATE TABLE IF NOT EXISTS `batting_innings` (
  `match_bat` int(20) DEFAULT NULL,
  `run` int(10) DEFAULT NULL,
  `ball_faced` int(10) DEFAULT NULL,
  `4s` int(10) DEFAULT NULL,
  `6s` int(10) DEFAULT NULL,
  `sr` float DEFAULT NULL,
  `out_by` int(20) DEFAULT NULL,
  `out_type` varchar(20) DEFAULT NULL,
  `batsman_id` int(20) DEFAULT NULL,
  UNIQUE KEY `fk_batsman_id` (`batsman_id`),
  KEY `fk_match_id` (`match_bat`),
  KEY `fk_out_by` (`out_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bowling_innings`
--

CREATE TABLE IF NOT EXISTS `bowling_innings` (
  `match_bowl` int(20) DEFAULT NULL,
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
  KEY `fk_match_id` (`match_bowl`),
  KEY `fk_player_bowl` (`player_bowl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `message` varchar(2000) DEFAULT NULL,
  `date_t` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `mail`, `message`, `date_t`) VALUES
(1, 'ishdxi', 'chiscishcishi', 'hcihichihi', '29-12-2014 17:07'),
(2, 'ishdxi', 'chiscishcishi', 'hcihichihi', '29-12-2014 17:13'),
(3, 'ishdxi', 'chiscishcishi', 'hcihichihi', '29-12-2014 17:33'),
(4, 'ggugug', 'ugiugihih', 'fufufugugugugugugugugu', '29-12-2014 17:46'),
(5, 'ggugug', 'ugiugihih', 'fufufugugugugugugugugu', '29-12-2014 17:47'),
(6, 'ihdie', 'iocoi', 'iichied', '29-12-2014 17:49'),
(7, 'jgofjg', 'ifnivbffnbifhbi', 'ifhvifhi', '30-12-2014 14:24'),
(8, 'ithg', 'ivjit', 'nfhurhgu', '03-01-2015 03:16'),
(9, 'ithg', 'ivjit', 'nfhurhgu', '03-01-2015 03:18'),
(10, 'ithg', 'ivjit', 'nfhurhgu', '03-01-2015 03:18'),
(11, 'ithg', 'ivjit', 'nfhurhgu', '03-01-2015 03:18'),
(12, 'ihdic', 'kdihcid', 'ichid', '03-01-2015 03:41'),
(13, 'ihdic', 'kdihcid', 'ichid', '03-01-2015 03:43'),
(14, 'ihdic', 'kdihcid', 'ichid', '03-01-2015 03:43'),
(15, 'ihdic', 'kdihcid', 'ichid', '03-01-2015 03:44'),
(16, 'ihdic', 'kdihcid', 'ichid', '03-01-2015 03:45'),
(17, 'ihdic', 'kdihcid', 'ichid', '03-01-2015 03:46'),
(18, '', '', '', '03-01-2015 19:39'),
(19, 'jh', 'ihfiihfieih', NULL, '11-01-2015 22:54'),
(20, 'jh', 'ihfiihfieih', NULL, '11-01-2015 22:54'),
(21, 'yfyf', 'yfyu', NULL, '12-01-2015 00:04'),
(22, 'yfyf', 'yfyu', NULL, '12-01-2015 00:10'),
(23, 'yfyf', 'yfyu', NULL, '12-01-2015 00:10'),
(24, 'yfyf', 'yfyu', NULL, '12-01-2015 00:14'),
(25, 'yfyf', 'yfyu', NULL, '12-01-2015 00:35'),
(26, 'yfyf', 'yfyu', NULL, '12-01-2015 00:40'),
(27, 'yfyf', 'yfyu', NULL, '12-01-2015 00:44'),
(28, 'yfyf', 'yfyu', NULL, '12-01-2015 00:48'),
(29, 'yfyf', 'yfyu', NULL, '12-01-2015 00:49'),
(30, 'yfyf', 'yfyu', NULL, '12-01-2015 00:49'),
(31, 'yfyf', 'yfyu', NULL, '12-01-2015 00:50'),
(32, 'ihyoo', 'ugigi', NULL, '12-01-2015 00:54'),
(33, 'ihyoo', 'ugigi', NULL, '12-01-2015 00:55'),
(34, 'gijgi', 'iih', NULL, '12-01-2015 00:56'),
(35, 'hfuy', 'ugu', NULL, '12-01-2015 07:21'),
(36, '', '', NULL, '12-01-2015 10:11');

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
('sourav', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `match`
--

CREATE TABLE IF NOT EXISTS `match` (
  `match_id` int(20) NOT NULL,
  `team_1` int(20) DEFAULT NULL,
  `team_2` int(20) DEFAULT NULL,
  `toss_won` int(20) DEFAULT NULL,
  `bat_first` int(20) DEFAULT NULL,
  `m_o_m` int(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `venue` char(30) DEFAULT NULL,
  PRIMARY KEY (`match_id`),
  KEY `fk_team_1` (`team_1`),
  KEY `fk_team_2` (`team_2`),
  KEY `fk_toss_won` (`toss_won`),
  KEY `fk_bat_first` (`bat_first`),
  KEY `fk_mom` (`m_o_m`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `match`
--

INSERT INTO `match` (`match_id`, `team_1`, `team_2`, `toss_won`, `bat_first`, `m_o_m`, `date`, `venue`) VALUES
(2, NULL, NULL, 2, 2, NULL, '2012-12-12', 'sherpur cricket stedium');

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
  `player_id` int(20) NOT NULL,
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
  PRIMARY KEY (`player_id`),
  KEY `fk_team_id` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`player_id`, `player_name`, `style`, `bat_pos`, `height`, `birth_date`, `add`, `per_add`, `occupation`, `merits`, `fav_player`, `shot`, `r_w`, `profile`, `match_played`, `run_scored`, `wicket`, `pic_link`, `team_id`) VALUES
(1, 'হারুন', 'অলরাউন্ডার', 'মিডলঅর্ডার', '৬৬ কেজি, ৫.১১”', '০৩/০২/১৯৯২', 'পূর্ব বাসাবো', 'পূর্ব বাসাবো', 'ছাত্র', 'বইপড়া', 'এম.এস.ধোনি', 'ফিল্ক/ইয়র্কার', '১৫০ রান, ৭ উইকেট', 'ব্যক্তিগত জীবনে পারিবারিক সমস্যা ও যথাযথ সুযোগ-সুবিধার অভাব তাকে খেলতে বাধা সৃষ্টি করে। কিন্তু তার জীবনের প্রথম লক্ষ্য ক্রিকেট তাই শত বাধা উপেক্ষা করেও খেলায় মনোনিবেশ করতে পারেন। তার খেলার পেছনে সবচেয়ে বেশি অবদান রয়েছে তার বাবার। খেলাকে গুরুত্ব দিতে গিয়ে তিনি সব ধরণের বাধা উপেক্ষা করেছেন। তার বেস্ট স্কোর ১২১ রান, বিপক্ষ দল বাসাবো তরুণ সংঘ এবং ভেন্যু বাসাবো মাঠ। তার স্বপ্ন ক্রিকেটে যথাযথ ভালো পর্যায়ে নিজেকে প্রদর্শন করা, সর্বদা টিম রকমারিকে সাপোর্ট করা এবং তাদের সাথে থাকা।', NULL, NULL, NULL, 'img/player/harun.jpg', 1),
(2, 'হাসান ', 'ব্যাটসম্যান', '৫/৬ নম্বর', '৬২, ৫.৫”', '০৬/০৫/১৯৯৩', '১০৯/২ পাটোয়ারি গলি, বাসাবো', 'জগন্নাথপুর, নেত্রকোনা', 'ছাত্র', 'বই পড়া', 'মাশরাফি বিন মর্তুজা', 'স্কয়ার কাট', '৬৭ রান', '\r\nব্যক্তিগত জীবনে আর্থিক সমস্যা ও পারিবারিক সমস্যা তাকে খেলতে বাধা সৃষ্টি করে। কিন্তু তার খেলার প্রতি প্রচণ্ড একাগ্রতা ও ভালোবাসার কারণে খেলায় মনোনিবেশ করতে পারেন। এক্ষেত্রে সবচেয়ে বেশী সহযোগিতা ও তার খেলার পেছনে সবচেয়ে বেশী অবদান রয়েছে তার এলাকার বন্ধুদের, যাদের সাথে তিনি ছোটবেলা থেকে খেলে বড় হয়েছেন। খেলাকে গুরুত্ব দিতে গিয়ে তাকে প্রায়শই পড়াশোনায় চার দিতে হচ্ছে। তার ক্রিকেটে হাতেখড়ি পাড়ার এক বড় ভাইয়ের কাছে। তার বেস্ট স্কোর ৫৪ রান, স্কুল টুর্নামেন্টে। তার স্বপ্ন বাংলাদেশ জাতীয় দলে খেলা এবং টিম রকমারির সাথে প্রিমিয়ার লীগে খেলা।\r\n', NULL, NULL, NULL, 'img/player/hasan.jpg', 1),
(3, 'হাসিব', 'উইকেট কিপার', 'ওয়ান ডাউন', '৫৩, ৫.৫”', '২৮/০২/১৯৯২', '১৫০/২ মাদারটেক, বাসাবো', 'সরিষাবাড়ি, জামালপুর', 'ছাত্র', 'সদা হাশিখুশি থাকা, মিশুক প্রকৃতির', 'আশরাফুল, মুশফিকুর রহিম, এম.এস.ধোনি', 'ফ্লিক শট, স্ট্রেট শট', '৮৯ রান', 'ব্যক্তিগত জীবনে আর্থিক ও পারিবারিক সমস্যা তাকে খেলতে বাধা সৃষ্টি করে। কিন্তু ক্রিকেটকেই তার জীবন ভেবে তিনি খেলায় মনোনিবেশ করেছেন। এক্ষেত্রে সবচেয়ে বেশী সহযোগিতা ও তার খেলার পেছনে সবচেয়ে বেশী অবদান রয়েছে তার বাবা ও এক বড়ভাইয়ের। ক্রিকেটকে গুরুত্ব দিতে গিয়ে তিনি তার লেখাপড়াকে উপেক্ষা করছেন। তার ক্রিকেটে হাতেখড়ি ২০০৬ সালে ওয়াহিদুল গনি স্যারের কাছে। তার বেস্ট স্কোর ১০২ রান, বিপক্ষ দল রাজশাহী অনূর্ধ্ব-১৮, ভেন্যু বরিশাল। তার স্বপ্ন জাতীয় দলে খেলা এবং টিম রকমারিকে প্রিমিয়ার ডিভিশনে নিয়ে যাওয়া।', NULL, NULL, NULL, 'img/player/hasib.jpg', 1),
(4, 'লালসান', 'ব্যাটসম্যান', 'ওপেনিং', '৬৫ কেজি, ৫.৭”', '১০/০৯/১৯৯২', '১৬২ উত্তর বাসাবো', 'বাঁশপড়া, ছাগলনাইয়া, ফেনী', 'ছাত্র', 'সৎপথে চলা', 'হাশিম আমলা, শচীন টেন্ডুলকার', 'কাভার ড্রাইভ', '১৩৪ রান', 'ব্যক্তিগত জীবনে পারিবারিক বাধা নিষেধ তাকে খেলতে বাধা সৃষ্টি করে। কিন্তু তিনি ক্রিকেটকে মনেপ্রাণে ভালোবাসেন বলে খেলায় মনোনিবেশ করতে পারেন। এক্ষেত্রে তিনি সবচেয়ে বেশি সহযোগিতা পান তার মেঝো ভাই এবং বন্ধুদের কাছ থেকে। তার খেলার পেছনে সবচেয়ে বেশি অবদান রয়েছে তার পাড়ার বড়ভাই সুমনের। খেলাকে গুরুত্ব দিতে গিয়ে তিনি তার পড়াশুনাকে উপেক্ষা করছেন। ক্রিকেটে তার হাতেখড়ি ২০০০ সালে পাড়ার বড়ভাইয়ের কাছে। তার বেস্ট স্কোর ৯১ রান, রিস্ক রাইডার্সের হয়ে। তার স্বপ্ন বাংলাদেশের জাতীয় দলে খেলা এবং টিম রকমারিকে দেশের অন্যতম ক্রিকেট টিম হিসাবে সবার কাছে পরিচয় করিয়ে দেয়া।', NULL, NULL, NULL, 'img/player/lalsun.jpg', 1),
(5, 'রানা', 'বোলার', 'টেল এন্ডার', '৫০ কেজি, ৫.৪”', '২৭/১০/১৯৯৪', 'মোহাম্মদপুর আই/১১', 'সাটুরিয়া', 'ছাত্র', 'ভালো ছাত্র, গান করা, রান্না করা', 'সাকিব আল হাসান', 'স্কয়ার কাট/গুড লেন্থ', '১৩২ রান, ৭ উইকেট ', '\r\nব্যক্তিগত জীবনে পারিবারিক সমস্যা তাকে খেলতে বাধা সৃষ্টি করে। কিন্তু তিনি ক্রিকেটকে অনেক ভালোবাসেন তাই খেলায় মনোনিবেশ করতে পারেন। তার খেলার পেছনে সবচেয়ে বেশি অবদান রয়েছে তার ভাই এবং মা’র। খেলাকে গুরুত্ব দিতে গিয়ে তিনি ঐরকমভাবে গুরুত্ব দিতে পারছেননা। ক্রিকেটে তার হাতেখড়ি কোচের কাছে। তার বেস্ট স্কোর ৪৯ রান, বিপক্ষ ভেন্যু পাকুটিয়া। তার স্বপ্ন একজন বড় ক্রিকেটার হওয়া এবং টিম রকমারি একদিন অনেক বড় লেভেলে খেলবে।\r\n', NULL, NULL, NULL, 'img/player/rana.jpg', 1),
(6, 'সজীব', 'বোলার', 'টেল এন্ডার', '৫০ কেজি, ৫.৪”', '২৭/১০/১৯৯৩', 'মোহাম্মদপুর আই/১১', 'সাটুরিয়া', 'ছাত্র', 'ভালো ছাত্র', 'সাকিব আল হাসান', 'ফ্লিক শট', '৯ উইকেট', 'ব্যক্তিগত জীবনে পারিবারিক সমস্যা তাকে খেলতে বাধা সৃষ্টি করে। কিন্তু তিনি ক্রিকেটকে অনেক ভালোবাসেন তাই খেলায় মনোনিবেশ করতে পারেন। তার খেলার পেছনে সবচেয়ে বেশি অবদান রয়েছে তার ভাই এবং মা’র। খেলাকে গুরুত্ব দিতে গিয়ে তিনি ঐরকমভাবে গুরুত্ব দিতে পারছেননা। ক্রিকেটে তার হাতেখড়ি কোচের কাছে। তার বেস্ট স্কোর ৪৯ রান, বিপক্ষ ভেন্যু পাকুটিয়া। তার স্বপ্ন একজন বড় ক্রিকেটার হওয়া এবং টিম রকমারি একদিন অনেক বড় লেভেলে খেলবে।', NULL, NULL, NULL, 'img/player/sajib.jpg', 1),
(7, 'সোহেল', 'অলরাউন্ডার', '৫/৬ নম্বর', '৬৩ কেজি, ৫.৯”', '৩১/১২/১৯৯৫', 'পশ্চিম শেওড়াপাড়া', 'সাভার,ঢাকা', 'চাকুরি', 'গল্পের বই পড়া', 'সাকিব আল হাসান', 'লং অন/ লং অফ/ ইয়র্ক লেন্থ', '৯৮ রান, ৭ উইকেট ', 'ব্যক্তিগত জীবনে আর্থিক সমস্যা তার খেলায় বাধা সৃষ্টি করে। কিন্তু ক্রিকেটকে ভালোবাসার কারণে খেলায় মনোনিবেশ করতে পারেন। এক্ষেত্রে তিনি সবচেয়ে বেশি সহযোগিতা পান তার বাবার কাছ থেকে। তার খেলার পেছনে সবচেয়ে বেশী অবদান রয়েছে তার বাবার। খেলাকে গুরুত্ব দিতে গিয়ে তিনি তার পড়াশুনাকে ত্যাগ করেছেন। ক্রিকেটে তার হাতেখড়ি তরিকুল ইসলামের কাছে। তার বেস্ট স্কোর ৩৭ রানে ২ উইকেট, টিম রকমারির হয়ে। তার স্বপ্ন জাতীয় দম পর্যন্ত যাওয়া এবং টিম রকমারিকে প্রিমিয়ার লীগে দেখা এবং খেলা।', NULL, NULL, NULL, 'img/player/sohel.jpg', 1),
(8, 'সমিক', 'ব্যাটসম্যান', 'ওয়ান ডাউন', '৬০ কেজি, ৫.৯”', '৩১/১২/১৯৯২', 'পশ্চিম শেওড়াপাড়া', 'রাজবাড়ি', 'ছাত্র', 'গল্পের বই পড়া', 'সাকিব আল হাসান', 'লং অন/ লং অফ/ ইয়র্ক লেন্থ', '৮০ রান ', 'ব্যক্তিগত জীবনে আর্থিক সমস্যা তার খেলায় বাধা সৃষ্টি করে। কিন্তু ক্রিকেটকে ভালোবাসার কারণে খেলায় মনোনিবেশ করতে পারেন। এক্ষেত্রে তিনি সবচেয়ে বেশি সহযোগিতা পান তার বাবার কাছ থেকে। তার খেলার পেছনে সবচেয়ে বেশী অবদান রয়েছে তার বাবার। খেলাকে গুরুত্ব দিতে গিয়ে তিনি তার পড়াশুনাকে ত্যাগ করেছেন। ক্রিকেটে তার হাতেখড়ি তরিকুল ইসলামের কাছে। তার বেস্ট স্কোর ৩৭ রানে ২ উইকেট, টিম রকমারির হয়ে। তার স্বপ্ন জাতীয় দম পর্যন্ত যাওয়া এবং টিম রকমারিকে প্রিমিয়ার লীগে দেখা এবং খেলা।', NULL, NULL, NULL, 'img/player/somik.jpg', 1),
(9, 'সরোয়ার', 'ব্যাটসম্যান', 'ওপেনিং', '৫২ কেজি, ৫.৬”', '০৩/০৪/১৯৯৫', 'গাজীপুর চৌরাস্তা কলেজ পাড়া', 'কাপাসিয়া, গাজীপুর', 'ছাত্র', 'রান্না করা', 'ইয়ান মর্গান', 'কাভার ড্রাইভ', '১৭৮ রান ', 'ব্যক্তিগত জীবনে আর্থিক সমস্যা তার খেলায় বাধা সৃষ্টি করে। কিন্তু তিনি খেলাতে ক্যারিয়ার গড়তে চান এবং খেলার প্রতি আকুল টানের কারণে এতে মনোনিবেশ করতে পারেন। এক্ষেত্রে তিনি সবচেয়ে বেশি সহযোগিতা পান তার পরিবার এবং বন্ধুমহলের কাছ থেকে। তার খেলার পেছনে সবচেয়ে বেশী অবদান রয়েছে তার বড় ভাইয়ের। রকমারিতে খেলতে গিয়ে তিনি অন্যান্য গুরুত্বপূর্ণ খেলাকেও উপেক্ষা করেছেন। ক্রিকেটে তার হাতেখড়ি গাজীপুরের লিটন স্যারের কাছে। তার বেস্ট স্কোর অপরাজিত ১০৪ গাজীপুরের হয়ে, বিপক্ষ দল নেত্রকোনা, ভেন্যু জামালপুর। তার স্বপ্ন জাতীয় দল পর্যন্ত খেলা এবং টিম রকমারির সাথে থাকা।', NULL, NULL, NULL, 'img/player/sorwar.jpg', 1),
(10, 'তৈবুর', 'অলরাউন্ডার', 'মিডলঅর্ডার', '৬৫, ৫.৯”', '১০/০৮/১৯৯২', 'তেজগাঁও নাখালপাড়া', 'সদরপুর, ফরিদপুর', 'অটোমোবাইল টেকনিশিয়ান, ভিডিও এডিটিং', 'গান গাওয়া ', 'মাশরাফি, ব্রেটলি', 'লফটেড ড্রাইভ, গুডলেন্থ ইয়র্কার', '২৯৮ রান, ১৩ উইকেট', 'ব্যক্তিগত জীবনে আর্থিক সমস্যা তাকে খেলতে বাধা সৃষ্টি করে। কিন্তু ক্রিকেটে ক্যারিয়ার গড়া এবং খেলার প্রতি তার প্রবল ভালোবাসা ও ইচ্ছাই তাকে খেলায় মনোনিবেশ করতে সাহায্য করে। এক্ষেত্রে সবচেয়ে বেশী সহযোগিতা ও তার খেলার পেছনে সবচেয়ে বেশী অবদান রয়েছে তার পরিবার ও বন্ধুদের। ক্রিকেটকে গুরুত্ব দিতে গিয়ে তিনি তার নিজের ক্যারিয়ারও গড়তে পারেননি। তার ক্রিকেটে হাতেখড়ি সাইফুল ভাই ও কোচ রুহুল স্যারের কাছে। তার বেস্ট স্কোর ১০১ রান, বিপক্ষ ভেন্যু মধুবাগ। তার স্বপ্ন জাতীয় দল পর্যন্ত খেলা এবং টিম রকমারিকে একটি সম্মানিত জায়গায় দেখা।', NULL, NULL, NULL, 'img/player/toibur.jpg', 1),
(11, 'তোরাব', 'বোলার', 'টেলএন্ডার', '৬০, ৫.৯”', '১০/০৮/১৯৯২', 'তেজগাঁও নাখালপাড়া', 'ঢাকা', 'ছাত্র', 'গান গাওয়া', 'সাকিব আল হাসান', 'ফ্লিক শট', '৬৭ রান, ৭ উইকেট ', '\r\nব্যক্তিগত জীবনে আর্থিক সমস্যা তাকে খেলতে বাধা সৃষ্টি করে। কিন্তু ক্রিকেটে ক্যারিয়ার গড়া এবং খেলার প্রতি তার প্রবল ভালোবাসা ও ইচ্ছাই তাকে খেলায় মনোনিবেশ করতে সাহায্য করে। এক্ষেত্রে সবচেয়ে বেশী সহযোগিতা ও তার খেলার পেছনে সবচেয়ে বেশী অবদান রয়েছে তার পরিবার ও বন্ধুদের। ক্রিকেটকে গুরুত্ব দিতে গিয়ে তিনি তার নিজের ক্যারিয়ারও গড়তে পারেননি। তার ক্রিকেটে হাতেখড়ি সাইফুল ভাই ও কোচ রুহুল স্যারের কাছে। তার বেস্ট স্কোর ১০১ রান, বিপক্ষ ভেন্যু মধুবাগ। তার স্বপ্ন জাতীয় দল পর্যন্ত খেলা এবং টিম রকমারিকে একটি সম্মানিত জায়গায় দেখা।\r\n', NULL, NULL, NULL, 'img/player/torab.jpg', 1),
(12, 'উল্লাস', 'বোলার', 'আট নম্বরে', '৬৬, ৫.৭”', '২৩/০৬/১৯৯৪', '১/১ নুরের চালা, বাড্ডা, ঢাকা', 'থোকসা, শোমসপুর, কুষ্টিয়া', 'ছাত্র', 'দায়িত্বশীলতা', 'মাশরাফি', 'গুড লেন্থ', '৭ উইকেট ', 'ব্যক্তিগত জীবনে আর্থিক সমস্যা ও পারিবারিক সমস্যা তাকে খেলতে বাধা সৃষ্টি করে। কিন্তু তিনি ক্রিকেটকে অনেক ভালবাসেন, আর ক্রিকেটার হতে চান এটাই তার জীবনের লক্ষ্য তাই খেলায় মনোনিবেশ করতে তার সমস্যা হয়না। খেলার প্রতি তার আব্বু, আম্মু, বন্ধুরা আর টিম রকমারি ডটকম সহযোগিতা করে। তার খেলার পেছনে সবচেয়ে বেশি অবদান রয়েছে মাহফুজ সিদ্দিকি হিমালয়ের। খেলাকে গুরুত্ব দিতে গিয়ে তিনি অনেক কিছু উপেক্ষা করেছেন, এমনকি তার পড়াশুনাতেও বিরতি পড়ছে শুধু ক্রিকেটের কারণে। নিজে নিজেই অনেক ছোটবেলা থেকে ক্রিকেটে হাতেখড়ি। তার বেস্ট স্কোর ৩৮ ', NULL, NULL, NULL, 'img/player/ullash.jpg', 1);

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
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `team_id` int(20) NOT NULL,
  `team_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_id`, `team_name`) VALUES
(1, 'team rokomari'),
(2, 'dhaka college'),
(3, 'jamalpur high school'),
(4, 'জগতপুর'),
(6, 'sherpur'),
(9, 'sadarpur'),
(10, 'sadarpur');

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
-- Table structure for table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `video_id` int(30) NOT NULL,
  `video_link` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `batting_innings`
--
ALTER TABLE `batting_innings`
  ADD CONSTRAINT `batting_innings_ibfk_1` FOREIGN KEY (`match_bat`) REFERENCES `match` (`match_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `batting_innings_ibfk_2` FOREIGN KEY (`out_by`) REFERENCES `players` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `batting_innings_ibfk_3` FOREIGN KEY (`batsman_id`) REFERENCES `players` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bowling_innings`
--
ALTER TABLE `bowling_innings`
  ADD CONSTRAINT `bowling_innings_ibfk_1` FOREIGN KEY (`match_bowl`) REFERENCES `match` (`match_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bowling_innings_ibfk_2` FOREIGN KEY (`player_bowl`) REFERENCES `players` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `match`
--
ALTER TABLE `match`
  ADD CONSTRAINT `match_ibfk_1` FOREIGN KEY (`team_1`) REFERENCES `team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `match_ibfk_2` FOREIGN KEY (`team_2`) REFERENCES `team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `match_ibfk_3` FOREIGN KEY (`toss_won`) REFERENCES `team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `match_ibfk_4` FOREIGN KEY (`m_o_m`) REFERENCES `players` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `match_ibfk_5` FOREIGN KEY (`bat_first`) REFERENCES `team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
