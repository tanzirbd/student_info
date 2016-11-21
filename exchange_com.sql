-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2016 at 01:33 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `exchange.com`
--
CREATE DATABASE IF NOT EXISTS `exchange.com` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `exchange.com`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `display_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `category_mapping`
--

CREATE TABLE IF NOT EXISTS `category_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_category_id` (`cat_id`),
  KEY `fk_sub_category` (`sub_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(500) CHARACTER SET utf8 NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_product_id` (`product_id`),
  KEY `fk_user3` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment`, `user_id`, `product_id`, `time_stamp`) VALUES
(1, 'ufgu', 16, 2, '2015-08-21 16:41:52'),
(10, 'hufhrhu', 1, 1, '2015-08-21 16:59:32'),
(17, 'hufhrhu', 16, 1, '2015-08-21 17:09:12'),
(18, 'bjurgbur', 16, 1, '2015-08-21 17:09:49'),
(19, 'bjdbugdu', 16, 1, '2015-08-21 17:10:30'),
(20, 'hvyyyfgygfy', 16, 1, '2015-08-21 17:11:52'),
(21, 'jduf', 16, 1, '2015-08-21 17:12:58'),
(22, 'ufuufgur', 16, 1, '2015-08-21 17:13:42'),
(23, 'hyfyfyf', 16, 1, '2015-08-21 17:14:18'),
(24, 'juugug', 16, 1, '2015-08-21 17:14:23'),
(25, 'ugug', 16, 2, '2015-08-28 04:34:54'),
(26, 'hghjtyhjty', 16, 2, '2015-08-28 05:37:35'),
(27, 'yes', 16, 2, '2015-08-28 05:57:01'),
(28, 'hbihi', 16, 2, '2015-08-28 05:57:29'),
(29, 'yes', 16, 2, '2015-08-28 05:58:18'),
(32, 'jrfgu', 16, 16, '2015-08-28 06:26:26'),
(33, 'djbcd', 16, 16, '2015-08-28 06:26:44'),
(40, 'vhjj', 16, 28, '2015-08-28 19:48:07'),
(41, 'bujbhu', 16, 29, '2015-08-28 19:49:32'),
(42, 'vuy', 16, 29, '2015-08-28 19:55:36'),
(43, 'bjbu', 16, 30, '2015-08-28 19:56:46'),
(44, 'bjbu', 16, 30, '2015-08-28 19:56:54'),
(45, 'jgugu', 16, 31, '2015-08-28 19:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `exchange_history`
--

CREATE TABLE IF NOT EXISTS `exchange_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `customized_offer` varchar(300) CHARACTER SET utf8 NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_product2` (`product_id`),
  KEY `fk_user4` (`receiver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `file_upload`
--

CREATE TABLE IF NOT EXISTS `file_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `file_link` varchar(200) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_user_id_9` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `file_upload`
--

INSERT INTO `file_upload` (`id`, `user_id`, `file_link`, `file_name`, `time_stamp`) VALUES
(1, 16, 'nkni', '', '2015-09-05 07:04:18'),
(2, 5, 'img/Lab-05.rar', '', '2015-09-05 07:28:08'),
(3, 5, 'img/teamrokomari(4).sql', 'teamrokomari(4).sql', '2015-09-05 07:56:48'),
(4, 5, 'img/exchange_com(3).sql', 'exchange_com(3).sql', '2015-09-06 15:44:40'),
(5, 5, 'img/teamrokomari(4).sql', 'teamrokomari(4).sql', '2015-09-13 07:14:53'),
(6, 16, 'img/Lab-05.rar', 'Lab-05.rar', '2015-09-14 06:20:08'),
(7, 5, 'img/teamrokomari(2).sql', 'teamrokomari(2).sql', '2015-09-14 06:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE IF NOT EXISTS `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post` varchar(300) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_user5` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`id`, `post`, `user_id`, `time_stamp`) VALUES
(1, 'fyyfyf', 2, '2015-08-26 20:40:03'),
(4, 'ihihihi8hi', 16, '2015-08-26 21:41:19'),
(5, 'ihihihh', 16, '2015-08-26 21:41:52'),
(6, 'ihihihh', 16, '2015-08-26 21:42:23'),
(7, 'ihihihh', 16, '2015-08-26 21:43:07'),
(8, 'ihihihh', 16, '2015-08-26 21:43:16'),
(9, 'ihihihh', 16, '2015-08-26 21:43:25'),
(10, 'jgjmgmjghj', 16, '2015-08-26 21:45:12'),
(11, 'jgjmgmjghj', 16, '2015-08-26 21:45:16'),
(12, 'jg', 16, '2015-08-26 21:45:23'),
(13, 'my name is sunny', 16, '2015-08-26 21:45:35'),
(17, 'yufgrtur vjbduhfurh burbugturghkbhiktreibrytiryitrrio\r\nrghighoigigt  gtgt gttgtg tyhyhy\r\nhrejyejyejytjytjyt itee\r\nyufgrtur vjbduhfurh burbugturghkbhiktreibrytiryitrrio\r\nrghighoigigt  gtgt gttgtg tyhyhy\r\nhrejyejyejytjytjyt itee\r\nyufgrtur vjbduhfurh burbugturghkbhiktreibrytiryitrrio\r\nrghighoigigt  gtg', 16, '2015-08-26 22:36:32'),
(18, 'rugfgr8ygf8urgfue', 16, '2015-08-26 23:10:25'),
(19, 'rugfgr8ygf8urgfuehi how are you', 16, '2015-08-26 23:23:23'),
(20, 'xbvcbcvxb gfhgfd hgfdh dfghgfdhgfdh gfd hgfd', 16, '2015-08-26 23:28:50'),
(22, 'oi aropp kita kors', 16, '2015-08-26 23:36:04'),
(23, '', 16, '2015-08-26 23:53:40'),
(24, ' gkjnfkjds gfdvb df ngdfkb gdfkjsnkj gdfgdf\r\ndfg oidfjsogijdgfshgdfhdgh\r\nds ghdgfhijdgfshdgsh g djsolhgdhgd\r\ns hdgshj dgjhhgdfh\r\ngdf hgdsihpghkdgfs hgh\r\ngdh gdsohijgdhgdfkhpdgf jikpog hkpgdh\r\ng higdjhigdjhgdsfhkpdg dghdgh\r\n hgdihjdgfsh;ldgfkhpdgfkphgdfh\r\nh gfkdjhoigfdj hgfhgfhgf\r\n hgfkjhklgfjhgfhgf ', 16, '2015-08-27 00:33:41'),
(25, ' gkjnfkjds gfdvb df ngdfkb gdfkjsnkj gdfgdf\r\ndfg oidfjsogijdgfshgdfhdgh\r\nds ghdgfhijdgfshdgsh g djsolhgdhgd\r\ns hdgshj dgjhhgdfh\r\ngdf hgdsihpghkdgfs hgh\r\ngdh gdsohijgdhgdfkhpdgf jikpog hkpgdh\r\ng higdjhigdjhgdsfhkpdg dghdgh\r\n hgdihjdgfsh;ldgfkhpdgfkphgdfh\r\nh gfkdjhoigfdj hgfhgfhgf\r\n hgfkjhklgfjhgfhgf ', 16, '2015-08-27 00:35:15'),
(26, 'nbvcnbvcmncvmnbvmnbvmbnvmbnvm', 16, '2015-08-27 00:35:59'),
(27, 'zfdgfd hggfdhgfdhgfhfg', 16, '2015-08-27 00:37:53'),
(28, 'xcnbvcxnbvcxcnbvcxnbvcxnbvxnbnxbc', 16, '2015-08-27 00:38:13'),
(29, 'ugugugugugugug', 16, '2015-08-27 02:17:13'),
(30, 'rbigutreihgiritueyiyriwue bfgewiugri4wguwi3ory', 16, '2015-08-27 07:29:18'),
(32, 'jbjbj', 16, '2015-08-27 08:19:59'),
(34, 'uhrg8tyr8y84ry', 5, '2015-09-13 07:09:52'),
(35, 'rithi5itgh5iti', 5, '2015-09-14 06:32:17'),
(36, 'huhiuhihiuhihihi', 16, '2016-03-01 07:47:04');

-- --------------------------------------------------------

--
-- Table structure for table `forum_comment`
--

CREATE TABLE IF NOT EXISTS `forum_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(300) NOT NULL,
  `user_id` int(11) NOT NULL,
  `forum_post_id` int(11) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_user6` (`user_id`),
  KEY `fk_forum_post` (`forum_post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `forum_comment`
--

INSERT INTO `forum_comment` (`id`, `comment`, `user_id`, `forum_post_id`, `time_stamp`) VALUES
(1, 'gygygguyguguygyuguy', 7, 6, '2015-08-27 01:02:13'),
(2, ' hjvjvuuj', 5, 6, '2015-08-27 01:02:13'),
(3, 'gygugug', 16, 28, '2015-08-27 02:15:42'),
(4, 'bhuhuh8u', 16, 30, '2015-08-27 07:43:42'),
(5, 'bhuhuh8u', 16, 30, '2015-08-27 07:43:52'),
(7, 'ujdhfuiri', 16, 6, '2015-08-27 08:26:08'),
(21, 'orjogtu9r', 5, 34, '2015-09-13 07:10:07'),
(22, 'hi', 5, 34, '2015-09-13 07:10:22'),
(23, 'i5u9tu5u', 5, 35, '2015-09-14 06:33:03'),
(24, 'all right', 5, 35, '2015-09-14 06:33:30'),
(25, 'hiuhiuhihihihihi', 16, 36, '2016-03-01 07:47:15'),
(26, 'hiuhiuhihihihihi', 16, 36, '2016-03-01 07:47:21'),
(27, 'hiuhiuhihihihihi', 16, 36, '2016-03-01 07:47:26'),
(28, 'hiuhiuhihihihihi', 16, 36, '2016-03-01 07:47:30'),
(29, 'hiuhiuhihihihihi', 16, 36, '2016-03-01 07:47:32'),
(30, 'hiuhiuhihihihihi', 16, 36, '2016-03-01 07:47:33'),
(31, 'hiuhiuhihihihihi', 16, 36, '2016-03-01 07:47:35'),
(32, 'hiuhiuhihihihihi', 16, 36, '2016-03-01 07:47:36'),
(33, '', 5, 29, '2016-09-18 12:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(500) CHARACTER SET utf8 NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_sender_id` (`sender_id`),
  KEY `fk_reciever_id` (`receiver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `photo_link` varchar(200) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `offer` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_user2` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `photo_link`, `detail`, `offer`, `user_id`, `time_stamp`) VALUES
(1, '0', '', 'yufuyfuyfu', 'hfyfuyfyyf', 5, '2015-08-20 14:03:43'),
(2, '0', 'img/IMG_0575.JPG', 'fewifhwoeiho', 'bewfiue', 16, '2015-08-20 21:39:30'),
(6, 'jrhfuruhfurhfur', 'img/Photo0481.jpg', 'jvfuvhrf', 'nvirfivhirihrihirhi', 16, '2015-08-21 18:05:20'),
(7, 'jrhfuruhfurhfur', 'img/Photo0481.jpg', 'jvfuvhrf', 'nvirfivhirihrihirhi', 16, '2015-08-21 18:06:25'),
(8, 'jrhfuruhfurhfur', 'img/Photo0481.jpg', 'jvfuvhrf', 'nvirfivhirihrihirhi', 16, '2015-08-21 18:07:57'),
(9, 'jrhfuruhfurhfur', 'img/Photo0481.jpg', 'jvfuvhrf', 'nvirfivhirihrihirhi', 16, '2015-08-21 18:08:17'),
(10, 'jrhfuruhfurhfur', 'img/Photo0481.jpg', 'jvfuvhrf', 'nvirfivhirihrihirhi', 16, '2015-08-21 18:09:00'),
(11, 'niefhriuhf', 'img/IMG_0445.JPG', 'nifhieif', 'feufiheifi', 16, '2015-08-21 18:19:28'),
(12, 'jbdfbvuugvr', 'img/IMG_0445.JPG', 'vrfifgvrihfhrfuhru', ' nkifirhfihrihfi', 16, '2015-08-21 18:21:25'),
(15, 'iphone for samsung', 'img/C.PNG', 'bcdjjjjjjjjjjjjjjjjjjjl brrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrgi butgggggggggggggi btubgubbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', 'efh8urh8f', 16, '2015-08-25 23:20:20'),
(16, 'rifhirhfihri', 'img/10561588_4694039524409_7720441201908820194_n.jpg', 'kirihfirhighfi', 'rihfirhfirh', 5, '2015-08-26 13:47:56'),
(17, 'rifhirhfihri', 'img/10561588_4694039524409_7720441201908820194_n.jpg', 'kirihfirhighfi', 'rihfirhfirh', 5, '2015-08-26 13:51:50'),
(18, 'rifhirhfihri', 'img/10561588_4694039524409_7720441201908820194_n.jpg', 'kirihfirhighfi', 'rihfirhfirh', 5, '2015-08-26 13:55:08'),
(19, 'bjbi', 'img/IMG_0169.JPG', ' knik', 'nknokn', 16, '2015-08-28 06:16:17'),
(20, 'bjbi', 'img/IMG_0169.JPG', ' knik', 'nknokn', 16, '2015-08-28 06:18:16'),
(21, 'bjbi', 'img/IMG_0169.JPG', ' knik', 'nknokn', 16, '2015-08-28 06:18:40'),
(22, 'bjbi', 'img/IMG_0169.JPG', ' knik', 'nknokn', 16, '2015-08-28 06:25:05'),
(23, 'krnfk', 'img/IMG_0167.JPG', 'krnr', 'rfor', 16, '2015-08-28 06:25:44'),
(24, 'ihihi', 'img/10672285_10152480304917012_8059800069221737643_n.jpg', 'bihihih', 'jbbjb', 5, '2015-08-28 19:27:55'),
(25, 'ljol', 'img/Capture.PNG', 'khi', 'ihi', 5, '2015-08-28 19:30:15'),
(26, 'kjni', 'img/20150502_163216.jpg', 'ohiji', 'hihjiij', 16, '2015-08-28 19:33:44'),
(27, 'nbini', 'img/Capture67.PNG', 'nihi', 'bihihi', 16, '2015-08-28 19:40:33'),
(28, 'nbini', 'img/Capture67.PNG', 'nihi', 'bihihi', 16, '2015-08-28 19:47:59'),
(29, 'nbini', 'img/Capture67.PNG', 'nihi', 'bihihi', 16, '2015-08-28 19:48:12'),
(30, ' knfkr', 'img/IMG_0407.JPG', 'lmrgor', 'rfnginri', 16, '2015-08-28 19:56:39'),
(31, ' knfkr', 'img/IMG_0407.JPG', 'lmrgor', 'rfnginri', 16, '2015-08-28 19:56:57'),
(32, ' knfkr', 'img/IMG_0407.JPG', 'lmrgor', 'rfnginri', 16, '2015-08-28 19:57:27'),
(33, 'potrait', 'img/story-20160104181410-JinMeyerson-letsforgetabouttomorrow28midres29_resized_773x475.jpg', 'price is negotiable', 'range: 500k-600k', 5, '2016-03-27 08:12:03');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE IF NOT EXISTS `product_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_product_id3` (`product_id`),
  KEY `fk_category_id2` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 NOT NULL,
  `phone_number` int(11) NOT NULL,
  `birth_date` varchar(30) CHARACTER SET utf8 NOT NULL,
  `dept` varchar(100) NOT NULL,
  `sem` varchar(100) NOT NULL,
  `cgpa` varchar(100) NOT NULL,
  `intr` varchar(100) NOT NULL,
  `photo_link` varchar(200) CHARACTER SET utf8 NOT NULL,
  `user_id` int(11) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `area` varchar(300) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `email`, `phone_number`, `birth_date`, `dept`, `sem`, `cgpa`, `intr`, `photo_link`, `user_id`, `time_stamp`, `area`) VALUES
(2, 'nayeem iqbal', 'jjuu', 2147483647, '09099', '', '', '', '', 'img/11054328_1017377184969437_3376409258888689111_n.jpg', 5, '2015-08-19 11:40:04', 'sylhet'),
(3, 'nayeem iqbal', 'jjuu@gmail.com', 2147483647, '09099', '', '', '', '', 'img/11054328_1017377184969437_3376409258888689111_n.jpg', 7, '2015-08-19 11:41:21', 'sylhet'),
(9, 'hutum', 'hutum@gmail.com', 2147483647, '1992-08-13', '', '', '', '', 'img/IMG_0411.JPG', 14, '2015-08-19 18:14:17', 'gendaria'),
(11, 'osman', '', 0, '', '', '', '', '', 'img/20140918_175023.jpg', 16, '2015-08-20 14:32:23', ''),
(14, 'ifeidhfuehufhe', '', 0, '', '', '', '', '', 'img/Photo0305.jpg', 20, '2015-08-21 19:42:41', ''),
(16, 'hashem', '', 2147483647, 'bjfbvuruf', '', '', '', '', 'img/11054328_1017377184969437_3376409258888689111_n.jpg', 22, '2015-08-23 16:28:37', 'Dhaka'),
(18, 'hashem', '', 2147483647, 'bjfbvuruf', '', '', '', '', 'img/11054328_1017377184969437_3376409258888689111_n.jpg', 24, '2015-08-23 16:35:49', 'Dhaka'),
(19, 'hashem', '', 2147483647, 'bjfbvuruf', '', '', '', '', 'img/11054328_1017377184969437_3376409258888689111_n.jpg', 25, '2015-08-23 16:36:30', 'Dhaka'),
(20, 'hashem', '', 2147483647, 'bjfbvuruf', '', '', '', '', 'img/11054328_1017377184969437_3376409258888689111_n.jpg', 26, '2015-08-23 16:37:41', 'Dhaka'),
(21, 'bdjfud', 'ididhi', 0, 'ivifjvjfijvifjvjfi', '', '', '', '', 'img/IMG_0411.JPG', 27, '2015-08-25 16:56:15', 'ivjfijvf'),
(22, 'raqibul gasan', 'yfgeyfgye@gmail.com', 1534692496, 'huehfueu', '', '', '', '', 'img/20150502_163216.jpg', 29, '2015-08-26 14:02:21', 'sylhet'),
(23, 'Admin', 'info@jea.com', 0, 'knvfkrn', '', '', '', '', 'img/10561588_4694039524409_7720441201908820194_n.jpg', 30, '2015-08-26 15:52:17', 'kfnr'),
(24, 'ratila', 'ratila@gmail.com', 896598695, '1993-02-02', 'CSE', '4/2', '3.5', 'programming, math, sudoku', 'img/icon.png', 31, '2016-11-04 23:20:23', '2011-12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(150) CHARACTER SET utf8 NOT NULL,
  `password` varchar(110) CHARACTER SET utf8 NOT NULL,
  `remember_token` varchar(110) CHARACTER SET utf8 NOT NULL,
  `user_role` varchar(100) CHARACTER SET utf8 NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `remember_token`, `user_role`, `time_stamp`) VALUES
(1, 'uri', 'uriuri', '1', '1', '0000-00-00 00:00:00'),
(2, 'tubelight', '1234', '', '', '2015-08-16 14:48:48'),
(3, 'thtyhythyt', 'gbghbtynyhn', '', '', '2015-08-19 11:13:12'),
(5, 'joy', 'bjbjbj', '', '', '2015-08-19 11:40:04'),
(7, 'jhiuhihihi', 'bjbjbj', '', '', '2015-08-19 11:41:21'),
(14, 'Arif khan arif hoque', '67889999', '', '', '2015-08-19 18:14:17'),
(16, 'osman bazrangi', '6r47r76ru6r', '', '', '2015-08-20 14:32:23'),
(20, '14', '1111', '', '', '2015-08-21 19:42:41'),
(22, 'hash', 'kash', '', '', '2015-08-23 16:28:37'),
(24, 'hashiii', 'kash', '', '', '2015-08-23 16:35:49'),
(25, 'hashiiii', 'kash', '', '', '2015-08-23 16:36:30'),
(26, 'hashiiiii', 'kash', '', '', '2015-08-23 16:37:41'),
(27, 'vada', '123', '', '', '2015-08-25 16:56:15'),
(29, '11', '22', '', '', '2015-08-26 14:02:21'),
(30, 'admin', 'admin1234', '', '', '2015-08-26 15:52:16'),
(31, 'a', 'b', '', '', '2016-11-04 23:20:23');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_mapping`
--
ALTER TABLE `category_mapping`
  ADD CONSTRAINT `fk_category_id` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sub_category` FOREIGN KEY (`sub_cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exchange_history`
--
ALTER TABLE `exchange_history`
  ADD CONSTRAINT `fk_product2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user4` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `file_upload`
--
ALTER TABLE `file_upload`
  ADD CONSTRAINT `fk_user_id_9` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forum`
--
ALTER TABLE `forum`
  ADD CONSTRAINT `fk_user5` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forum_comment`
--
ALTER TABLE `forum_comment`
  ADD CONSTRAINT `fk_forum_post` FOREIGN KEY (`forum_post_id`) REFERENCES `forum` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user6` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `fk_receiver_id` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sender_id` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_user2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `fk_category_id2` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_id3` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
