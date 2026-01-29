-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2025 at 07:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `synhawk`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_applicants`
--

CREATE TABLE `tbl_applicants` (
  `id` int(11) NOT NULL,
  `parent` varchar(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `current_address` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `position` varchar(100) NOT NULL,
  `myfile` varchar(50) NOT NULL,
  `qualification` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_articles`
--

CREATE TABLE `tbl_articles` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(11) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `upcoming` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_articles`
--

INSERT INTO `tbl_articles` (`id`, `parent_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `modified_date`, `sortorder`, `homepage`, `image`, `date`, `category`, `upcoming`) VALUES
(16, 0, 'about-us', 'About us', '', '	<div class=\"six columns mob-whole\">\r\n		<h3>\r\n			Corporate Travel Consultantii</h3>\r\n		<p>\r\n			We Share our best traveling experience and destinations to make sure you get right informations about you are willing to visit.</p>\r\n		<p>\r\n			Destination:<br />\r\n			Nepal | India | Tibet | Bhutan | Maldives | Dubai | Bankok | Thailand</p>\r\n		<p>\r\n			Highlights:<br />\r\n			Trekking | Mountainerring | Travel | Tour | Adventure | Seightseeking | Jungle Safari | Bird Watching etc</p>\r\n	</div>\r\n', 0, '', 1, '', '', '', 0, '2024-12-17 11:59:42', '2025-01-03 12:05:09', 1, 1, 0x613a303a7b7d, '', '', 1),
(25, 0, 'rtnyr54r5y64', 'rtnyr54r5y64', 'n46n464', '<p>\r\n	ret erte t</p>\r\n', 0, '', 1, '', '', '', 0, '2025-10-29 15:21:45', '2025-11-02 16:36:23', 3, 0, 0x613a313a7b693a303b733a3431393a223c6272202f3e0d0a3c623e466174616c206572726f723c2f623e3a2020556e636175676874204572726f723a2043616c6c20746f20756e646566696e65642066756e6374696f6e20696d61676563726561746566726f6d706e67282920696e20433a5c78616d70705c6874646f63735c73796e6861776b5c6173736574735c75706c6f61646966795c75706c6f61646966792e7068703a31340d0a537461636b2074726163653a0d0a233020433a5c78616d70705c6874646f63735c73796e6861776b5c6173736574735c75706c6f61646966795c75706c6f61646966792e70687028313238293a2043726f707065645468756d626e61696c2827433a2f78616d70702f6874646f63732e2e2e272c2027323030272c2027323030272c2027433a2f78616d70702f6874646f63732e2e2e27290d0a2331207b6d61696e7d0d0a20207468726f776e20696e203c623e433a5c78616d70705c6874646f63735c73796e6861776b5c6173736574735c75706c6f61646966795c75706c6f61646966792e7068703c2f623e206f6e206c696e65203c623e31343c2f623e3c6272202f3e0d0a223b7d, '', '', 0),
(22, 0, 'aaaaaaaaaaaaa-aaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaa aaaaaaaaaaaaaaaaa', 'dsfgsdghrswehye', '<p>\r\n	gddg</p>\r\n', 0, '', 1, 'dfhedryher', 'edryhreu', 'rujjy', 0, '2025-10-29 15:18:12', '2025-11-03 07:25:09', 2, 0, 0x613a313a7b693a303b733a32343a224e745379372d53637265656e73686f74202838292e706e67223b7d, '', '', 0),
(28, 0, 'rtyry-tryrt', 'rtyry tryrt', 'rtyrr', '<p>\r\n	ryryryr</p>\r\n', 0, '', 1, '', '', '', 0, '2025-11-01 21:26:09', '2025-11-01 21:26:09', 5, 0, 0x613a303a7b7d, '', '', 0),
(27, 0, 'ryvrub', 'ryvrub', 'rbuytyuyb', '', 0, '', 1, '', '', '', 0, '2025-10-30 11:34:56', '2025-10-30 11:34:56', 4, 0, 0x613a303a7b7d, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(200) NOT NULL,
  `author` varchar(100) NOT NULL,
  `brief` text NOT NULL,
  `content` text NOT NULL,
  `blog_date` date NOT NULL,
  `archive_date` date NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `source` mediumtext NOT NULL,
  `type` int(11) NOT NULL,
  `viewcount` int(11) NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `linksrc` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `linktype` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `upcoming` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`id`, `slug`, `title`, `author`, `brief`, `content`, `blog_date`, `archive_date`, `sortorder`, `status`, `image`, `source`, `type`, `viewcount`, `meta_keywords`, `meta_description`, `added_date`, `linksrc`, `linktype`, `upcoming`) VALUES
