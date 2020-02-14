-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2020 at 03:29 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `owa`
--

-- --------------------------------------------------------

--
-- Table structure for table `owa_action_fact`
--

CREATE TABLE `owa_action_fact` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `action_name` varchar(255) DEFAULT NULL,
  `action_label` varchar(255) DEFAULT NULL,
  `action_group` varchar(255) DEFAULT NULL,
  `numeric_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_ad_dim`
--

CREATE TABLE `owa_ad_dim` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_campaign_dim`
--

CREATE TABLE `owa_campaign_dim` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_click`
--

CREATE TABLE `owa_click` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `last_impression_id` bigint(20) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `target_url` varchar(255) DEFAULT NULL,
  `hour` tinyint(2) DEFAULT NULL,
  `minute` tinyint(2) DEFAULT NULL,
  `second` int(11) DEFAULT NULL,
  `msec` varchar(255) DEFAULT NULL,
  `click_x` int(11) DEFAULT NULL,
  `click_y` int(11) DEFAULT NULL,
  `page_width` int(11) DEFAULT NULL,
  `page_height` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `approx_position` bigint(20) DEFAULT NULL,
  `dom_element_x` int(11) DEFAULT NULL,
  `dom_element_y` int(11) DEFAULT NULL,
  `dom_element_name` varchar(255) DEFAULT NULL,
  `dom_element_id` varchar(255) DEFAULT NULL,
  `dom_element_value` varchar(255) DEFAULT NULL,
  `dom_element_tag` varchar(255) DEFAULT NULL,
  `dom_element_text` varchar(255) DEFAULT NULL,
  `dom_element_class` varchar(255) DEFAULT NULL,
  `dom_element_parent_id` varchar(255) DEFAULT NULL,
  `tag_id` bigint(20) DEFAULT NULL,
  `placement_id` bigint(20) DEFAULT NULL,
  `ad_group_id` bigint(20) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_click`
--

INSERT INTO `owa_click` (`id`, `visitor_id`, `session_id`, `site_id`, `referer_id`, `ua_id`, `host_id`, `os_id`, `location_id`, `referring_search_term_id`, `timestamp`, `yyyymmdd`, `year`, `month`, `day`, `dayofweek`, `dayofyear`, `weekofyear`, `last_req`, `ip_address`, `is_new_visitor`, `is_repeat_visitor`, `language`, `days_since_prior_session`, `days_since_first_session`, `num_prior_sessions`, `medium`, `source_id`, `ad_id`, `campaign_id`, `user_name`, `cv1_name`, `cv1_value`, `cv2_name`, `cv2_value`, `cv3_name`, `cv3_value`, `cv4_name`, `cv4_value`, `cv5_name`, `cv5_value`, `last_impression_id`, `document_id`, `target_id`, `target_url`, `hour`, `minute`, `second`, `msec`, `click_x`, `click_y`, `page_width`, `page_height`, `position`, `approx_position`, `dom_element_x`, `dom_element_y`, `dom_element_name`, `dom_element_id`, `dom_element_value`, `dom_element_tag`, `dom_element_text`, `dom_element_class`, `dom_element_parent_id`, `tag_id`, `placement_id`, `ad_group_id`, `host`) VALUES
(1581686225225259624, 1581686202475531008, 1581686202451286814, 'e0eb2f42ec054a3a7ac652dc319715a5', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581686224, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1020323368, 1425939140, 'https://wallstudio.lk', 5, 17, 4, '0.04258600', 372, 38, 1366, 685, 37238, 0, 139, 18, '(not set)', 'logo', '(not set)', 'IMG', 'Wall Studio', '(not set)', '', 0, 0, 0, '(not set)'),
(1581686367084374624, 1581686359676704434, 1581686359418841173, 'e0eb2f42ec054a3a7ac652dc319715a5', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581686367, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1414471744, 0, '', 5, 19, 27, '0.15587700', 676, 1541, 1366, 685, 6761541, 0, 135, 1522, '(not set)', '(not set)', '(not set)', 'H2', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581686367280433624, 1581686359676704434, 1581686359418841173, 'e0eb2f42ec054a3a7ac652dc319715a5', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581686367, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1414471744, 4275843151, 'undefined', 5, 19, 27, '0.64452200', 650, 1723, 1366, 685, 6501723, 0, 515, 1645, '(not set)', '(not set)', '(not set)', 'IMG', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581686368036111624, 1581686359676704434, 1581686359418841173, 'e0eb2f42ec054a3a7ac652dc319715a5', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581686368, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1414471744, 4275843151, 'undefined', 5, 19, 28, '0.33136400', 1013, 1720, 1366, 685, 10131720, 0, 894, 1645, '(not set)', '(not set)', '(not set)', 'IMG', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581686374056200624, 1581686359676704434, 1581686359418841173, 'e0eb2f42ec054a3a7ac652dc319715a5', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581686374, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1414471744, 1289981064, 'https://www.instagram.com/wallstudio.lk', 5, 19, 34, '0.41233400', 708, 4309, 1366, 685, 7084309, 0, 687, 4278, '(not set)', '(not set)', '(not set)', 'A', 'Follow', 'icon et_pb_with_border', '', 0, 0, 0, '(not set)'),
(1581687244144422624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687244, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 4, '0.40976200', 757, 242, 1366, 685, 757242, 0, 695, 222, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary shop-item-button float-right ml-4', '', 0, 0, 0, '(not set)'),
(1581687245438757624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687245, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 5, '0.77857400', 1086, 198, 1366, 685, 1086198, 0, 917, 189, '(not set)', '(not set)', '2', 'INPUT', '2', 'cart-quantity-input', '', 0, 0, 0, '(not set)'),
(1581687246055225624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687245, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 5, '0.08415100', 1088, 199, 1366, 685, 1088199, 0, 917, 189, '(not set)', '(not set)', '3', 'INPUT', '3', 'cart-quantity-input', '', 0, 0, 0, '(not set)'),
(1581687246514310624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687246, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 6, '0.59044500', 1088, 199, 1366, 685, 1088199, 0, 917, 189, '(not set)', '(not set)', '5', 'INPUT', '5', 'cart-quantity-input', '', 0, 0, 0, '(not set)'),
(1581687246577898624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687246, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 6, '0.30697200', 1088, 199, 1366, 685, 1088199, 0, 917, 189, '(not set)', '(not set)', '4', 'INPUT', '4', 'cart-quantity-input', '', 0, 0, 0, '(not set)'),
(1581687246937486624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687246, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 6, '0.73816500', 1088, 199, 1366, 685, 1088199, 0, 917, 189, '(not set)', '(not set)', '7', 'INPUT', '7', 'cart-quantity-input', '', 0, 0, 0, '(not set)'),
(1581687246969497624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687246, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 6, '0.52755200', 1088, 199, 1366, 685, 1088199, 0, 917, 189, '(not set)', '(not set)', '6', 'INPUT', '6', 'cart-quantity-input', '', 0, 0, 0, '(not set)'),
(1581687246994309624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687246, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 6, '0.78889200', 1088, 199, 1366, 685, 1088199, 0, 917, 189, '(not set)', '(not set)', '8', 'INPUT', '8', 'cart-quantity-input', '', 0, 0, 0, '(not set)'),
(1581687247574092624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687247, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 7, '0.46580400', 761, 381, 1366, 685, 761381, 0, 695, 356, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary shop-item-button float-right ml-4', '', 0, 0, 0, '(not set)'),
(1581687248598055624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687248, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 8, '0.78519700', 1082, 305, 1366, 685, 1082305, 0, 917, 294, '(not set)', '(not set)', '2', 'INPUT', '2', 'cart-quantity-input', '', 0, 0, 0, '(not set)'),
(1581687248696850624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687248, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 8, '0.93167400', 1082, 305, 1366, 685, 1082305, 0, 917, 294, '(not set)', '(not set)', '3', 'INPUT', '3', 'cart-quantity-input', '', 0, 0, 0, '(not set)'),
(1581687249027219624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687249, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 9, '0.22136800', 1082, 305, 1366, 685, 1082305, 0, 917, 294, '(not set)', '(not set)', '5', 'INPUT', '5', 'cart-quantity-input', '', 0, 0, 0, '(not set)'),
(1581687249073112624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687249, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 9, '0.63216500', 1082, 305, 1366, 685, 1082305, 0, 917, 294, '(not set)', '(not set)', '8', 'INPUT', '8', 'cart-quantity-input', '', 0, 0, 0, '(not set)'),
(1581687249135959624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687249, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 9, '0.49244300', 1082, 305, 1366, 685, 1082305, 0, 917, 294, '(not set)', '(not set)', '7', 'INPUT', '7', 'cart-quantity-input', '', 0, 0, 0, '(not set)'),
(1581687249381727624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687249, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 9, '0.06502700', 1082, 305, 1366, 685, 1082305, 0, 917, 294, '(not set)', '(not set)', '4', 'INPUT', '4', 'cart-quantity-input', '', 0, 0, 0, '(not set)'),
(1581687249395185624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687249, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 9, '0.36393900', 1082, 305, 1366, 685, 1082305, 0, 917, 294, '(not set)', '(not set)', '6', 'INPUT', '6', 'cart-quantity-input', '', 0, 0, 0, '(not set)'),
(1581687249612189624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687249, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 9, '0.78389700', 1082, 305, 1366, 685, 1082305, 0, 917, 294, '(not set)', '(not set)', '9', 'INPUT', '9', 'cart-quantity-input', '', 0, 0, 0, '(not set)'),
(1581687249623425624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687249, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 9, '0.91441700', 1082, 305, 1366, 685, 1082305, 0, 917, 294, '(not set)', '(not set)', '10', 'INPUT', '10', 'cart-quantity-input', '', 0, 0, 0, '(not set)'),
(1581687252142657624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687252, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 12, '0.79030900', 972, 425, 1366, 685, 972425, 0, 878, 128, '(not set)', '(not set)', '(not set)', 'DIV', '', 'card-body overflow-auto', '', 0, 0, 0, '(not set)'),
(1581687252542151624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687252, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 12, '0.23874900', 1262, 165, 1366, 685, 1262165, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'A', 'Clear order', 'dropdown-item', '', 0, 0, 0, '(not set)'),
(1581687254402469624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687254, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 14, '0.25651700', 902, 488, 1366, 685, 902488, 0, 888, 472, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary', '', 0, 0, 0, '(not set)'),
(1581687255275622624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687255, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 15, '0.54971700', 868, 438, 1366, 685, 868438, 0, 0, 0, '(not set)', 'paymentModal', '(not set)', 'DIV', '', 'modal fade', '', 0, 0, 0, '(not set)'),
(1581687256191768624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687256, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 16, '0.77692900', 939, 488, 1366, 685, 939488, 0, 888, 472, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary', '', 0, 0, 0, '(not set)'),
(1581687257303178624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687257, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 17, '0.38427100', 937, 568, 1366, 685, 937568, 0, 0, 0, '(not set)', 'paymentModal', '(not set)', 'DIV', '', 'modal fade', '', 0, 0, 0, '(not set)'),
(1581687258943001624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687258, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 18, '0.44049200', 910, 484, 1366, 685, 910484, 0, 888, 472, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary', '', 0, 0, 0, '(not set)'),
(1581687259646800624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687259, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 19, '0.31160700', 679, 123, 1366, 685, 679123, 0, 446, 101, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary btn-purchase btn-block', '', 0, 0, 0, '(not set)'),
(1581687260479913624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687260, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 20, '0.27673300', 690, 442, 1366, 685, 690442, 0, 643, 411, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'swal2-confirm swal2-styled', '', 0, 0, 0, '(not set)'),
(1581687262545532624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687262, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 22, '0.16151300', 658, 368, 1366, 685, 658368, 0, 596, 758, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary view-item-button float-right', '', 0, 0, 0, '(not set)'),
(1581687263018456624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687263, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 5, 34, 23, '0.52589900', 888, 535, 1366, 685, 888535, 0, 867, 123, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary', '', 0, 0, 0, '(not set)'),
(1581687272056061624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687272, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687265, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 3282387290, 0, '', 5, 34, 32, '0.36510600', 968, 323, 1366, 685, 968323, 0, 823, 145, '(not set)', 'cancelled', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581687272674557624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687272, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687265, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 3282387290, 0, '', 5, 34, 32, '0.68361300', 664, 300, 1366, 685, 664300, 0, 257, 145, '(not set)', 'pending', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581687273627291624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687272, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687265, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 3282387290, 0, '', 5, 34, 32, '0.06717800', 667, 286, 1366, 685, 667286, 0, 257, 145, '(not set)', 'pending', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581687273955614624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687273, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687265, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 3282387290, 0, '', 5, 34, 33, '0.34440100', 1027, 296, 1366, 685, 1027296, 0, 823, 285, '(not set)', '(not set)', '(not set)', 'P', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581687274899703624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687274, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687265, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 3282387290, 0, '', 5, 34, 34, '0.81858000', 1076, 177, 1366, 685, 1076177, 0, 818, 145, '(not set)', '(not set)', '(not set)', 'DIV', '', 'form-row', '', 0, 0, 0, '(not set)'),
(1581687276085812624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687276, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687265, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 3282387290, 0, '', 5, 34, 36, '0.20303500', 1261, 80, 1366, 685, 126180, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'A', '\n                  \n                  Profile\n                ', 'dropdown-item text-dark btn', '', 0, 0, 0, '(not set)'),
(1581687284535441624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687284, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687265, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 3282387290, 0, '', 5, 34, 44, '0.41896500', 1204, 922, 1366, 685, 1204922, 0, 1173, 904, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary view-item-button float-right', '', 0, 0, 0, '(not set)'),
(1581687285667085624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687285, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687265, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 3282387290, 0, '', 5, 34, 45, '0.78277900', 891, 766, 1366, 685, 891766, 0, 867, 123, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary', '', 0, 0, 0, '(not set)'),
(1581687286655391624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687286, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687265, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 3282387290, 0, '', 5, 34, 46, '0.64340300', 1202, 719, 1366, 685, 1202719, 0, 1173, 706, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary view-item-button float-right', '', 0, 0, 0, '(not set)'),
(1581687287178585624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687287, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687265, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 3282387290, 0, '', 5, 34, 47, '0.90504100', 887, 786, 1366, 685, 887786, 0, 425, 248, '(not set)', '(not set)', '(not set)', 'DIV', '', 'modal-footer', '', 0, 0, 0, '(not set)'),
(1581687288675481624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687288, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687265, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 3282387290, 0, '', 5, 34, 48, '0.36361000', 883, 799, 1366, 685, 883799, 0, 867, 123, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary', '', 0, 0, 0, '(not set)'),
(1581687293586676624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687293, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 34, 53, '0.84441300', 828, 220, 1366, 685, 828220, 0, 453, 163, '(not set)', '(not set)', '(not set)', 'H1', '', 'text-center h3 mb-1 text-gray-800 p-3 font-weight-bold', '', 0, 0, 0, '(not set)'),
(1581687294637981624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687294, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 34, 54, '0.92552500', 0, 0, 1366, 685, 0, 0, 616, 300, '(not set)', '(not set)', '-LtDX7cppbr8hYnd8oSX', 'OPTION', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581687294644858624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687294, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 34, 54, '0.24403800', 0, 0, 1366, 685, 0, 0, 615, 224, '(not set)', 'order_id', '(not set)', 'SELECT', '', 'form-control mr-4', '', 0, 0, 0, '(not set)'),
(1581687295839877624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687295, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 34, 55, '0.78113300', 0, 0, 1366, 685, 0, 0, 615, 224, '(not set)', 'order_id', '(not set)', 'SELECT', '', 'form-control mr-4', '', 0, 0, 0, '(not set)'),
(1581687296630760624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687296, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 34, 56, '0.36525200', 0, 0, 1366, 685, 0, 0, 616, 433, '(not set)', '(not set)', '-LyNWzXEBBCwjphdpMJ-', 'OPTION', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581687297186922624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687297, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 34, 57, '0.79132000', 1064, 232, 1366, 685, 1064232, 0, 998, 224, '(not set)', 'viewOrder', '(not set)', 'BUTTON', '', 'btn btn-primary btn-user', '', 0, 0, 0, '(not set)'),
(1581687297704119624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687297, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 34, 57, '0.09265800', 554, 195, 1366, 685, 554195, 0, 453, 163, '(not set)', '(not set)', '(not set)', 'H1', '', 'text-center h3 mb-1 text-gray-800 p-3 font-weight-bold', '', 0, 0, 0, '(not set)'),
(1581687300040098624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687300, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 35, 0, '0.20749100', 883, 299, 1366, 685, 883299, 0, 867, 123, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary', '', 0, 0, 0, '(not set)'),
(1581687301694940624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687301, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 35, 1, '0.06866000', 1259, 379, 1366, 685, 1259379, 0, 213, 121, '(not set)', '(not set)', '(not set)', 'DIV', '', 'row justify-content-center', '', 0, 0, 0, '(not set)'),
(1581687302547933624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687302, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 35, 2, '0.37358000', 917, 521, 1366, 685, 917521, 0, 482, 499, '(not set)', 'feedback', '(not set)', 'BUTTON', '', 'btn btn-primary btn-user btn-block', '', 0, 0, 0, '(not set)'),
(1581687303407139624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687303, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 35, 3, '0.35316100', 698, 441, 1366, 685, 698441, 0, 643, 411, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'swal2-confirm swal2-styled', '', 0, 0, 0, '(not set)'),
(1581687304779770624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687304, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 35, 4, '0.33082300', 1262, 398, 1366, 685, 1262398, 0, 213, 121, '(not set)', '(not set)', '(not set)', 'DIV', '', 'row justify-content-center', '', 0, 0, 0, '(not set)'),
(1581687411467518624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687411, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 36, 51, '0.51265100', 101, 251, 1366, 685, 101251, 0, 28, 258, '(not set)', 'sidebarToggle', '(not set)', 'BUTTON', '', 'rounded-circle border-0', '', 0, 0, 0, '(not set)'),
(1581687412490551624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687412, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 36, 52, '0.87860100', 90, 430, 1366, 685, 90430, 0, 0, 413, '(not set)', '(not set)', '(not set)', 'A', '\n          \n          Delete Account\n        ', 'nav-link text-center btn btn-danger mt-5', '', 0, 0, 0, '(not set)'),
(1581687412727444624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687412, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 36, 52, '0.22112300', 45, 272, 1366, 685, 45272, 0, 81, 238, '(not set)', 'sidebarToggle', '(not set)', 'BUTTON', '', 'rounded-circle border-0', '', 0, 0, 0, '(not set)'),
(1581687415220689624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687414, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 36, 54, '0.08701600', 867, 161, 1366, 685, 867161, 0, 838, 144, '(not set)', '(not set)', '(not set)', 'A', 'Signout', 'btn btn-primary text-white', '', 0, 0, 0, '(not set)'),
(1581687416418840624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687416, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 36, 56, '0.37062900', 712, 247, 1366, 685, 712247, 0, 477, 206, '(not set)', '(not set)', '(not set)', 'DIV', '', 'swal2-header', '', 0, 0, 0, '(not set)'),
(1581687417351557624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687417, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 36, 57, '0.40074500', 667, 455, 1366, 685, 667455, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'swal2-confirm swal2-styled', '', 0, 0, 0, '(not set)'),
(1581687418027434624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687418, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 36, 58, '0.11099800', 682, 447, 1366, 685, 682447, 0, 643, 422, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'swal2-confirm swal2-styled', '', 0, 0, 0, '(not set)'),
(1581687418457066624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687418, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 5, 36, 58, '0.83668000', 358, 425, 1366, 685, 358425, 0, 213, 121, '(not set)', '(not set)', '(not set)', 'DIV', '', 'row justify-content-center', '', 0, 0, 0, '(not set)'),
(1581687420511645624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687420, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 2877958510, 'http://localhost/altum/feedback.html', 5, 37, 0, '0.90340100', 1264, 116, 1366, 685, 1264116, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'A', '\n                  \n                  Logout\n                ', 'dropdown-item bg-secondary text-white font-weight-bold', '', 0, 0, 0, '(not set)'),
(1581687422140540624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687422, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687290, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 39983735, 0, '', 5, 37, 2, '0.98295900', 868, 150, 1366, 685, 868150, 0, 737, 130, '(not set)', 'Email', '(not set)', 'INPUT', '', 'form-control form-control-user', '', 0, 0, 0, '(not set)'),
(1581687423508243624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687423, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687290, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 39983735, 0, '', 5, 37, 3, '0.99125700', 703, 212, 1366, 685, 703212, 0, 695, 42, '(not set)', '(not set)', '(not set)', 'DIV', '', 'p-5', '', 0, 0, 0, '(not set)'),
(1581687515389229624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687515, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687437, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1242454461, 0, '', 5, 38, 35, '0.99750200', 956, 446, 1366, 685, 956446, 0, 924, 417, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary btn-user float-right w-25', '', 0, 0, 0, '(not set)'),
(1581687522440519624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687522, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687518, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1242454461, 1242454461, 'http://localhost/altum/customer_signup.html', 5, 38, 42, '0.73192100', 272, 397, 1366, 685, 272397, 0, 202, 383, '(not set)', '(not set)', '(not set)', 'A', 'Click here to set the location', '(not set)', '', 0, 0, 0, '(not set)'),
(1581687529714337624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687529, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687518, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1242454461, 0, '', 5, 38, 49, '0.36492200', 905, 507, 1366, 685, 905507, 0, 853, 489, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary', '', 0, 0, 0, '(not set)'),
(1581687531929783624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687531, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687520, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 39983735, 0, '', 5, 38, 51, '0.88922400', 896, 154, 1366, 685, 896154, 0, 737, 130, '(not set)', 'Email', '(not set)', 'INPUT', '', 'form-control form-control-user', '', 0, 0, 0, '(not set)'),
(1581687542727223624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687542, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687520, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 39983735, 0, '', 5, 39, 2, '0.73307600', 857, 295, 1366, 685, 857295, 0, 737, 267, '(not set)', '(not set)', '(not set)', 'A', 'Login', 'btn btn-primary btn-user btn-block', '', 0, 0, 0, '(not set)'),
(1581687556336051624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687555, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687531, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 3854414048, 3854414048, 'http://localhost/altum/dashboard.html', 5, 39, 15, '0.03404200', 149, 176, 1366, 685, 149176, 0, 0, 140, '(not set)', '(not set)', '(not set)', 'A', '\n              \n            Inventory\n          ', 'nav-link', '', 0, 0, 0, '(not set)'),
(1581687563370497624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687563, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687545, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2969082592, 0, '', 5, 39, 23, '0.07706500', 1238, 168, 1366, 685, 1238168, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'A', 'Bulb', 'dropdown-item', '', 0, 0, 0, '(not set)'),
(1581687566539202624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687566, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687545, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2969082592, 0, '', 5, 39, 26, '0.27168400', 1232, 292, 1366, 685, 1232292, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'A', 'Changeover', 'dropdown-item', '', 0, 0, 0, '(not set)'),
(1581687569363526624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687569, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687545, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2969082592, 0, '', 5, 39, 29, '0.44882100', 1199, 351, 1366, 685, 1199351, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'A', 'Clear filters', 'dropdown-item', '', 0, 0, 0, '(not set)');
INSERT INTO `owa_click` (`id`, `visitor_id`, `session_id`, `site_id`, `referer_id`, `ua_id`, `host_id`, `os_id`, `location_id`, `referring_search_term_id`, `timestamp`, `yyyymmdd`, `year`, `month`, `day`, `dayofweek`, `dayofyear`, `weekofyear`, `last_req`, `ip_address`, `is_new_visitor`, `is_repeat_visitor`, `language`, `days_since_prior_session`, `days_since_first_session`, `num_prior_sessions`, `medium`, `source_id`, `ad_id`, `campaign_id`, `user_name`, `cv1_name`, `cv1_value`, `cv2_name`, `cv2_value`, `cv3_name`, `cv3_value`, `cv4_name`, `cv4_value`, `cv5_name`, `cv5_value`, `last_impression_id`, `document_id`, `target_id`, `target_url`, `hour`, `minute`, `second`, `msec`, `click_x`, `click_y`, `page_width`, `page_height`, `position`, `approx_position`, `dom_element_x`, `dom_element_y`, `dom_element_name`, `dom_element_id`, `dom_element_value`, `dom_element_tag`, `dom_element_text`, `dom_element_class`, `dom_element_parent_id`, `tag_id`, `placement_id`, `ad_group_id`, `host`) VALUES
(1581687574966015624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687574, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687545, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2969082592, 2969082592, 'http://localhost/altum/stock.html', 5, 39, 34, '0.70593100', 74, 225, 1366, 685, 74225, 0, 0, 189, '(not set)', '(not set)', '(not set)', 'A', '\n          \n          Tracking\n        ', 'nav-link', '', 0, 0, 0, '(not set)'),
(1581687583719658624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687583, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687558, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1007114786, 0, '', 5, 39, 43, '0.45338100', 632, 366, 1366, 685, 632366, 0, 217, 130, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581687588325515624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687588, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687558, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1007114786, 0, '', 5, 39, 48, '0.74414500', 1326, 484, 1366, 685, 1326484, 0, 1312, 478, '(not set)', 'you_location_img', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581687593067106624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687593, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687558, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1007114786, 0, '', 5, 39, 53, '0.49670600', 322, 108, 1366, 685, 322108, 0, 231, 82, '(not set)', 'track_id', '(not set)', 'INPUT', '', 'form-control bg-white border-0 small', '', 0, 0, 0, '(not set)'),
(1581687594305422624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687594, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687558, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1007114786, 0, '', 5, 39, 54, '0.92368800', 319, 135, 1366, 685, 319135, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581687595974243624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687595, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687558, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1007114786, 0, '', 5, 39, 55, '0.71324500', 441, 105, 1366, 685, 441105, 0, 438, 92, '(not set)', '(not set)', '(not set)', 'I', '', 'fas fa-search fa-sm', '', 0, 0, 0, '(not set)'),
(1581687597125800624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687597, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687558, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1007114786, 0, '', 5, 39, 57, '0.65629300', 141, 122, 1366, 685, 141122, 0, 231, 82, '(not set)', 'track_id', '(not set)', 'INPUT', 'Sachini Nayanathara', 'form-control bg-white border-0 small', '', 0, 0, 0, '(not set)'),
(1581687598590606624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687598, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687558, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1007114786, 0, '', 5, 39, 58, '0.36237200', 280, 142, 1366, 685, 280142, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581687599584573624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687599, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687558, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1007114786, 0, '', 5, 39, 59, '0.13034900', 445, 91, 1366, 685, 44591, 0, 427, 82, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary', '', 0, 0, 0, '(not set)'),
(1581687600487619624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687600, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687558, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1007114786, 0, '', 5, 40, 0, '0.36389500', 670, 429, 1366, 685, 670429, 0, 643, 411, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'swal2-confirm swal2-styled', '', 0, 0, 0, '(not set)'),
(1581687601579791624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687601, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687558, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1007114786, 0, '', 5, 40, 1, '0.69193200', 770, 364, 1366, 685, 770364, 0, 769, 350, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581687602428378624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687602, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687558, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1007114786, 0, '', 5, 40, 2, '0.09357500', 779, 352, 1366, 685, 779352, 0, 769, 350, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581687603471963624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687603, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687558, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1007114786, 0, '', 5, 40, 3, '0.21955500', 882, 270, 1366, 685, 882270, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'gm-ui-hover-effect', '', 0, 0, 0, '(not set)'),
(1581687604474061624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687604, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687558, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1007114786, 0, '', 5, 40, 4, '0.87365100', 117, 131, 1366, 685, 117131, 0, 231, 82, '(not set)', 'track_id', '(not set)', 'INPUT', 'John Wayne', 'form-control bg-white border-0 small', '', 0, 0, 0, '(not set)'),
(1581687605809255624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687605, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687558, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1007114786, 0, '', 5, 40, 5, '0.57358700', 294, 148, 1366, 685, 294148, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581687606411928624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687606, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687558, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1007114786, 0, '', 5, 40, 6, '0.31252900', 436, 102, 1366, 685, 436102, 0, 427, 82, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary', '', 0, 0, 0, '(not set)'),
(1581687607548111624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687607, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687558, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1007114786, 0, '', 5, 40, 7, '0.39065300', 601, 346, 1366, 685, 601346, 0, 217, 130, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581687608408170624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687608, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687558, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1007114786, 0, '', 5, 40, 8, '0.18627000', 464, 113, 1366, 685, 464113, 0, 217, 82, '(not set)', '(not set)', '(not set)', 'DIV', '', 'mb-3', '', 0, 0, 0, '(not set)'),
(1581687608686436624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687608, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687558, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1007114786, 0, '', 5, 40, 8, '0.44192200', 446, 98, 1366, 685, 44698, 0, 438, 92, '(not set)', '(not set)', '(not set)', 'I', '', 'fas fa-search fa-sm', '', 0, 0, 0, '(not set)'),
(1581687991525506963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687991, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687576, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 3854414048, 3854414048, 'http://localhost/altum/dashboard.html', 5, 46, 31, '0.64657700', 1243, 78, 1366, 685, 124378, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'A', '\n                  \n                  Logout\n                ', 'dropdown-item', '', 0, 0, 0, '(not set)'),
(1581689633211464963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689633, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689623, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2238633484, 0, '', 6, 13, 53, '0.55354800', 1264, 131, 1366, 685, 1264131, 0, 1208, 114, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'float-right mb-2 d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm', '', 0, 0, 0, '(not set)'),
(1581689642988621963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689642, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689631, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2238633484, 0, '', 6, 14, 2, '0.76937500', 1217, 791, 1366, 685, 1217791, 0, 1147, 770, '(not set)', '(not set)', '(not set)', 'INPUT', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689643611462963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689643, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689631, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2238633484, 0, '', 6, 14, 3, '0.81905000', 1252, 747, 1366, 685, 1252747, 0, 1208, 735, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'float-right mb-2 d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm', '', 0, 0, 0, '(not set)'),
(1581689648208308963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689648, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689637, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2238633484, 2238633484, 'http://localhost/altum/reports.html', 6, 14, 8, '0.18612300', 108, 262, 1366, 685, 108262, 0, 0, 238, '(not set)', '(not set)', '(not set)', 'A', '\n          \n          Sales\n        ', 'nav-link', '', 0, 0, 0, '(not set)'),
(1581689650019854963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689650, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689646, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 880573091, 0, '', 6, 14, 10, '0.87924700', 430, 230, 1366, 685, 430230, 0, 365, 213, '(not set)', 'salesperson-search', '(not set)', 'INPUT', '', 'form-control border-0 small', '', 0, 0, 0, '(not set)'),
(1581689651109673963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689651, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689646, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 880573091, 0, '', 6, 14, 11, '0.83748900', 431, 249, 1366, 685, 431249, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689652277915963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689652, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689646, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 880573091, 0, '', 6, 14, 12, '0.51894100', 558, 239, 1366, 685, 558239, 0, 365, 213, '(not set)', 'salesperson-search', '(not set)', 'INPUT', 'Sachini Nayanathara', 'form-control border-0 small', '', 0, 0, 0, '(not set)'),
(1581689652524167963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689652, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689646, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 880573091, 0, '', 6, 14, 12, '0.93285100', 573, 232, 1366, 685, 573232, 0, 572, 223, '(not set)', '(not set)', '(not set)', 'I', '', 'fas fa-search fa-sm', '', 0, 0, 0, '(not set)'),
(1581689657212963963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689657, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689646, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 880573091, 0, '', 6, 14, 17, '0.60222300', 297, 219, 1366, 685, 297219, 0, 365, 213, '(not set)', 'salesperson-search', '(not set)', 'INPUT', 'Sachini Nayanathara', 'form-control border-0 small', '', 0, 0, 0, '(not set)'),
(1581689658227319963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689658, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689646, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 880573091, 0, '', 6, 14, 18, '0.19362200', 412, 253, 1366, 685, 412253, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689658954380963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689658, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689646, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 880573091, 0, '', 6, 14, 18, '0.91280300', 573, 223, 1366, 685, 573223, 0, 561, 213, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary', '', 0, 0, 0, '(not set)'),
(1581689660530612963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689660, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689646, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 880573091, 880573091, 'http://localhost/altum/salespersons.html', 6, 14, 20, '0.86502400', 94, 339, 1366, 685, 94339, 0, 0, 316, '(not set)', '(not set)', '(not set)', 'A', '\n          \n          Customers\n        ', 'nav-link', '', 0, 0, 0, '(not set)'),
(1581689662217693963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689662, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689649, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 985230480, 0, '', 6, 14, 22, '0.78028600', 440, 234, 1366, 685, 440234, 0, 365, 213, '(not set)', 'customer-search', '(not set)', 'INPUT', '', 'form-control border-0 small', '', 0, 0, 0, '(not set)'),
(1581689665008424963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689665, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689649, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 985230480, 0, '', 6, 14, 25, '0.18260300', 436, 258, 1366, 685, 436258, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689665611813963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689665, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689649, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 985230480, 0, '', 6, 14, 25, '0.87736000', 591, 230, 1366, 685, 591230, 0, 561, 213, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary', '', 0, 0, 0, '(not set)'),
(1581689667799465963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689667, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689649, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 985230480, 985230480, 'http://localhost/altum/customer.html', 6, 14, 27, '0.63594500', 140, 333, 1366, 685, 140333, 0, 0, 316, '(not set)', '(not set)', '(not set)', 'A', '\n          \n          Customers\n        ', 'nav-link', '', 0, 0, 0, '(not set)'),
(1581689672268673963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689672, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689662, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1588741961, 0, '', 6, 14, 32, '0.16160200', 1219, 239, 1366, 685, 1219239, 0, 257, 166, '(not set)', '(not set)', '(not set)', 'DIV', '', 'view-order-details', '', 0, 0, 0, '(not set)'),
(1581689672384750963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689672, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689662, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1588741961, 0, '', 6, 14, 32, '0.60777100', 1230, 234, 1366, 685, 1230234, 0, 1223, 208, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary view-order-button float-right ml-3', '', 0, 0, 0, '(not set)'),
(1581689675492352963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689675, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689662, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1588741961, 0, '', 6, 14, 35, '0.08104300', 908, 56, 1366, 685, 90856, 0, 904, 36, '(not set)', '(not set)', '(not set)', 'SPAN', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689676353801963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689676, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689662, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1588741961, 0, '', 6, 14, 36, '0.06953200', 92, 341, 1366, 685, 92341, 0, 36, 333, '(not set)', '(not set)', '(not set)', 'SPAN', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689676681127963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689676, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689662, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1588741961, 0, '', 6, 14, 36, '0.80099100', 92, 341, 1366, 685, 92341, 0, 36, 333, '(not set)', '(not set)', '(not set)', 'SPAN', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689678493182963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689678, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689662, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1588741961, 1588741961, 'http://localhost/altum/orders.html', 6, 14, 38, '0.09736500', 94, 213, 1366, 685, 94213, 0, 0, 189, '(not set)', '(not set)', '(not set)', 'A', '\n          \n          Tracking\n        ', 'nav-link', '', 0, 0, 0, '(not set)'),
(1581689684377061963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689684, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 14, 44, '0.73458100', 871, 253, 1366, 685, 871253, 0, 775, 162, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689695644008963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689695, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 14, 55, '0.86920100', 1246, 116, 1366, 685, 1246116, 0, 1194, 96, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary float-right', '', 0, 0, 0, '(not set)'),
(1581689701708787963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689700, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 0, '0.10839200', 881, 195, 1366, 685, 881195, 0, 416, 25, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689702035399963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689702, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 2, '0.77932600', 927, 135, 1366, 685, 927135, 0, 416, 25, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689702120311963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689702, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 2, '0.15165200', 701, 310, 1366, 685, 701310, 0, 416, 25, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689703531716963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689703, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 3, '0.40310500', 1071, 276, 1366, 685, 1071276, 0, 416, 25, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689706788174963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689706, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 6, '0.93507700', 985, 140, 1366, 685, 985140, 0, 416, 25, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689709991399963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689709, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 4275843151, 'undefined', 6, 15, 9, '0.20182900', 893, 86, 1366, 685, 89386, 0, 881, 77, '(not set)', '(not set)', '(not set)', 'IMG', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689710118491963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689710, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 4275843151, 'undefined', 6, 15, 10, '0.25953100', 959, 337, 1366, 685, 959337, 0, 939, 318, '(not set)', '(not set)', '(not set)', 'IMG', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689712009447963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689712, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 12, '0.56548400', 915, 346, 1366, 685, 915346, 0, 416, 25, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689713947440963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689713, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 4275843151, 'undefined', 6, 15, 13, '0.52837000', 893, 453, 1366, 685, 893453, 0, 877, 442, '(not set)', '(not set)', '(not set)', 'IMG', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689716128179963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689716, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 16, '0.08137000', 990, 280, 1366, 685, 990280, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'gm-ui-hover-effect', '', 0, 0, 0, '(not set)'),
(1581689717112543963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689717, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 17, '0.75442000', 1063, 238, 1366, 685, 1063238, 0, 416, 25, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689717349582963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689717, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 17, '0.08223400', 1053, 107, 1366, 685, 1053107, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'gm-ui-hover-effect', '', 0, 0, 0, '(not set)'),
(1581689718846376963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689718, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 18, '0.55169500', 993, 73, 1366, 685, 99373, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'gm-ui-hover-effect', '', 0, 0, 0, '(not set)'),
(1581689719142041963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689719, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 19, '0.59606700', 954, 240, 1366, 685, 954240, 0, 416, 25, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689720245772963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689720, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 20, '0.62813200', 1299, 502, 1366, 685, 1299502, 0, 1258, 489, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary', '', 0, 0, 0, '(not set)'),
(1581689722605486963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689722, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 22, '0.90840500', 430, 122, 1366, 685, 430122, 0, 250, 96, '(not set)', 'spLocations', '(not set)', 'INPUT', '', 'form-control bg-white border-0 small', '', 0, 0, 0, '(not set)'),
(1581689723119119963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689723, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 23, '0.79251500', 418, 143, 1366, 685, 418143, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689724020438963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689724, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 24, '0.31972700', 455, 119, 1366, 685, 455119, 0, 446, 96, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary', '', 0, 0, 0, '(not set)'),
(1581689730897093963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689730, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 30, '0.69237300', 239, 115, 1366, 685, 239115, 0, 250, 96, '(not set)', 'spLocations', '(not set)', 'INPUT', 'Sachini Nayanathara', 'form-control bg-white border-0 small', '', 0, 0, 0, '(not set)'),
(1581689731101583963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689731, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 31, '0.81301000', 295, 147, 1366, 685, 295147, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689732989830963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689732, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 32, '0.69140900', 470, 99, 1366, 685, 47099, 0, 446, 96, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary', '', 0, 0, 0, '(not set)'),
(1581689739574002963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689739, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 39, '0.93246300', 246, 109, 1366, 685, 246109, 0, 250, 96, '(not set)', 'spLocations', '(not set)', 'INPUT', 'John Wayne', 'form-control bg-white border-0 small', '', 0, 0, 0, '(not set)'),
(1581689741712053963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689741, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 41, '0.62018500', 458, 106, 1366, 685, 458106, 0, 446, 96, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary', '', 0, 0, 0, '(not set)'),
(1581689742619054963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689742, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 42, '0.74910500', 401, 120, 1366, 685, 401120, 0, 250, 96, '(not set)', 'spLocations', '(not set)', 'INPUT', '', 'form-control bg-white border-0 small', '', 0, 0, 0, '(not set)'),
(1581689744697177963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689744, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 44, '0.30832700', 395, 146, 1366, 685, 395146, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'DIV', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581689745575105963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689745, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 45, '0.36851300', 457, 106, 1366, 685, 457106, 0, 446, 96, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary', '', 0, 0, 0, '(not set)'),
(1581689750765372963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689750, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 50, '0.96949400', 223, 118, 1366, 685, 223118, 0, 250, 96, '(not set)', 'spLocations', '(not set)', 'INPUT', 'Sachini Nayanathara', 'form-control bg-white border-0 small', '', 0, 0, 0, '(not set)'),
(1581689752008187963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689752, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 0, '', 6, 15, 52, '0.43622700', 476, 106, 1366, 685, 476106, 0, 446, 96, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary', '', 0, 0, 0, '(not set)'),
(1581689757228016963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689757, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1270028998, 1270028998, 'http://localhost/altum/lochistory.html', 6, 15, 57, '0.56237500', 69, 254, 1366, 685, 69254, 0, 0, 238, '(not set)', '(not set)', '(not set)', 'A', '\n          \n          Sales\n        ', 'nav-link', '', 0, 0, 0, '(not set)'),
(1581690097111708998, 1581690088102908190, 1581690088238927406, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690097, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 39983735, 1242454461, 'http://localhost/altum/customer_signup.html', 6, 21, 37, '0.80151700', 737, 520, 1366, 695, 737520, 0, 626, 504, '(not set)', '(not set)', '(not set)', 'A', 'Create an Account', 'text-white', '', 0, 0, 0, '(not set)'),
(1581690133455458998, 1581690098492514785, 1581690098549005923, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690133, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1242454461, 39983735, 'http://localhost/altum/index.html', 6, 22, 13, '0.52963700', 301, 503, 1366, 695, 301503, 0, 226, 493, '(not set)', '(not set)', '(not set)', 'A', 'Back to Login', '(not set)', '', 0, 0, 0, '(not set)'),
(1581690134989211998, 1581690134802798081, 1581690134179474034, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690134, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 39983735, 0, '', 6, 22, 14, '0.55636400', 878, 187, 1366, 695, 878187, 0, 743, 149, '(not set)', 'Email', '(not set)', 'INPUT', '', 'form-control form-control-user', '', 0, 0, 0, '(not set)'),
(1581690147235327998, 1581690134802798081, 1581690134179474034, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690147, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 39983735, 0, '', 6, 22, 27, '0.70724000', 882, 351, 1366, 695, 882351, 0, 743, 149, '(not set)', '(not set)', '(not set)', 'FORM', '', 'user', '', 0, 0, 0, '(not set)');
INSERT INTO `owa_click` (`id`, `visitor_id`, `session_id`, `site_id`, `referer_id`, `ua_id`, `host_id`, `os_id`, `location_id`, `referring_search_term_id`, `timestamp`, `yyyymmdd`, `year`, `month`, `day`, `dayofweek`, `dayofyear`, `weekofyear`, `last_req`, `ip_address`, `is_new_visitor`, `is_repeat_visitor`, `language`, `days_since_prior_session`, `days_since_first_session`, `num_prior_sessions`, `medium`, `source_id`, `ad_id`, `campaign_id`, `user_name`, `cv1_name`, `cv1_value`, `cv2_name`, `cv2_value`, `cv3_name`, `cv3_value`, `cv4_name`, `cv4_value`, `cv5_name`, `cv5_value`, `last_impression_id`, `document_id`, `target_id`, `target_url`, `hour`, `minute`, `second`, `msec`, `click_x`, `click_y`, `page_width`, `page_height`, `position`, `approx_position`, `dom_element_x`, `dom_element_y`, `dom_element_name`, `dom_element_id`, `dom_element_value`, `dom_element_tag`, `dom_element_text`, `dom_element_class`, `dom_element_parent_id`, `tag_id`, `placement_id`, `ad_group_id`, `host`) VALUES
(1581690148899855998, 1581690134802798081, 1581690134179474034, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690148, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 39983735, 0, '', 6, 22, 28, '0.49055800', 885, 339, 1366, 695, 885339, 0, 743, 305, '(not set)', '(not set)', '(not set)', 'A', 'Login', 'btn btn-primary btn-user btn-block', '', 0, 0, 0, '(not set)'),
(1581690156481996998, 1581690153694979320, 1581690153068172370, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690155, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 6, 22, 35, '0.02654800', 652, 276, 1366, 695, 652276, 0, 571, 254, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary view-item-button float-right', '', 0, 0, 0, '(not set)'),
(1581690157103907998, 1581690153694979320, 1581690153068172370, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690157, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 6, 22, 37, '0.23064700', 880, 565, 1366, 695, 880565, 0, 859, 140, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary', '', 0, 0, 0, '(not set)'),
(1581690158430778998, 1581690153694979320, 1581690153068172370, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690158, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 3282387290, 'http://localhost/altum/personal_orders.html', 6, 22, 38, '0.18022300', 55, 187, 1366, 695, 55187, 0, 0, 143, '(not set)', '(not set)', '(not set)', 'A', '\n          \n          Orders\n        ', 'nav-link', '', 0, 0, 0, '(not set)'),
(1581690169319022998, 1581690159477384844, 1581690159038943341, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690169, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 3282387290, 0, '', 6, 22, 49, '0.09554700', 55, 267, 1366, 695, 55267, 0, 38, 250, '(not set)', '(not set)', '(not set)', 'SPAN', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581690170005809998, 1581690169417973292, 1581690169999780813, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690170, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 6, 22, 50, '0.57006800', 75, 234, 1366, 695, 75234, 0, 36, 218, '(not set)', '(not set)', '(not set)', 'SPAN', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581690175211855998, 1581690171090261647, 1581690171275862927, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690175, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 6, 22, 55, '0.46408300', 92, 260, 1366, 695, 92260, 0, 38, 250, '(not set)', '(not set)', '(not set)', 'SPAN', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581690176638841998, 1581690176490520162, 1581690176435196355, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690176, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 6, 22, 56, '0.61422500', 147, 497, 1366, 695, 147497, 0, 73, 491, '(not set)', '(not set)', '(not set)', 'SPAN', '', 'font-weight-bold', '', 0, 0, 0, '(not set)'),
(1581690177648063998, 1581690176490520162, 1581690176435196355, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690177, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 6, 22, 57, '0.93701700', 753, 202, 1366, 695, 753202, 0, 744, 188, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-secondary', '', 0, 0, 0, '(not set)'),
(1581690183334956998, 1581690176490520162, 1581690176435196355, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690183, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 6, 23, 3, '0.25272500', 1247, 98, 1366, 695, 124798, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'A', '\n                  \n                  Profile\n                ', 'dropdown-item text-dark btn', '', 0, 0, 0, '(not set)'),
(1581690184821011998, 1581690176490520162, 1581690176435196355, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690184, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 0, '', 6, 23, 4, '0.40047100', 936, 412, 1366, 695, 936412, 0, 868, 396, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-secondary', '', 0, 0, 0, '(not set)'),
(1581690187241634998, 1581690176490520162, 1581690176435196355, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690187, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1267212299, 2877958510, 'http://localhost/altum/feedback.html', 6, 23, 7, '0.16876700', 22, 216, 1366, 695, 22216, 0, 0, 199, '(not set)', '(not set)', '(not set)', 'A', '\n          \n          Feedback\n        ', 'nav-link', '', 0, 0, 0, '(not set)'),
(1581690194189229998, 1581690188201844762, 1581690188600888845, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690194, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 6, 23, 14, '0.63124400', 1268, 239, 1366, 695, 1268239, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'A', '\n                  \n                  Profile\n                ', 'dropdown-item text-dark btn', '', 0, 0, 0, '(not set)'),
(1581690196332155998, 1581690188201844762, 1581690188600888845, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690196, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 2877958510, 'http://localhost/altum/feedback.html', 6, 23, 16, '0.89134400', 1270, 268, 1366, 695, 1270268, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'A', '\n                  \n                  Logout\n                ', 'dropdown-item bg-secondary text-white font-weight-bold', '', 0, 0, 0, '(not set)'),
(1581690198007209998, 1581690188201844762, 1581690188600888845, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690198, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2877958510, 0, '', 6, 23, 18, '0.11021100', 850, 202, 1366, 695, 850202, 0, 831, 188, '(not set)', '(not set)', '(not set)', 'A', 'Logout', 'btn btn-primary text-white', '', 0, 0, 0, '(not set)'),
(1581690200857643998, 1581690198984959890, 1581690198523734255, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690200, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 39983735, 0, '', 6, 23, 20, '0.30217300', 822, 186, 1366, 695, 822186, 0, 743, 149, '(not set)', 'Email', '(not set)', 'INPUT', '', 'form-control form-control-user', '', 0, 0, 0, '(not set)'),
(1581690222389018998, 1581690198984959890, 1581690198523734255, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690222, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 39983735, 0, '', 6, 23, 42, '0.13020400', 813, 306, 1366, 695, 813306, 0, 743, 305, '(not set)', '(not set)', '(not set)', 'A', 'Login', 'btn btn-primary btn-user btn-block', '', 0, 0, 0, '(not set)'),
(1581690233461140998, 1581690226136235338, 1581690226074439407, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690233, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 3854414048, 0, '', 6, 23, 53, '0.00035800', 99, 393, 1366, 695, 99393, 0, 41, 380, '(not set)', '(not set)', '(not set)', 'SPAN', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581690234033413998, 1581690226136235338, 1581690226074439407, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690234, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 3854414048, 985230480, 'http://localhost/altum/customer.html', 6, 23, 54, '0.71007700', 89, 453, 1366, 695, 89453, 0, 24, 453, '(not set)', '(not set)', '(not set)', 'A', 'Customer Profiles', 'collapse-item', '', 0, 0, 0, '(not set)'),
(1581690237490442998, 1581690235681583679, 1581690235677069338, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690237, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 985230480, 985230480, 'http://localhost/altum/customer.html', 6, 23, 57, '0.70723000', 97, 334, 1366, 695, 97334, 0, 0, 304, '(not set)', '(not set)', '(not set)', 'A', '\n            \n          Inventory\n        ', 'nav-link', '', 0, 0, 0, '(not set)'),
(1581690238905623998, 1581690235681583679, 1581690235677069338, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690238, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 985230480, 2969082592, 'http://localhost/altum/stock.html', 6, 23, 58, '0.39070700', 86, 402, 1366, 695, 86402, 0, 24, 396, '(not set)', '(not set)', '(not set)', 'A', 'Stock Management', 'collapse-item', '', 0, 0, 0, '(not set)'),
(1581690243287888998, 1581690239232112876, 1581690239164930318, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690243, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2969082592, 0, '', 6, 24, 3, '0.53660100', 1222, 189, 1366, 695, 1222189, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'A', 'Bulb', 'dropdown-item', '', 0, 0, 0, '(not set)'),
(1581690245803997998, 1581690239232112876, 1581690239164930318, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690245, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2969082592, 0, '', 6, 24, 5, '0.33999200', 1109, 219, 1366, 695, 1109219, 0, 1074, 214, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary view-item-button float-right', '', 0, 0, 0, '(not set)'),
(1581690246326710998, 1581690239232112876, 1581690239164930318, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690246, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2969082592, 0, '', 6, 24, 6, '0.85547800', 942, 662, 1366, 695, 942662, 0, 896, 140, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-secondary', '', 0, 0, 0, '(not set)'),
(1581690248157465998, 1581690239232112876, 1581690239164930318, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690247, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2969082592, 0, '', 6, 24, 7, '0.05928400', 1086, 338, 1366, 695, 1086338, 0, 1074, 327, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-primary view-item-button float-right', '', 0, 0, 0, '(not set)'),
(1581690251185638998, 1581690239232112876, 1581690239164930318, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690251, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2969082592, 0, '', 6, 24, 11, '0.40958000', 942, 627, 1366, 695, 942627, 0, 896, 140, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'btn btn-secondary', '', 0, 0, 0, '(not set)'),
(1581690256093067998, 1581690239232112876, 1581690239164930318, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690256, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2969082592, 0, '', 6, 24, 16, '0.26870800', 98, 549, 1366, 695, 98549, 0, 32, 567, '(not set)', 'sidebarToggle', '(not set)', 'BUTTON', '', 'rounded-circle border-0', '', 0, 0, 0, '(not set)'),
(1581690257880412998, 1581690239232112876, 1581690239164930318, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690257, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2969082592, 0, '', 6, 24, 17, '0.15812600', 67, 582, 1366, 695, 67582, 0, 92, 522, '(not set)', 'sidebarToggle', '(not set)', 'BUTTON', '', 'rounded-circle border-0', '', 0, 0, 0, '(not set)'),
(1581690258292104998, 1581690239232112876, 1581690239164930318, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690257, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2969082592, 2238633484, 'http://localhost/altum/reports.html', 6, 24, 17, '0.01331800', 96, 471, 1366, 695, 96471, 0, 0, 449, '(not set)', '(not set)', '(not set)', 'A', '\n          \n          Reports', 'nav-link', '', 0, 0, 0, '(not set)'),
(1581690271066591998, 1581690268140253530, 1581690268791166976, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690271, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2238633484, 0, '', 6, 24, 31, '0.34406100', 70, 476, 1366, 695, 70476, 0, 41, 468, '(not set)', '(not set)', '(not set)', 'SPAN', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581690279141297998, 1581690276041492959, 1581690276703321692, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690279, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2238633484, 0, '', 6, 24, 39, '0.28555500', 1288, 146, 1366, 695, 1288146, 0, 1189, 131, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'float-right mb-2 d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm', '', 0, 0, 0, '(not set)'),
(1581690306109952998, 1581690276041492959, 1581690276703321692, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690306, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2238633484, 0, '', 6, 25, 6, '0.32753000', 1255, 825, 1366, 695, 1255825, 0, 1189, 811, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'float-right mb-2 d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm', '', 0, 0, 0, '(not set)'),
(1581690308306308998, 1581690276041492959, 1581690276703321692, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690308, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2238633484, 0, '', 6, 25, 8, '0.12686800', 1226, 830, 1366, 695, 1226830, 0, 1189, 811, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'float-right mb-2 d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm', '', 0, 0, 0, '(not set)'),
(1581690317930245998, 1581690314751964956, 1581690314675451641, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690317, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2969082592, 2238633484, 'http://localhost/altum/reports.html', 6, 25, 17, '0.75611400', 51, 521, 677, 695, 51521, 0, 0, 487, '(not set)', '(not set)', '(not set)', 'A', '\n          \n          Reports', 'nav-link', '', 0, 0, 0, '(not set)'),
(1581690334011981998, 1581690324243758417, 1581690324111893546, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690334, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2238633484, 0, '', 6, 25, 34, '0.91154600', 571, 153, 677, 695, 571153, 0, 500, 131, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'float-right mb-2 d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm', '', 0, 0, 0, '(not set)'),
(1581690340930087998, 1581690324243758417, 1581690324111893546, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690340, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2238633484, 0, '', 6, 25, 40, '0.65267300', 573, 139, 677, 695, 573139, 0, 500, 131, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'float-right mb-2 d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm', '', 0, 0, 0, '(not set)'),
(1581690368147354998, 1581690324243758417, 1581690324111893546, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690368, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2238633484, 0, '', 6, 26, 8, '0.95067100', 603, 141, 677, 695, 603141, 0, 500, 131, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'float-right mb-2 d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm', '', 0, 0, 0, '(not set)'),
(1581690370267874998, 1581690324243758417, 1581690324111893546, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690370, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2238633484, 0, '', 6, 26, 10, '0.92500100', 571, 1113, 677, 695, 5711113, 0, 500, 1095, '(not set)', '(not set)', '(not set)', 'BUTTON', '', 'float-right mb-2 d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm', '', 0, 0, 0, '(not set)'),
(1581690376399800998, 1581690324243758417, 1581690324111893546, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690376, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2238633484, 0, '', 6, 26, 16, '0.73330500', 63, 238, 1366, 695, 63238, 0, 41, 235, '(not set)', '(not set)', '(not set)', 'SPAN', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1581690377976066998, 1581690324243758417, 1581690324111893546, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690377, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2238633484, 1007114786, 'http://localhost/altum/tracking.html', 6, 26, 17, '0.35698600', 99, 330, 1366, 695, 99330, 0, 24, 308, '(not set)', '(not set)', '(not set)', 'A', 'Track Now', 'collapse-item', '', 0, 0, 0, '(not set)');

-- --------------------------------------------------------

--
-- Table structure for table `owa_commerce_line_item_fact`
--

CREATE TABLE `owa_commerce_line_item_fact` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `unit_price` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `item_revenue` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_commerce_transaction_fact`
--