(1, 'rty-r5ry', 'rty r5ry', 'ClubHimalayrtyr a', 'rty r', '', '2025-11-04', '0000-00-00', 1, 1, '', '', 0, 0, '', '', '2025-11-02 13:36:48', '', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_conbined_news`
--

CREATE TABLE `tbl_conbined_news` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `home_image` text NOT NULL,
  `gallery` text NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `display` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` int(11) NOT NULL,
  `author` varchar(200) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `source` mediumtext NOT NULL,
  `meta_description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configs`
--

CREATE TABLE `tbl_configs` (
  `id` int(11) NOT NULL,
  `sitetitle` varchar(200) NOT NULL,
  `icon_upload` varchar(200) NOT NULL,
  `logo_upload` varchar(200) NOT NULL,
  `fb_upload` varchar(255) NOT NULL,
  `twitter_upload` varchar(255) NOT NULL,
  `gallery_upload` varchar(255) NOT NULL,
  `contact_upload` varchar(255) NOT NULL,
  `other_upload` varchar(255) NOT NULL,
  `facility_upload` varchar(240) NOT NULL,
  `offer_upload` varchar(255) NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `location_type` tinyint(1) NOT NULL DEFAULT 1,
  `location_map` mediumtext NOT NULL,
  `location_image` varchar(250) NOT NULL,
  `fiscal_address` tinytext NOT NULL,
  `mail_address` tinytext NOT NULL,
  `contact_info` tinytext NOT NULL,
  `address` varchar(100) NOT NULL,
  `email_address` tinytext NOT NULL,
  `breif` text NOT NULL,
  `copyright` varchar(200) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `site_keywords` tinytext NOT NULL,
  `site_description` tinytext NOT NULL,
  `fb_messenger` text NOT NULL,
  `google_anlytics` text NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `robot_txt` text NOT NULL,
  `schema_code` tinytext NOT NULL,
  `book_type` tinyint(4) NOT NULL DEFAULT 1,
  `hotel_page` varchar(200) NOT NULL,
  `hotel_code` tinytext NOT NULL,
  `booking_code` tinytext NOT NULL,
  `template` varchar(100) NOT NULL,
  `admin_template` varchar(100) NOT NULL,
  `headers` text DEFAULT NULL,
  `footer` text DEFAULT NULL,
  `search_box` text DEFAULT NULL,
  `search_result` text DEFAULT NULL,
  `action` tinyint(1) NOT NULL DEFAULT 0,
  `contact_info2` varchar(100) NOT NULL,
  `pobox` varchar(50) NOT NULL,
  `pixel_code` mediumtext NOT NULL,
  `whatsapp` varchar(100) NOT NULL,
  `whatsapp_a` varchar(100) NOT NULL,
  `upcoming` int(11) NOT NULL,
  `upcomingcontent` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_configs`
--

INSERT INTO `tbl_configs` (`id`, `sitetitle`, `icon_upload`, `logo_upload`, `fb_upload`, `twitter_upload`, `gallery_upload`, `contact_upload`, `other_upload`, `facility_upload`, `offer_upload`, `sitename`, `location_type`, `location_map`, `location_image`, `fiscal_address`, `mail_address`, `contact_info`, `address`, `email_address`, `breif`, `copyright`, `meta_title`, `site_keywords`, `site_description`, `fb_messenger`, `google_anlytics`, `linksrc`, `robot_txt`, `schema_code`, `book_type`, `hotel_page`, `hotel_code`, `booking_code`, `template`, `admin_template`, `headers`, `footer`, `search_box`, `search_result`, `action`, `contact_info2`, `pobox`, `pixel_code`, `whatsapp`, `whatsapp_a`, `upcoming`, `upcomingcontent`) VALUES
(1, 'Synhawk 3.0', 'SOwpH-icon.png', 'gw5cZ-178531680.jpg', '', '', 'BPewc-slide-img2.jpg', 'diHTB-1920x512_bg7.jpg', 'WYAjl-1920x512_bg7.jpg', 'aTE34-facilities.jpg', '', 'Synhawk 3.0', 1, 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14128.071612788246!2d85.5202536!3d27.7167335!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb0681e69f4d5f%3A0xd75300924c37f8c7!2sClub%20Himalaya%20by%20ACE%20Hotels!5e0!3m2!1sen!2snp!4v1693730469588!5m2!1sen!2snp', 'aHQyy-map.jpg', 'location', 'ktm location', '+977-01-6680080/01-6680083/01-6680046', '+1 800 889 9898', 'email@email.com', '', '© Copyright {year}. All Rights Reserved.', 'Synhawk3.0', 'Synhawk3.0', 'Synhawk3.0', '', '', '#', 'User-agent: *\r\nDisallow: /cgi-bin/', '', 2, 'result.php', 'LmpYUF', 'LmpYUF', 'web', 'blue', '', '', 'Develop By Amit prajapati', 'Develop By Amit prajapati', 0, 'email@email.com', '2769', '', '987568562222', '', 0, 'We are coming, get ready for the best travel experience with us.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(11) NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country_name`, `status`) VALUES
(1, 'United States', 1),
(2, 'Canada', 1),
(3, 'Mexico', 1),
(4, 'Afghanistan', 1),
(5, 'Albania', 1),
(6, 'Algeria', 1),
(7, 'Andorra', 1),
(8, 'Angola', 1),
(9, 'Anguilla', 1),
(10, 'Antarctica', 1),
(11, 'Antigua and Barbuda', 1),
(12, 'Argentina', 1),
(13, 'Armenia', 1),
(14, 'Aruba', 1),
(15, 'Ascension Island', 1),
(16, 'Australia', 1),
(17, 'Austria', 1),
(18, 'Azerbaijan', 1),
(19, 'Bahamas', 1),
(20, 'Bahrain', 1),
(21, 'Bangladesh', 1),
(22, 'Barbados', 1),
(23, 'Belarus', 1),
(24, 'Belgium', 1),
(25, 'Belize', 1),
(26, 'Benin', 1),
(27, 'Bermuda', 1),
(28, 'Bhutan', 1),
(29, 'Bolivia', 1),
(30, 'Bophuthatswana', 1),
(31, 'Bosnia-Herzegovina', 1),
(32, 'Botswana', 1),
(33, 'Bouvet Island', 1),
(34, 'Brazil', 1),
(35, 'British Indian Ocean', 1),
(36, 'British Virgin Islands', 1),
(37, 'Brunei Darussalam', 1),
(38, 'Bulgaria', 1),
(39, 'Burkina Faso', 1),
(40, 'Burundi', 1),
(41, 'Cambodia', 1),
(42, 'Cameroon', 1),
(44, 'Cape Verde Island', 1),
(45, 'Cayman Islands', 1),
(46, 'Central Africa', 1),
(47, 'Chad', 1),
(48, 'Channel Islands', 1),
(49, 'Chile', 1),
(50, 'China, Peoples Republic', 1),
(51, 'Christmas Island', 1),
(52, 'Cocos (Keeling) Islands', 1),
(53, 'Colombia', 1),
(54, 'Comoros Islands', 1),
(55, 'Congo', 1),
(56, 'Cook Islands', 1),
(57, 'Costa Rica', 1),
(58, 'Croatia', 1),
(59, 'Cuba', 1),
(60, 'Cyprus', 1),
(61, 'Czech Republic', 1),
(62, 'Denmark', 1),
(63, 'Djibouti', 1),
(64, 'Dominica', 1),
(65, 'Dominican Republic', 1),
(66, 'Easter Island', 1),
(67, 'Ecuador', 1),
(68, 'Egypt', 1),
(69, 'El Salvador', 1),
(70, 'England', 1),
(71, 'Equatorial Guinea', 1),
(72, 'Estonia', 1),
(73, 'Ethiopia', 1),
(74, 'Falkland Islands', 1),
(75, 'Faeroe Islands', 1),
(76, 'Fiji', 1),
(77, 'Finland', 1),
(78, 'France', 1),
(79, 'French Guyana', 1),
(80, 'French Polynesia', 1),
(81, 'Gabon', 1),
(82, 'Gambia', 1),
(83, 'Georgia Republic', 1),
(84, 'Germany', 1),
(85, 'Gibraltar', 1),
(86, 'Greece', 1),
(87, 'Greenland', 1),
(88, 'Grenada', 1),
(89, 'Guadeloupe (French)', 1),
(90, 'Guatemala', 1),
(91, 'Guernsey Island', 1),
(92, 'Guinea Bissau', 1),
(93, 'Guinea', 1),
(94, 'Guyana', 1),
(95, 'Haiti', 1),
(96, 'Heard and McDonald Isls', 1),
(97, 'Honduras', 1),
(98, 'Hong Kong', 1),
(99, 'Hungary', 1),
(100, 'Iceland', 1),
(101, 'India', 1),
(102, 'Iran', 1),
(103, 'Iraq', 1),
(104, 'Ireland', 1),
(105, 'Isle of Man', 1),
(106, 'Israel', 1),
(107, 'Italy', 1),
(108, 'Ivory Coast', 1),
(109, 'Jamaica', 1),
(110, 'Japan', 1),
(111, 'Jersey Island', 1),
(112, 'Jordan', 1),
(113, 'Kazakhstan', 1),
(114, 'Kenya', 1),
(115, 'Kiribati', 1),
(116, 'Kuwait', 1),
(117, 'Laos', 1),
(118, 'Latvia', 1),
(119, 'Lebanon', 1),
(120, 'Lesotho', 1),
(121, 'Liberia', 1),
(122, 'Libya', 1),
(123, 'Liechtenstein', 1),
(124, 'Lithuania', 1),
(125, 'Luxembourg', 1),
(126, 'Macao', 1),
(127, 'Macedonia', 1),
(128, 'Madagascar', 1),
(129, 'Malawi', 1),
(130, 'Malaysia', 1),
(131, 'Maldives', 1),
(132, 'Mali', 1),
(133, 'Malta', 1),
(134, 'Martinique (French)', 1),
(135, 'Mauritania', 1),
(136, 'Mauritius', 1),
(137, 'Mayotte', 1),
(139, 'Micronesia', 1),
(140, 'Moldavia', 1),
(141, 'Monaco', 1),
(142, 'Mongolia', 1),
(143, 'Montenegro', 1),
(144, 'Montserrat', 1),
(145, 'Morocco', 1),
(146, 'Mozambique', 1),
(147, 'Myanmar', 1),
(148, 'Namibia', 1),
(149, 'Nauru', 1),
(150, 'Nepal', 1),
(151, 'Netherlands Antilles', 1),
(152, 'Netherlands', 1),
(153, 'New Caledonia (French)', 1),
(154, 'New Zealand', 1),
(155, 'Nicaragua', 1),
(156, 'Niger', 1),
(157, 'Niue', 1),
(158, 'Norfolk Island', 1),
(159, 'North Korea', 1),
(160, 'Northern Ireland', 1),
(161, 'Norway', 1),
(162, 'Oman', 1),
(163, 'Pakistan', 1),
(164, 'Panama', 1),
(165, 'Papua New Guinea', 1),
(166, 'Paraguay', 1),
(167, 'Peru', 1),
(168, 'Philippines', 1),
(169, 'Pitcairn Island', 1),
(170, 'Poland', 1),
(171, 'Polynesia (French)', 1),
(172, 'Portugal', 1),
(173, 'Qatar', 1),
(174, 'Reunion Island', 1),
(175, 'Romania', 1),
(176, 'Russia', 1),
(177, 'Rwanda', 1),
(178, 'S.Georgia Sandwich Isls', 1),
(179, 'Sao Tome, Principe', 1),
(180, 'San Marino', 1),
(181, 'Saudi Arabia', 1),
(182, 'Scotland', 1),
(183, 'Senegal', 1),
(184, 'Serbia', 1),
(185, 'Seychelles', 1),
(186, 'Shetland', 1),
(187, 'Sierra Leone', 1),
(188, 'Singapore', 1),
(189, 'Slovak Republic', 1),
(190, 'Slovenia', 1),
(191, 'Solomon Islands', 1),
(192, 'Somalia', 1),
(193, 'South Africa', 1),
(194, 'South Korea', 1),
(195, 'Spain', 1),
(196, 'Sri Lanka', 1),
(197, 'St. Helena', 1),
(198, 'St. Lucia', 1),
(199, 'St. Pierre Miquelon', 1),
(200, 'St. Martins', 1),
(201, 'St. Kitts Nevis Anguilla', 1),
(202, 'St. Vincent Grenadines', 1),
(203, 'Sudan', 1),
(204, 'Suriname', 1),
(205, 'Svalbard Jan Mayen', 1),
(206, 'Swaziland', 1),
(207, 'Sweden', 1),
(208, 'Switzerland', 1),
(209, 'Syria', 1),
(210, 'Tajikistan', 1),
(211, 'Taiwan', 1),
(212, 'Tahiti', 1),
(213, 'Tanzania', 1),
(214, 'Thailand', 1),
(215, 'Togo', 1),
(216, 'Tokelau', 1),
(217, 'Tonga', 1),
(218, 'Trinidad and Tobago', 1),
(219, 'Tunisia', 1),
(220, 'Turkmenistan', 1),
(221, 'Turks and Caicos Isls', 1),
(222, 'Tuvalu', 1),
(223, 'Uganda', 1),
(224, 'Ukraine', 1),
(225, 'United Arab Emirates', 1),
(226, 'Uruguay', 1),
(227, 'Uzbekistan', 1),
(228, 'Vanuatu', 1),
(229, 'Vatican City State', 1),
(230, 'Venezuela', 1),
(231, 'Vietnam', 1),
(232, 'Virgin Islands (Brit,1)', 1),
(233, 'Wales', 1),
(234, 'Wallis Futuna Islands', 1),
(235, 'Western Sahara', 1),
(236, 'Western Samoa', 1),
(237, 'Yemen', 1),
(238, 'Yugoslavia', 1),
(239, 'Zaire', 1),
(240, 'Zambia', 1),
(241, 'Zimbabwe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_download`
--

CREATE TABLE `tbl_download` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `image` tinytext NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_download`
--

INSERT INTO `tbl_download` (`id`, `slug`, `title`, `status`, `sortorder`, `image`) VALUES
(1, 'asdasd', 'asdasd', 1, 1, 'T8z6W-abs.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_events`
--

INSERT INTO `tbl_events` (`id`, `slug`, `title`, `brief`, `content`, `image`, `status`, `sortorder`, `added_date`, `meta_keywords`, `meta_description`, `event_stdate`, `event_endate`, `type`) VALUES
(1, 'tg', 'tg ', ' ert ', '', 'a:0:{}', 1, 1, '2025-11-03 13:26:37', '', '', '2025-11-22', '0000-00-00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_gr` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_gr` text NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

CREATE TABLE `tbl_features` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `parentId` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  `icon` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`id`, `title`, `parentId`, `image`, `brief`, `icon`, `status`, `sortorder`, `added_date`) VALUES
(1, 'er terte ', 0, 'SeoSv-Screenshot (8).png', '', 'fa fa_coffee', 1, 1, '2025-11-03 13:56:29'),
(2, 'tge rt', 0, '', '', 'fa fa_ et etcoffee', 1, 2, '2025-11-03 13:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galleries`
--

CREATE TABLE `tbl_galleries` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(50) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_galleries`
--

INSERT INTO `tbl_galleries` (`id`, `slug`, `title`, `image`, `detail`, `status`, `sortorder`, `registered`, `type`) VALUES
(1, 'er6t5ert', 'er6t5ert ', '<br />\r\n<b>Fatal error</b>:  Uncaught Error: Call ', '', 1, 1, '2025-11-02 11:12:01', 2),
(2, '4rt-54e6t', '4rt 54e6t', '<br />\r\n<b>Fatal error</b>:  Uncaught Error: Call ', '', 1, 2, '2025-11-02 14:55:22', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery_images`
--

CREATE TABLE `tbl_gallery_images` (
  `id` int(11) NOT NULL,
  `galleryid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `detail` varchar(200) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_gallery_images`
--

INSERT INTO `tbl_gallery_images` (`id`, `galleryid`, `title`, `image`, `status`, `detail`, `sortorder`, `registered`) VALUES
(1, 1, 'rtyr ty', '<br />\r\n<b>Fatal error</b>:  Uncaught Error: Call ', 1, '', 1, '2025-11-02 14:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_type`
--

CREATE TABLE `tbl_group_type` (
  `id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `group_type` varchar(20) NOT NULL,
  `authority` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Frontend,2=>Personality,3=>Backend,4=>Both',
  `description` tinytext NOT NULL,
  `status` tinyint(4) NOT NULL,
  `permission` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_group_type`
--

INSERT INTO `tbl_group_type` (`id`, `group_name`, `group_type`, `authority`, `description`, `status`, `permission`) VALUES
(1, 'Administrator', '1', 1, '', 1, 'a:32:{i:0;s:2:\"30\";i:1;s:2:\"74\";i:2;s:3:\"306\";i:3;s:1:\"1\";i:4;s:1:\"2\";i:5;s:1:\"3\";i:6;s:1:\"4\";i:7;s:3:\"310\";i:8;s:2:\"25\";i:9;s:2:\"23\";i:10;s:2:\"24\";i:11;s:2:\"20\";i:12;s:1:\"5\";i:13;s:2:\"11\";i:14;s:2:\"17\";i:15;s:3:\"303\";i:16;s:3:\"302\";i:17;s:3:\"309\";i:18;s:2:\"27\";i:19;s:3:\"300\";i:20;s:3:\"301\";i:21;s:1:\"7\";i:22;s:2:\"18\";i:23;s:2:\"29\";i:24;s:2:\"19\";i:25;s:1:\"6\";i:26;s:2:\"28\";i:27;s:2:\"12\";i:28;s:2:\"16\";i:29;s:2:\"15\";i:30;s:2:\"14\";i:31;s:2:\"13\";}'),
(2, 'General Admin', '1', 1, '', 1, 'a:22:{i:0;s:2:\"74\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:2:\"25\";i:5;s:2:\"23\";i:6;s:2:\"24\";i:7;s:1:\"4\";i:8;s:3:\"302\";i:9;s:3:\"303\";i:10;s:1:\"5\";i:11;s:2:\"27\";i:12;s:3:\"300\";i:13;s:3:\"301\";i:14;s:2:\"11\";i:15;s:2:\"17\";i:16;s:2:\"20\";i:17;s:2:\"19\";i:18;s:2:\"28\";i:19;s:2:\"12\";i:20;s:2:\"14\";i:21;s:2:\"13\";}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `user_action` int(11) NOT NULL,
  `ip_track` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(101, 'Articles  []Data has deleted successfully.', '2023-09-03 12:46:54', 1, 6, '::1'),
(102, 'Article \'awwesxwe\' has added successfully.', '2023-09-03 12:47:20', 1, 3, '::1'),
(103, 'Article \'wszxe\' has added successfully.', '2023-09-03 12:47:40', 1, 3, '::1'),
(104, 'Articles  []Data has deleted successfully.', '2023-09-03 12:49:36', 1, 6, '::1'),
(105, 'Article \'asdasd\' has added successfully.', '2023-09-03 12:49:59', 1, 3, '::1'),
(106, 'Changes on Article \'asdasdasdasd\' has been saved successfully.', '2023-09-03 12:50:07', 1, 4, '::1'),
(107, 'Article \'asdasd\' has added successfully.', '2023-09-03 12:50:28', 1, 3, '::1'),
(108, 'Articles  [Experience Hospitality The Nepalese Way]Data has deleted successfully.', '2023-09-03 12:51:20', 1, 6, '::1'),
(109, 'Changes on Article \'asdasdasdasd\' has been saved successfully.', '2023-09-03 13:08:55', 1, 4, '::1'),
(110, 'Changes on Article \'SPA\' has been saved successfully.', '2023-09-03 13:22:04', 1, 4, '::1'),
(111, 'Article \'Pool & Jacuzzi\' has added successfully.', '2023-09-03 14:08:35', 1, 3, '::1'),
(112, 'Articles  [test 1]Data has deleted successfully.', '2023-09-03 14:23:22', 1, 6, '::1'),
(113, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 14:24:04', 1, 4, '::1'),
(114, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 14:24:27', 1, 4, '::1'),
(115, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 14:25:06', 1, 4, '::1'),
(116, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-09-03 14:26:56', 1, 4, '::1'),
(117, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-09-03 14:29:42', 1, 4, '::1'),
(118, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-09-03 14:30:17', 1, 4, '::1'),
(119, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-09-03 14:31:29', 1, 4, '::1'),
(120, 'Login: Hotel Shangrila Blu   logged in.', '2023-09-03 15:02:51', 1, 1, '::1'),
(121, 'Vacency [backend]Data has added successfully.', '2023-09-03 15:03:21', 1, 3, '::1'),
(122, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 15:33:53', 1, 4, '::1'),
(123, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 15:34:30', 1, 4, '::1'),
(124, 'Menu [ABOUT US] Edit Successfully', '2023-09-03 15:40:48', 1, 4, '::1'),
(125, 'Menu [ABOUT US] Edit Successfully', '2023-09-03 15:42:22', 1, 4, '::1'),
(126, 'Changes on Article \'About Us\' has been saved successfully.', '2023-09-03 15:44:15', 1, 4, '::1'),
(127, 'Articles  [About Us]Data has deleted successfully.', '2023-09-03 15:53:17', 1, 6, '::1'),
(128, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 15:53:38', 1, 4, '::1'),
(129, 'Article \'about us\' has added successfully.', '2023-09-03 15:53:53', 1, 3, '::1'),
(130, 'Changes on Article \'about us\' has been saved successfully.', '2023-09-03 15:58:02', 1, 4, '::1'),
(131, 'Changes on Article \'about us\' has been saved successfully.', '2023-09-03 16:47:36', 1, 4, '::1'),
(132, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 16:48:20', 1, 4, '::1'),
(133, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 16:51:46', 1, 4, '::1'),
(134, 'User [Hotel Shangrila Blu  ] Edit Successfully', '2023-09-03 17:44:39', 1, 4, '::1'),
(135, 'Popup \'sdad\' has added successfully.', '2023-09-03 17:44:58', 1, 3, '::1'),
(136, 'Slideshow [Exterior] Edit Successfully', '2023-09-03 17:53:20', 1, 4, '::1'),
(137, 'Slideshow [Exterior] Edit Successfully', '2023-09-03 17:54:35', 1, 4, '::1'),
(138, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-09-03 17:55:07', 1, 4, '::1'),
(139, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-09-03 17:56:34', 1, 4, '::1'),
(140, 'Changes on Sub Package \'Kantipur Restaurant\' has been saved successfully.', '2023-09-03 20:17:48', 1, 4, '::1'),
(141, 'Changes on Sub Package \'Bhaktapur Hall\' has been saved successfully.', '2023-09-03 20:22:12', 1, 4, '::1'),
(142, 'Gallery Image  [Home page]Data has deleted successfully.', '2023-09-03 20:26:24', 1, 6, '::1'),
(143, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:26', 1, 6, '::1'),
(144, 'Gallery Image  [Hotel]Data has deleted successfully.', '2023-09-03 20:26:26', 1, 6, '::1'),
(145, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:28', 1, 6, '::1'),
(146, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:28', 1, 6, '::1'),
(147, 'Gallery Image  [Rooms]Data has deleted successfully.', '2023-09-03 20:26:28', 1, 6, '::1'),
(148, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:30', 1, 6, '::1'),
(149, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:30', 1, 6, '::1'),
(150, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:30', 1, 6, '::1'),
(151, 'Gallery Image  [Dining]Data has deleted successfully.', '2023-09-03 20:26:30', 1, 6, '::1'),
(152, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:32', 1, 6, '::1'),
(153, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:32', 1, 6, '::1'),
(154, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:32', 1, 6, '::1'),
(155, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:32', 1, 6, '::1'),
(156, 'Gallery Image  [Event Hall]Data has deleted successfully.', '2023-09-03 20:26:32', 1, 6, '::1'),
(157, 'Blog  [test 1]Data has deleted successfully.', '2023-09-03 20:26:38', 1, 6, '::1'),
(158, 'Blog  []Data has deleted successfully.', '2023-09-03 20:26:40', 1, 6, '::1'),
(159, 'Blog  [Festivals in Lalitpur]Data has deleted successfully.', '2023-09-03 20:26:40', 1, 6, '::1'),
(160, 'Blog  []Data has deleted successfully.', '2023-09-03 20:26:42', 1, 6, '::1'),
(161, 'Blog  []Data has deleted successfully.', '2023-09-03 20:26:42', 1, 6, '::1'),
(162, 'Blog  [History of Shangrila Blu]Data has deleted successfully.', '2023-09-03 20:26:42', 1, 6, '::1'),
(163, 'User [ClubHimalaya  ] Edit Successfully', '2023-09-03 20:27:05', 1, 4, '::1'),
(164, 'Login: ClubHimalaya   logged in.', '2023-09-03 20:27:10', 1, 1, '::1'),
(165, 'Services [Panoramic Views]Data has added successfully.', '2023-09-03 20:41:45', 1, 3, '::1'),
(166, 'Changes on Sub Package \'Super Deluxe King Room\' has been saved successfully.', '2023-09-03 20:44:24', 1, 4, '::1'),
(167, 'Sub Package \'asd\' has added successfully.', '2023-09-03 20:51:34', 1, 3, '::1'),
(168, 'Sub Package [asd]Data has deleted successfully.', '2023-09-03 20:51:50', 1, 6, '::1'),
(169, 'Changes on Sub Package \'Super Deluxe King Room\' has been saved successfully.', '2023-09-03 20:51:54', 1, 4, '::1'),
(170, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-09-03 21:04:29', 1, 4, '::1'),
(171, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-09-03 21:06:24', 1, 4, '::1'),
(172, 'Login: ClubHimalaya   logged in.', '2023-09-04 10:28:34', 1, 1, '27.34.84.147'),
(173, 'Login: ClubHimalaya   logged in.', '2023-09-04 11:53:03', 1, 1, '27.34.84.147'),
(174, 'Blog [Brief On Club Himalaya]Data has added successfully.', '2023-09-04 11:54:01', 1, 3, '27.34.84.147'),
(175, 'Blog [Excursions to nearby places]Data has added successfully.', '2023-09-04 11:54:38', 1, 3, '27.34.84.147'),
(176, 'Blog [Places-of-interest]Data has added successfully.', '2023-09-04 11:55:59', 1, 3, '27.34.84.147'),
(177, 'Blog [test 1]Data has added successfully.', '2023-09-04 11:56:28', 1, 3, '27.34.84.147'),
(178, 'Blog [qwseasdas]Data has added successfully.', '2023-09-04 12:25:01', 1, 3, '27.34.84.147'),
(179, 'Services  [All Cards Accepted]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(180, 'Services  [Doctor on Call]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(181, 'Services  [Currency Exchange]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(182, 'Services  [Event Halls]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(183, 'Services  [Electricity Backup]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(184, 'Services  [Hot & Cold Water]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(185, 'Services  [Safe Locker]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(186, 'Services  [Laundry Service]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(187, 'Services  [International Standard A/C Rooms]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(188, 'Services  [Daily House Keeping]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(189, 'Services  [Mini-Bar<br>on request]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(190, 'Services  [Underground Parking]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(191, 'Services  [Multi Cuisine Restaurant]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(192, 'Services  [Healthy Breakfast]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(193, 'Services  [Luggage Storage]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(194, 'Services  [24hrs Reception]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(195, 'Services  [Fire extinguisher]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(196, 'Services  [Free WiFi]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(197, 'Services  [Garden View]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(198, 'Services  [Elevator]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(199, 'Services  [Room Service]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(200, 'Services  [24hrs Checkin]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(201, 'Services  [Airport pickup]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(202, 'Services [Breakfast]Data has added successfully.', '2023-09-04 12:30:30', 1, 3, '27.34.84.147'),
(203, 'Services [Room Services]Data has added successfully.', '2023-09-04 12:30:46', 1, 3, '27.34.84.147'),
(204, 'Services [Free WiFi]Data has added successfully.', '2023-09-04 12:31:01', 1, 3, '27.34.84.147'),
(205, 'Services [Air-Conditioner]Data has added successfully.', '2023-09-04 12:31:18', 1, 3, '27.34.84.147'),
(206, 'Services [Bathtub]Data has added successfully.', '2023-09-04 12:31:39', 1, 3, '27.34.84.147'),
(207, 'Services [Coffee Maker]Data has added successfully.', '2023-09-04 12:31:56', 1, 3, '27.34.84.147'),
(208, 'Services [24hrs Front-desk]Data has added successfully.', '2023-09-04 12:32:09', 1, 3, '27.34.84.147'),
(209, 'Services [Safety Deposite Box]Data has added successfully.', '2023-09-04 12:32:28', 1, 3, '27.34.84.147'),
(210, 'Services [Free Parking]Data has added successfully.', '2023-09-04 12:32:53', 1, 3, '27.34.84.147'),
(211, 'Services [Spa]Data has added successfully.', '2023-09-04 12:33:08', 1, 3, '27.34.84.147'),
(212, 'Services [Pool/Hot Tub]Data has added successfully.', '2023-09-04 12:33:33', 1, 3, '27.34.84.147'),
(213, 'Services [EV Charging station]Data has added successfully.', '2023-09-04 12:33:47', 1, 3, '27.34.84.147'),
(214, 'Services [Iron/Iron Boar]Data has added successfully.', '2023-09-04 12:34:10', 1, 3, '27.34.84.147'),
(215, 'Services [Pick/Drop]Data has added successfully.', '2023-09-04 12:34:43', 1, 3, '27.34.84.147'),
(216, 'Services [Meeting Hall]Data has added successfully.', '2023-09-04 12:35:00', 1, 3, '27.34.84.147'),
(217, 'Services [Mini-bar In Suites]Data has added successfully.', '2023-09-04 12:35:15', 1, 3, '27.34.84.147'),
(218, 'Services [Room Slippers]Data has added successfully.', '2023-09-04 12:35:29', 1, 3, '27.34.84.147'),
(219, 'Services [Hair Dryer]Data has added successfully.', '2023-09-04 12:35:46', 1, 3, '27.34.84.147'),
(220, 'Services [LED Tv]Data has added successfully.', '2023-09-04 12:35:57', 1, 3, '27.34.84.147'),
(221, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2023-09-04 12:38:43', 1, 4, '27.34.84.147'),
(222, 'SubPackage Gallery Image [del]Data has deleted successfully.', '2023-09-04 12:39:18', 1, 6, '27.34.84.147'),
(223, 'SubPackage Gallery Image [del]Data has deleted successfully.', '2023-09-04 12:39:21', 1, 6, '27.34.84.147'),
(224, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:39:21', 1, 6, '27.34.84.147'),
(225, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:39:24', 1, 6, '27.34.84.147'),
(226, 'SubPackage Gallery Image [del]Data has deleted successfully.', '2023-09-04 12:39:24', 1, 6, '27.34.84.147'),
(227, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:39:24', 1, 6, '27.34.84.147'),
(228, 'Sub Package Image [j]Data has added successfully.', '2023-09-04 12:39:46', 1, 3, '27.34.84.147'),
(229, 'Sub Package Image [j]Data has added successfully.', '2023-09-04 12:39:46', 1, 3, '27.34.84.147'),
(230, 'Sub Package Image [j]Data has added successfully.', '2023-09-04 12:39:46', 1, 3, '27.34.84.147'),
(231, 'Menu [Junior Suite] Edit Successfully', '2023-09-04 12:41:15', 1, 4, '27.34.84.147'),
(232, 'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.', '2023-09-04 12:41:59', 1, 6, '27.34.84.147'),
(233, 'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.', '2023-09-04 12:42:09', 1, 6, '27.34.84.147'),
(234, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:09', 1, 6, '27.34.84.147'),
(235, 'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.', '2023-09-04 12:42:12', 1, 6, '27.34.84.147'),
(236, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:12', 1, 6, '27.34.84.147'),
(237, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:12', 1, 6, '27.34.84.147'),
(238, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:15', 1, 6, '27.34.84.147'),
(239, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:15', 1, 6, '27.34.84.147'),
(240, 'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.', '2023-09-04 12:42:15', 1, 6, '27.34.84.147'),
(241, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:15', 1, 6, '27.34.84.147'),
(242, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:18', 1, 6, '27.34.84.147'),
(243, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:18', 1, 6, '27.34.84.147'),
(244, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:18', 1, 6, '27.34.84.147'),
(245, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:18', 1, 6, '27.34.84.147'),
(246, 'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.', '2023-09-04 12:42:18', 1, 6, '27.34.84.147'),
(247, 'Sub Package Image [dep]Data has added successfully.', '2023-09-04 12:42:45', 1, 3, '27.34.84.147'),
(248, 'Sub Package Image [dep]Data has added successfully.', '2023-09-04 12:42:45', 1, 3, '27.34.84.147'),
(249, 'Sub Package Image [dep]Data has added successfully.', '2023-09-04 12:42:45', 1, 3, '27.34.84.147'),
(250, 'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.', '2023-09-04 12:44:20', 1, 4, '27.34.84.147'),
(251, 'Menu [Deluxe premium Room] Edit Successfully', '2023-09-04 12:45:01', 1, 4, '27.34.84.147'),
(252, 'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.', '2023-09-04 12:45:32', 1, 4, '27.34.84.147'),
(253, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-09-04 12:49:30', 1, 4, '27.34.84.147'),
(254, 'Sub Package \'Standard Room\' has added successfully.', '2023-09-04 12:51:09', 1, 3, '27.34.84.147'),
(255, 'Features [Coffee/ Tea Maker] Edit Successfully', '2023-09-04 12:52:15', 1, 4, '27.34.84.147'),
(256, 'Features [Bathrobe & slippers] Edit Successfully', '2023-09-04 12:52:49', 1, 4, '27.34.84.147'),
(257, 'Features [House Keeping] Edit Successfully', '2023-09-04 12:53:04', 1, 4, '27.34.84.147'),
(258, 'Features [Flat screen TV] Edit Successfully', '2023-09-04 12:53:24', 1, 4, '27.34.84.147'),
(259, 'Features [Shower-bathtub combination] Edit Successfully', '2023-09-04 12:53:41', 1, 4, '27.34.84.147'),
(260, 'Features [In Room Safe (Locker)] Edit Successfully', '2023-09-04 12:54:01', 1, 4, '27.34.84.147'),
(261, 'Features [Free Wi-Fi] Edit Successfully', '2023-09-04 12:54:19', 1, 4, '27.34.84.147'),
(262, 'Features [No Smoking] Edit Successfully', '2023-09-04 12:54:36', 1, 4, '27.34.84.147'),
(263, 'Features [Toiletriesi] Edit Successfully', '2023-09-04 12:55:06', 1, 4, '27.34.84.147'),
(264, 'Changes on Sub Package \'Nagarkot Hall\' has been saved successfully.', '2023-09-04 12:56:46', 1, 4, '27.34.84.147'),
(265, 'Sub Package \'Lalitpur Hall\' has added successfully.', '2023-09-04 12:57:42', 1, 3, '27.34.84.147'),
(266, 'Sub Package Image [a]Data has added successfully.', '2023-09-04 12:58:24', 1, 3, '27.34.84.147'),
(267, 'Sub Package Image [a]Data has added successfully.', '2023-09-04 12:58:24', 1, 3, '27.34.84.147'),
(268, 'Sub Package \'Indrawati Bar\' has added successfully.', '2023-09-04 12:59:53', 1, 3, '27.34.84.147'),
(269, 'Sub Package Image [s]Data has added successfully.', '2023-09-04 13:00:16', 1, 3, '27.34.84.147'),
(270, 'Sub Package Image [s]Data has added successfully.', '2023-09-04 13:00:16', 1, 3, '27.34.84.147'),
(271, 'SubPackage Gallery Image [k]Data has deleted successfully.', '2023-09-04 13:00:23', 1, 6, '27.34.84.147'),
(272, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 13:00:26', 1, 6, '27.34.84.147'),
(273, 'SubPackage Gallery Image [k]Data has deleted successfully.', '2023-09-04 13:00:26', 1, 6, '27.34.84.147'),
(274, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 13:00:29', 1, 6, '27.34.84.147'),
(275, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 13:00:29', 1, 6, '27.34.84.147'),
(276, 'SubPackage Gallery Image [k]Data has deleted successfully.', '2023-09-04 13:00:29', 1, 6, '27.34.84.147'),
(277, 'Sub Package Image [a]Data has added successfully.', '2023-09-04 13:00:44', 1, 3, '27.34.84.147'),
(278, 'Sub Package Image [a]Data has added successfully.', '2023-09-04 13:00:44', 1, 3, '27.34.84.147'),
(279, 'Gallery [rooms]Data has added successfully.', '2023-09-04 13:01:57', 1, 3, '27.34.84.147'),
(280, 'Sub Gallery Image [a]Data has added successfully.', '2023-09-04 13:02:18', 1, 3, '27.34.84.147'),
(281, 'Sub Gallery Image [a]Data has added successfully.', '2023-09-04 13:02:18', 1, 3, '27.34.84.147'),
(282, 'Sub Gallery Image [a]Data has added successfully.', '2023-09-04 13:02:18', 1, 3, '27.34.84.147'),
(283, 'Sub Gallery Image [a]Data has added successfully.', '2023-09-04 13:02:18', 1, 3, '27.34.84.147'),
(284, 'Sub Gallery Image [a]Data has added successfully.', '2023-09-04 13:02:18', 1, 3, '27.34.84.147'),
(285, 'Sub Gallery Image [a]Data has added successfully.', '2023-09-04 13:02:18', 1, 3, '27.34.84.147'),
(286, 'Gallery [restaurant]Data has added successfully.', '2023-09-04 13:02:43', 1, 3, '27.34.84.147'),
(287, 'Sub Gallery Image [e]Data has added successfully.', '2023-09-04 13:03:18', 1, 3, '27.34.84.147'),
(288, 'Sub Gallery Image [e]Data has added successfully.', '2023-09-04 13:03:18', 1, 3, '27.34.84.147'),
(289, 'Sub Gallery Image [e]Data has added successfully.', '2023-09-04 13:03:18', 1, 3, '27.34.84.147'),
(290, 'Gallery [hall]Data has added successfully.', '2023-09-04 13:03:45', 1, 3, '27.34.84.147'),
(291, 'Sub Gallery Image [d]Data has added successfully.', '2023-09-04 13:03:57', 1, 3, '27.34.84.147'),
(292, 'Sub Gallery Image [d]Data has added successfully.', '2023-09-04 13:03:57', 1, 3, '27.34.84.147'),
(293, 'Sub Gallery Image [d]Data has added successfully.', '2023-09-04 13:03:57', 1, 3, '27.34.84.147'),
(294, 'Gallery [Recreation]Data has added successfully.', '2023-09-04 13:04:17', 1, 3, '27.34.84.147'),
(295, 'Sub Gallery Image [e]Data has added successfully.', '2023-09-04 13:04:35', 1, 3, '27.34.84.147'),
(296, 'Sub Gallery Image [e]Data has added successfully.', '2023-09-04 13:04:35', 1, 3, '27.34.84.147'),
(297, 'Sub Gallery Image [e]Data has added successfully.', '2023-09-04 13:04:35', 1, 3, '27.34.84.147'),
(298, 'Vacency [Painter / Plumber] Edit Successfully', '2023-09-04 13:06:56', 1, 4, '27.34.84.147'),
(299, 'Vacency [Asst. Laundry Manager] Edit Successfully', '2023-09-04 13:07:16', 1, 4, '27.34.84.147'),
(300, 'Vacency  [Intern]Data has deleted successfully.', '2023-09-04 13:07:21', 1, 6, '27.34.84.147'),
(301, 'Vacency [Sales Executive] Edit Successfully', '2023-09-04 13:07:33', 1, 4, '27.34.84.147'),
(302, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-09-04 13:09:33', 1, 4, '27.34.84.147'),
(303, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-09-04 13:10:08', 1, 4, '27.34.84.147'),
(304, 'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.', '2023-09-04 13:10:45', 1, 4, '27.34.84.147'),
(305, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2023-09-04 13:11:12', 1, 4, '27.34.84.147'),
(306, 'Article \'Children Play Area Indoor & Outdoor\' has added successfully.', '2023-09-04 13:12:47', 1, 3, '27.34.84.147'),
(307, 'Changes on Article \'Children Play Area Indoor & Outdoor\' has been saved successfully.', '2023-09-04 13:18:43', 1, 4, '27.34.84.147'),
(308, 'Testimonial [Rebecca] Edit Successfully', '2023-09-04 13:21:07', 1, 4, '27.34.84.147'),
(309, 'Testimonial [WIRAEN - MALAYSIA] Edit Successfully', '2023-09-04 13:21:41', 1, 4, '27.34.84.147'),
(310, 'Testimonial [WIRAEN - MALAYSIA] Edit Successfully', '2023-09-04 13:22:19', 1, 4, '27.34.84.147'),
(311, 'Article \'Nagarkot View Tower\' has added successfully.', '2023-09-04 13:25:10', 1, 3, '27.34.84.147'),
(312, 'Article \'Mahankal Temple\' has added successfully.', '2023-09-04 13:26:09', 1, 3, '27.34.84.147'),
(313, 'Article \'Santi stupa\' has added successfully.', '2023-09-04 13:26:55', 1, 3, '27.34.84.147'),
(314, 'Article \'Changu Narayan Temple\' has added successfully.', '2023-09-04 13:27:35', 1, 3, '27.34.84.147'),
(315, 'Article \'Dhulikhel\' has added successfully.', '2023-09-04 13:28:02', 1, 3, '27.34.84.147'),
(316, 'Article \'Bhaktapur\' has added successfully.', '2023-09-04 13:28:33', 1, 3, '27.34.84.147'),
(317, 'Changes on Article \'Bhaktapur\' has been saved successfully.', '2023-09-04 13:29:17', 1, 4, '27.34.84.147'),
(318, 'Login: ClubHimalaya   logged in.', '2023-09-04 14:52:09', 1, 1, '27.34.2.119'),
(319, 'Login: ClubHimalaya   logged in.', '2023-09-04 17:33:42', 1, 1, '27.34.2.119'),
(320, 'Menu [ABOUT US] Edit Successfully', '2023-09-04 17:33:54', 1, 4, '27.34.2.119'),
(321, 'Menu [ABOUT US] Edit Successfully', '2023-09-04 17:34:22', 1, 4, '27.34.2.119'),
(322, 'Login: ClubHimalaya   logged in.', '2023-09-06 15:41:32', 1, 1, '27.34.64.16'),
(323, 'Login: ClubHimalaya   logged in.', '2023-09-15 11:20:48', 1, 1, '103.10.29.84'),
(324, 'FAQ [test]Data has deleted successfully.', '2023-09-15 11:21:12', 1, 6, '103.10.29.84'),
(325, 'Changes on FAQ \'What are the amenities and facilities in the hotel?\' has been saved successfully.', '2023-09-15 11:21:34', 1, 4, '103.10.29.84'),
(326, 'Changes on FAQ \'What are the activities guests can enjoy?\' has been saved successfully.', '2023-09-15 11:22:01', 1, 4, '103.10.29.84'),
(327, 'Changes on FAQ \'What are the services available?\' has been saved successfully.', '2023-09-15 11:22:25', 1, 4, '103.10.29.84'),
(328, 'FAQ \'Internet\' has added successfully.', '2023-09-15 11:22:44', 1, 3, '103.10.29.84'),
(329, 'FAQ \'Parking\' has added successfully.', '2023-09-15 11:23:01', 1, 3, '103.10.29.84'),
(330, 'FAQ \'How do I get to the hotel?\' has added successfully.', '2023-09-15 11:23:55', 1, 3, '103.10.29.84'),
(331, 'FAQ \'What are the things to do in Nagarkot?\' has added successfully.', '2023-09-15 11:24:12', 1, 3, '103.10.29.84'),
(332, 'FAQ \'We guarantee\' has added successfully.', '2023-09-15 11:24:26', 1, 3, '103.10.29.84'),
(333, 'FAQ \'What are the accepted credit cards?\' has added successfully.', '2023-09-15 11:24:38', 1, 3, '103.10.29.84'),
(334, 'FAQ \'Pets\' has added successfully.', '2023-09-15 11:24:49', 1, 3, '103.10.29.84'),
(335, 'FAQ \'What are the Hotel Policies?\' has added successfully.', '2023-09-15 11:25:00', 1, 3, '103.10.29.84'),
(336, 'FAQ \'When is the best time to visit?\' has added successfully.', '2023-09-15 11:25:11', 1, 3, '103.10.29.84'),
(337, 'FAQ \'What is the weather in Nagarkot like ?\' has added successfully.', '2023-09-15 11:25:23', 1, 3, '103.10.29.84'),
(338, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:27:35', 1, 4, '103.10.29.84'),
(339, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:28:20', 1, 4, '103.10.29.84'),
(340, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:29:40', 1, 4, '103.10.29.84'),
(341, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:30:43', 1, 4, '103.10.29.84'),
(342, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:31:45', 1, 4, '103.10.29.84'),
(343, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:33:30', 1, 4, '103.10.29.84'),
(344, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:34:04', 1, 4, '103.10.29.84'),
(345, 'Menu [Deluxe Room] Edit Successfully', '2023-09-15 11:38:50', 1, 4, '103.10.29.84'),
(346, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2023-09-15 11:39:18', 1, 6, '103.10.29.84'),
(347, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:21', 1, 6, '103.10.29.84'),
(348, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2023-09-15 11:39:21', 1, 6, '103.10.29.84'),
(349, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:24', 1, 6, '103.10.29.84'),
(350, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:24', 1, 6, '103.10.29.84'),
(351, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2023-09-15 11:39:24', 1, 6, '103.10.29.84'),
(352, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:27', 1, 6, '103.10.29.84'),
(353, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:28', 1, 6, '103.10.29.84'),
(354, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:28', 1, 6, '103.10.29.84'),
(355, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2023-09-15 11:39:28', 1, 6, '103.10.29.84'),
(356, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:30', 1, 6, '103.10.29.84'),
(357, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:30', 1, 6, '103.10.29.84'),
(358, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:30', 1, 6, '103.10.29.84'),
(359, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:30', 1, 6, '103.10.29.84'),
(360, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2023-09-15 11:39:30', 1, 6, '103.10.29.84'),
(361, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:33', 1, 6, '103.10.29.84'),
(362, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2023-09-15 11:39:33', 1, 6, '103.10.29.84'),
(363, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:33', 1, 6, '103.10.29.84'),
(364, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:33', 1, 6, '103.10.29.84'),
(365, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:33', 1, 6, '103.10.29.84'),
(366, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:33', 1, 6, '103.10.29.84'),
(367, 'Sub Package Image [deluxe]Data has added successfully.', '2023-09-15 11:40:40', 1, 3, '103.10.29.84'),
(368, 'Sub Package Image [delxue]Data has added successfully.', '2023-09-15 11:40:40', 1, 3, '103.10.29.84'),
(369, 'Sub Package Image [deluxe]Data has added successfully.', '2023-09-15 11:40:40', 1, 3, '103.10.29.84'),
(370, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-09-15 11:42:06', 1, 4, '103.10.29.84'),
(371, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-09-15 11:44:10', 1, 4, '103.10.29.84'),
(372, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-09-15 11:45:21', 1, 4, '103.10.29.84'),
(373, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-09-15 11:45:47', 1, 4, '103.10.29.84'),
(374, 'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.', '2023-09-15 11:46:31', 1, 4, '103.10.29.84'),
(375, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2023-09-15 11:47:11', 1, 4, '103.10.29.84'),
(376, 'Package Rooms Edit Successfully', '2023-09-15 11:59:06', 1, 4, '103.10.29.84'),
(377, 'Blog [Brief On Club Himalaya] Edit Successfully', '2023-09-15 12:04:11', 1, 4, '103.10.29.84'),
(378, 'Testimonial [Andrew Parker - Writer] Edit Successfully', '2023-09-15 12:08:45', 1, 4, '103.10.29.84'),
(379, 'Testimonial [Greg. S - Wagga] Edit Successfully', '2023-09-15 12:09:02', 1, 4, '103.10.29.84'),
(380, 'Testimonial [Andrew Parker - writer] Edit Successfully', '2023-09-15 12:10:59', 1, 4, '103.10.29.84'),
(381, 'Menu [ABOUT US] Edit Successfully', '2023-09-15 12:27:48', 1, 4, '103.10.29.84'),
(382, 'Login: ClubHimalaya   logged in.', '2023-09-15 12:44:06', 1, 1, '27.34.64.76'),
(383, 'Login: ClubHimalaya   logged in.', '2023-09-17 12:46:18', 1, 1, '27.34.76.145'),
(384, 'Sub Package Image [standard]Data has added successfully.', '2023-09-17 12:48:42', 1, 3, '27.34.76.145'),
(385, 'Sub Package Image [standard]Data has added successfully.', '2023-09-17 12:48:42', 1, 3, '27.34.76.145'),
(386, 'Sub Package Image [standard]Data has added successfully.', '2023-09-17 12:48:42', 1, 3, '27.34.76.145'),
(387, 'Login: ClubHimalaya   logged in.', '2023-09-17 13:55:22', 1, 1, '27.34.76.150'),
(388, 'Testimonial [Andrew Parker - writer] Edit Successfully', '2023-09-17 13:55:38', 1, 4, '27.34.76.150'),
(389, 'Testimonial [Andrew Parker] Edit Successfully', '2023-09-17 13:55:47', 1, 4, '27.34.76.150'),
(390, 'Testimonial [Greg. S ] Edit Successfully', '2023-09-17 13:57:54', 1, 4, '27.34.76.150'),
(391, 'Testimonial [WIRAEN] Edit Successfully', '2023-09-17 13:58:08', 1, 4, '27.34.76.150'),
(392, 'Login: ClubHimalaya   logged in.', '2023-09-17 17:11:07', 1, 1, '27.34.76.150'),
(393, 'Sub Package \'Library\' has added successfully.', '2023-09-17 17:15:37', 1, 3, '27.34.76.150'),
(394, 'Sub Package Image [kli]Data has added successfully.', '2023-09-17 17:16:29', 1, 3, '27.34.76.150'),
(395, 'SubPackage Gallery Image [kli]Data has deleted successfully.', '2023-09-17 17:16:36', 1, 6, '27.34.76.150'),
(396, 'Sub Package Image [lib]Data has added successfully.', '2023-09-17 17:18:17', 1, 3, '27.34.76.150'),
(397, 'Sub Package Image [lib]Data has added successfully.', '2023-09-17 17:18:17', 1, 3, '27.34.76.150'),
(398, 'Blog [Nagarkot Nepal ]Data has added successfully.', '2023-09-17 17:22:38', 1, 3, '27.34.76.150'),
(399, 'Blog [Nagarkot Nepal ] Edit Successfully', '2023-09-17 17:24:15', 1, 4, '27.34.76.150'),
(400, 'Blog [Nagarkot Nepal ] Edit Successfully', '2023-09-17 17:24:40', 1, 4, '27.34.76.150'),
(401, 'Blog [Nagarkot Nepal ] Edit Successfully', '2023-09-17 17:25:39', 1, 4, '27.34.76.150'),
(402, 'Blog [Nagarkot Nepal ] Edit Successfully', '2023-09-17 17:26:22', 1, 4, '27.34.76.150'),
(403, 'Blog [Nagarkot Nepal ] Edit Successfully', '2023-09-17 17:27:26', 1, 4, '27.34.76.150'),
(404, 'Login: ClubHimalaya   logged in.', '2023-09-18 08:28:10', 1, 1, '27.34.76.150'),
(405, 'Menu [Standard Room] CreatedData has added successfully.', '2023-09-18 08:35:32', 1, 3, '27.34.76.150'),
(406, 'Changes on Article \'about us home page\' has been saved successfully.', '2023-09-18 08:57:44', 1, 4, '27.34.76.150'),
(407, 'Changes on Article \'about us home page\' has been saved successfully.', '2023-09-18 08:58:00', 1, 4, '27.34.76.150'),
(408, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-18 08:58:08', 1, 4, '27.34.76.150'),
(409, 'Login: ClubHimalaya   logged in.', '2023-09-18 09:30:13', 1, 1, '27.34.76.150'),
(410, 'Login: ClubHimalaya   logged in.', '2023-09-18 10:34:46', 1, 1, '27.34.76.150'),
(411, 'Login: ClubHimalaya   logged in.', '2023-09-19 09:59:36', 1, 1, '27.34.76.167'),
(412, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 10:04:06', 1, 4, '27.34.76.167'),
(413, 'Login: ClubHimalaya   logged in.', '2023-09-19 17:49:22', 1, 1, '27.34.76.164'),
(414, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 17:53:16', 1, 4, '27.34.76.164'),
(415, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 17:54:33', 1, 4, '27.34.76.164'),
(416, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 17:56:15', 1, 4, '27.34.76.164'),
(417, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 17:57:25', 1, 4, '27.34.76.164'),
(418, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 18:05:13', 1, 4, '27.34.76.164'),
(419, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 18:06:00', 1, 4, '27.34.76.164'),
(420, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 18:06:34', 1, 4, '27.34.76.164'),
(421, 'Login: ClubHimalaya   logged in.', '2023-09-21 08:19:17', 1, 1, '27.34.76.158'),
(422, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-21 08:21:01', 1, 4, '27.34.76.158'),
(423, 'Changes on Sub Package \'Bhaktapur Hall\' has been saved successfully.', '2023-09-21 08:21:37', 1, 4, '27.34.76.158'),
(424, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-21 08:22:34', 1, 4, '27.34.76.158'),
(425, 'Changes on Sub Package \'Nagarkot Hall\' has been saved successfully.', '2023-09-21 08:23:21', 1, 4, '27.34.76.158'),
(426, 'Changes on Sub Package \'Library\' has been saved successfully.', '2023-09-21 08:23:59', 1, 4, '27.34.76.158'),
(427, 'Changes on Sub Package \'Library\' has been saved successfully.', '2023-09-21 08:24:48', 1, 4, '27.34.76.158'),
(428, 'Changes on Sub Package \'Nagarkot Hall\' has been saved successfully.', '2023-09-21 08:25:25', 1, 4, '27.34.76.158'),
(429, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-21 08:27:48', 1, 4, '27.34.76.158'),
(430, 'Changes on Sub Package \'Bhaktapur Hall\' has been saved successfully.', '2023-09-21 08:28:11', 1, 4, '27.34.76.158'),
(431, 'Login: ClubHimalaya   logged in.', '2023-10-16 14:28:42', 1, 1, '27.34.64.117'),
(432, 'Changes on Article \'about us home page\' has been saved successfully.', '2023-10-16 14:34:55', 1, 4, '27.34.64.117'),
(433, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-10-16 14:35:27', 1, 4, '27.34.64.117'),
(434, 'Changes on Article \'about us home page\' has been saved successfully.', '2023-10-16 14:37:06', 1, 4, '27.34.64.117'),
(435, 'Menu [ABOUT US] Edit Successfully', '2023-10-16 14:37:47', 1, 4, '27.34.64.117'),
(436, 'Changes on Article \'about us\' has been saved successfully.', '2023-10-16 14:38:47', 1, 4, '27.34.64.117'),
(437, 'Menu [ABOUT US] Edit Successfully', '2023-10-16 14:39:05', 1, 4, '27.34.64.117'),
(438, 'Changes on Article \'about us\' has been saved successfully.', '2023-10-16 14:39:34', 1, 4, '27.34.64.117'),
(439, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-10-16 14:39:52', 1, 4, '27.34.64.117'),
(440, 'Changes on Main service \'Children Play Area Indoor & Outdoor\' has been saved successfully.', '2023-10-16 14:42:11', 1, 4, '27.34.64.117'),
(441, 'Changes on Main service \'Children Play Area Indoor & Outdoor\' has been saved successfully.', '2023-10-16 14:42:35', 1, 4, '27.34.64.117'),
(442, 'Changes on Main service \'Children Play Area Indoor & Outdoor\' has been saved successfully.', '2023-10-16 14:42:54', 1, 4, '27.34.64.117'),
(443, 'Login: ClubHimalaya   logged in.', '2023-10-17 13:12:04', 1, 1, '27.34.64.117'),
(444, 'Article \'Exceptional Experiences\' has added successfully.', '2023-10-17 13:56:59', 1, 3, '27.34.64.117'),
(445, 'Testimonial [Greg. S ] Edit Successfully', '2023-10-17 13:58:48', 1, 4, '27.34.64.117'),
(446, 'Changes on Article \'Exceptional Experiences\' has been saved successfully.', '2023-10-17 14:01:43', 1, 4, '27.34.64.117'),
(447, 'Changes on Article \'Exceptional Experiences\' has been saved successfully.', '2023-10-17 14:04:07', 1, 4, '27.34.64.117'),
(448, 'Login: ClubHimalaya   logged in.', '2023-10-17 14:06:04', 1, 1, '27.34.76.163'),
(449, 'Login: ClubHimalaya   logged in.', '2023-10-20 08:23:42', 1, 1, '27.34.76.176'),
(450, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-10-20 08:50:04', 1, 4, '27.34.76.176'),
(451, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-10-20 08:50:11', 1, 4, '27.34.76.176'),
(452, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-10-20 08:51:20', 1, 4, '27.34.76.176'),
(453, 'Login: ClubHimalaya   logged in.', '2023-10-29 13:52:56', 1, 1, '27.34.64.54'),
(454, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-29 13:53:26', 1, 4, '27.34.64.54'),
(455, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-29 13:53:48', 1, 4, '27.34.64.54'),
(456, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-29 13:59:19', 1, 4, '27.34.64.54'),
(457, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-29 14:15:31', 1, 4, '27.34.64.54'),
(458, 'Changes on FAQ \'What are the accepted credit cards?\' has been saved successfully.', '2023-10-29 14:37:43', 1, 4, '27.34.64.54'),
(459, 'Changes on FAQ \'What are the accepted credit cards?\' has been saved successfully.', '2023-10-29 14:38:12', 1, 4, '27.34.64.54'),
(460, 'Changes on FAQ \'We guarantee\' has been saved successfully.', '2023-10-29 14:39:02', 1, 4, '27.34.64.54'),
(461, 'Changes on FAQ \'What are the things to do in Nagarkot?\' has been saved successfully.', '2023-10-29 14:39:55', 1, 4, '27.34.64.54'),
(462, 'Article \'Partners\' has added successfully.', '2023-10-29 14:41:53', 1, 3, '27.34.64.54'),
(463, 'Menu [Our Partners] Edit Successfully', '2023-10-29 14:42:22', 1, 4, '27.34.64.54'),
(464, 'Menu [FAQ\'s] Edit Successfully', '2023-10-29 14:42:46', 1, 4, '27.34.64.54'),
(465, 'Changes on Article \'Partners\' has been saved successfully.', '2023-10-29 14:43:46', 1, 4, '27.34.64.54'),
(466, 'Article \'Enhanced Safety\' has added successfully.', '2023-10-29 14:46:24', 1, 3, '27.34.64.54'),
(467, 'Menu [Enhanced Safety] Edit Successfully', '2023-10-29 14:46:57', 1, 4, '27.34.64.54'),
(468, 'Changes on Article \'Enhanced Safety\' has been saved successfully.', '2023-10-29 14:48:23', 1, 4, '27.34.64.54'),
(469, 'Blog [Brief On Club Himalaya] Edit Successfully', '2023-10-29 14:50:39', 1, 4, '27.34.64.54'),
(470, 'Blog [Nagarkot Nepal ] Edit Successfully', '2023-10-29 14:52:40', 1, 4, '27.34.64.54'),
(471, 'Login: ClubHimalaya   logged in.', '2023-10-30 09:21:27', 1, 1, '27.34.76.183'),
(472, 'User [ClubHimalaya  ] Edit Successfully', '2023-10-30 09:21:49', 1, 4, '27.34.76.183'),
(473, 'Login: ClubHimalaya   logged in.', '2023-10-30 10:54:57', 1, 1, '27.34.0.5'),
(474, 'Login: ClubHimalaya   logged in.', '2023-10-30 13:48:32', 1, 1, '27.34.0.5'),
(475, 'Changes on Main service \'SPA\' has been saved successfully.', '2023-10-30 13:50:58', 1, 4, '27.34.0.5'),
(476, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-30 13:53:17', 1, 4, '27.34.0.5'),
(477, 'Login: ClubHimalaya   logged in.', '2023-10-30 14:07:44', 1, 1, '27.34.64.54'),
(478, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-30 14:08:16', 1, 4, '27.34.0.5'),
(479, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-30 14:08:34', 1, 4, '27.34.64.54'),
(480, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-30 14:09:39', 1, 4, '27.34.64.54'),
(481, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-10-30 14:17:37', 1, 4, '27.34.0.5'),
(482, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-10-30 14:17:51', 1, 4, '27.34.0.5'),
(483, 'Changes on Article \'about us\' has been saved successfully.', '2023-10-30 14:24:08', 1, 4, '27.34.64.54'),
(484, 'Changes on Article \'about us\' has been saved successfully.', '2023-10-30 14:24:31', 1, 4, '27.34.64.54'),
(485, 'Login: ClubHimalaya   logged in.', '2023-10-30 14:24:34', 1, 1, '27.34.64.193'),
(486, 'Changes on Article \'about us\' has been saved successfully.', '2023-10-30 14:24:50', 1, 4, '27.34.64.54'),
(487, 'SocialNetworking [Facebook] Edit Successfully', '2023-10-30 14:30:21', 1, 4, '27.34.0.5'),
(488, 'Changes on Main service \'SPA\' has been saved successfully.', '2023-10-30 14:38:13', 1, 4, '27.34.0.5'),
(489, 'Changes on Main service \'SPA\' has been saved successfully.', '2023-10-30 14:38:42', 1, 4, '27.34.0.5'),
(490, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-10-30 14:39:43', 1, 4, '27.34.64.193'),
(491, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:41:22', 1, 6, '27.34.64.193'),
(492, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:42:12', 1, 6, '27.34.0.5'),
(493, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:42:22', 1, 6, '27.34.0.5'),
(494, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:42:22', 1, 6, '27.34.0.5'),
(495, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:42:34', 1, 6, '27.34.0.5'),
(496, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:42:34', 1, 6, '27.34.0.5'),
(497, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:42:34', 1, 6, '27.34.0.5'),
(498, 'Vacency [HR post wanted]Data has added successfully.', '2023-10-30 14:42:48', 1, 3, '27.34.0.5'),
(499, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:43:16', 1, 6, '27.34.64.193'),
(500, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-10-30 14:46:05', 1, 4, '27.34.64.193'),
(501, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-10-30 14:57:14', 1, 4, '27.34.64.193'),
(502, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-10-30 14:59:48', 1, 4, '27.34.64.193'),
(503, 'Login: ClubHimalaya   logged in.', '2023-10-30 16:19:42', 1, 1, '27.34.64.193'),
(504, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-10-30 16:20:02', 1, 4, '27.34.64.193'),
(505, 'Login: ClubHimalaya   logged in.', '2023-10-31 14:05:47', 1, 1, '27.34.64.54'),
(506, 'Login: ClubHimalaya   logged in.', '2023-11-02 15:02:34', 1, 1, '27.34.64.4'),
(507, 'Changes on Article \'about us\' has been saved successfully.', '2023-11-02 15:03:17', 1, 4, '27.34.64.4'),
(508, 'Menu [RESTAURANTS / BAR] Edit Successfully', '2023-11-02 15:06:33', 1, 4, '27.34.64.4'),
(509, 'Menu [RESTAURANTS & BAR] Edit Successfully', '2023-11-02 15:06:48', 1, 4, '27.34.64.4'),
(510, 'Package Dining Edit Successfully', '2023-11-02 15:10:24', 1, 4, '27.34.64.4'),
(511, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-11-02 15:10:51', 1, 4, '27.34.64.4'),
(512, 'Changes on Sub Package \'Kantipur Restaurant\' has been saved successfully.', '2023-11-02 15:11:28', 1, 4, '27.34.64.4'),
(513, 'Login: ClubHimalaya   logged in.', '2023-11-05 12:35:52', 1, 1, '163.53.26.226'),
(514, 'Package Dining Edit Successfully', '2023-11-05 12:36:16', 1, 4, '163.53.26.226'),
(515, 'Package Dining Edit Successfully', '2023-11-05 12:36:53', 1, 4, '163.53.26.226'),
(516, 'Package Dining Edit Successfully', '2023-11-05 12:39:13', 1, 4, '163.53.26.226'),
(517, 'Package Dining Edit Successfully', '2023-11-05 12:40:33', 1, 4, '163.53.26.226'),
(518, 'Changes on Sub Package \'Kantipur Restaurant\' has been saved successfully.', '2023-11-05 12:43:48', 1, 4, '163.53.26.226'),
(519, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-11-05 12:45:22', 1, 4, '163.53.26.226'),
(520, 'Login: ClubHimalaya   logged in.', '2023-11-05 16:08:23', 1, 1, '113.199.255.222'),
(521, 'Changes on FAQ \'What is the weather in Nagarkot like ?\' has been saved successfully.', '2023-11-05 16:09:59', 1, 4, '113.199.255.222'),
(522, 'Changes on FAQ \'What is the weather in Nagarkot like ?\' has been saved successfully.', '2023-11-05 16:14:12', 1, 4, '113.199.255.222'),
(523, 'Changes on FAQ \'What is the weather in Nagarkot like ?\' has been saved successfully.', '2023-11-05 16:15:19', 1, 4, '113.199.255.222'),
(524, 'Changes on FAQ \'What is the weather in Nagarkot like ?\' has been saved successfully.', '2023-11-05 16:28:05', 1, 4, '113.199.255.222'),
(525, 'Login: ClubHimalaya   logged in.', '2023-11-09 07:49:33', 1, 1, '::1'),
(526, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 08:05:04', 1, 4, '::1'),
(527, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 08:09:56', 1, 4, '::1'),
(528, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 08:19:06', 1, 4, '::1'),
(529, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:38:20', 1, 4, '::1'),
(530, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:38:30', 1, 4, '::1'),
(531, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:38:38', 1, 4, '::1'),
(532, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:44:08', 1, 4, '::1'),
(533, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:52:23', 1, 4, '::1'),
(534, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:52:34', 1, 4, '::1'),
(535, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:52:53', 1, 4, '::1'),
(536, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 11:01:21', 1, 4, '::1'),
(537, 'Login: ClubHimalaya   logged in.', '2023-11-09 11:13:42', 1, 1, '::1'),
(538, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 12:59:53', 1, 4, '::1'),
(539, 'Login: ClubHimalaya   logged in.', '2023-11-09 13:14:02', 1, 1, '::1'),
(540, 'SocialNetworking [Facebook] Edit Successfully', '2023-11-09 13:16:15', 1, 4, '::1'),
(541, 'SocialNetworking [Facebook] Edit Successfully', '2023-11-09 13:18:59', 1, 4, '::1'),
(542, 'SocialNetworking [Twitter] Edit Successfully', '2023-11-09 13:28:18', 1, 4, '::1'),
(543, 'SocialNetworking [Twitter] Edit Successfully', '2023-11-09 13:28:26', 1, 4, '::1'),
(544, 'SocialNetworking [Twitter] Edit Successfully', '2023-11-09 13:28:56', 1, 4, '::1'),
(545, 'SocialNetworking [Twitter] Edit Successfully', '2023-11-09 13:29:31', 1, 4, '::1'),
(546, 'Login: ClubHimalaya   logged in.', '2023-11-09 15:07:07', 1, 1, '::1'),
(547, 'Login: ClubHimalaya   logged in.', '2023-11-09 15:10:05', 1, 1, '::1'),
(548, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 15:15:15', 1, 4, '::1'),
(549, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 15:20:22', 1, 4, '::1'),
(550, 'Package [asdasd]Data has added successfully.', '2023-11-09 15:24:44', 1, 3, '::1'),
(551, 'Package asdasd Edit Successfully', '2023-11-09 15:25:12', 1, 4, '::1'),
(552, 'Package asdasd Edit Successfully', '2023-11-09 15:25:44', 1, 4, '::1'),
(553, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 15:26:14', 1, 4, '::1'),
(554, 'Login: ClubHimalaya   logged in.', '2023-11-09 15:41:26', 1, 1, '::1'),
(555, 'Login: Super admin   logged in.', '2023-11-09 15:59:32', 1, 1, '::1'),
(556, 'Login: ClubHimalaya   logged in.', '2023-11-09 16:05:26', 1, 1, '::1'),
(557, 'Login: ClubHimalaya   logged in.', '2023-11-09 16:35:17', 1, 1, '::1'),
(558, 'Login: ClubHimalaya   logged in.', '2023-11-09 16:39:40', 1, 1, '::1'),
(559, 'Login: Super admin   logged in.', '2023-11-09 16:40:07', 1, 1, '::1'),
(560, 'User [Super admin  ] Edit Successfully', '2023-11-09 16:48:42', 1, 4, '::1'),
(561, 'Login: Super admin   logged in.', '2023-11-09 16:48:59', 1, 1, '::1'),
(562, 'Login: ClubHimalaya   logged in.', '2023-11-09 16:55:28', 1, 1, '::1'),
(563, 'Changes on Article \'Enhanced Safety\' has been saved successfully.', '2023-11-09 17:06:08', 1, 4, '::1'),
(564, 'Changes on Article \'about us\' has been saved successfully.', '2023-11-09 17:06:28', 1, 4, '::1'),
(565, 'Changes on Article \'about us\' has been saved successfully.', '2023-11-09 17:10:38', 1, 4, '::1'),
(566, 'Changes on Article \'about us\' has been saved successfully.', '2023-11-09 17:12:25', 1, 4, '::1'),
(567, 'Changes on Article \'about us\' has been saved successfully.', '2023-11-09 17:19:03', 1, 4, '::1'),
(568, 'Changes on Article \'about us\' has been saved successfully.', '2023-11-09 17:20:06', 1, 4, '::1'),
(569, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 17:41:56', 1, 4, '::1'),
(570, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 17:42:04', 1, 4, '::1'),
(571, 'Login: ClubHimalaya   logged in.', '2023-11-09 17:55:33', 1, 1, '::1');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(572, 'Login: Super admin   logged in.', '2023-11-09 17:56:29', 1, 1, '::1'),
(573, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 17:58:44', 1, 4, '::1'),
(574, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 18:05:05', 1, 4, '::1'),
(575, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 18:05:15', 1, 4, '::1'),
(576, 'Login: ClubHimalaya   logged in.', '2023-11-10 10:41:03', 1, 1, '::1'),
(577, 'Login: Super admin   logged in.', '2023-11-10 10:42:06', 1, 1, '::1'),
(578, 'Login: ClubHimalaya   logged in.', '2023-11-10 11:59:19', 1, 1, '::1'),
(579, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-10 12:10:51', 1, 4, '::1'),
(580, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-10 12:11:03', 1, 4, '::1'),
(581, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-10 12:18:24', 1, 4, '::1'),
(582, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-10 12:32:34', 1, 4, '::1'),
(583, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-10 13:39:16', 1, 4, '::1'),
(584, 'Login: ClubHimalaya   logged in.', '2023-11-11 12:24:05', 1, 1, '::1'),
(585, 'Login: Super admin   logged in.', '2023-11-11 12:24:59', 1, 1, '::1'),
(586, 'User [ClubHimalaya  ] Edit Successfully', '2023-11-11 12:25:10', 1, 4, '::1'),
(587, 'User [Super admin  ] Edit Successfully', '2023-11-11 12:25:51', 1, 4, '::1'),
(588, 'ota [asdasdasd]Data has added successfully.', '2023-11-11 12:27:21', 1, 3, '::1'),
(589, 'ota [booking.com]Data has added successfully.', '2023-11-11 12:29:41', 1, 3, '::1'),
(590, 'ota [asd]Data has added successfully.', '2023-11-11 12:31:50', 1, 3, '::1'),
(591, 'ota  [asdasdasd]Data has deleted successfully.', '2023-11-11 12:31:59', 1, 6, '::1'),
(592, 'ota  [asdasdasd]Data has deleted successfully.', '2023-11-11 12:31:59', 1, 6, '::1'),
(593, 'ota  []Data has deleted successfully.', '2023-11-11 12:32:02', 1, 6, '::1'),
(594, 'ota  []Data has deleted successfully.', '2023-11-11 12:32:02', 1, 6, '::1'),
(595, 'ota  [booking.com]Data has deleted successfully.', '2023-11-11 12:32:02', 1, 6, '::1'),
(596, 'ota  [booking.com]Data has deleted successfully.', '2023-11-11 12:32:02', 1, 6, '::1'),
(597, 'ota [booking.com] Edit Successfully', '2023-11-11 12:32:27', 1, 4, '::1'),
(598, 'ota [agoda]Data has added successfully.', '2023-11-11 12:32:45', 1, 3, '::1'),
(599, 'ota [booking] Edit Successfully', '2023-11-11 12:32:54', 1, 4, '::1'),
(600, 'ota [expedia]Data has added successfully.', '2023-11-11 12:33:12', 1, 3, '::1'),
(601, 'ota [tripadvisor]Data has added successfully.', '2023-11-11 12:33:35', 1, 3, '::1'),
(602, 'ota [Make My Trip]Data has added successfully.', '2023-11-11 12:33:56', 1, 3, '::1'),
(603, 'Login: ClubHimalaya   logged in.', '2023-11-21 11:26:47', 1, 1, '::1'),
(604, 'Login: ClubHimalaya   logged in.', '2023-11-21 11:42:05', 1, 1, '::1'),
(605, 'Slideshow [asdasdasdasd]Data has added successfully.', '2023-11-21 11:55:43', 1, 3, '::1'),
(606, 'Login: ClubHimalaya   logged in.', '2023-11-22 12:39:54', 1, 1, '::1'),
(607, 'Login: ClubHimalaya   logged in.', '2023-11-29 19:11:14', 1, 1, '::1'),
(608, 'Login: ClubHimalaya   logged in.', '2023-12-12 10:50:45', 1, 1, '::1'),
(609, 'Login: ClubHimalaya   logged in.', '2024-01-08 14:49:51', 1, 1, '::1'),
(610, 'Login: ClubHimalaya   logged in.', '2024-01-10 12:47:25', 1, 1, '::1'),
(611, 'Login: ClubHimalaya   logged in.', '2024-01-10 12:47:40', 1, 1, '::1'),
(612, 'Login: ClubHimalaya   logged in.', '2024-01-10 12:49:19', 1, 1, '::1'),
(613, 'Login: ClubHimalaya   logged in.', '2024-01-10 12:51:17', 1, 1, '::1'),
(614, 'Login: ClubHimalaya   logged in.', '2024-01-10 12:52:51', 1, 1, '::1'),
(615, 'User [asdasd asdasd asdasd] login Created Data has added successfully.', '2024-01-10 12:55:05', 1, 3, '::1'),
(616, 'Login: Super admin   logged in.', '2024-01-10 12:55:36', 1, 1, '::1'),
(617, 'Menu [test] CreatedData has added successfully.', '2024-01-10 12:57:00', 1, 3, '::1'),
(618, 'Menu  [test]Data has deleted successfully.', '2024-01-10 12:57:47', 1, 6, '::1'),
(619, 'Article \'asdfasdf\' has added successfully.', '2024-01-10 13:11:12', 1, 3, '::1'),
(620, 'Changes on Article \'asdfasdf\' has been saved successfully.', '2024-01-10 13:11:39', 1, 4, '::1'),
(621, 'Features [inabsdioniasd]Data has added successfully.', '2024-01-10 13:13:19', 1, 3, '::1'),
(622, 'Features  [inabsdioniasd]Data has deleted successfully.', '2024-01-10 13:13:28', 1, 6, '::1'),
(623, 'Features [adfwererrd]Data has added successfully.', '2024-01-10 13:13:48', 1, 3, '::1'),
(624, 'Features  [adfwererrd]Data has deleted successfully.', '2024-01-10 13:14:09', 1, 6, '::1'),
(625, 'Package [testing 8.2]Data has added successfully.', '2024-01-10 13:14:35', 1, 3, '::1'),
(626, 'Sub Package \'asdasdasddasasd\' has added successfully.', '2024-01-10 13:15:21', 1, 3, '::1'),
(627, 'Slideshows  [asdasdasdasd]Data has deleted successfully.', '2024-01-10 13:15:39', 1, 6, '::1'),
(628, 'Slideshow  [asdasdasdasd]Data has deleted successfully.', '2024-01-10 13:15:39', 1, 6, '::1'),
(629, 'Slideshows  []Data has deleted successfully.', '2024-01-10 13:15:49', 1, 6, '::1'),
(630, 'Slideshow  []Data has deleted successfully.', '2024-01-10 13:15:49', 1, 6, '::1'),
(631, 'Vacency  [HR post wanted]Data has deleted successfully.', '2024-01-10 13:16:09', 1, 6, '::1'),
(632, 'Main service \'yuvvyuvyui\' has added successfully.', '2024-01-10 13:22:30', 1, 3, '::1'),
(633, 'Changes on Main service \'yuvvyuvyui\' has been saved successfully.', '2024-01-10 13:22:41', 1, 4, '::1'),
(634, 'Changes on Main service \'yuvvyuvyui\' has been saved successfully.', '2024-01-10 13:22:54', 1, 4, '::1'),
(635, 'Sub Gallery Image  [e]Data has deleted successfully.', '2024-01-10 13:25:45', 1, 6, '::1'),
(636, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 13:25:48', 1, 6, '::1'),
(637, 'Sub Gallery Image  [e]Data has deleted successfully.', '2024-01-10 13:25:48', 1, 6, '::1'),
(638, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 13:25:52', 1, 6, '::1'),
(639, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 13:25:52', 1, 6, '::1'),
(640, 'Sub Gallery Image  [e]Data has deleted successfully.', '2024-01-10 13:25:52', 1, 6, '::1'),
(641, 'Sub Gallery Image [ytvasd]Data has added successfully.', '2024-01-10 13:26:05', 1, 3, '::1'),
(642, 'Sub Gallery Image [yvasydiv]Data has added successfully.', '2024-01-10 13:26:05', 1, 3, '::1'),
(643, 'Sub Gallery Image [asdyvhjkv]Data has added successfully.', '2024-01-10 13:26:05', 1, 3, '::1'),
(644, 'User [Super admin  ] Edit Successfully', '2024-01-10 13:26:49', 1, 4, '::1'),
(645, 'Offers [ASAs]Data has added successfully.', '2024-01-10 13:29:39', 1, 3, '::1'),
(646, 'Offers [ASAs] Edit Successfully', '2024-01-10 13:30:02', 1, 4, '::1'),
(647, 'Offers [ASAs] Edit Successfully', '2024-01-10 13:30:23', 1, 4, '::1'),
(648, 'Login: Super admin   logged in.', '2024-01-10 14:50:52', 1, 1, '::1'),
(649, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-01-10 14:52:01', 1, 6, '::1'),
(650, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:04', 1, 6, '::1'),
(651, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-01-10 14:52:04', 1, 6, '::1'),
(652, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:30', 1, 6, '::1'),
(653, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:30', 1, 6, '::1'),
(654, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-01-10 14:52:30', 1, 6, '::1'),
(655, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:35', 1, 6, '::1'),
(656, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:35', 1, 6, '::1'),
(657, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:35', 1, 6, '::1'),
(658, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-01-10 14:52:35', 1, 6, '::1'),
(659, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:38', 1, 6, '::1'),
(660, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:38', 1, 6, '::1'),
(661, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:38', 1, 6, '::1'),
(662, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:38', 1, 6, '::1'),
(663, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-01-10 14:52:39', 1, 6, '::1'),
(664, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:44', 1, 6, '::1'),
(665, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:44', 1, 6, '::1'),
(666, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:44', 1, 6, '::1'),
(667, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:44', 1, 6, '::1'),
(668, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:44', 1, 6, '::1'),
(669, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-01-10 14:52:44', 1, 6, '::1'),
(670, 'Sub Gallery Image [a]Data has added successfully.', '2024-01-10 14:53:12', 1, 3, '::1'),
(671, 'Sub Gallery Image [a]Data has added successfully.', '2024-01-10 14:53:12', 1, 3, '::1'),
(672, 'Sub Gallery Image [a]Data has added successfully.', '2024-01-10 14:53:12', 1, 3, '::1'),
(673, 'Popup \'asefasdasd\' has added successfully.', '2024-01-10 14:55:03', 1, 3, '::1'),
(674, 'Services [rtsetsdf]Data has added successfully.', '2024-01-10 14:57:52', 1, 3, '::1'),
(675, 'Servicess  [rtsetsdf]Data has deleted successfully.', '2024-01-10 14:58:09', 1, 6, '::1'),
(676, 'Services  [rtsetsdf]Data has deleted successfully.', '2024-01-10 14:58:09', 1, 6, '::1'),
(677, 'Login: Super admin   logged in.', '2024-01-11 17:07:29', 1, 1, '::1'),
(678, 'Login: ClubHimalaya   logged in.', '2024-01-12 10:59:26', 1, 1, '::1'),
(679, 'Login: ClubHimalaya   logged in.', '2024-01-16 10:32:37', 1, 1, '::1'),
(680, 'SocialNetworking [Facebook] Edit Successfully', '2024-01-16 10:35:23', 1, 4, '::1'),
(681, 'Login: ClubHimalaya   logged in.', '2024-01-17 11:13:45', 1, 1, '::1'),
(682, 'Menu  [HOME]Data has deleted successfully.', '2024-01-17 11:13:52', 1, 6, '::1'),
(683, 'Menu  [ABOUT US]Data has deleted successfully.', '2024-01-17 11:13:55', 1, 6, '::1'),
(684, 'Menu  [ROOMS & SUITES]Data has deleted successfully.', '2024-01-17 11:13:57', 1, 6, '::1'),
(685, 'Menu  [MICE]Data has deleted successfully.', '2024-01-17 11:13:59', 1, 6, '::1'),
(686, 'Menu  [RESTAURANTS & BAR]Data has deleted successfully.', '2024-01-17 11:14:01', 1, 6, '::1'),
(687, 'Menu  [FACILITIES]Data has deleted successfully.', '2024-01-17 11:14:03', 1, 6, '::1'),
(688, 'Menu  [GALLERY]Data has deleted successfully.', '2024-01-17 11:14:05', 1, 6, '::1'),
(689, 'Menu  [CAREER]Data has deleted successfully.', '2024-01-17 11:14:07', 1, 6, '::1'),
(690, 'Menu  [CONTACT US]Data has deleted successfully.', '2024-01-17 11:14:09', 1, 6, '::1'),
(691, 'Menu  [Our Partners]Data has deleted successfully.', '2024-01-17 11:14:11', 1, 6, '::1'),
(692, 'Login: ClubHimalaya   logged in.', '2024-01-18 13:37:35', 1, 1, '::1'),
(693, 'Login: ClubHimalaya   logged in.', '2024-01-23 15:41:13', 1, 1, '::1'),
(694, 'Login: Super admin   logged in.', '2024-01-23 15:50:09', 1, 1, '::1'),
(695, 'Login: ClubHimalaya   logged in.', '2024-01-23 15:50:16', 1, 1, '::1'),
(696, 'User [ClubHimalaya  ] Edit Successfully', '2024-01-23 15:53:56', 1, 4, '::1'),
(697, 'User [ClubHimalaya  ] Edit Successfully', '2024-01-23 15:57:02', 1, 4, '::1'),
(698, 'Login: ClubHimalaya   logged in.', '2024-01-23 15:57:08', 1, 1, '::1'),
(699, 'Login: Super admin   logged in.', '2024-01-23 16:00:52', 1, 1, '::1'),
(700, 'User [Super admin  ] Edit Successfully', '2024-01-23 16:47:00', 1, 4, '::1'),
(701, 'User Group [Administrator] Edit Successfully', '2024-01-23 16:48:35', 1, 4, '::1'),
(702, 'User Group [Administrator] Edit Successfully', '2024-01-23 16:48:59', 1, 4, '::1'),
(703, 'User [Super admin  ] Edit Successfully', '2024-01-23 16:49:15', 1, 4, '::1'),
(704, 'Login: Super admin   logged in.', '2024-01-23 16:49:20', 1, 1, '::1'),
(705, 'User [Super admin  ] Edit Successfully', '2024-01-23 16:49:39', 1, 4, '::1'),
(706, 'Login: Super admin   logged in.', '2024-01-23 16:49:44', 1, 1, '::1'),
(707, 'User Group [Administrator] Edit Successfully', '2024-01-23 16:56:17', 1, 4, '::1'),
(708, 'User [Super admin  ] Edit Successfully', '2024-01-23 16:56:27', 1, 4, '::1'),
(709, 'Login: Super admin   logged in.', '2024-01-23 16:56:31', 1, 1, '::1'),
(710, 'Login: Super admin   logged in.', '2024-01-24 10:56:17', 1, 1, '::1'),
(711, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2024-01-24 11:15:08', 1, 4, '::1'),
(712, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2024-01-24 11:18:03', 1, 4, '::1'),
(713, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2024-01-24 11:18:13', 1, 4, '::1'),
(714, 'User [Super admin  ] Edit Successfully', '2024-01-24 11:28:50', 1, 4, '::1'),
(715, 'Login: Super admin   logged in.', '2024-01-24 12:12:57', 1, 1, '::1'),
(716, 'Login: Super admin   logged in.', '2024-01-24 12:13:06', 1, 1, '::1'),
(717, 'Login: Super admin   logged in.', '2024-01-24 12:14:50', 1, 1, '::1'),
(718, 'Login: Super admin   logged in.', '2024-01-24 12:17:27', 1, 1, '::1'),
(719, 'Login: Super admin   logged in.', '2024-01-24 12:18:09', 1, 1, '::1'),
(720, 'Login: Super admin   logged in.', '2024-01-24 12:18:42', 1, 1, '::1'),
(721, 'User Group [Administrator] Edit Successfully', '2024-01-24 12:21:38', 1, 4, '::1'),
(722, 'User Group [Administrator] Edit Successfully', '2024-01-24 12:39:43', 1, 4, '::1'),
(723, 'Slideshow [testing video]Data has added successfully.', '2024-01-24 12:50:22', 1, 3, '::1'),
(724, 'Changes on Config \'Synhawk3.0\' has been saved successfully.', '2024-01-24 15:21:29', 1, 4, '::1'),
(725, 'Changes on Config \'Synhawk3.0\' has been saved successfully.', '2024-01-24 15:22:25', 1, 4, '::1'),
(726, 'Changes on Config \'Synhawk3.0\' has been saved successfully.', '2024-01-24 15:22:58', 1, 4, '::1'),
(727, 'Successfully Preference Properties Settings', '2024-01-24 15:54:10', 1, 4, '::1'),
(728, 'Login: ClubHimalaya   logged in.', '2024-01-25 15:54:57', 1, 1, '::1'),
(729, 'Login: ClubHimalaya   logged in.', '2024-01-25 15:55:21', 1, 1, '::1'),
(730, 'Login: ClubHimalaya   logged in.', '2024-01-25 15:56:37', 1, 1, '::1'),
(731, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-25 15:56:52', 1, 4, '::1'),
(732, 'Login: ClubHimalaya   logged in.', '2024-01-25 16:18:24', 1, 1, '::1'),
(733, 'Login: Super admin   logged in.', '2024-01-25 16:21:15', 1, 1, '::1'),
(734, 'User Group [Administrator] Edit Successfully', '2024-01-25 16:21:39', 1, 4, '::1'),
(735, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-25 16:23:44', 1, 4, '::1'),
(736, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-25 16:23:58', 1, 4, '::1'),
(737, 'Successfully Preference Properties Settings', '2024-01-25 16:26:19', 1, 4, '::1'),
(738, 'User Group [Administrator] Edit Successfully', '2024-01-25 16:27:28', 1, 4, '::1'),
(739, 'Features [facilities]Data has added successfully.', '2024-01-25 16:51:25', 1, 3, '::1'),
(740, 'Gallery Image [] Edit Successfully', '2024-01-25 16:52:36', 1, 4, '::1'),
(741, 'Gallery Image [asdasd] Edit Successfully', '2024-01-25 16:52:39', 1, 4, '::1'),
(742, 'Login: ClubHimalaya   logged in.', '2024-01-26 15:22:51', 1, 1, '::1'),
(743, 'Testimonial [Andrew Parker] Edit Successfully', '2024-01-26 15:27:16', 1, 4, '::1'),
(744, 'Testimonial [Andrew Parker] Edit Successfully', '2024-01-26 15:27:20', 1, 4, '::1'),
(745, 'Testimonial [Andrew Parker] Edit Successfully', '2024-01-26 15:36:21', 1, 4, '::1'),
(746, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-26 16:26:36', 1, 4, '::1'),
(747, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-26 16:26:45', 1, 4, '::1'),
(748, 'Login: ClubHimalaya   logged in.', '2024-01-28 10:29:13', 1, 1, '::1'),
(749, 'User Group [Administrator] Edit Successfully', '2024-01-28 10:45:29', 1, 4, '::1'),
(750, 'Login: ClubHimalaya   logged in.', '2024-01-28 11:03:59', 1, 1, '::1'),
(751, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-28 11:20:35', 1, 4, '::1'),
(752, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-28 11:20:43', 1, 4, '::1'),
(753, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-28 11:23:35', 1, 4, '::1'),
(754, 'User Group [General Admin] Edit Successfully', '2024-01-28 11:32:02', 1, 4, '::1'),
(755, 'Login: Super admin   logged in.', '2024-01-28 11:49:53', 1, 1, '::1'),
(756, 'User Group [Hotel Users] Edit Successfully', '2024-01-28 11:50:16', 1, 4, '::1'),
(757, 'User Group [General Users] Edit Successfully', '2024-01-28 11:50:38', 1, 4, '::1'),
(758, 'User [ClubHimalaya  ] Edit Successfully', '2024-01-28 11:50:52', 1, 4, '::1'),
(759, 'User [asdasd asdasd asdasd] Edit Successfully', '2024-01-28 11:51:10', 1, 4, '::1'),
(760, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:08:34', 1, 3, '::1'),
(761, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:12:59', 1, 3, '::1'),
(762, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:15:31', 1, 3, '::1'),
(763, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:17:00', 1, 3, '::1'),
(764, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:20:20', 1, 3, '::1'),
(765, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:21:19', 1, 3, '::1'),
(766, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:22:38', 1, 3, '::1'),
(767, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:22:52', 1, 3, '::1'),
(768, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:23:15', 1, 3, '::1'),
(769, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:23:24', 1, 3, '::1'),
(770, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:24:52', 1, 3, '::1'),
(771, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:26:06', 1, 3, '::1'),
(772, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:30:36', 1, 3, '::1'),
(773, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:35:36', 1, 3, '::1'),
(774, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 12:36:35', 1, 3, '::1'),
(775, 'Slideshow [asdasdasdasdasd]Data has added successfully.', '2024-01-28 12:42:51', 1, 3, '::1'),
(776, 'Slideshow [asdasdasdasdasd]Data has added successfully.', '2024-01-28 12:43:05', 1, 3, '::1'),
(777, 'Slideshow [asdasdasdasdasd]Data has added successfully.', '2024-01-28 12:43:36', 1, 3, '::1'),
(778, 'Slideshows  [asdasdasdasdasd]Data has deleted successfully.', '2024-01-28 12:55:32', 1, 6, '::1'),
(779, 'Slideshow  [asdasdasdasdasd]Data has deleted successfully.', '2024-01-28 12:55:32', 1, 6, '::1'),
(780, 'Slideshows  [asdasdasdasdasd]Data has deleted successfully.', '2024-01-28 12:55:35', 1, 6, '::1'),
(781, 'Slideshow  [asdasdasdasdasd]Data has deleted successfully.', '2024-01-28 12:55:35', 1, 6, '::1'),
(782, 'Slideshows  [asdasdasdasdasd]Data has deleted successfully.', '2024-01-28 12:55:37', 1, 6, '::1'),
(783, 'Slideshow  [asdasdasdasdasd]Data has deleted successfully.', '2024-01-28 12:55:37', 1, 6, '::1'),
(784, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:03:33', 1, 3, '::1'),
(785, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:05:53', 1, 3, '::1'),
(786, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:06:56', 1, 3, '::1'),
(787, 'Slideshow [asdasdas]Data has added successfully.', '2024-01-28 13:09:30', 1, 3, '::1'),
(788, 'Slideshow [asdasdas]Data has added successfully.', '2024-01-28 13:09:43', 1, 3, '::1'),
(789, 'Slideshow [asdasdas]Data has added successfully.', '2024-01-28 13:13:33', 1, 3, '::1'),
(790, 'Slideshows  [asdasdas]Data has deleted successfully.', '2024-01-28 13:14:48', 1, 6, '::1'),
(791, 'Slideshow  [asdasdas]Data has deleted successfully.', '2024-01-28 13:14:48', 1, 6, '::1'),
(792, 'Slideshows  [asdasdas]Data has deleted successfully.', '2024-01-28 13:14:51', 1, 6, '::1'),
(793, 'Slideshow  [asdasdas]Data has deleted successfully.', '2024-01-28 13:14:51', 1, 6, '::1'),
(794, 'Slideshows  [asdasdas]Data has deleted successfully.', '2024-01-28 13:14:54', 1, 6, '::1'),
(795, 'Slideshow  [asdasdas]Data has deleted successfully.', '2024-01-28 13:14:54', 1, 6, '::1'),
(796, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:16:38', 1, 3, '::1'),
(797, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:16:46', 1, 3, '::1'),
(798, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:20:47', 1, 3, '::1'),
(799, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:21:28', 1, 3, '::1'),
(800, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-01-28 13:21:46', 1, 6, '::1'),
(801, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 13:21:46', 1, 6, '::1'),
(802, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 13:21:46', 1, 6, '::1'),
(803, 'Slideshow  [testing]Data has deleted successfully.', '2024-01-28 13:21:46', 1, 6, '::1'),
(804, 'Slideshow [asdasdasdasdasd]Data has added successfully.', '2024-01-28 13:22:05', 1, 3, '::1'),
(805, 'Slideshow [asdasdasdasdasdsASDasd] Edit Successfully', '2024-01-28 13:24:30', 1, 4, '::1'),
(806, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:25:05', 1, 3, '::1'),
(807, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:31:57', 1, 3, '::1'),
(808, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:40:15', 1, 3, '::1'),
(809, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:41:03', 1, 3, '::1'),
(810, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:41:40', 1, 3, '::1'),
(811, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:42:15', 1, 3, '::1'),
(812, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:42:44', 1, 3, '::1'),
(813, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:47:49', 1, 3, '::1'),
(814, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:48:10', 1, 3, '::1'),
(815, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:51:14', 1, 3, '::1'),
(816, 'Successfully Tour Package Properties Settings', '2024-01-28 14:10:12', 1, 4, '::1'),
(817, 'Successfully Tour Package Properties Settings', '2024-01-28 14:10:30', 1, 4, '::1'),
(818, 'Login: Super admin   logged in.', '2024-01-28 14:51:04', 1, 1, '::1'),
(819, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(820, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(821, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(822, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(823, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(824, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(825, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(826, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(827, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(828, 'Slideshow [qweqweqwe]Data has added successfully.', '2024-01-28 14:54:26', 1, 3, '::1'),
(829, 'Slideshow [qweqweqwe]Data has added successfully.', '2024-01-28 14:54:46', 1, 3, '::1'),
(830, 'Slideshow [sadfasdsdafasd]Data has added successfully.', '2024-01-28 15:02:25', 1, 3, '::1'),
(831, 'Slideshow [sadfasdsdafasd]Data has added successfully.', '2024-01-28 15:02:49', 1, 3, '::1'),
(832, 'Slideshow [asd]Data has added successfully.', '2024-01-28 15:09:35', 1, 3, '::1'),
(833, 'Slideshow  [sadfasdsdafasd]Data has deleted successfully.', '2024-01-28 15:14:18', 1, 6, '::1'),
(834, 'Slideshow  [sadfasdsdafasd]Data has deleted successfully.', '2024-01-28 15:14:18', 1, 6, '::1'),
(835, 'Slideshow  [qweqweqwe]Data has deleted successfully.', '2024-01-28 15:14:18', 1, 6, '::1'),
(836, 'Slideshow  [qweqweqwe]Data has deleted successfully.', '2024-01-28 15:14:18', 1, 6, '::1'),
(837, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-01-28 15:14:18', 1, 6, '::1'),
(838, 'Slideshow  [dsaasd]Data has deleted successfully.', '2024-01-28 15:14:18', 1, 6, '::1'),
(839, 'Slideshow [saddsaasd]Data has added successfully.', '2024-01-28 15:14:30', 1, 3, '::1'),
(840, 'Slideshow [saddsaasd]Data has added successfully.', '2024-01-28 15:15:37', 1, 3, '::1'),
(841, 'Slideshow [saddsaasd]Data has added successfully.', '2024-01-28 15:17:55', 1, 3, '::1'),
(842, 'Slideshow [saddsaasd]Data has added successfully.', '2024-01-28 15:20:35', 1, 3, '::1'),
(843, 'Slideshow  [saddsaasd]Data has deleted successfully.', '2024-01-28 15:20:59', 1, 6, '::1'),
(844, 'Slideshow  [saddsaasd]Data has deleted successfully.', '2024-01-28 15:20:59', 1, 6, '::1'),
(845, 'Slideshow  [saddsaasd]Data has deleted successfully.', '2024-01-28 15:20:59', 1, 6, '::1'),
(846, 'Slideshow  [saddsaasd]Data has deleted successfully.', '2024-01-28 15:20:59', 1, 6, '::1'),
(847, 'Slideshow [dsadsadad]Data has added successfully.', '2024-01-28 15:21:34', 1, 3, '::1'),
(848, 'Slideshow [asdasdasdsad]Data has added successfully.', '2024-01-28 15:22:18', 1, 3, '::1'),
(849, 'Slideshow [asdasdasdsad]Data has added successfully.', '2024-01-28 15:23:07', 1, 3, '::1'),
(850, 'Slideshow [asdasdasdsada]Data has added successfully.', '2024-01-28 15:24:42', 1, 3, '::1'),
(851, 'Slideshow [asdasdasdsad] Edit Successfully', '2024-01-28 15:30:58', 1, 4, '::1'),
(852, 'Slideshow  [asdasdasdsada]Data has deleted successfully.', '2024-01-28 15:31:50', 1, 6, '::1'),
(853, 'Slideshow  [asdasdasdsad]Data has deleted successfully.', '2024-01-28 15:31:50', 1, 6, '::1'),
(854, 'Slideshow  [asdasdasdsad]Data has deleted successfully.', '2024-01-28 15:31:50', 1, 6, '::1'),
(855, 'Slideshow  [dsadsadad]Data has deleted successfully.', '2024-01-28 15:31:50', 1, 6, '::1'),
(856, 'Slideshow [asd]Data has added successfully.', '2024-01-28 15:32:02', 1, 3, '::1'),
(857, 'Slideshow [asdd] Edit Successfully', '2024-01-28 15:32:15', 1, 4, '::1'),
(858, 'Slideshow [asdd] Edit Successfully', '2024-01-28 15:35:12', 1, 4, '::1'),
(859, 'Slideshow [asddd] Edit Successfully', '2024-01-28 15:35:25', 1, 4, '::1'),
(860, 'Slideshow [asddd] Edit Successfully', '2024-01-28 15:35:32', 1, 4, '::1'),
(861, 'Slideshow [asddd] Edit Successfully', '2024-01-28 15:35:35', 1, 4, '::1'),
(862, 'Login: ClubHimalaya   logged in.', '2024-01-28 15:38:58', 1, 1, '::1'),
(863, 'User [ClubHimalayaa  ] Edit Successfully', '2024-01-28 15:39:06', 1, 4, '::1'),
(864, 'User [ClubHimalayaa  ] Edit Successfully', '2024-01-28 15:39:23', 1, 4, '::1'),
(865, 'Login: Super admin   logged in.', '2024-01-28 15:40:29', 1, 1, '::1'),
(866, 'Login: ClubHimalayaa   logged in.', '2024-01-28 15:44:54', 1, 1, '::1'),
(867, 'Login: ClubHimalayaa   logged in.', '2024-01-28 15:45:31', 1, 1, '::1'),
(868, 'Login: Super admin   logged in.', '2024-01-28 15:45:38', 1, 1, '::1'),
(869, 'User [ClubHimalayaa  ] Edit Successfully', '2024-01-28 15:45:49', 1, 4, '::1'),
(870, 'Login: ClubHimalayaa   logged in.', '2024-01-28 15:46:07', 1, 1, '::1'),
(871, 'User [ClubHimalayaa  ] Edit Successfully', '2024-01-28 15:46:55', 1, 4, '::1'),
(872, 'Login: Super admin   logged in.', '2024-01-28 15:48:13', 1, 1, '::1'),
(873, 'Login: ClubHimalayaa   logged in.', '2024-01-28 15:48:32', 1, 1, '::1'),
(874, 'Login: Super admin   logged in.', '2024-01-28 15:48:35', 1, 1, '::1'),
(875, 'User [ClubHimalayaa  ] Edit Successfully', '2024-01-28 15:50:22', 1, 4, '::1'),
(876, 'Login: ClubHimalayaa   logged in.', '2024-01-28 15:50:28', 1, 1, '::1'),
(877, 'User [ClubHimalaya  ] Edit Successfully', '2024-01-28 15:50:42', 1, 4, '::1'),
(878, 'Login: ClubHimalaya   logged in.', '2024-01-28 15:50:49', 1, 1, '::1'),
(879, 'Login: Super admin   logged in.', '2024-01-28 15:51:57', 1, 1, '::1'),
(880, 'User [Super admina  ] Edit Successfully', '2024-01-28 15:52:08', 1, 4, '::1'),
(881, 'User [Super admina  ] Edit Successfully', '2024-01-28 15:55:50', 1, 4, '::1'),
(882, 'Login: Super admina   logged in.', '2024-01-28 15:55:58', 1, 1, '::1'),
(883, 'User [Super admin  ] Edit Successfully', '2024-01-28 15:56:05', 1, 4, '::1'),
(884, 'Login: Super admin   logged in.', '2024-01-28 15:56:10', 1, 1, '::1'),
(885, 'User [Super admin  ] Edit Successfully', '2024-01-28 15:58:44', 1, 4, '::1'),
(886, 'Login: Super admin   logged in.', '2024-01-28 15:58:54', 1, 1, '::1'),
(887, 'User [Super admina  ] Edit Successfully', '2024-01-28 15:59:10', 1, 4, '::1'),
(888, 'Login: Super admina   logged in.', '2024-01-28 15:59:16', 1, 1, '::1'),
(889, 'User [Super admin  ] Edit Successfully', '2024-01-28 15:59:25', 1, 4, '::1'),
(890, 'Login: ClubHimalaya   logged in.', '2024-01-28 16:00:08', 1, 1, '::1'),
(891, 'Login: Super admin   logged in.', '2024-01-28 16:01:36', 1, 1, '::1'),
(892, 'Successfully Preference Properties Settings', '2024-01-28 16:26:42', 1, 4, '::1'),
(893, 'Successfully Preference Properties Settings', '2024-01-28 16:29:24', 1, 4, '::1'),
(894, 'Successfully Preference Properties Settings', '2024-01-28 16:32:13', 1, 4, '::1'),
(895, 'Successfully Preference Properties Settings', '2024-01-28 16:32:22', 1, 4, '::1'),
(896, 'Login: Super admin   logged in.', '2024-01-28 16:52:41', 1, 1, '::1'),
(897, 'Login: ClubHimalaya   logged in.', '2024-01-28 16:53:39', 1, 1, '::1'),
(898, 'Login: Super admin   logged in.', '2024-01-28 16:54:10', 1, 1, '::1'),
(899, 'User Group [Administrator] Edit Successfully', '2024-01-28 17:02:39', 1, 4, '::1'),
(900, 'User Group [Administrator] Edit Successfully', '2024-01-28 17:02:46', 1, 4, '::1'),
(901, 'User Group [Hotel Users] Edit Successfully', '2024-01-28 17:03:12', 1, 4, '::1'),
(902, 'User Group [General Users] Edit Successfully', '2024-01-28 17:03:22', 1, 4, '::1'),
(903, 'Successfully Preference Properties Settings', '2024-01-28 17:05:34', 1, 4, '::1'),
(904, 'Slideshow [qweqwe]Data has added successfully.', '2024-01-28 17:06:12', 1, 3, '::1'),
(905, 'Slideshow [qweqweqw]Data has added successfully.', '2024-01-28 17:06:28', 1, 3, '::1'),
(906, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-28 17:16:18', 1, 4, '::1'),
(907, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-28 17:17:16', 1, 4, '::1'),
(908, 'Login: Super admin   logged in.', '2024-01-28 23:06:25', 1, 1, '::1'),
(909, 'Login: Super admin   logged in.', '2024-01-29 10:32:12', 1, 1, '::1'),
(910, 'Login: ClubHimalaya   logged in.', '2024-01-29 10:43:48', 1, 1, '::1'),
(911, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2024-01-29 10:44:19', 1, 4, '::1'),
(912, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-01-29 10:44:34', 1, 4, '::1'),
(913, 'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.', '2024-01-29 10:44:46', 1, 4, '::1'),
(914, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2024-01-29 10:45:03', 1, 4, '::1'),
(915, 'Login: Super admin   logged in.', '2024-01-29 10:54:13', 1, 1, '::1'),
(916, 'Successfully News Properties Settings', '2024-01-29 10:57:01', 1, 4, '::1'),
(917, 'Successfully News Properties Settings', '2024-01-29 10:59:28', 1, 4, '::1'),
(918, 'Successfully News Properties Settings', '2024-01-29 11:02:32', 1, 4, '::1'),
(919, 'Successfully News Properties Settings', '2024-01-29 11:03:39', 1, 4, '::1'),
(920, 'Successfully Offers Properties Settings', '2024-01-29 11:07:43', 1, 4, '::1'),
(921, 'Successfully  Package Properties Settings', '2024-01-29 11:22:42', 1, 4, '::1'),
(922, 'Successfully Social Link Properties Settings', '2024-01-29 11:25:20', 1, 4, '::1'),
(923, 'Successfully Articles Properties Settings', '2024-01-29 11:28:22', 1, 4, '::1'),
(924, 'Successfully Slideshow Properties Settings', '2024-01-29 11:29:23', 1, 4, '::1'),
(925, 'Successfully  Package Properties Settings', '2024-01-29 11:30:28', 1, 4, '::1'),
(926, 'Successfully Gallery Properties Settings', '2024-01-29 11:33:20', 1, 4, '::1'),
(927, 'Gallery [adasdas]Data has added successfully.', '2024-01-29 11:33:38', 1, 3, '::1'),
(928, 'Successfully Testimonial Properties Settings', '2024-01-29 11:37:44', 1, 4, '::1'),
(929, 'Successfully Social Link Properties Settings', '2024-01-29 11:47:58', 1, 4, '::1'),
(930, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-29 11:50:01', 1, 4, '::1'),
(931, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-29 11:51:11', 1, 4, '::1'),
(932, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-29 12:15:31', 1, 4, '::1'),
(933, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-29 12:15:47', 1, 4, '::1'),
(934, 'Login: ClubHimalaya   logged in.', '2024-05-10 16:32:10', 1, 1, '::1'),
(935, 'Login: Super admin   logged in.', '2024-05-10 16:40:01', 1, 1, '::1'),
(936, 'User Group [Administrator] Edit Successfully', '2024-05-10 16:40:11', 1, 4, '::1'),
(937, 'Download [asdasd]Data has added successfully.', '2024-05-10 16:44:57', 1, 3, '::1'),
(938, 'Login: superadmin logged in.', '2025-02-12 10:23:54', 1, 1, '::1'),
(939, 'Offerss  [ASAs]Data has deleted successfully.', '2025-02-12 10:32:02', 1, 6, '::1'),
(940, 'Offers  [ASAs]Data has deleted successfully.', '2025-02-12 10:32:02', 1, 6, '::1'),
(941, 'Offers [test]Data has added successfully.', '2025-02-12 10:40:01', 1, 3, '::1'),
(942, 'Offers [asdaswd]Data has added successfully.', '2025-02-12 10:40:47', 1, 3, '::1'),
(943, 'Offerss  [test]Data has deleted successfully.', '2025-02-12 10:40:55', 1, 6, '::1'),
(944, 'Offers  [test]Data has deleted successfully.', '2025-02-12 10:40:55', 1, 6, '::1'),
(945, 'Offerss  [asdaswd]Data has deleted successfully.', '2025-02-12 10:41:03', 1, 6, '::1'),
(946, 'Offers  [asdaswd]Data has deleted successfully.', '2025-02-12 10:41:03', 1, 6, '::1'),
(947, 'Offerss  []Data has deleted successfully.', '2025-02-12 10:41:03', 1, 6, '::1'),
(948, 'Offers  []Data has deleted successfully.', '2025-02-12 10:41:03', 1, 6, '::1'),
(949, 'Services [qedasdasd]Data has added successfully.', '2025-02-12 10:50:14', 1, 3, '::1'),
(950, 'Services [test]Data has added successfully.', '2025-02-12 10:50:33', 1, 3, '::1'),
(951, 'Servicess  [qedasdasd]Data has deleted successfully.', '2025-02-12 10:50:40', 1, 6, '::1'),
(952, 'Services  [qedasdasd]Data has deleted successfully.', '2025-02-12 10:50:40', 1, 6, '::1'),
(953, 'Servicess  [test]Data has deleted successfully.', '2025-02-12 10:50:43', 1, 6, '::1'),
(954, 'Services  [test]Data has deleted successfully.', '2025-02-12 10:50:43', 1, 6, '::1'),
(955, 'Blog  [Nagarkot Nepal ]Data has deleted successfully.', '2025-02-12 10:51:43', 1, 6, '::1'),
(956, 'Blog  [qwseasdas]Data has deleted successfully.', '2025-02-12 10:51:43', 1, 6, '::1'),
(957, 'Blog  [test 1]Data has deleted successfully.', '2025-02-12 10:51:43', 1, 6, '::1'),
(958, 'Blog  [Places-of-interest]Data has deleted successfully.', '2025-02-12 10:51:43', 1, 6, '::1'),
(959, 'Blog  [Excursions to nearby places]Data has deleted successfully.', '2025-02-12 10:51:43', 1, 6, '::1'),
(960, 'Blog  [Brief On Club Himalaya]Data has deleted successfully.', '2025-02-12 10:51:43', 1, 6, '::1'),
(961, 'Changes on Article \'Bhaktapur\' has been saved successfully.', '2025-02-12 10:55:50', 1, 4, '::1'),
(962, 'Testimonial  []Data has deleted successfully.', '2025-02-12 10:56:35', 1, 6, '::1'),
(963, 'Testimonial  []Data has deleted successfully.', '2025-02-12 10:56:35', 1, 6, '::1'),
(964, 'Testimonial  []Data has deleted successfully.', '2025-02-12 10:56:35', 1, 6, '::1'),
(965, 'Services [aszxdcfvgbhnjkl]Data has added successfully.', '2025-02-12 10:58:26', 1, 3, '::1'),
(966, 'Servicess  [aszxdcfvgbhnjkl]Data has deleted successfully.', '2025-02-12 10:58:35', 1, 6, '::1'),
(967, 'Services  [aszxdcfvgbhnjkl]Data has deleted successfully.', '2025-02-12 10:58:35', 1, 6, '::1'),
(968, 'Features [Coffee/ Tea Maker] Edit Successfully', '2025-02-12 11:34:47', 1, 4, '::1'),
(969, 'Menu  [FAQ\'s]Data has deleted successfully.', '2025-02-12 11:50:41', 1, 6, '::1'),
(970, 'Menu  [Enhanced Safety]Data has deleted successfully.', '2025-02-12 11:50:44', 1, 6, '::1'),
(971, 'Menu  [Event Halls]Data has deleted successfully.', '2025-02-12 11:50:46', 1, 6, '::1'),
(972, 'Menu  [Contact]Data has deleted successfully.', '2025-02-12 11:50:48', 1, 6, '::1'),
(973, 'Slideshow  [qweqwe]Data has deleted successfully.', '2025-02-12 11:50:59', 1, 6, '::1'),
(974, 'Slideshow  [asd]Data has deleted successfully.', '2025-02-12 11:50:59', 1, 6, '::1'),
(975, 'Slideshow  [asdasdasdasdasdsASDasd]Data has deleted successfully.', '2025-02-12 11:50:59', 1, 6, '::1'),
(976, 'Slideshow  [asdasd]Data has deleted successfully.', '2025-02-12 11:50:59', 1, 6, '::1'),
(977, 'Slideshow  [qweqweqw]Data has deleted successfully.', '2025-02-12 11:51:05', 1, 6, '::1'),
(978, 'Slideshow  [asddd]Data has deleted successfully.', '2025-02-12 11:51:05', 1, 6, '::1'),
(979, 'Successfully Articles Properties Settings', '2025-02-12 11:52:02', 1, 4, '::1'),
(980, 'Successfully Slideshow Properties Settings', '2025-02-12 11:52:30', 1, 4, '::1'),
(981, 'Successfully Gallery Properties Settings', '2025-02-12 11:53:08', 1, 4, '::1'),
(982, 'Successfully Offers Properties Settings', '2025-02-12 11:53:22', 1, 4, '::1'),
(983, 'Successfully  Package Properties Settings', '2025-02-12 11:53:39', 1, 4, '::1'),
(984, 'Successfully Tour Package Properties Settings', '2025-02-12 11:53:53', 1, 4, '::1'),
(985, 'Successfully Testimonial Properties Settings', '2025-02-12 11:54:02', 1, 4, '::1'),
(986, 'Successfully News Properties Settings', '2025-02-12 11:54:11', 1, 4, '::1'),
(987, 'Successfully News Properties Settings', '2025-02-12 11:54:21', 1, 4, '::1'),
(988, 'Successfully Social Link Properties Settings', '2025-02-12 11:54:30', 1, 4, '::1'),
(989, 'Successfully Preference Properties Settings', '2025-02-12 11:55:41', 1, 4, '::1'),
(990, 'Login: superadmin logged in.', '2025-02-12 16:00:08', 1, 1, '::1'),
(991, 'Features [qqwe]Data has added successfully.', '2025-02-12 16:00:35', 1, 3, '::1'),
(992, 'Features [qweqwe]Data has added successfully.', '2025-02-12 16:00:40', 1, 3, '::1'),
(993, 'Features [12esqaeqwe]Data has added successfully.', '2025-02-12 16:00:45', 1, 3, '::1'),
(994, 'Features [asdasd3213]Data has added successfully.', '2025-02-12 16:00:52', 1, 3, '::1'),
(995, 'Features [asd123]Data has added successfully.', '2025-02-12 16:01:01', 1, 3, '::1'),
(996, 'Features [asdadasasd]Data has added successfully.', '2025-02-12 16:01:11', 1, 3, '::1'),
(997, 'Features [asaxz]Data has added successfully.', '2025-02-12 16:01:17', 1, 3, '::1'),
(998, 'Features [sdxcz]Data has added successfully.', '2025-02-12 16:01:27', 1, 3, '::1'),
(999, 'Features [ersdfsad]Data has added successfully.', '2025-02-12 16:01:35', 1, 3, '::1'),
(1000, 'Features [qwedsaf]Data has added successfully.', '2025-02-12 16:01:42', 1, 3, '::1'),
(1001, 'Features [zxcqwe]Data has added successfully.', '2025-02-12 16:01:47', 1, 3, '::1'),
(1002, 'Features [asdzxC]Data has added successfully.', '2025-02-12 16:01:54', 1, 3, '::1'),
(1003, 'Features [iunrtw]Data has added successfully.', '2025-02-12 16:02:05', 1, 3, '::1'),
(1004, 'Features [werzc]Data has added successfully.', '2025-02-12 16:02:12', 1, 3, '::1'),
(1005, 'Features [iun]Data has added successfully.', '2025-02-12 16:02:19', 1, 3, '::1'),
(1006, 'Login: superadmin logged in.', '2025-02-12 19:48:47', 1, 1, '::1'),
(1007, 'Features [iuhbui]Data has added successfully.', '2025-02-12 19:51:55', 1, 3, '::1'),
(1008, 'Features [iuhbui] Edit Successfully', '2025-02-12 19:52:23', 1, 4, '::1'),
(1009, 'Login: superadmin logged in.', '2025-02-13 09:34:32', 1, 1, '::1'),
(1010, 'Login: superadmin logged in.', '2025-02-13 10:33:58', 1, 1, '::1'),
(1011, 'Login: superadmin logged in.', '2025-02-13 10:42:21', 1, 1, '::1'),
(1012, 'Login: superadmin logged in.', '2025-02-13 10:51:09', 1, 1, '::1'),
(1013, 'Login: superadmin logged in.', '2025-02-13 11:08:57', 1, 1, '::1'),
(1014, 'Features [asdasdasd]Data has added successfully.', '2025-02-13 12:09:25', 1, 3, '::1'),
(1015, 'Features  [asdasdasd]Data has deleted successfully.', '2025-02-13 12:09:36', 1, 6, '::1'),
(1016, 'Login: superadmin logged in.', '2025-02-14 09:36:44', 1, 1, '::1'),
(1017, 'Login: superadmin logged in.', '2025-02-17 06:41:38', 1, 1, '::1'),
(1018, 'Login: superadmin logged in.', '2025-02-17 10:43:31', 1, 1, '::1'),
(1019, 'FAQ \'asdasd\' has added successfully.', '2025-02-17 10:43:58', 1, 3, '::1'),
(1020, 'FAQ \'sasda\' has added successfully.', '2025-02-17 10:47:42', 1, 3, '::1'),
(1021, 'FAQ \'asdsad\' has added successfully.', '2025-02-17 10:49:03', 1, 3, '::1'),
(1022, 'FAQ \'a\' has added successfully.', '2025-02-17 10:49:07', 1, 3, '::1'),
(1023, 'FAQ \'asadasd\' has added successfully.', '2025-02-17 10:49:13', 1, 3, '::1'),
(1024, 'FAQ \'a\' has added successfully.', '2025-02-17 10:51:37', 1, 3, '::1'),
(1025, 'FAQ \'a\' has added successfully.', '2025-02-17 10:51:59', 1, 3, '::1'),
(1026, 'FAQ \'a\' has added successfully.', '2025-02-17 11:03:59', 1, 3, '::1'),
(1027, 'FAQ \'b\' has added successfully.', '2025-02-17 11:04:05', 1, 3, '::1'),
(1028, 'FAQ \'v\' has added successfully.', '2025-02-17 11:04:20', 1, 3, '::1'),
(1029, 'Login: superadmin logged in.', '2025-02-17 15:36:22', 1, 1, '::1'),
(1030, 'Menu [dfsadasdasd] CreatedData has added successfully.', '2025-02-17 16:28:04', 1, 3, '::1'),
(1031, 'Menu [name_1] Edit Successfully', '2025-02-17 16:32:37', 1, 4, '::1'),
(1032, 'Menu [dfsadasdasd] Edit Successfully', '2025-02-17 16:33:03', 1, 4, '::1'),
(1033, 'User Group [Administrator] Edit Successfully', '2025-02-17 17:05:02', 1, 4, '::1'),
(1034, 'Product \'asdasd\' has added successfully.', '2025-02-17 17:07:44', 1, 3, '::1'),
(1035, 'Product \'as\' has added successfully.', '2025-02-17 17:07:52', 1, 3, '::1'),
(1036, 'Product \'d\' has added successfully.', '2025-02-17 17:08:11', 1, 3, '::1'),
(1037, 'Changes on Product \'as\' has been saved successfully.', '2025-02-17 17:08:21', 1, 4, '::1'),
(1038, 'Changes on Product \'asd\' has been saved successfully.', '2025-02-17 17:08:37', 1, 4, '::1'),
(1039, 'User [UserFirstName_31a UserMiddleName_31 UserLastName_31] Edit Successfully', '2025-02-17 17:10:42', 1, 4, '::1'),
(1040, 'User [UserF12312312 UserMiddleName_3 Use] Edit Successfully', '2025-02-17 17:11:59', 1, 4, '::1'),
(1041, 'User [Us UserMiddleName_3 Use] Edit Successfully', '2025-02-17 17:12:16', 1, 4, '::1'),
(1042, 'User [Us1 UserMiddleName_3 Use] Edit Successfully', '2025-02-17 17:12:31', 1, 4, '::1'),
(1043, 'User Group [GroupName_244] Edit Successfully', '2025-02-17 17:16:00', 1, 4, '::1'),
(1044, 'Article \'qs\' has added successfully.', '2025-02-17 17:16:18', 1, 3, '::1'),
(1045, 'Package [asd]Data has added successfully.', '2025-02-17 17:28:57', 1, 3, '::1'),
(1046, 'Sub Package \'sdf\' has added successfully.', '2025-02-17 17:33:12', 1, 3, '::1'),
(1047, 'Services [ikmiom]Data has added successfully.', '2025-02-17 17:37:10', 1, 3, '::1'),
(1048, 'SocialNetworking [hniou]Data has added successfully.', '2025-02-17 17:51:15', 1, 3, '::1'),
(1049, 'Login: superadmin logged in.', '2025-02-18 11:38:23', 1, 1, '::1'),
(1050, 'Login: superadmin logged in.', '2025-02-25 10:33:01', 1, 1, '::1'),
(1051, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2025-02-25 10:39:17', 1, 4, '::1'),
(1052, 'SocialNetworking [facebook]Data has added successfully.', '2025-02-25 11:12:21', 1, 3, '::1'),
(1053, 'SocialNetworking [instagram]Data has added successfully.', '2025-02-25 11:12:34', 1, 3, '::1'),
(1054, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2025-02-25 11:17:14', 1, 4, '::1'),
(1055, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2025-02-25 11:17:29', 1, 4, '::1'),
(1056, 'Slideshows  [sadas]Data has deleted successfully.', '2025-02-25 11:17:55', 1, 6, '::1'),
(1057, 'Slideshow  [sadas]Data has deleted successfully.', '2025-02-25 11:17:55', 1, 6, '::1'),
(1058, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2025-02-25 11:18:05', 1, 4, '::1'),
(1059, 'Slideshow [asdasd]Data has added successfully.', '2025-02-25 11:19:27', 1, 3, '::1'),
(1060, 'Article \'main site test\' has added successfully.', '2025-02-25 11:19:45', 1, 3, '::1'),
(1061, 'Menu [main site] CreatedData has added successfully.', '2025-02-25 11:21:02', 1, 3, '::1'),
(1062, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2025-02-25 11:27:19', 1, 4, '::1'),
(1063, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2025-02-25 11:28:49', 1, 4, '::1'),
(1064, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2025-02-25 11:29:36', 1, 4, '::1'),
(1065, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2025-02-25 11:30:08', 1, 4, '::1'),
(1066, 'Menu [sdasdasd] CreatedData has added successfully.', '2025-02-25 11:30:16', 1, 3, '::1'),
(1067, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2025-02-25 11:30:20', 1, 4, '::1'),
(1068, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2025-02-25 11:30:36', 1, 4, '::1'),
(1069, 'Article \'main site 2\' has added successfully.', '2025-02-25 11:31:43', 1, 3, '::1'),
(1070, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2025-02-25 11:31:48', 1, 4, '::1'),
(1071, 'Slideshow [under con]Data has added successfully.', '2025-02-25 11:32:11', 1, 3, '::1'),
(1072, 'Slideshow [upcomintg]Data has added successfully.', '2025-02-25 11:32:43', 1, 3, '::1'),
(1073, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2025-02-25 11:32:48', 1, 4, '::1'),
(1074, 'Slideshow [asdasd]Data has added successfully.', '2025-02-25 11:34:31', 1, 3, '::1'),
(1075, 'Slideshow [asdasd]Data has added successfully.', '2025-02-25 11:37:02', 1, 3, '::1'),
(1076, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2025-02-25 11:37:11', 1, 4, '::1'),
(1077, 'Slideshow [asdasd]Data has added successfully.', '2025-02-25 11:38:40', 1, 3, '::1'),
(1078, 'Slideshow [upcomintg] Edit Successfully', '2025-02-25 11:40:06', 1, 4, '::1'),
(1079, 'Slideshow [asdasd] Edit Successfully', '2025-02-25 11:40:16', 1, 4, '::1'),
(1080, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2025-02-25 11:40:24', 1, 4, '::1'),
(1081, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2025-02-25 11:40:31', 1, 4, '::1'),
(1082, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2025-02-25 11:57:27', 1, 4, '::1'),
(1083, 'Slideshows  [upcomintg]Data has deleted successfully.', '2025-02-25 11:58:57', 1, 6, '::1'),
(1084, 'Slideshow  [upcomintg]Data has deleted successfully.', '2025-02-25 11:58:57', 1, 6, '::1'),
(1085, 'Slideshows  [asdasd]Data has deleted successfully.', '2025-02-25 11:59:02', 1, 6, '::1'),
(1086, 'Slideshow  [asdasd]Data has deleted successfully.', '2025-02-25 11:59:02', 1, 6, '::1'),
(1087, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2025-02-25 11:59:20', 1, 4, '::1'),
(1088, 'Slideshows  [asdasd]Data has deleted successfully.', '2025-02-25 11:59:32', 1, 6, '::1'),
(1089, 'Slideshow  [asdasd]Data has deleted successfully.', '2025-02-25 11:59:32', 1, 6, '::1'),
(1090, 'Slideshow  [asdasd]Data has deleted successfully.', '2025-02-25 11:59:37', 1, 6, '::1'),
(1091, 'Slideshow  [under con]Data has deleted successfully.', '2025-02-25 11:59:37', 1, 6, '::1'),
(1092, 'Slideshow  [asdasd]Data has deleted successfully.', '2025-02-25 11:59:37', 1, 6, '::1'),
(1093, 'Login: admin logged in.', '2025-10-29 10:10:19', 1, 1, '::1'),
(1094, 'Article \'gr\' has added successfully.', '2025-10-29 11:09:55', 1, 3, '::1'),
(1095, 'Articles  [gr]Data has deleted successfully.', '2025-10-29 11:10:15', 1, 6, '::1'),
(1096, 'Article \'regerbr\' has added successfully.', '2025-10-29 11:26:15', 1, 3, '::1'),
(1097, 'Article \'reger\' has added successfully.', '2025-10-29 11:26:32', 1, 3, '::1'),
(1098, 'Changes on Article \'regerbr\' has been saved successfully.', '2025-10-29 13:20:20', 1, 4, '::1'),
(1099, 'Article \'rgbvtg5gv\' has added successfully.', '2025-10-29 13:20:38', 1, 3, '::1'),
(1100, 'Article \'45g647ybh67\' has added successfully.', '2025-10-29 13:21:01', 1, 3, '::1'),
(1101, 'Articles  [45g647ybh67]Data has deleted successfully.', '2025-10-29 13:39:25', 1, 6, '::1'),
(1102, 'Articles  [regerbr]Data has deleted successfully.', '2025-10-29 15:13:13', 1, 6, '::1'),
(1103, 'Articles  []Data has deleted successfully.', '2025-10-29 15:13:22', 1, 6, '::1'),
(1104, 'Articles  [rgbvtg5gv]Data has deleted successfully.', '2025-10-29 15:13:22', 1, 6, '::1'),
(1105, 'Articles  []Data has deleted successfully.', '2025-10-29 15:13:28', 1, 6, '::1'),
(1106, 'Articles  []Data has deleted successfully.', '2025-10-29 15:13:28', 1, 6, '::1'),
(1107, 'Articles  []Data has deleted successfully.', '2025-10-29 15:13:28', 1, 6, '::1'),
(1108, 'Articles  []Data has deleted successfully.', '2025-10-29 15:13:31', 1, 6, '::1'),
(1109, 'Articles  []Data has deleted successfully.', '2025-10-29 15:13:31', 1, 6, '::1'),
(1110, 'Articles  []Data has deleted successfully.', '2025-10-29 15:13:31', 1, 6, '::1'),
(1111, 'Articles  []Data has deleted successfully.', '2025-10-29 15:13:31', 1, 6, '::1'),
(1112, 'Article \'gv drbufegu\' has added successfully.', '2025-10-29 15:18:12', 1, 3, '::1'),
(1113, 'Article \'rh54ej754h64\' has added successfully.', '2025-10-29 15:19:15', 1, 3, '::1'),
(1114, 'Changes on Article \'rh54ej754h64nytrynry\' has been saved successfully.', '2025-10-29 15:19:31', 1, 4, '::1'),
(1115, 'Changes on Article \'rh54ej754h64nytrynryuyi,kyi\' has been saved successfully.', '2025-10-29 15:19:44', 1, 4, '::1'),
(1116, 'Article \'633333\' has added successfully.', '2025-10-29 15:20:07', 1, 3, '::1'),
(1117, 'Article \'rtnyr54r5y64\' has added successfully.', '2025-10-29 15:21:45', 1, 3, '::1'),
(1118, 'Article \'54n6464\' has added successfully.', '2025-10-29 15:21:53', 1, 3, '::1'),
(1119, 'Login: admin logged in.', '2025-10-30 10:09:25', 1, 1, '::1'),
(1120, 'Article \'ryvrub\' has added successfully.', '2025-10-30 11:34:56', 1, 3, '::1');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1121, 'Articles  [54n6464]Data has deleted successfully.', '2025-10-30 11:35:12', 1, 6, '::1'),
(1122, 'Login: superadmin logged in.', '2025-10-31 10:21:51', 1, 1, '::1'),
(1123, 'Login: superadmin logged in.', '2025-10-31 10:23:02', 1, 1, '::1'),
(1124, 'User Group [Administrator] Edit Successfully', '2025-10-31 10:23:49', 1, 4, '::1'),
(1125, 'User Group [Administrator] Edit Successfully', '2025-10-31 10:23:54', 1, 4, '::1'),
(1126, 'Login: admin logged in.', '2025-10-31 15:15:16', 1, 1, '::1'),
(1127, 'Login: admin logged in.', '2025-10-31 15:29:39', 1, 1, '::1'),
(1128, 'Login: superadmin logged in.', '2025-10-31 17:10:41', 1, 1, '::1'),
(1129, 'User [Super admin  ] Edit Successfully', '2025-10-31 17:12:05', 1, 4, '::1'),
(1130, 'Login: superadmin logged in.', '2025-10-31 17:12:09', 1, 1, '::1'),
(1131, 'User Group [Administrator] Edit Successfully', '2025-10-31 17:14:54', 1, 4, '::1'),
(1132, 'Page \'ergt45trtyg5r\' has added successfully.', '2025-11-01 18:51:24', 1, 3, '::1'),
(1133, 'Pages  [ergt45trtyg5r]Data has deleted successfully.', '2025-11-01 18:51:32', 1, 6, '::1'),
(1134, 'Page \'54t6y56y 56y56\' has added successfully.', '2025-11-01 18:51:47', 1, 3, '::1'),
(1135, 'Page \'dfgdgd c ffdg\' has added successfully.', '2025-11-01 18:54:53', 1, 3, '::1'),
(1136, 'Page \'ertergte rtret\' has added successfully.', '2025-11-01 20:01:15', 1, 3, '::1'),
(1137, 'Page \'erterte rterter\' has added successfully.', '2025-11-01 20:01:39', 1, 3, '::1'),
(1138, 'Page \'rete45te erte e\' has added successfully.', '2025-11-01 20:02:45', 1, 3, '::1'),
(1139, 'Page \'regterter retgert\' has added successfully.', '2025-11-01 20:47:18', 1, 3, '::1'),
(1140, 'Article \'rtyry tryrt\' has added successfully.', '2025-11-01 21:26:09', 1, 3, '::1'),
(1141, 'Login: superadmin logged in.', '2025-11-02 09:54:49', 1, 1, '::1'),
(1142, 'Gallery [er6t5ert ]Data has added successfully.', '2025-11-02 11:12:01', 1, 3, '::1'),
(1143, 'Page \'retret trerte\' has added successfully.', '2025-11-02 13:19:38', 1, 3, '::1'),
(1144, 'Changes on Page \'ertergte rtret\' has been saved successfully.', '2025-11-02 13:19:57', 1, 4, '::1'),
(1145, 'Changes on Page \'ertergte rtret\' has been saved successfully.', '2025-11-02 13:20:05', 1, 4, '::1'),
(1146, 'Page \'retetet erte te\' has added successfully.', '2025-11-02 13:20:33', 1, 3, '::1'),
(1147, 'Blog [rty r5ry]Data has added successfully.', '2025-11-02 13:36:48', 1, 3, '::1'),
(1148, 'Page \'tryrt ry\' has added successfully.', '2025-11-02 13:50:14', 1, 3, '::1'),
(1149, 'Page \'dfgdfg gdfg\' has added successfully.', '2025-11-02 14:37:23', 1, 3, '::1'),
(1150, 'Page \'fdg ergt e \' has added successfully.', '2025-11-02 14:41:57', 1, 3, '::1'),
(1151, 'Page \'rterte ete e\' has added successfully.', '2025-11-02 14:49:59', 1, 3, '::1'),
(1152, 'Gallery [4rt 54e6t]Data has added successfully.', '2025-11-02 14:55:22', 1, 3, '::1'),
(1153, 'Sub Gallery Image [rtyr ty]Data has added successfully.', '2025-11-02 14:55:58', 1, 3, '::1'),
(1154, 'Page \'ref tert er\' has added successfully.', '2025-11-02 16:08:05', 1, 3, '::1'),
(1155, 'Pages  [ref tert er]Data has deleted successfully.', '2025-11-02 16:10:07', 1, 6, '::1'),
(1156, 'Page \'re tert erytg e\' has added successfully.', '2025-11-02 16:20:04', 1, 3, '::1'),
(1157, 'Page \'rty r\' has added successfully.', '2025-11-02 16:35:46', 1, 3, '::1'),
(1158, 'Changes on Article \'rtnyr54r5y64\' has been saved successfully.', '2025-11-02 16:36:23', 1, 4, '::1'),
(1159, 'Changes on Article \'aaaaaaaaaaaaa aaaaaaaaaaaaaaaaa\' has been saved successfully.', '2025-11-02 16:36:58', 1, 4, '::1'),
(1160, 'Login: superadmin logged in.', '2025-11-02 16:56:19', 1, 1, '::1'),
(1161, 'Page \'ertre te et\' has added successfully.', '2025-11-02 17:17:43', 1, 3, '::1'),
(1162, 'Page \'qqqqqqqqqqqqqqq qqqqqq\' has added successfully.', '2025-11-02 17:18:04', 1, 3, '::1'),
(1163, 'Page \'546tb 45\' has added successfully.', '2025-11-02 19:34:38', 1, 3, '::1'),
(1164, 'Login: superadmin logged in.', '2025-11-03 07:20:41', 1, 1, '::1'),
(1165, 'Page \'df dfg ddfg\' has added successfully.', '2025-11-03 07:21:32', 1, 3, '::1'),
(1166, 'Pages  [df dfg ddfg]Data has deleted successfully.', '2025-11-03 07:22:09', 1, 6, '::1'),
(1167, 'Changes on Article \'aaaaaaaaaaaaa aaaaaaaaaaaaaaaaa\' has been saved successfully.', '2025-11-03 07:22:19', 1, 4, '::1'),
(1168, 'Pages  [546tb 45]Data has deleted successfully.', '2025-11-03 07:23:18', 1, 6, '::1'),
(1169, 'Pages  []Data has deleted successfully.', '2025-11-03 07:23:21', 1, 6, '::1'),
(1170, 'Pages  [qqqqqqqqqqqqqqq qqqqqq]Data has deleted successfully.', '2025-11-03 07:23:21', 1, 6, '::1'),
(1171, 'Changes on Article \'aaaaaaaaaaaaa aaaaaaaaaaaaaaaaa\' has been saved successfully.', '2025-11-03 07:25:09', 1, 4, '::1'),
(1172, 'Changes on Page \'ertre te et\' has been saved successfully.', '2025-11-03 07:27:42', 1, 4, '::1'),
(1173, 'Changes on Page \'1111111111111111111\' has been saved successfully.', '2025-11-03 07:30:27', 1, 4, '::1'),
(1174, 'Changes on Page \'1111111111111111111\' has been saved successfully.', '2025-11-03 07:30:28', 1, 4, '::1'),
(1175, 'Page \'dfg r re\' has added successfully.', '2025-11-03 07:37:23', 1, 3, '::1'),
(1176, 'Changes on Page \'dfg r re\' has been saved successfully.', '2025-11-03 07:38:30', 1, 4, '::1'),
(1177, 'Changes on Page \'dfg r re\' has been saved successfully.', '2025-11-03 07:38:41', 1, 4, '::1'),
(1178, 'Changes on Page \'dfg r re\' has been saved successfully.', '2025-11-03 07:44:46', 1, 4, '::1'),
(1179, 'Changes on Page \'1111111111111111111\' has been saved successfully.', '2025-11-03 07:45:29', 1, 4, '::1'),
(1180, 'Changes on Page \'1111111111111111111\' has been saved successfully.', '2025-11-03 07:48:19', 1, 4, '::1'),
(1181, 'Changes on Page \'1111111111111111111\' has been saved successfully.', '2025-11-03 07:48:54', 1, 4, '::1'),
(1182, 'Changes on Page \'1111111111111111111\' has been saved successfully.', '2025-11-03 07:48:55', 1, 4, '::1'),
(1183, 'Changes on Page \'1111111111111111111\' has been saved successfully.', '2025-11-03 07:52:04', 1, 4, '::1'),
(1184, 'Changes on Page \'1111111111111111111\' has been saved successfully.', '2025-11-03 07:53:19', 1, 4, '::1'),
(1185, 'Page \'rte vet\' has added successfully.', '2025-11-03 07:55:36', 1, 3, '::1'),
(1186, 'Changes on Page \'rte vet\' has been saved successfully.', '2025-11-03 08:08:42', 1, 4, '::1'),
(1187, 'Changes on Page \'rte vet\' has been saved successfully.', '2025-11-03 08:20:06', 1, 4, '::1'),
(1188, 'Changes on Page \'rte vet\' has been saved successfully.', '2025-11-03 08:20:06', 1, 4, '::1'),
(1189, 'Changes on Page \'rte vet\' has been saved successfully.', '2025-11-03 08:22:45', 1, 4, '::1'),
(1190, 'Changes on Page \'rte vet\' has been saved successfully.', '2025-11-03 08:33:21', 1, 4, '::1'),
(1191, 'Changes on Page \'rte vet\' has been saved successfully.', '2025-11-03 08:48:59', 1, 4, '::1'),
(1192, 'Changes on Page \'rte vet\' has been saved successfully.', '2025-11-03 10:04:16', 1, 4, '::1'),
(1193, 'Changes on Page \'rte vet\' has been saved successfully.', '2025-11-03 10:04:27', 1, 4, '::1'),
(1194, 'Changes on Page \'rte vet\' has been saved successfully.', '2025-11-03 10:05:29', 1, 4, '::1'),
(1195, 'Page \' ert ert e\' has added successfully.', '2025-11-03 10:09:51', 1, 3, '::1'),
(1196, 'Changes on Page \' ert ert e\' has been saved successfully.', '2025-11-03 10:10:39', 1, 4, '::1'),
(1197, 'Changes on Page \' ert ert e\' has been saved successfully.', '2025-11-03 10:10:40', 1, 4, '::1'),
(1198, 'Changes on Page \' ert ert e\' has been saved successfully.', '2025-11-03 11:45:49', 1, 4, '::1'),
(1199, 'Page \'2 22 2 2 2\' has added successfully.', '2025-11-03 11:46:31', 1, 3, '::1'),
(1200, 'News [hr ]Data has added successfully.', '2025-11-03 11:47:47', 1, 3, '::1'),
(1201, 'Changes on Page \'2 22 2 2 2\' has been saved successfully.', '2025-11-03 11:57:28', 1, 4, '::1'),
(1202, 'Changes on Page \'2 22 2 2 2\' has been saved successfully.', '2025-11-03 12:01:09', 1, 4, '::1'),
(1203, 'Changes on Page \' ert ert e\' has been saved successfully.', '2025-11-03 12:04:47', 1, 4, '::1'),
(1204, 'Page \' ftyh rt\' has added successfully.', '2025-11-03 12:22:10', 1, 3, '::1'),
(1205, 'Page \' tyu tu \' has added successfully.', '2025-11-03 13:03:32', 1, 3, '::1'),
(1206, 'Changes on Page \' tyu tu \' has been saved successfully.', '2025-11-03 13:11:13', 1, 4, '::1'),
(1207, 'Events [tg ]Data has added successfully.', '2025-11-03 13:26:37', 1, 3, '::1'),
(1208, 'Page \' eyg \' has added successfully.', '2025-11-03 13:27:17', 1, 3, '::1'),
(1209, 'Page \'fd thyrty ry\' has added successfully.', '2025-11-03 13:54:07', 1, 3, '::1'),
(1210, 'Features [er terte ]Data has added successfully.', '2025-11-03 13:56:29', 1, 3, '::1'),
(1211, 'Features [tge rt]Data has added successfully.', '2025-11-03 13:57:15', 1, 3, '::1'),
(1212, 'Changes on Page \'fd thyrty ry\' has been saved successfully.', '2025-11-03 14:33:32', 1, 4, '::1'),
(1213, 'Changes on Page \'fd thyrty ry\' has been saved successfully.', '2025-11-03 14:41:49', 1, 4, '::1'),
(1214, 'Page \'6 6 6 6 6 6 6 6 6\' has added successfully.', '2025-11-03 14:45:37', 1, 3, '::1'),
(1215, 'Changes on Page \'6 6 6 6 6 6 6 6 6\' has been saved successfully.', '2025-11-03 14:48:11', 1, 4, '::1'),
(1216, 'Changes on Page \'6 6 6 6 6 6 6 6 6\' has been saved successfully.', '2025-11-03 17:27:41', 1, 4, '::1'),
(1217, 'Changes on Page \'6 6 6 6 6 6 6 6 6\' has been saved successfully.', '2025-11-03 17:31:30', 1, 4, '::1'),
(1218, 'Login: superadmin logged in.', '2025-11-04 10:18:51', 1, 1, '::1'),
(1219, 'Page \'565 4656464 54644re regtertg\' has added successfully.', '2025-11-04 10:39:02', 1, 3, '::1'),
(1220, 'Changes on Page \'565 4656464 54644re regtertg\' has been saved successfully.', '2025-11-04 10:47:25', 1, 4, '::1'),
(1221, 'Changes on Page \'565 4656464 54644re regtertg\' has been saved successfully.', '2025-11-04 10:47:45', 1, 4, '::1'),
(1222, 'Changes on Page \'565 4656464 54644re regtertg\' has been saved successfully.', '2025-11-04 10:47:54', 1, 4, '::1'),
(1223, 'Changes on Page \'Nitish\' has been saved successfully.', '2025-11-04 10:49:06', 1, 4, '::1'),
(1224, 'Changes on Page \'Nitish\' has been saved successfully.', '2025-11-04 10:49:32', 1, 4, '::1'),
(1225, 'Changes on Page \'Nitish\' has been saved successfully.', '2025-11-04 10:50:33', 1, 4, '::1'),
(1226, 'Pages  [Nitish]Data has deleted successfully.', '2025-11-04 10:53:32', 1, 6, '::1'),
(1227, 'Page \'fgh yrty r\' has added successfully.', '2025-11-04 12:34:14', 1, 3, '::1'),
(1228, 'Changes on Page \'fgh yrty r\' has been saved successfully.', '2025-11-04 13:03:20', 1, 4, '::1'),
(1229, 'Changes on Page \'fgh yrty r\' has been saved successfully.', '2025-11-04 13:03:21', 1, 4, '::1'),
(1230, 'Page \'sdf rsedwfge sr\' has added successfully.', '2025-11-04 14:01:57', 1, 3, '::1'),
(1231, 'Page \'we rfwe rfwe \' has added successfully.', '2025-11-04 14:09:33', 1, 3, '::1'),
(1232, 'Page \' dfgred tg\' has added successfully.', '2025-11-04 14:48:05', 1, 3, '::1'),
(1233, 'Page \' ryr6 yr yr4y r\' has added successfully.', '2025-11-04 15:08:42', 1, 3, '::1'),
(1234, 'Page \'htr yh6yut u\' has added successfully.', '2025-11-04 16:06:24', 1, 3, '::1'),
(1235, 'Page \' erdyte5ryer\' has added successfully.', '2025-11-04 16:12:41', 1, 3, '::1'),
(1236, 'Page \' eryt erye \' has added successfully.', '2025-11-04 16:12:57', 1, 3, '::1'),
(1237, 'Pages  [ eryt erye ]Data has deleted successfully.', '2025-11-04 16:13:50', 1, 6, '::1'),
(1238, 'Page \'yuttyuityu\' has added successfully.', '2025-11-04 16:21:05', 1, 3, '::1'),
(1239, 'Page \'ew rfwer wr\' has added successfully.', '2025-11-04 17:04:08', 1, 3, '::1'),
(1240, 'Page \' gerwtet\' has added successfully.', '2025-11-04 17:04:50', 1, 3, '::1'),
(1241, 'Page \'gergerge\' has added successfully.', '2025-11-04 17:05:18', 1, 3, '::1'),
(1242, 'Page \'dfg dfg dergterterte\' has added successfully.', '2025-11-04 17:08:43', 1, 3, '::1'),
(1243, 'Pages  [dfg dfg dergterterte]Data has deleted successfully.', '2025-11-04 17:28:04', 1, 6, '::1'),
(1244, 'Login: superadmin logged in.', '2025-11-05 10:37:41', 1, 1, '::1'),
(1245, 'Page \' dghbrdfgyt r\' has added successfully.', '2025-11-05 10:38:10', 1, 3, '::1'),
(1246, 'Page \' ergtewrt \' has added successfully.', '2025-11-05 10:39:05', 1, 3, '::1'),
(1247, 'Page \' rews tet\' has added successfully.', '2025-11-05 10:39:52', 1, 3, '::1'),
(1248, 'Page \'nitish\' has added successfully.', '2025-11-05 10:44:52', 1, 3, '::1'),
(1249, 'Changes on Page \'nitish\' has been saved successfully.', '2025-11-05 10:53:58', 1, 4, '::1'),
(1250, 'Page \'shakya\' has added successfully.', '2025-11-05 10:55:42', 1, 3, '::1'),
(1251, 'Page \'fgh rfhyrf \' has added successfully.', '2025-11-05 11:08:43', 1, 3, '::1'),
(1252, 'Page \'ram\' has added successfully.', '2025-11-05 11:34:20', 1, 3, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs_action`
--

CREATE TABLE `tbl_logs_action` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `bgcolor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_logs_action`
--

INSERT INTO `tbl_logs_action` (`id`, `title`, `icon`, `bgcolor`) VALUES
(1, 'Login', 'icon-sign-in', 'bg-blue'),
(2, 'Logout', 'icon-sign-out', 'primary-bg'),
(3, 'Add', 'icon-plus-circle', 'bg-green'),
(4, 'Edit', 'icon-edit', 'bg-blue-alt'),
(5, 'Copy', 'icon-copy', 'ui-state-default'),
(6, 'Delete', 'icon-clock-os-circle', 'bg-red');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mainservices`
--

CREATE TABLE `tbl_mainservices` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(11) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_mainservices`
--

INSERT INTO `tbl_mainservices` (`id`, `parent_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `modified_date`, `sortorder`, `homepage`, `image`, `date`, `category`) VALUES
(1, 0, 'spa', 'SPA', 'The Health club Kavre has spa, hot tub and a indoor swimming pool for your refreshment and relaxation.', '<p>\r\n	Get yourself pampered from the professional masseurs of &quot;The Himalayan Healers&quot;: a social entrepreneurship venture, and a a Healing Arts School and collection of Spa Boutiques, with branches in both Nepal and in the United States</p>\r\n', 0, 'about-us', 1, '', '', '', 0, '2023-09-03 12:49:59', '2023-10-30 14:38:42', 2, 1, 0x613a313a7b693a303b733a31343a224e464f374b2d706f6f6c2e6a7067223b7d, '', ''),
(3, 0, 'pool-jacuzzi', 'Pool & Jacuzzi', 'Pool & Jacuzzi', '<p>\r\n	Restaurant is spacious and comfortable and features spectacular views and treats you with large a selection of Chinese, Indian, Nepalese and Continental cuisines. The rustic mountain tavern decor, the cozy fireplace, the beckoning dance floor and of course the delightful choice of wines, cocktails and spirits along with fusion and jazz probably makes it the coziest bar at 7,200 ft.</p>\r\n', 0, '', 1, '', '', '', 0, '2023-09-03 14:08:35', '2023-09-03 14:08:35', 1, 1, 0x613a313a7b693a303b733a31353a226b416550352d706f2d6a752e6a7067223b7d, '', ''),
(4, 0, 'children-play-area-indoor-outdoor', 'Children Play Area Indoor & Outdoor', 'Children Play Area Indoor & Outdoor', '<p>\r\n	Nepal, is home to 10% of the world&#39;s birds which means 800 species of birds. Come see, if you can spot some of these birds in Nagarkot</p>\r\n', 0, '', 1, '', '', '', 0, '2023-09-04 13:12:47', '2023-10-16 14:42:54', 0, 1, 0x613a313a7b693a303b733a31383a2241664a41422d6368696c6472656e2e6a7067223b7d, '', ''),
(5, 0, 'yuvvyuvyui', 'yuvvyuvyui', 'buibu', '<p>\r\n	vyuvyvbyiu</p>\r\n', 1, 'tuyyuv', 1, '', '', '', 0, '2024-01-10 13:22:30', '2024-01-10 13:22:54', 3, 1, 0x613a313a7b693a303b733a32303a2267497674462d666163696c69746965732e6a7067223b7d, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `linksrc` varchar(150) NOT NULL,
  `parentOf` int(11) NOT NULL DEFAULT 0,
  `linktype` varchar(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `upcoming` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `name`, `linksrc`, `parentOf`, `linktype`, `status`, `sortorder`, `added_date`, `type`, `icon`, `upcoming`, `image`) VALUES
(20, 'Who we are', '#about-us', 0, '0', 1, 1, '2024-12-17 10:47:27', 1, '', 1, '0O8wg-info.png'),
(21, 'Reach us', '#mod-map', 0, '0', 1, 2, '2024-12-17 10:48:05', 1, '', 1, '3qbn0-location.png'),
(22, 'Work with us', '#mod-career', 0, '0', 1, 3, '2024-12-17 10:48:31', 1, '', 1, 'Tr93G-career.png'),
(36, 'asdasd', '#about-us', 0, '0', 1, 3, '2025-02-21 16:13:16', 1, '', 0, ''),
(37, 'main site', '#', 0, '0', 1, 1, '2025-02-25 11:21:02', 1, '', 0, ''),
(38, 'sdasdasd', '#', 0, '0', 1, 2, '2025-02-25 11:30:16', 1, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_metadata`
--

CREATE TABLE `tbl_metadata` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(250) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mlink`
--

CREATE TABLE `tbl_mlink` (
  `mod_class` varchar(50) NOT NULL,
  `m_url` tinytext NOT NULL,
  `act_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_mlink`
--

INSERT INTO `tbl_mlink` (`mod_class`, `m_url`, `act_id`) VALUES
('Article', 'qs', 16),
('Package', 'asd', 15),
('Subpackage', 'sdf', 46),
('Article', 'aaaaaaaaaaaaa-aaaaaaaaaaaaaaaaa', 22),
('Article', 'rtnyr54r5y64', 25),
('Article', 'ryvrub', 27),
('Article', 'rtyry-tryrt', 28),
('Page', 'nitish', 49),
('Page', 'shakya', 50),
('Page', 'ram', 52);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modules`
--

CREATE TABLE `tbl_modules` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL DEFAULT 'dashboard',
  `mode` varchar(20) NOT NULL,
  `icon_link` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `properties` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_modules`
--

INSERT INTO `tbl_modules` (`id`, `parent_id`, `name`, `link`, `mode`, `icon_link`, `status`, `sortorder`, `added_date`, `properties`) VALUES
(1, 74, 'User Mgmt', 'user/list', 'user', 'icon-users', 1, 1, '0000-00-00', ''),
(2, 0, 'Menu Mgmt', 'menu/list', 'menu', 'icon-list', 1, 2, '0000-00-00', 'a:1:{s:5:\"level\";s:1:\"3\";}'),
(3, 0, 'Articles Mgmt', 'articles/list', 'articles', 'icon-adn', 1, 2, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:4:\"1080\";}'),
(4, 0, 'Slideshow Mgmt', 'slideshow/list', 'slideshow', 'icon-film', 1, 2, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:4:\"1080\";}'),
(5, 0, 'Gallery Mgmt', 'gallery/list', 'gallery', 'icon-picture-o', 1, 6, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:4:\"1080\";s:9:\"simgwidth\";s:4:\"1920\";s:10:\"simgheight\";s:4:\"1080\";}'),
(6, 0, 'News Mgmt', 'news/list', 'news', 'icon-list-alt', 1, 19, '2020-02-12', 'a:2:{s:8:\"imgwidth\";s:3:\"300\";s:9:\"imgheight\";s:3:\"300\";}'),
(7, 0, 'Event Mgmt', 'events/list', 'events', 'icon-bullhorn', 1, 10, '2020-12-20', ''),
(8, 0, 'Advertisement Mgmt', 'advertisement/list', 'advertisement', 'icon-indent', 0, 4, '0000-00-00', 'a:8:{s:9:\"limgwidth\";s:3:\"100\";s:10:\"limgheight\";s:3:\"200\";s:9:\"timgwidth\";s:3:\"300\";s:10:\"timgheight\";s:3:\"400\";s:9:\"rimgwidth\";s:3:\"500\";s:10:\"rimgheight\";s:3:\"600\";s:9:\"bimgwidth\";s:3:\"700\";s:10:\"bimgheight\";s:3:\"800\";}'),
(9, 0, 'Video Mgmt', 'video/list', 'video', 'icon-hdd-o', 0, 13, '0000-00-00', ''),
(10, 0, 'Poll Mgmt', 'poll/list', 'poll', 'icon-exchange', 0, 22, '0000-00-00', ''),
(11, 0, 'Social / OTA Mgmt', 'social/list', 'social', 'icon-google-plus', 1, 6, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:2:\"50\";s:9:\"imgheight\";s:2:\"50\";}'),
(12, 0, 'Setting Mgmt', 'setting/list', 'settings', 'icon-gear', 1, 21, '0000-00-00', ''),
(13, 12, 'Preference Mgmt', 'preference/list', 'preference', 'icon-gear', 1, 1, '0000-00-00', 'a:18:{s:8:\"imgwidth\";s:2:\"50\";s:9:\"imgheight\";s:2:\"50\";s:9:\"simgwidth\";s:2:\"50\";s:10:\"simgheight\";s:2:\"50\";s:10:\"fbimgwidth\";s:4:\"1200\";s:11:\"fbimgheight\";s:3:\"630\";s:9:\"timgwidth\";s:4:\"1200\";s:10:\"timgheight\";s:3:\"630\";s:9:\"gimgwidth\";s:4:\"1920\";s:10:\"gimgheight\";s:4:\"1080\";s:9:\"cimgwidth\";s:4:\"1920\";s:10:\"cimgheight\";s:4:\"1080\";s:9:\"oimgwidth\";s:4:\"1920\";s:10:\"oimgheight\";s:4:\"1080\";s:9:\"fimgwidth\";s:4:\"1920\";s:10:\"fimgheight\";s:4:\"1080\";s:10:\"ofimgwidth\";s:4:\"1920\";s:11:\"ofimgheight\";s:4:\"1080\";}'),
(14, 12, 'Office Info/Location', 'location/list', 'location', 'icon-gear', 1, 2, '0000-00-00', ''),
(15, 12, 'Modules Mgmt', 'module/list', 'module', 'icon-gear', 0, 3, '0000-00-00', ''),
(16, 12, 'Properties Mgmt', 'properties/list', 'properties', 'icon-gear', 1, 4, '0000-00-00', ''),
(17, 0, 'Testimonial', 'testimonial/list', 'testimonial', 'icon-list-alt', 1, 6, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:2:\"50\";s:9:\"imgheight\";s:2:\"50\";}'),
(18, 0, 'Subscribers Mgmt', 'subscribers/list', 'subscribers', 'icon-comments', 1, 14, '2015-05-17', ''),
(19, 0, 'Offers Mgmt', 'offers/list', 'offers', 'icon-tags', 1, 18, '2015-05-20', 'a:4:{s:9:\"bimgwidth\";s:4:\"1920\";s:10:\"bimgheight\";s:4:\"1080\";s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:4:\"1080\";}'),
(20, 0, 'Services Mgmt', 'services/list', 'services', 'icon-exchange', 1, 5, '2015-08-09', 'a:2:{s:8:\"imgwidth\";s:2:\"50\";s:9:\"imgheight\";s:2:\"50\";}'),
(21, 0, 'Movies Mgmt', 'movies/list', 'movies', 'icon-list', 0, 15, '2015-10-30', ''),
(22, 0, 'Theaters', 'theaters/list', 'theaters', 'icon-film', 0, 17, '2015-11-01', ''),
(23, 25, 'Package Mgmt', 'package/list', 'package', 'icon-exchange', 1, 5, '2016-06-17', 'a:6:{s:8:\"imgwidth\";s:5:\"1920`\";s:9:\"imgheight\";s:4:\"1080\";s:12:\"subbimgwidth\";s:4:\"1920\";s:13:\"subbimgheight\";s:4:\"1080\";s:11:\"subimgwidth\";s:4:\"1920\";s:12:\"subimgheight\";s:4:\"1080\";}'),
(24, 25, 'Features Mgmt', 'features/list', 'features', 'icon-gear', 1, 1, '2016-11-16', ''),
(25, 0, 'Package Mgmt', 'package/list', '', 'icon-bullhorn', 1, 4, '2016-11-16', ''),
(26, 0, 'Activity Mgmt', 'activity/list', 'activity', '\r\nicon-hand-o-left', 0, 7, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:3:\"800\";s:9:\"imgheight\";s:3:\"600\";s:9:\"simgwidth\";s:3:\"400\";s:10:\"simgheight\";s:3:\"350\";}'),
(27, 0, 'Blog Mgmt', 'blog/list', 'blog', '\r\n\r\n\r\n\r\nicon-list-alt', 1, 8, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:4:\"1080\";}'),
(28, 0, 'Popup', 'popup/list', 'popup', 'icon-list', 1, 20, '2020-02-13', 'a:2:{s:8:\"imgwidth\";s:3:\"100\";s:9:\"imgheight\";s:3:\"300\";}'),
(29, 0, ' News/Events Mgmt', 'combinednews/list', 'combinednews', 'icon-tags', 1, 14, '2020-09-05', 'a:2:{s:8:\"imgwidth\";s:3:\"350\";s:9:\"imgheight\";s:3:\"240\";}'),
(30, 0, 'Product Mgmt', 'product/list', 'product', 'icon-list', 1, 1, '2021-11-25', ''),
(74, 0, 'Users', '', '', 'icon-users', 1, 1, '2021-10-03', ''),
(300, 0, 'FAQ', 'faq/list', 'faq', 'icon-list', 1, 8, '2023-08-31', ''),
(301, 0, 'Nearby ', 'nearby/list', 'nearby', 'icon-list', 1, 8, '2023-08-29', 'a:2:{s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:4:\"1080\";}'),
(302, 0, 'Vacancy Mgmt', 'vacency/list', 'vacency', 'icon-list', 1, 7, '2023-08-28', ''),
(303, 0, 'Main service Mgt', 'mservices/list', 'mservice', 'icon-list', 1, 6, '2023-09-01', 'a:2:{s:8:\"imgwidth\";s:2:\"12\";s:9:\"imgheight\";s:2:\"12\";}'),
(304, 0, 'OTA Mgmt', 'ota/list', 'ota', 'icon-google-plus', 0, 12, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:2:\"14\";s:9:\"imgheight\";s:2:\"13\";}'),
(305, 0, 'Nearby ', 'nearby/list', 'nearby', 'icon-list', 0, 8, '2023-08-29', ''),
(306, 74, 'User Group', 'usergroup/list', 'usergroup', 'icon-gears', 1, 3, '2023-10-10', ''),
(309, 0, 'Download Mgmt', 'download/list', 'download', 'icon-gear', 1, 7, '2024-03-28', ''),
(310, 0, 'Page Mgmt', 'pages/list', 'pages', 'icon-tags', 1, 3, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:4:\"1080\";}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nearby`
--

CREATE TABLE `tbl_nearby` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `google_embeded` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(11) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `distance` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(250) NOT NULL,
  `author` varchar(100) NOT NULL,
  `brief` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `news_date` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `image` varchar(50) NOT NULL,
  `source` longtext NOT NULL,
  `type` int(11) NOT NULL,
  `viewcount` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`id`, `slug`, `title`, `author`, `brief`, `content`, `news_date`, `archive_date`, `sortorder`, `status`, `image`, `source`, `type`, `viewcount`, `meta_keywords`, `meta_description`, `added_date`) VALUES
(1, 'hr', 'hr ', 'ClubHimalaya', ' rth rh  ryhg', '', '2025-11-18', '0000-00-00', 1, 1, '', '', 1, 0, '', '', '2025-11-03 11:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offers`
--

CREATE TABLE `tbl_offers` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `list_image` varchar(255) NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `rate` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `added_date` varchar(50) NOT NULL,
  `offer_date` varchar(50) NOT NULL,
  `start_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer_child`
--

CREATE TABLE `tbl_offer_child` (
  `offer_id` int(11) NOT NULL,
  `offer_pax` varchar(200) NOT NULL,
  `offer_usd` varchar(10) NOT NULL,
  `offer_inr` varchar(10) NOT NULL,
  `offer_npr` varchar(10) NOT NULL,
  `offer_no` int(11) NOT NULL,
  `multi_offer_title` varchar(255) NOT NULL,
  `multi_offer_npr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ota`
--

CREATE TABLE `tbl_ota` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_ota`
--

INSERT INTO `tbl_ota` (`id`, `title`, `image`, `icon`, `linksrc`, `status`, `sortorder`, `registered`) VALUES
(7, 'booking', 'guqcq-bo.png', '', '#', 1, 1, ''),
(8, 'agoda', '8fj3b-ag.png', '', '#', 1, 2, ''),
(9, 'expedia', 'hhqsu-ex.png', '', '#', 1, 3, ''),
(10, 'tripadvisor', 'qw86F-ta.png', '', '#', 1, 4, ''),
(11, 'Make My Trip', 'sFzjy-ma.png', '', '#', 1, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package`
--

CREATE TABLE `tbl_package` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(250) NOT NULL,
  `sub_title` text NOT NULL,
  `image` varchar(50) NOT NULL,
  `header_image` text NOT NULL,
  `banner_image` mediumtext NOT NULL,
  `detail` longtext NOT NULL,
  `content` mediumtext NOT NULL,
  `meta_title` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_sub`
--

CREATE TABLE `tbl_package_sub` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(200) NOT NULL,
  `detail` longtext NOT NULL,
  `image` mediumtext NOT NULL,
  `header_image` text NOT NULL,
  `image2` varchar(200) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `source_vid` varchar(255) NOT NULL,
  `three60_image` varchar(255) NOT NULL,
  `rojai_room_id` varchar(255) NOT NULL,
  `image4` varchar(200) NOT NULL,
  `feature` blob NOT NULL,
  `content` mediumtext NOT NULL,
  `facility_title` varchar(255) NOT NULL,
  `number_room` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `discount` int(11) NOT NULL,
  `people_qnty` int(11) NOT NULL,
  `onep_price` int(11) NOT NULL,
  `twop_price` int(11) NOT NULL,
  `threep_price` int(11) NOT NULL,
  `oneb_price` int(11) NOT NULL,
  `twob_price` int(11) NOT NULL,
  `threeb_price` int(11) NOT NULL,
  `extra_bed` varchar(10) NOT NULL,
  `short_title` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `serve` varchar(255) NOT NULL,
  `theatre_style` varchar(255) NOT NULL,
  `class_room_style` varchar(255) NOT NULL,
  `shape` varchar(255) NOT NULL,
  `round_table` varchar(255) NOT NULL,
  `clusture` varchar(255) NOT NULL,
  `cocktail` varchar(255) NOT NULL,
  `seats` varchar(20) NOT NULL,
  `meta_title` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `below_content` mediumtext NOT NULL,
  `seminar` varchar(50) NOT NULL,
  `meeting` varchar(50) NOT NULL,
  `events` varchar(50) NOT NULL,
  `conference` varchar(50) NOT NULL,
  `catering` varchar(50) NOT NULL,
  `celebration` varchar(50) NOT NULL,
  `organic_food` varchar(50) NOT NULL,
  `occupancy` varchar(50) NOT NULL,
  `view` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `service` varchar(50) NOT NULL,
  `live_music` varchar(50) NOT NULL,
  `bed` varchar(50) NOT NULL,
  `room_size` varchar(50) NOT NULL,
  `room_service` varchar(50) NOT NULL,
  `airport_pickup` varchar(50) NOT NULL,
  `private_balcony` varchar(50) NOT NULL,
  `checkinout` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE `tbl_pages` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL,
  `linksrc` tinyint(4) NOT NULL,
  `status` int(11) NOT NULL,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(11) NOT NULL,
  `image` text NOT NULL,
  `date` date NOT NULL,
  `category` varchar(50) NOT NULL,
  `upcoming` int(11) NOT NULL,
  `gallery_images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `parent_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `modified_date`, `sortorder`, `homepage`, `image`, `date`, `category`, `upcoming`, `gallery_images`) VALUES
(1, 0, 'sample-page', 'Sample Page', 'This is a subtitle', 'This is sample content', 0, 0, 1, 'Sample Meta Title', 'keyword1, keyword2', 'Sample Meta Description', 1, '2025-11-01 12:39:32', '2025-11-01 12:39:32', 1, 1, '', '2025-11-01', 'general', 1, ''),
(2, 0, 'sample-page', 'Sample Page', 'This is a subtitle', 'This is sample content', 0, 0, 1, 'Sample Meta Title', 'keyword1, keyword2', 'Sample Meta Description', 1, '2025-11-01 12:40:16', '2025-11-01 12:40:16', 2, 1, '', '2025-11-01', 'general', 1, ''),
(49, 0, 'nitish', 'nitish', '', '', 0, 0, 1, '', '', '', 0, '2025-11-05 10:44:52', '2025-11-05 10:53:58', 3, 0, '', '2025-11-12', '', 0, 'a:3:{i:0;s:24:\"IkEWI-Screenshot (8).png\";i:1;s:38:\"3kwb5-Screenshot 2025-11-03 151927.png\";i:2;s:24:\"f1YiP-Screenshot (7).png\";}'),
(50, 0, 'shakya', 'shakya', '', '', 0, 0, 1, '', '', '', 0, '2025-11-05 10:55:42', '2025-11-05 10:55:42', 4, 0, '1sKSh-Screenshot (8).png', '2025-11-03', '', 0, 'a:1:{i:0;s:38:\"IvsHY-Screenshot 2025-11-03 151927.png\";}'),
(52, 0, 'ram', 'ram', '', '', 0, 0, 1, '', '', '', 0, '2025-11-05 11:34:20', '2025-11-05 11:34:20', 2, 0, '', '2025-11-18', '', 0, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `id` int(11) NOT NULL,
  `type` varchar(5) NOT NULL,
  `group_id` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `module_id` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_popup`
--

CREATE TABLE `tbl_popup` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `source` varchar(250) NOT NULL,
  `linktype` varchar(150) NOT NULL,
  `linksrc` varchar(250) NOT NULL,
  `position` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_popup`
--

INSERT INTO `tbl_popup` (`id`, `title`, `date1`, `date2`, `image`, `source`, `linktype`, `linksrc`, `position`, `status`, `sortorder`, `type`, `slug`) VALUES
(2, 'asefasdasd', '2024-01-01', '2024-01-31', 'a:1:{i:0;s:22:\"nrUrx-880x864_img2.jpg\";}', '', '0', 'about-us', 1, 1, 1, 1, 'asefasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img_thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img_jpg` varchar(255) NOT NULL,
  `img_png` varchar(255) NOT NULL,
  `img_svg` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(255) NOT NULL,
  `modified_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_room_price`
--

CREATE TABLE `tbl_room_price` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `one_person` int(11) NOT NULL,
  `two_person` int(11) NOT NULL,
  `three_person` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `service_type` tinyint(1) NOT NULL,
  `brief` varchar(250) NOT NULL,
  `meta_title` tinyint(4) NOT NULL,
  `meta_keywords` int(11) NOT NULL,
  `meta_description` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slideshow`
--

CREATE TABLE `tbl_slideshow` (
  `id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `image` tinytext NOT NULL,
  `linksrc` tinytext NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `m_status` tinyint(1) NOT NULL DEFAULT 1,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `source` varchar(250) NOT NULL,
  `source_vid` varchar(255) NOT NULL,
  `url_type` varchar(50) NOT NULL,
  `thumb_image` longtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `class` varchar(100) NOT NULL,
  `mode` int(11) NOT NULL,
  `upcoming` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_slideshow`
--

INSERT INTO `tbl_slideshow` (`id`, `title`, `image`, `linksrc`, `linktype`, `content`, `status`, `m_status`, `added_date`, `sortorder`, `type`, `source`, `source_vid`, `url_type`, `thumb_image`, `url`, `host`, `class`, `mode`, `upcoming`) VALUES
(81, 'Slider', 'Uc6To-3.jpg', '', 0, '', 1, 0, '2024-12-17 13:32:22', 2, 0, '', '', '', '', '', '', '', 1, 1),
(84, 'Slider2', 'MGU4m-1.jpg', '', 0, '<h1>\r\n	We are coming, get ready for the best travel experience with us.</h1>\r\n', 1, 0, '2024-12-24 16:08:33', 1, 0, '', '', '', '', '', '', '', 1, 1),
(85, 'Slider1', 'TUGd6-2.jpg', '', 0, '', 1, 0, '2024-12-25 13:06:40', 3, 0, '', '', '', '', '', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slideshows_withouttlist`
--

CREATE TABLE `tbl_slideshows_withouttlist` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social_networking`
--

CREATE TABLE `tbl_social_networking` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_social_networking`
--

INSERT INTO `tbl_social_networking` (`id`, `title`, `image`, `icon`, `type`, `linksrc`, `status`, `sortorder`, `registered`) VALUES
(1, 'facebook', '', 'fa fa-facebook', 1, '#', 1, 1, '2025-02-25 11:12:21'),
(2, 'instagram', '', 'fa fa-instagram', 1, '#', 1, 2, '2025-02-25 11:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subpackage_images`
--

CREATE TABLE `tbl_subpackage_images` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `subpackageid` int(11) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_subpackage_images`
--

INSERT INTO `tbl_subpackage_images` (`id`, `title`, `subpackageid`, `detail`, `status`, `sortorder`, `registered`, `image`) VALUES
(73, 'Hall', 31, '', 1, 19, '2023-06-21 13:59:14', 'lumn1-1.jpg'),
(74, 'Hall', 31, '', 1, 20, '2023-06-21 13:59:14', 'TXYew-2.jpg'),
(75, 'Hall', 31, '', 1, 21, '2023-06-21 13:59:14', '3WSgO-3.jpg'),
(76, 'Hall', 31, '', 1, 22, '2023-06-21 13:59:14', 'V7UWD-4.jpg'),
(77, 'Hall', 31, '', 1, 23, '2023-06-21 13:59:14', 'IZ0in-5.jpg'),
(78, 'Hall', 31, '', 1, 24, '2023-06-21 13:59:14', 's8rXz-6.jpg'),
(96, 'n', 39, '', 1, 8, '2023-08-29 14:54:22', '1ftnO-img2.jpg'),
(97, 'nn', 39, '', 1, 17, '2023-08-29 14:54:22', 'T13H4-img2.jpg'),
(98, 'n', 39, '', 1, 18, '2023-08-29 14:54:22', '6ZaBg-img2.jpg'),
(105, 'dep', 28, '', 1, 2, '2023-09-04 12:42:45', 'h26jS-delpre.jpg'),
(106, 'dep', 28, '', 1, 9, '2023-09-04 12:42:45', '4PvHa-delpre.jpg'),
(107, 'dep', 28, '', 1, 14, '2023-09-04 12:42:45', 'aTYbg-delpre.jpg'),
(108, 'a', 42, '', 1, 4, '2023-09-04 12:58:24', 'Jpoxc-img3.jpg'),
(109, 'a', 42, '', 1, 10, '2023-09-04 12:58:24', 'Xlari-img3.jpg'),
(110, 's', 43, '', 1, 5, '2023-09-04 13:00:16', 'eUhDU-880x864_img2.jpg'),
(111, 's', 43, '', 1, 11, '2023-09-04 13:00:16', 'DlMGX-880x864_img2.jpg'),
(114, 'deluxe', 29, '', 1, 6, '2023-09-15 11:40:40', 'FFzBD-del.jpg'),
(115, 'delxue', 29, '', 1, 12, '2023-09-15 11:40:40', 'D5uYC-del.jpg'),
(116, 'deluxe', 29, '', 1, 15, '2023-09-15 11:40:40', 'ecYs1-del.jpg'),
(117, 'standard', 41, '', 1, 13, '2023-09-17 12:48:42', 'wath6-standard.jpg'),
(118, 'standard', 41, '', 1, 7, '2023-09-17 12:48:42', 'zSkxL-stand.jpg'),
(119, 'standard', 41, '', 1, 16, '2023-09-17 12:48:42', '8Ws0F-stand.jpg'),
(121, 'lib', 44, '', 1, 1, '2023-09-17 17:18:17', 'mEXDT-library.jpg'),
(122, 'lib', 44, '', 1, 3, '2023-09-17 17:18:17', 'nFb8K-library.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribers`
--

CREATE TABLE `tbl_subscribers` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `mailaddress` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `parentOf` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(225) NOT NULL,
  `linksrc` text NOT NULL,
  `content` mediumtext NOT NULL,
  `rating` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `via_type` varchar(200) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `optional_email` longtext NOT NULL,
  `hall_email` varchar(200) NOT NULL,
  `hr_email` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(65) NOT NULL,
  `accesskey` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `access_code` varchar(255) NOT NULL,
  `facebook_uid` varchar(255) NOT NULL,
  `facebook_accesstoken` varchar(255) NOT NULL,
  `facebook_tokenexpire` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `permission` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `first_name`, `middle_name`, `last_name`, `contact`, `email`, `optional_email`, `hall_email`, `hr_email`, `username`, `password`, `accesskey`, `image`, `group_id`, `access_code`, `facebook_uid`, `facebook_accesstoken`, `facebook_tokenexpire`, `status`, `sortorder`, `added_date`, `permission`) VALUES
(1, 'ClubHimalaya', '', '', '', 'statshakya@gmail.com', 'support@longtail.info', 'statshakya@gmail.com', 'statshakya@gmail.com', 'admin', '32b9da145699ea9058dd7d6669e6bcc5', 'VtbKtkIeayWIBxJaVZbat11KP', '', 2, 'IKLxivj8RW', '', '', '2021-04-29 05:40:38', 1, 1, '2014-03-26', 0x613a32313a7b693a303b733a313a2231223b693a313b733a313a2232223b693a323b733a313a2233223b693a333b733a323a223235223b693a343b733a323a223234223b693a353b733a323a223233223b693a363b733a313a2234223b693a373b733a333a22333032223b693a383b733a333a22333033223b693a393b733a313a2235223b693a31303b733a323a223237223b693a31313b733a333a22333030223b693a31323b733a333a22333031223b693a31333b733a323a223131223b693a31343b733a333a22333034223b693a31353b733a323a223137223b693a31363b733a323a223230223b693a31373b733a323a223238223b693a31383b733a323a223132223b693a31393b733a323a223133223b693a32303b733a323a223134223b7d),
(2, 'Super admin', '', '', '', 'support@longtail.info', 'support@longtail.info', 'support@longtail.info', 'support@longtail.info', 'superadmin', '4ef961d430016feab913571a25818e97', 'GLAVWPrmLQHvH8OTyCL9VdHeh', '', 1, '', '', '', '2023-11-09 10:05:54', 1, 0, '0000-00-00', 0x613a32363a7b693a303b733a323a223734223b693a313b733a313a2231223b693a323b733a333a22333036223b693a333b733a313a2232223b693a343b733a313a2233223b693a353b733a323a223235223b693a363b733a323a223234223b693a373b733a323a223233223b693a383b733a313a2234223b693a393b733a333a22333032223b693a31303b733a333a22333033223b693a31313b733a313a2235223b693a31323b733a323a223237223b693a31333b733a333a22333030223b693a31343b733a333a22333031223b693a31353b733a333a22333035223b693a31363b733a323a223131223b693a31373b733a323a223137223b693a31383b733a333a22333034223b693a31393b733a323a223230223b693a32303b733a323a223139223b693a32313b733a323a223238223b693a32323b733a323a223132223b693a32333b733a323a223133223b693a32343b733a323a223134223b693a32353b733a323a223136223b7d),
(3, 'asdasd', 'asdasd', 'asdasd', '', 'stat@gmail.com', 'stat@gmail.com', 'stat@gmail.com', 'stat@gmail.com', 'asdas', '80c9ef0fb86369cd25f90af27ef53a9e', 'XZtQjE8Rse66xhHG6sSVqzyDZ', '', 3, '', '', '', '0000-00-00 00:00:00', 1, 2, '2024-01-10', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vacency`
--

CREATE TABLE `tbl_vacency` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `post` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `pax` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `image` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_vacency`
--

INSERT INTO `tbl_vacency` (`id`, `title`, `post`, `location`, `slug`, `pax`, `content`, `date1`, `date2`, `archive_date`, `sortorder`, `status`, `image`, `type`, `meta_keywords`, `meta_description`, `added_date`) VALUES
(9, 'Asst. Laundry Manager', 'Manager', 'Kathmandu, Nepal', 'asst-laundry-manager', '1', '<p>\r\n	Bachelor</p>\r\n', '0000-00-00', '2023-08-31', '0000-00-00', 1, 1, '', 0, '', '', '2023-08-28 15:12:02'),
(10, 'Painter / Plumber', 'Painter / Plumber', 'Kathmandu, Nepal', 'painter-plumber', '1', '<p>\r\n	<span style=\"color: rgb(71, 61, 53); font-family: Roboto, sans-serif; font-size: 20px; background-color: rgb(247, 246, 246);\">Painter / Plumber</span></p>\r\n', '0000-00-00', '2023-09-22', '0000-00-00', 3, 1, '', 0, '', '', '2023-08-29 11:42:43'),
(12, 'Sales Executive', 'Sales Executive', 'patan', 'sales-executive', '1', '<p>\r\n	asdasd</p>\r\n', '0000-00-00', '2023-09-15', '0000-00-00', 2, 1, '', 0, '', '', '2023-09-03 15:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `source` varchar(200) NOT NULL,
  `url_type` varchar(50) NOT NULL,
  `title` longtext NOT NULL,
  `thumb_image` longtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `class` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_applicants`
--
ALTER TABLE `tbl_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_conbined_news`
--
ALTER TABLE `tbl_conbined_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_download`
--
ALTER TABLE `tbl_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_features`
--
ALTER TABLE `tbl_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mainservices`
--
ALTER TABLE `tbl_mainservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_metadata`
--
ALTER TABLE `tbl_metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nearby`
--
ALTER TABLE `tbl_nearby`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offer_child`
--
ALTER TABLE `tbl_offer_child`
  ADD KEY `offer_id` (`offer_id`);

--
-- Indexes for table `tbl_ota`
--
ALTER TABLE `tbl_ota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package`
--
ALTER TABLE `tbl_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package_sub`
--
ALTER TABLE `tbl_package_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_room_price`
--
ALTER TABLE `tbl_room_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slideshows_withouttlist`
--
ALTER TABLE `tbl_slideshows_withouttlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subpackage_images`
--
ALTER TABLE `tbl_subpackage_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vacency`
--
ALTER TABLE `tbl_vacency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_applicants`
--
ALTER TABLE `tbl_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_conbined_news`
--
ALTER TABLE `tbl_conbined_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `tbl_download`
--
ALTER TABLE `tbl_download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_features`
--
ALTER TABLE `tbl_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1253;

--
-- AUTO_INCREMENT for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_mainservices`
--
ALTER TABLE `tbl_mainservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_metadata`
--
ALTER TABLE `tbl_metadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `tbl_nearby`
--
ALTER TABLE `tbl_nearby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_ota`
--
ALTER TABLE `tbl_ota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_package`
--
ALTER TABLE `tbl_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_package_sub`
--
ALTER TABLE `tbl_package_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_room_price`
--
ALTER TABLE `tbl_room_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tbl_slideshows_withouttlist`
--
ALTER TABLE `tbl_slideshows_withouttlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_subpackage_images`
--
ALTER TABLE `tbl_subpackage_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_vacency`
--
ALTER TABLE `tbl_vacency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