CREATE TABLE `owa_commerce_transaction_fact` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `order_source` varchar(255) DEFAULT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `total_revenue` bigint(20) DEFAULT NULL,
  `tax_revenue` bigint(20) DEFAULT NULL,
  `shipping_revenue` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_configuration`
--

CREATE TABLE `owa_configuration` (
  `id` bigint(20) NOT NULL,
  `settings` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_configuration`
--

INSERT INTO `owa_configuration` (`id`, `settings`) VALUES
(1, 0x613a313a7b733a343a2262617365223b613a333a7b733a31343a22736368656d615f76657273696f6e223b693a393b733a393a2269735f616374697665223b623a313b733a31363a22696e7374616c6c5f636f6d706c657465223b623a313b7d7d);

-- --------------------------------------------------------

--
-- Table structure for table `owa_document`
--

CREATE TABLE `owa_document` (
  `id` bigint(20) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_document`
--

INSERT INTO `owa_document` (`id`, `url`, `uri`, `page_title`, `page_type`) VALUES
(39983735, 'http://localhost/altum/index.html', '/altum/index.html', 'Altum Engineering', '(not set)'),
(880573091, 'http://localhost/altum/salespersons.html', '/altum/salespersons.html', 'Altum - Salespersons', '(not set)'),
(985230480, 'http://localhost/altum/customer.html', '/altum/customer.html', 'Altum - Salespersons', '(not set)'),
(1007114786, 'http://localhost/altum/tracking.html', '/altum/tracking.html', 'Altum - Tracking', '(not set)'),
(1020323368, 'file://C:/Users/Naveen Tennakoon/Desktop/Wall Studio   The Best Wall Arts Provider In Sri Lanka.html', '/Users/Naveen Tennakoon/Desktop/Wall Studio   The Best Wall Arts Provider In Sri Lanka.html', 'Wall Studio | The Best Wall Arts Provider In Sri Lanka', '(not set)'),
(1242454461, 'http://localhost/altum/customer_signup.html', '/altum/customer_signup.html', 'Altum Engineering - Signup', '(not set)'),
(1267212299, 'http://localhost/altum/cus_dashboard.html', '/altum/cus_dashboard.html', 'Customer - Dashboard', '(not set)'),
(1270028998, 'http://localhost/altum/lochistory.html', '/altum/lochistory.html', 'Altum - Location History', '(not set)'),
(1414471744, 'file://C:/xampp/htdocs/wallstudio/Wall Studio   The Best Wall Arts Provider In Sri Lanka.html', '/xampp/htdocs/wallstudio/Wall Studio   The Best Wall Arts Provider In Sri Lanka.html', 'Wall Studio | The Best Wall Arts Provider In Sri Lanka', '(not set)'),
(1588741961, 'http://localhost/altum/orders.html', '/altum/orders.html', 'Altum - Orders', '(not set)'),
(1962459583, 'http://localhost/altum/forgot-password.html', '/altum/forgot-password.html', 'Altum - Forgot Password', '(not set)'),
(2033196501, 'http://localhost/altum/new_salesperson.html', '/altum/new_salesperson.html', 'Altum - New Salesperson Details', '(not set)'),
(2238633484, 'http://localhost/altum/reports.html', '/altum/reports.html', 'Altum - Stock', '(not set)'),
(2877958510, 'http://localhost/altum/feedback.html', '/altum/feedback.html', 'Customer - Feedback', '(not set)'),
(2969082592, 'http://localhost/altum/stock.html', '/altum/stock.html', 'Altum - Stock', '(not set)'),
(3282387290, 'http://localhost/altum/personal_orders.html', '/altum/personal_orders.html', 'Altum - Orders', '(not set)'),
(3854414048, 'http://localhost/altum/dashboard.html', '/altum/dashboard.html', 'Altum - Dashboard', '(not set)');

-- --------------------------------------------------------

--
-- Table structure for table `owa_domstream`
--

CREATE TABLE `owa_domstream` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `domstream_guid` bigint(20) DEFAULT NULL,
  `events` blob DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_exit`
--

CREATE TABLE `owa_exit` (
  `id` bigint(20) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `anchortext` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_feed_request`
--

CREATE TABLE `owa_feed_request` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `ua_id` varchar(255) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `feed_reader_guid` varchar(255) DEFAULT NULL,
  `subscription_id` bigint(20) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `hour` tinyint(2) DEFAULT NULL,
  `minute` tinyint(2) DEFAULT NULL,
  `second` tinyint(2) DEFAULT NULL,
  `msec` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `feed_format` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_host`
--

CREATE TABLE `owa_host` (
  `id` bigint(20) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `full_host` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_host`
--

INSERT INTO `owa_host` (`id`, `ip_address`, `host`, `full_host`, `city`, `country`, `latitude`, `longitude`) VALUES
(146471012, '127.0.0.1', '(not set)', 'DESKTOP-5KKIE9V', '(not set)', '(not set)', '(not set)', '(not set)');

-- --------------------------------------------------------

--
-- Table structure for table `owa_impression`
--

CREATE TABLE `owa_impression` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `tag_id` bigint(20) DEFAULT NULL,
  `placement_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `ad_group_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `last_impression_id` bigint(20) DEFAULT NULL,
  `last_impression_timestamp` bigint(20) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `hour` tinyint(2) DEFAULT NULL,
  `minute` tinyint(2) DEFAULT NULL,
  `msec` bigint(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `host_id` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_location_dim`
--

CREATE TABLE `owa_location_dim` (
  `id` bigint(20) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_location_dim`
--

INSERT INTO `owa_location_dim` (`id`, `country`, `country_code`, `state`, `city`, `latitude`, `longitude`) VALUES
(259604063, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)');

-- --------------------------------------------------------

--
-- Table structure for table `owa_os`
--

CREATE TABLE `owa_os` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_os`
--

INSERT INTO `owa_os` (`id`, `name`) VALUES
(3823601051, 'Windows');

-- --------------------------------------------------------

--
-- Table structure for table `owa_queue_item`
--

CREATE TABLE `owa_queue_item` (
  `id` bigint(20) NOT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `event` blob DEFAULT NULL,
  `insertion_datestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `insertion_timestamp` int(11) DEFAULT NULL,
  `handled_timestamp` int(11) DEFAULT NULL,
  `last_attempt_timestamp` int(11) DEFAULT NULL,
  `not_before_timestamp` int(11) DEFAULT NULL,
  `failed_attempt_count` int(11) DEFAULT NULL,
  `is_assigned` tinyint(1) DEFAULT NULL,
  `last_error_msg` varchar(255) DEFAULT NULL,
  `handled_by` varchar(255) DEFAULT NULL,
  `handler_duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_referer`
--

CREATE TABLE `owa_referer` (
  `id` bigint(20) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `query_terms` varchar(255) DEFAULT NULL,
  `refering_anchortext` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `snippet` mediumtext DEFAULT NULL,
  `is_searchengine` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_referer`
--

INSERT INTO `owa_referer` (`id`, `url`, `site_name`, `site`, `query_terms`, `refering_anchortext`, `page_title`, `snippet`, `is_searchengine`) VALUES
(118221093, '(none)', '', '', '', '', '(not set)', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `owa_request`
--

CREATE TABLE `owa_request` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `inbound_visitor_id` bigint(20) DEFAULT NULL,
  `inbound_session_id` bigint(20) DEFAULT NULL,
  `feed_subscription_id` bigint(20) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `hour` tinyint(2) DEFAULT NULL,
  `minute` tinyint(2) DEFAULT NULL,
  `second` tinyint(2) DEFAULT NULL,
  `msec` int(11) DEFAULT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `prior_document_id` bigint(20) DEFAULT NULL,
  `is_comment` tinyint(1) DEFAULT NULL,
  `is_entry_page` tinyint(1) DEFAULT NULL,
  `is_browser` tinyint(1) DEFAULT NULL,
  `is_robot` tinyint(1) DEFAULT NULL,
  `is_feedreader` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_request`
--

INSERT INTO `owa_request` (`id`, `visitor_id`, `session_id`, `site_id`, `referer_id`, `ua_id`, `host_id`, `os_id`, `location_id`, `referring_search_term_id`, `timestamp`, `yyyymmdd`, `year`, `month`, `day`, `dayofweek`, `dayofyear`, `weekofyear`, `last_req`, `ip_address`, `is_new_visitor`, `is_repeat_visitor`, `language`, `days_since_prior_session`, `days_since_first_session`, `num_prior_sessions`, `medium`, `source_id`, `ad_id`, `campaign_id`, `user_name`, `cv1_name`, `cv1_value`, `cv2_name`, `cv2_value`, `cv3_name`, `cv3_value`, `cv4_name`, `cv4_value`, `cv5_name`, `cv5_value`, `inbound_visitor_id`, `inbound_session_id`, `feed_subscription_id`, `user_email`, `hour`, `minute`, `second`, `msec`, `document_id`, `site`, `os`, `prior_document_id`, `is_comment`, `is_entry_page`, `is_browser`, `is_robot`, `is_feedreader`) VALUES
(1581686201734449624, 1581686202475531008, 1581686202451286814, 'e0eb2f42ec054a3a7ac652dc319715a5', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581686201, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 16, 41, 1, '1020323368', '', 'Windows', 0, 0, 1, 1, 0, 0),
(1581686236931841624, 1581686236188090000, 1581686236567220859, 'e0eb2f42ec054a3a7ac652dc319715a5', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581686235, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 17, 15, 0, '1020323368', '', 'Windows', 0, 0, 1, 1, 0, 0),
(1581686358541920624, 1581686359676704434, 1581686359418841173, 'e0eb2f42ec054a3a7ac652dc319715a5', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581686358, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 19, 18, 1, '1414471744', '', 'Windows', 0, 0, 1, 1, 0, 0),
(1581687217130435624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687217, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 33, 37, 0, '1267212299', '', 'Windows', 1837213975, 0, 1, 1, 0, 0),
(1581687265852158624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687265, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687217, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 34, 25, 0, '1267212299', '', 'Windows', 1267212299, 0, 0, 1, 0, 0),
(1581687266292431624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687266, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687265, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 34, 26, 1, '3282387290', '', 'Windows', 1267212299, 0, 0, 1, 0, 0),
(1581687290782333624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687290, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687267, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 34, 50, 0, '2877958510', '', 'Windows', 3282387290, 0, 0, 1, 0, 0),
(1581687422701963624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687422, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687290, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 37, 2, 0, '39983735', '', 'Windows', 2877958510, 0, 0, 1, 0, 0),
(1581687425629767624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687425, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687422, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 37, 5, 1, '1962459583', '', 'Windows', 39983735, 0, 0, 1, 0, 0),
(1581687429937784624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687429, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687425, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 37, 9, 0, '39983735', '', 'Windows', 1962459583, 0, 0, 1, 0, 0),
(1581687430615979624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687430, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687429, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 37, 10, 1, '39983735', '', 'Windows', 0, 0, 0, 1, 0, 0),
(1581687431264714624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687431, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687431, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 37, 11, 1, '39983735', '', 'Windows', 0, 0, 0, 1, 0, 0),
(1581687432963417624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687432, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687432, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 37, 12, 1, '39983735', '', 'Windows', 0, 0, 0, 1, 0, 0),
(1581687433678684624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687433, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687433, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 37, 13, 1, '39983735', '', 'Windows', 0, 0, 0, 1, 0, 0),
(1581687435275412624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687434, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687434, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 37, 14, 0, '39983735', '', 'Windows', 0, 0, 0, 1, 0, 0),
(1581687435860225624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687435, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687435, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 37, 15, 1, '39983735', '', 'Windows', 0, 0, 0, 1, 0, 0),
(1581687437555658624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687437, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687436, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 37, 17, 0, '39983735', '', 'Windows', 0, 0, 0, 1, 0, 0),
(1581687512684121624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687512, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687437, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 38, 32, 1, '1242454461', '', 'Windows', 1837213975, 0, 0, 1, 0, 0),
(1581687518585753624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687518, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687513, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 38, 38, 0, '39983735', '', 'Windows', 1242454461, 0, 0, 1, 0, 0),
(1581687520962731624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687520, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687518, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 38, 40, 0, '1242454461', '', 'Windows', 39983735, 0, 0, 1, 0, 0),
(1581687531089228624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687531, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687520, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 38, 51, 0, '39983735', '', 'Windows', 1242454461, 0, 0, 1, 0, 0),
(1581687544486774624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687544, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687531, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 39, 4, 1, '3854414048', '', 'Windows', 39983735, 0, 0, 1, 0, 0),
(1581687557440119624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687557, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687545, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 39, 17, 1, '2969082592', '', 'Windows', 3854414048, 0, 0, 1, 0, 0),
(1581687575334532624, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687575, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687558, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 39, 35, 1, '1007114786', '', 'Windows', 2969082592, 0, 0, 1, 0, 0),
(1581687985072649963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687984, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687576, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 46, 24, 0, '3854414048', '', 'Windows', 1837213975, 0, 0, 1, 0, 0),
(1581687993312941963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687993, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687985, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 46, 33, 0, '39983735', '', 'Windows', 3854414048, 0, 0, 1, 0, 0),
(1581687996945983963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687996, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687993, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 46, 36, 0, '1242454461', '', 'Windows', 39983735, 0, 0, 1, 0, 0),
(1581687999007943963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687999, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687996, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 46, 39, 1, '39983735', '', 'Windows', 1242454461, 0, 0, 1, 0, 0),
(1581688722471401963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581688722, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581687999, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 58, 42, 0, '1242454461', '', 'Windows', 1837213975, 0, 0, 1, 0, 0),
(1581688746692828963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581688746, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581688722, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 5, 59, 6, 1, '39983735', '', 'Windows', 1242454461, 0, 0, 1, 0, 0),
(1581689622137653963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689622, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581688747, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 13, 42, 1, '3854414048', '', 'Windows', 1837213975, 0, 0, 1, 0, 0),
(1581689631394196963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689631, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689623, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 13, 51, 0, '2238633484', '', 'Windows', 3854414048, 0, 0, 1, 0, 0),
(1581689636818525963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689636, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689631, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 13, 56, 1, '2238633484', '', 'Windows', 3854414048, 0, 0, 1, 0, 0),
(1581689645252171963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689645, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689637, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 14, 5, 1, '2238633484', '', 'Windows', 3854414048, 0, 0, 1, 0, 0),
(1581689649509224963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689649, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689646, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 14, 9, 0, '880573091', '', 'Windows', 2238633484, 0, 0, 1, 0, 0),
(1581689661083644963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689661, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689649, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 14, 21, 1, '985230480', '', 'Windows', 880573091, 0, 0, 1, 0, 0),
(1581689668047374963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689668, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689662, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 14, 28, 1, '1588741961', '', 'Windows', 985230480, 0, 0, 1, 0, 0),
(1581689679152094963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689679, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689669, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 14, 39, 0, '1270028998', '', 'Windows', 1588741961, 0, 0, 1, 0, 0),
(1581689759930791963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689759, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689679, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 15, 59, 0, '2033196501', '', 'Windows', 1270028998, 0, 0, 1, 0, 0),
(1581689811670392963, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689811, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689760, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 16, 51, 0, '1242454461', '', 'Windows', 1837213975, 0, 0, 1, 0, 0),
(1581689865005787998, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689865, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689811, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 17, 45, 0, '1242454461', '', 'Windows', 1837213975, 0, 0, 1, 0, 0),
(1581689959413029998, 1581687217297097137, 1581687217046989686, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581689958, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689865, '127.0.0.1', 0, 1, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 19, 18, 0, '1267212299', '', 'Windows', 1590895360, 0, 0, 1, 0, 0),
(1581690088740828998, 1581690088102908190, 1581690088238927406, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690088, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 21, 28, 0, '39983735', '', 'Windows', 1242454461, 0, 1, 1, 0, 0),
(1581690098227917998, 1581690098492514785, 1581690098549005923, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690098, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 21, 38, 0, '1242454461', '', 'Windows', 39983735, 0, 1, 1, 0, 0),
(1581690133782100998, 1581690134802798081, 1581690134179474034, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690133, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 22, 13, 1, '39983735', '', 'Windows', 1242454461, 0, 1, 1, 0, 0),
(1581690153285607998, 1581690153694979320, 1581690153068172370, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690153, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 22, 33, 0, '1267212299', '', 'Windows', 39983735, 0, 1, 1, 0, 0),
(1581690158143894998, 1581690159477384844, 1581690159038943341, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690158, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 22, 38, 1, '3282387290', '', 'Windows', 1267212299, 0, 1, 1, 0, 0),
(1581690169621312998, 1581690169417973292, 1581690169999780813, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690169, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 22, 49, 1, '1267212299', '', 'Windows', 3282387290, 0, 1, 1, 0, 0),
(1581690171945067998, 1581690171090261647, 1581690171275862927, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690171, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 22, 51, 0, '2877958510', '', 'Windows', 1267212299, 0, 1, 1, 0, 0),
(1581690175491760998, 1581690176490520162, 1581690176435196355, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690175, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 22, 55, 1, '1267212299', '', 'Windows', 2877958510, 0, 1, 1, 0, 0),
(1581690187493094998, 1581690188201844762, 1581690188600888845, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690187, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 23, 7, 1, '2877958510', '', 'Windows', 1267212299, 0, 1, 1, 0, 0),
(1581690198348846998, 1581690198984959890, 1581690198523734255, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690198, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 23, 18, 0, '39983735', '', 'Windows', 2877958510, 0, 1, 1, 0, 0),
(1581690225722721998, 1581690226136235338, 1581690226074439407, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690225, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 23, 45, 1, '3854414048', '', 'Windows', 39983735, 0, 1, 1, 0, 0),
(1581690235651801998, 1581690235681583679, 1581690235677069338, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690235, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 23, 55, 0, '985230480', '', 'Windows', 3854414048, 0, 1, 1, 0, 0),
(1581690238497835998, 1581690239232112876, 1581690239164930318, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690238, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 23, 58, 1, '2969082592', '', 'Windows', 985230480, 0, 1, 1, 0, 0),
(1581690268738185998, 1581690268140253530, 1581690268791166976, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690268, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 24, 28, 0, '2238633484', '', 'Windows', 2969082592, 0, 1, 1, 0, 0),
(1581690276115111998, 1581690276041492959, 1581690276703321692, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690276, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 24, 36, 1, '2238633484', '', 'Windows', 2238633484, 0, 1, 1, 0, 0),
(1581690313672414998, 1581690314751964956, 1581690314675451641, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690313, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 25, 13, 1, '2969082592', '', 'Windows', 985230480, 0, 1, 1, 0, 0),
(1581690324316283998, 1581690324243758417, 1581690324111893546, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690323, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 25, 23, 0, '2238633484', '', 'Windows', 2969082592, 0, 1, 1, 0, 0),
(1581690377970233998, 1581690378373479133, 1581690378213734064, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690377, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 0, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 6, 26, 17, 1, '1007114786', '', 'Windows', 2238633484, 0, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `owa_search_term_dim`
--

CREATE TABLE `owa_search_term_dim` (
  `id` bigint(20) NOT NULL,
  `terms` varchar(255) DEFAULT NULL,
  `term_count` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_search_term_dim`
--

INSERT INTO `owa_search_term_dim` (`id`, `terms`, `term_count`) VALUES
(118221093, '(none)', '0');

-- --------------------------------------------------------

--
-- Table structure for table `owa_session`
--

CREATE TABLE `owa_session` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `hour` tinyint(2) DEFAULT NULL,
  `minute` tinyint(2) DEFAULT NULL,
  `num_pageviews` int(11) DEFAULT NULL,
  `num_comments` int(11) DEFAULT NULL,
  `is_bounce` tinyint(1) DEFAULT NULL,
  `prior_session_lastreq` bigint(20) DEFAULT NULL,
  `prior_session_id` bigint(20) DEFAULT NULL,
  `time_sinse_priorsession` int(11) DEFAULT NULL,
  `prior_session_year` tinyint(4) DEFAULT NULL,
  `prior_session_month` varchar(255) DEFAULT NULL,
  `prior_session_day` tinyint(2) DEFAULT NULL,
  `prior_session_dayofweek` int(11) DEFAULT NULL,
  `prior_session_hour` tinyint(2) DEFAULT NULL,
  `prior_session_minute` tinyint(2) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `first_page_id` bigint(20) DEFAULT NULL,
  `last_page_id` bigint(20) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `is_robot` tinyint(1) DEFAULT NULL,
  `is_browser` tinyint(1) DEFAULT NULL,
  `is_feedreader` tinyint(1) DEFAULT NULL,
  `latest_attributions` blob DEFAULT NULL,
  `goal_1` tinyint(1) DEFAULT NULL,
  `goal_1_start` tinyint(1) DEFAULT NULL,
  `goal_1_value` bigint(20) DEFAULT NULL,
  `goal_2` tinyint(1) DEFAULT NULL,
  `goal_2_start` tinyint(1) DEFAULT NULL,
  `goal_2_value` bigint(20) DEFAULT NULL,
  `goal_3` tinyint(1) DEFAULT NULL,
  `goal_3_start` tinyint(1) DEFAULT NULL,
  `goal_3_value` bigint(20) DEFAULT NULL,
  `goal_4` tinyint(1) DEFAULT NULL,
  `goal_4_start` tinyint(1) DEFAULT NULL,
  `goal_4_value` bigint(20) DEFAULT NULL,
  `goal_5` tinyint(1) DEFAULT NULL,
  `goal_5_start` tinyint(1) DEFAULT NULL,
  `goal_5_value` bigint(20) DEFAULT NULL,
  `goal_6` tinyint(1) DEFAULT NULL,
  `goal_6_start` tinyint(1) DEFAULT NULL,
  `goal_6_value` bigint(20) DEFAULT NULL,
  `goal_7` tinyint(1) DEFAULT NULL,
  `goal_7_start` tinyint(1) DEFAULT NULL,
  `goal_7_value` bigint(20) DEFAULT NULL,
  `goal_8` tinyint(1) DEFAULT NULL,
  `goal_8_start` tinyint(1) DEFAULT NULL,
  `goal_8_value` bigint(20) DEFAULT NULL,
  `goal_9` tinyint(1) DEFAULT NULL,
  `goal_9_start` tinyint(1) DEFAULT NULL,
  `goal_9_value` bigint(20) DEFAULT NULL,
  `goal_10` tinyint(1) DEFAULT NULL,
  `goal_10_start` tinyint(1) DEFAULT NULL,
  `goal_10_value` bigint(20) DEFAULT NULL,
  `goal_11` tinyint(1) DEFAULT NULL,
  `goal_11_start` tinyint(1) DEFAULT NULL,
  `goal_11_value` bigint(20) DEFAULT NULL,
  `goal_12` tinyint(1) DEFAULT NULL,
  `goal_12_start` tinyint(1) DEFAULT NULL,
  `goal_12_value` bigint(20) DEFAULT NULL,
  `goal_13` tinyint(1) DEFAULT NULL,
  `goal_13_start` tinyint(1) DEFAULT NULL,
  `goal_13_value` bigint(20) DEFAULT NULL,
  `goal_14` tinyint(1) DEFAULT NULL,
  `goal_14_start` tinyint(1) DEFAULT NULL,
  `goal_14_value` bigint(20) DEFAULT NULL,
  `goal_15` tinyint(1) DEFAULT NULL,
  `goal_15_start` tinyint(1) DEFAULT NULL,
  `goal_15_value` bigint(20) DEFAULT NULL,
  `num_goals` tinyint(1) DEFAULT NULL,
  `num_goal_starts` tinyint(1) DEFAULT NULL,
  `goals_value` bigint(20) DEFAULT NULL,
  `commerce_trans_count` int(11) DEFAULT NULL,
  `commerce_trans_revenue` bigint(20) DEFAULT NULL,
  `commerce_items_revenue` bigint(20) DEFAULT NULL,
  `commerce_items_count` int(11) DEFAULT NULL,
  `commerce_items_quantity` int(11) DEFAULT NULL,
  `commerce_shipping_revenue` bigint(20) DEFAULT NULL,
  `commerce_tax_revenue` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_session`
--

INSERT INTO `owa_session` (`id`, `visitor_id`, `site_id`, `referer_id`, `ua_id`, `host_id`, `os_id`, `location_id`, `referring_search_term_id`, `timestamp`, `yyyymmdd`, `year`, `month`, `day`, `dayofweek`, `dayofyear`, `weekofyear`, `last_req`, `ip_address`, `is_new_visitor`, `is_repeat_visitor`, `language`, `days_since_prior_session`, `days_since_first_session`, `num_prior_sessions`, `medium`, `source_id`, `ad_id`, `campaign_id`, `user_name`, `cv1_name`, `cv1_value`, `cv2_name`, `cv2_value`, `cv3_name`, `cv3_value`, `cv4_name`, `cv4_value`, `cv5_name`, `cv5_value`, `user_email`, `hour`, `minute`, `num_pageviews`, `num_comments`, `is_bounce`, `prior_session_lastreq`, `prior_session_id`, `time_sinse_priorsession`, `prior_session_year`, `prior_session_month`, `prior_session_day`, `prior_session_dayofweek`, `prior_session_hour`, `prior_session_minute`, `os`, `first_page_id`, `last_page_id`, `host`, `city`, `country`, `site`, `is_robot`, `is_browser`, `is_feedreader`, `latest_attributions`, `goal_1`, `goal_1_start`, `goal_1_value`, `goal_2`, `goal_2_start`, `goal_2_value`, `goal_3`, `goal_3_start`, `goal_3_value`, `goal_4`, `goal_4_start`, `goal_4_value`, `goal_5`, `goal_5_start`, `goal_5_value`, `goal_6`, `goal_6_start`, `goal_6_value`, `goal_7`, `goal_7_start`, `goal_7_value`, `goal_8`, `goal_8_start`, `goal_8_value`, `goal_9`, `goal_9_start`, `goal_9_value`, `goal_10`, `goal_10_start`, `goal_10_value`, `goal_11`, `goal_11_start`, `goal_11_value`, `goal_12`, `goal_12_start`, `goal_12_value`, `goal_13`, `goal_13_start`, `goal_13_value`, `goal_14`, `goal_14_start`, `goal_14_value`, `goal_15`, `goal_15_start`, `goal_15_value`, `num_goals`, `num_goal_starts`, `goals_value`, `commerce_trans_count`, `commerce_trans_revenue`, `commerce_items_revenue`, `commerce_items_count`, `commerce_items_quantity`, `commerce_shipping_revenue`, `commerce_tax_revenue`) VALUES
(1581686202451286814, 1581686202475531008, 'e0eb2f42ec054a3a7ac652dc319715a5', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581686201, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581686201, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 5, 16, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 1020323368, 1020323368, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581686236567220859, 1581686236188090000, 'e0eb2f42ec054a3a7ac652dc319715a5', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581686235, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581686235, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 5, 17, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 1020323368, 1020323368, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581686359418841173, 1581686359676704434, 'e0eb2f42ec054a3a7ac652dc319715a5', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581686358, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581686358, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 5, 19, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 1414471744, 1414471744, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581687217046989686, 1581687217297097137, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 2030408605, 146471012, 3823601051, 259604063, 118221093, 1581687217, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581689958, '127.0.0.1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'admin', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 5, 33, 39, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 1267212299, 1267212299, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581690088238927406, 1581690088102908190, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690088, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581690088, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 6, 21, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 39983735, 39983735, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581690098549005923, 1581690098492514785, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690098, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581690098, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 6, 21, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 1242454461, 1242454461, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581690134179474034, 1581690134802798081, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690133, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581690133, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 6, 22, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 39983735, 39983735, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581690153068172370, 1581690153694979320, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690153, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581690153, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 6, 22, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 1267212299, 1267212299, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581690159038943341, 1581690159477384844, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690158, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581690158, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 6, 22, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 3282387290, 3282387290, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581690169999780813, 1581690169417973292, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690169, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581690169, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 6, 22, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 1267212299, 1267212299, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581690171275862927, 1581690171090261647, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690171, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581690171, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 6, 22, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 2877958510, 2877958510, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581690176435196355, 1581690176490520162, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690175, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581690175, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 6, 22, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 1267212299, 1267212299, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581690188600888845, 1581690188201844762, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690187, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581690187, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 6, 23, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 2877958510, 2877958510, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581690198523734255, 1581690198984959890, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690198, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581690198, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 6, 23, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 39983735, 39983735, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581690226074439407, 1581690226136235338, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690225, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581690225, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 6, 23, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 3854414048, 3854414048, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581690235677069338, 1581690235681583679, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690235, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581690235, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 6, 23, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 985230480, 985230480, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581690239164930318, 1581690239232112876, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690238, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581690238, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 6, 23, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 2969082592, 2969082592, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581690268791166976, 1581690268140253530, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690268, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581690268, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 6, 24, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 2238633484, 2238633484, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581690276703321692, 1581690276041492959, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690276, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581690276, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 6, 24, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 2238633484, 2238633484, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581690314675451641, 1581690314751964956, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690313, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581690313, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 6, 25, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 2969082592, 2969082592, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581690324111893546, 1581690324243758417, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690323, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581690323, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 6, 25, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 2238633484, 2238633484, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1581690378213734064, 1581690378373479133, '097c29658c8230dd7591aa17d4bce0d6', 118221093, 440220322, 146471012, 3823601051, 259604063, 118221093, 1581690377, 20200214, 2020, 202002, 14, 'Fri', 44, 7, 1581690377, '::1', 0, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 6, 26, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Windows', 1007114786, 1007114786, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `owa_site`
--

CREATE TABLE `owa_site` (
  `id` bigint(20) NOT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `site_family` varchar(255) DEFAULT NULL,
  `settings` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_site`
--

INSERT INTO `owa_site` (`id`, `site_id`, `domain`, `name`, `description`, `site_family`, `settings`) VALUES
(1446526266, 'e0eb2f42ec054a3a7ac652dc319715a5', 'http://www.wallstudio.lk', 'Wall Studio', '', '', ''),
(3466620818, '9aa4213a6de33fc81f4dc45023e01c0d', 'https://altum-46a17.firebaseapp.com/', 'altum', '', '', ''),
(4216445116, '097c29658c8230dd7591aa17d4bce0d6', 'http://altum-46a17.firebaseapp.com/', 'altum', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `owa_site_user`
--

CREATE TABLE `owa_site_user` (
  `site_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_source_dim`
--

CREATE TABLE `owa_source_dim` (
  `id` bigint(20) NOT NULL,
  `source_domain` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_source_dim`
--

INSERT INTO `owa_source_dim` (`id`, `source_domain`) VALUES
(118221093, '(none)');

-- --------------------------------------------------------

--
-- Table structure for table `owa_ua`
--

CREATE TABLE `owa_ua` (
  `id` bigint(20) NOT NULL,
  `ua` varchar(255) DEFAULT NULL,
  `browser_type` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_ua`
--

INSERT INTO `owa_ua` (`id`, `ua`, `browser_type`, `browser`) VALUES
(440220322, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362', 'Chrome', '70.0.3538'),
(2030408605, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0', 'Firefox', '74.0');

-- --------------------------------------------------------

--
-- Table structure for table `owa_user`
--

CREATE TABLE `owa_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `temp_passkey` varchar(255) DEFAULT NULL,
  `creation_date` bigint(20) DEFAULT NULL,
  `last_update_date` bigint(20) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_user`
--

INSERT INTO `owa_user` (`id`, `user_id`, `password`, `role`, `real_name`, `email_address`, `temp_passkey`, `creation_date`, `last_update_date`, `api_key`) VALUES
(1, 'admin', '$2y$10$cUZp88y..8jqNqBOnKh8FOfDFAn4BjyYyKkEya9QI1hksovCMmpje', 'admin', '', 'naveentennakoon27@gmail.com', '9a133c82d37189f0af30dadc10a8299c', 1581684926, 1581684926, '5da0d3005c5e8ccbea09311bcb0b2989');

-- --------------------------------------------------------

--
-- Table structure for table `owa_visitor`
--

CREATE TABLE `owa_visitor` (
  `id` bigint(20) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `first_session_id` bigint(20) DEFAULT NULL,
  `first_session_year` int(11) DEFAULT NULL,
  `first_session_month` varchar(255) DEFAULT NULL,
  `first_session_day` int(11) DEFAULT NULL,
  `first_session_dayofyear` int(11) DEFAULT NULL,
  `first_session_timestamp` bigint(20) DEFAULT NULL,
  `first_session_yyyymmdd` bigint(20) DEFAULT NULL,
  `last_session_id` bigint(20) DEFAULT NULL,
  `last_session_year` int(11) DEFAULT NULL,
  `last_session_month` varchar(255) DEFAULT NULL,
  `last_session_day` int(11) DEFAULT NULL,
  `last_session_dayofyear` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_visitor`
--

INSERT INTO `owa_visitor` (`id`, `user_name`, `user_email`, `first_session_id`, `first_session_year`, `first_session_month`, `first_session_day`, `first_session_dayofyear`, `first_session_timestamp`, `first_session_yyyymmdd`, `last_session_id`, `last_session_year`, `last_session_month`, `last_session_day`, `last_session_dayofyear`, `num_prior_sessions`) VALUES
(1581686202475531008, 'admin', '(not set)', 1581686202451286814, 2020, '202002', 14, 44, 1581686201, 20200214, 0, 0, '', 0, 0, 0),
(1581686236188090000, 'admin', '(not set)', 1581686236567220859, 2020, '202002', 14, 44, 1581686235, 20200214, 0, 0, '', 0, 0, 0),
(1581686359676704434, 'admin', '(not set)', 1581686359418841173, 2020, '202002', 14, 44, 1581686358, 20200214, 0, 0, '', 0, 0, 0),
(1581687217297097137, 'admin', '(not set)', 1581687217046989686, 2020, '202002', 14, 44, 1581687217, 20200214, 0, 0, '', 0, 0, 0),
(1581690088102908190, '(not set)', '(not set)', 1581690088238927406, 2020, '202002', 14, 44, 1581690088, 20200214, 0, 0, '', 0, 0, 0),
(1581690098492514785, '(not set)', '(not set)', 1581690098549005923, 2020, '202002', 14, 44, 1581690098, 20200214, 0, 0, '', 0, 0, 0),
(1581690134802798081, '(not set)', '(not set)', 1581690134179474034, 2020, '202002', 14, 44, 1581690133, 20200214, 0, 0, '', 0, 0, 0),
(1581690153694979320, '(not set)', '(not set)', 1581690153068172370, 2020, '202002', 14, 44, 1581690153, 20200214, 0, 0, '', 0, 0, 0),
(1581690159477384844, '(not set)', '(not set)', 1581690159038943341, 2020, '202002', 14, 44, 1581690158, 20200214, 0, 0, '', 0, 0, 0),
(1581690169417973292, '(not set)', '(not set)', 1581690169999780813, 2020, '202002', 14, 44, 1581690169, 20200214, 0, 0, '', 0, 0, 0),
(1581690171090261647, '(not set)', '(not set)', 1581690171275862927, 2020, '202002', 14, 44, 1581690171, 20200214, 0, 0, '', 0, 0, 0),
(1581690176490520162, '(not set)', '(not set)', 1581690176435196355, 2020, '202002', 14, 44, 1581690175, 20200214, 0, 0, '', 0, 0, 0),
(1581690188201844762, '(not set)', '(not set)', 1581690188600888845, 2020, '202002', 14, 44, 1581690187, 20200214, 0, 0, '', 0, 0, 0),
(1581690198984959890, '(not set)', '(not set)', 1581690198523734255, 2020, '202002', 14, 44, 1581690198, 20200214, 0, 0, '', 0, 0, 0),
(1581690226136235338, '(not set)', '(not set)', 1581690226074439407, 2020, '202002', 14, 44, 1581690225, 20200214, 0, 0, '', 0, 0, 0),
(1581690235681583679, '(not set)', '(not set)', 1581690235677069338, 2020, '202002', 14, 44, 1581690235, 20200214, 0, 0, '', 0, 0, 0),
(1581690239232112876, '(not set)', '(not set)', 1581690239164930318, 2020, '202002', 14, 44, 1581690238, 20200214, 0, 0, '', 0, 0, 0),
(1581690268140253530, '(not set)', '(not set)', 1581690268791166976, 2020, '202002', 14, 44, 1581690268, 20200214, 0, 0, '', 0, 0, 0),
(1581690276041492959, '(not set)', '(not set)', 1581690276703321692, 2020, '202002', 14, 44, 1581690276, 20200214, 0, 0, '', 0, 0, 0),
(1581690314751964956, '(not set)', '(not set)', 1581690314675451641, 2020, '202002', 14, 44, 1581690313, 20200214, 0, 0, '', 0, 0, 0),
(1581690324243758417, '(not set)', '(not set)', 1581690324111893546, 2020, '202002', 14, 44, 1581690323, 20200214, 0, 0, '', 0, 0, 0),
(1581690378373479133, '(not set)', '(not set)', 1581690378213734064, 2020, '202002', 14, 44, 1581690377, 20200214, 0, 0, '', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `owa_action_fact`
--
ALTER TABLE `owa_action_fact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `yyyymmdd` (`yyyymmdd`);

--
-- Indexes for table `owa_ad_dim`
--
ALTER TABLE `owa_ad_dim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_campaign_dim`
--
ALTER TABLE `owa_campaign_dim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_click`
--
ALTER TABLE `owa_click`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `yyyymmdd` (`yyyymmdd`);

--
-- Indexes for table `owa_commerce_line_item_fact`
--
ALTER TABLE `owa_commerce_line_item_fact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `yyyymmdd` (`yyyymmdd`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `owa_commerce_transaction_fact`
--
ALTER TABLE `owa_commerce_transaction_fact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `yyyymmdd` (`yyyymmdd`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `owa_configuration`
--
ALTER TABLE `owa_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_document`
--
ALTER TABLE `owa_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_domstream`
--
ALTER TABLE `owa_domstream`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `yyyymmdd` (`yyyymmdd`);

--
-- Indexes for table `owa_exit`
--
ALTER TABLE `owa_exit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_feed_request`
--
ALTER TABLE `owa_feed_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `yyyymmdd` (`yyyymmdd`);

--
-- Indexes for table `owa_host`
--
ALTER TABLE `owa_host`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_impression`
--
ALTER TABLE `owa_impression`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_location_dim`
--
ALTER TABLE `owa_location_dim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_os`
--
ALTER TABLE `owa_os`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_queue_item`
--
ALTER TABLE `owa_queue_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_referer`
--
ALTER TABLE `owa_referer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_request`
--
ALTER TABLE `owa_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `yyyymmdd` (`yyyymmdd`);

--
-- Indexes for table `owa_search_term_dim`
--
ALTER TABLE `owa_search_term_dim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_session`
--
ALTER TABLE `owa_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `yyyymmdd` (`yyyymmdd`);

--
-- Indexes for table `owa_site`
--
ALTER TABLE `owa_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_source_dim`
--
ALTER TABLE `owa_source_dim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_ua`
--
ALTER TABLE `owa_ua`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_user`
--
ALTER TABLE `owa_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `owa_visitor`
--
ALTER TABLE `owa_visitor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `owa_user`
--
ALTER TABLE `owa_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
