-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 18, 2022 at 06:14 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add cart', 9, 'add_cart'),
(34, 'Can change cart', 9, 'change_cart'),
(35, 'Can delete cart', 9, 'delete_cart'),
(36, 'Can view cart', 9, 'view_cart'),
(37, 'Can add wishlist', 10, 'add_wishlist'),
(38, 'Can change wishlist', 10, 'change_wishlist'),
(39, 'Can delete wishlist', 10, 'delete_wishlist'),
(40, 'Can view wishlist', 10, 'view_wishlist'),
(41, 'Can add order item', 11, 'add_orderitem'),
(42, 'Can change order item', 11, 'change_orderitem'),
(43, 'Can delete order item', 11, 'delete_orderitem'),
(44, 'Can view order item', 11, 'view_orderitem'),
(45, 'Can add order', 12, 'add_order'),
(46, 'Can change order', 12, 'change_order'),
(47, 'Can delete order', 12, 'delete_order'),
(48, 'Can view order', 12, 'view_order'),
(49, 'Can add profile', 13, 'add_profile'),
(50, 'Can change profile', 13, 'change_profile'),
(51, 'Can delete profile', 13, 'delete_profile'),
(52, 'Can view profile', 13, 'view_profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$vYcHvcbvZ1VnvgKCTkW3h3$RM/+byakBFZ6snPBfq4Z1A/NCs6h5JftAtWlWkdscHI=', '2022-11-17 14:50:40.122058', 1, 'admin', '', '', '', 1, 1, '2022-07-26 05:35:01.000000'),
(2, 'pbkdf2_sha256$320000$Xb2FPXdYlzpNSMOxYsAA6Z$8vAHNXha5dc5DN7sZqftRsp1YNFWTgOT3Dmb2602Xis=', NULL, 0, 'pritesh', '', '', 'priteshbhatiya52@gmail.com', 0, 1, '2022-07-27 16:59:22.668774'),
(3, 'pbkdf2_sha256$320000$qzdnRSDcryHbIPNjT9WsxJ$NKJhkwpWJg+uL3bXpyJE0bseAy/YVfOp6F5u7ILtZdg=', '2022-08-18 06:24:13.414055', 0, 'priteshbhai', 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', 0, 1, '2022-07-28 05:56:16.450290'),
(4, 'pbkdf2_sha256$320000$OVHGpW920SxwbJ5ONqVtbt$BdvHjZh1gIEcGcdV/cZXuWg9xbj55Edx3aRX6qc0xRg=', '2022-08-12 10:46:28.666842', 1, 'admin123', '', '', '', 1, 1, '2022-07-30 04:57:35.066937'),
(5, 'pbkdf2_sha256$320000$UISpajQfa3NJ5aole6CUT4$AREQlYAoxVKEmPeohprlvvUWqnNtF2q88Mcw88CtXAg=', '2022-07-31 07:57:58.426536', 0, 'JATIN', '', '', 'jatinbhatiya58@gmail.com', 0, 1, '2022-07-30 06:15:30.606375'),
(6, 'pbkdf2_sha256$320000$5GMQdJj4vgv899HQGWTDGl$hGTOgge2GG+gp3ysSAyFvk1mVzhZ7Ni0ZgPrU1r2WPU=', '2022-11-16 12:49:09.671302', 0, 'KARANTULSANI', '', '', 'karantulsani47@gmail.com', 0, 1, '2022-08-13 09:38:10.368059'),
(7, 'pbkdf2_sha256$390000$5MjWM94wSRWAtTy5MkPk1a$e7iz+VLuTNOcwsU4chNrAghWmwmUvGmjZ3j0O30k5/8=', '2022-10-10 13:24:22.551951', 0, 'JIMIT', 'JIMIT', 'CHANDNANI', 'jimit64@gmail.com', 0, 1, '2022-10-10 13:24:08.146554'),
(8, 'pbkdf2_sha256$320000$vL8iGCDKiQivsvTTiO9RRj$dC4Mz5OBFeHWr/haDwa3aaSEu0Mq2Yn2Pklb2J7H7nk=', '2022-11-17 14:25:32.327279', 0, 'HareshBhatiya', 'HARESH', 'BHATIYA', 'jimit64@gmail.com', 0, 1, '2022-11-17 14:25:21.538043');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-07-26 05:36:44.004678', '1', 'Laptop', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-07-26 05:39:07.526749', '1', 'Lenovo IdeaPad Slim 3', 1, '[{\"added\": {}}]', 8, 1),
(3, '2022-07-26 05:41:30.566140', '2', 'HP 14s, 11th Gen', 1, '[{\"added\": {}}]', 8, 1),
(4, '2022-07-26 05:43:43.354660', '3', 'Dell Inspiron 3525', 1, '[{\"added\": {}}]', 8, 1),
(5, '2022-07-26 07:15:19.491135', '4', 'Dell Inspiron 3525 Laptop', 1, '[{\"added\": {}}]', 8, 1),
(6, '2022-07-26 07:15:31.565106', '4', 'Dell Inspiron 3525 Laptop', 2, '[]', 8, 1),
(7, '2022-07-26 07:15:40.761880', '4', 'Dell Inspiron 3525 Laptop', 2, '[]', 8, 1),
(8, '2022-07-26 07:26:30.590947', '4', 'Dell Inspiron 3525 Laptop', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 8, 1),
(9, '2022-07-26 09:47:05.766127', '1', 'Lenovo IdeaPad Slim 3', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 8, 1),
(10, '2022-07-26 09:48:18.892708', '1', 'Lenovo IdeaPad Slim 3', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 8, 1),
(11, '2022-07-26 15:16:39.998237', '4', 'Dell Inspiron 3525', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 8, 1),
(12, '2022-07-27 05:26:17.828997', '2', 'Mobile', 1, '[{\"added\": {}}]', 7, 1),
(13, '2022-07-27 05:30:16.192789', '5', 'OPPO A31', 1, '[{\"added\": {}}]', 8, 1),
(14, '2022-07-27 05:31:04.629164', '5', 'OPPO A31', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(15, '2022-07-27 05:44:11.371238', '5', 'OPPO A31', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(16, '2022-07-27 06:32:18.092599', '2', 'Mobile', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(17, '2022-07-27 06:40:00.790319', '6', 'Redmi 9A Sport', 1, '[{\"added\": {}}]', 8, 1),
(18, '2022-07-27 06:43:37.307237', '7', 'Samsung Galaxy M13 5G', 1, '[{\"added\": {}}]', 8, 1),
(19, '2022-07-27 06:44:23.619188', '7', 'Samsung Galaxy M13', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 8, 1),
(20, '2022-07-27 07:12:14.114748', '3', 'Fashion', 1, '[{\"added\": {}}]', 7, 1),
(21, '2022-07-27 07:13:23.957299', '3', 'Fashion', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(22, '2022-07-27 08:26:45.607114', '8', 'T-Shirt for Men', 1, '[{\"added\": {}}]', 8, 1),
(23, '2022-07-30 15:50:53.581943', '4', 'Dell Inspiron 3525', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(24, '2022-07-30 15:51:38.145537', '2', 'HP 14s, 11th Gen', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(25, '2022-07-30 15:53:30.453169', '2', 'HP 14s, 11th Gen', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(26, '2022-07-30 15:53:44.404351', '2', 'HP 14s, 11th Gen', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(27, '2022-07-31 07:11:28.653085', '8', 'T-Shirt for Men', 2, '[]', 8, 1),
(28, '2022-07-31 07:11:38.273801', '7', 'Samsung Galaxy M13', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(29, '2022-08-10 04:44:16.000494', '1', 'Lenovo IdeaPad Slim 3', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(30, '2022-08-10 04:44:37.796706', '4', 'Dell Inspiron 3525', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(31, '2022-08-10 04:44:53.965695', '3', 'Dell Inspiron 3525', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(32, '2022-08-12 10:40:39.222150', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Superuser status\"]}}]', 4, 1),
(33, '2022-08-12 10:46:41.410279', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Superuser status\"]}}]', 4, 4),
(34, '2022-08-12 10:47:05.739644', '1', 'admin', 2, '[]', 4, 4),
(35, '2022-08-12 16:36:39.231219', '4', 'Women\'s Fashion', 1, '[{\"added\": {}}]', 7, 1),
(36, '2022-08-12 16:39:03.932070', '9', 'GoSriKi Women\'s Cotton Kurti', 1, '[{\"added\": {}}]', 8, 1),
(37, '2022-08-12 16:39:46.065511', '9', 'Women\'s Cotton Kurti', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 8, 1),
(38, '2022-08-12 16:40:40.138786', '9', 'Women\'s Cotton Kurti', 2, '[{\"changed\": {\"fields\": [\"Tag\"]}}]', 8, 1),
(39, '2022-08-12 16:43:15.916393', '10', 'Women\'s Rayon Solid Kurta', 1, '[{\"added\": {}}]', 8, 1),
(40, '2022-08-12 16:43:37.998737', '10', 'Women\' Solid Kurta', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 8, 1),
(41, '2022-08-12 16:49:36.260393', '11', 'Sarees Women\'s Kanchipuram', 1, '[{\"added\": {}}]', 8, 1),
(42, '2022-08-12 16:49:52.826302', '11', 'Sarees Women\'s', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 8, 1),
(43, '2022-08-12 16:50:57.960709', '3', 'Men\'s Fashion', 2, '[{\"changed\": {\"fields\": [\"Slug\", \"Name\"]}}]', 7, 1),
(44, '2022-08-12 16:51:18.011387', '8', 'T-Shirt for Men', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 8, 1),
(45, '2022-08-12 16:55:34.678957', '12', 'Half Sleeve Shirt', 1, '[{\"added\": {}}]', 8, 1),
(46, '2022-08-12 16:58:26.238451', '13', 'Slim fit Casual Shirt', 1, '[{\"added\": {}}]', 8, 1),
(47, '2022-11-15 12:15:06.732710', '4', 'Women\'s Fashion', 2, '[]', 7, 1),
(48, '2022-11-17 11:05:48.723064', '1', 'Plants', 2, '[{\"changed\": {\"fields\": [\"Slug\", \"Name\", \"Image\", \"Description\", \"Meta title\", \"Meta keywords\", \"Meta description\"]}}]', 7, 1),
(49, '2022-11-17 11:09:06.378578', '2', 'Bags', 2, '[{\"changed\": {\"fields\": [\"Slug\", \"Name\", \"Image\", \"Description\", \"Meta title\", \"Meta keywords\", \"Meta description\"]}}]', 7, 1),
(50, '2022-11-17 11:30:47.187012', '3', 'Recycled Plastic Products', 2, '[{\"changed\": {\"fields\": [\"Slug\", \"Name\", \"Image\", \"Description\", \"Meta title\", \"Meta keywords\", \"Meta description\"]}}]', 7, 1),
(51, '2022-11-17 11:43:43.496997', '4', 'Eco-friendly Serveware & Tableware', 2, '[{\"changed\": {\"fields\": [\"Slug\", \"Name\", \"Image\", \"Description\", \"Meta title\", \"Meta keywords\", \"Meta description\"]}}]', 7, 1),
(52, '2022-11-17 11:52:12.360189', '5', 'Eco Floor Mats', 1, '[{\"added\": {}}]', 7, 1),
(53, '2022-11-17 11:54:06.474830', '6', 'Eco-friendly Stationary', 1, '[{\"added\": {}}]', 7, 1),
(54, '2022-11-17 11:57:01.108698', '7', 'Eco-friendly Storage, Containers', 1, '[{\"added\": {}}]', 7, 1),
(55, '2022-11-17 11:59:20.791258', '8', 'Eco-friendly Candles -Diyas', 1, '[{\"added\": {}}]', 7, 1),
(56, '2022-11-17 12:03:37.674484', '13', 'Green Tulsi Plant', 2, '[{\"changed\": {\"fields\": [\"Category\", \"Slug\", \"Name\", \"Product image\", \"Small description\", \"Quantity\", \"Description\", \"Original price\", \"Selling price\", \"Tag\", \"Meta title\", \"Meta keywords\", \"Meta description\"]}}]', 8, 1),
(57, '2022-11-17 12:06:39.955828', '12', 'Yellow Rose Plant', 2, '[{\"changed\": {\"fields\": [\"Category\", \"Slug\", \"Name\", \"Product image\", \"Small description\", \"Quantity\", \"Description\", \"Original price\", \"Selling price\", \"Tag\", \"Meta title\", \"Meta keywords\", \"Meta description\"]}}]', 8, 1),
(58, '2022-11-17 12:10:19.574261', '14', 'Jade Plant', 1, '[{\"added\": {}}]', 8, 1),
(59, '2022-11-17 12:12:32.893046', '15', 'Ceramic Pot', 1, '[{\"added\": {}}]', 8, 1),
(60, '2022-11-17 12:16:58.464417', '16', 'Aleaf Reusable Tote Bags', 1, '[{\"added\": {}}]', 8, 1),
(61, '2022-11-17 12:17:24.914419', '16', 'Aleaf Reusable Tote Bags', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(62, '2022-11-17 12:30:36.138765', '17', 'Hand Bag with Zip', 1, '[{\"added\": {}}]', 8, 1),
(63, '2022-11-17 12:30:51.857954', '17', 'Hand Bag with Zip', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(64, '2022-11-17 12:32:29.260702', '18', 'Vegetable Bag', 1, '[{\"added\": {}}]', 8, 1),
(65, '2022-11-17 12:34:27.935495', '19', 'Kitchen  Bags', 1, '[{\"added\": {}}]', 8, 1),
(66, '2022-11-17 12:34:47.076976', '19', 'Kitchen  Bags', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(67, '2022-11-17 12:38:17.957248', '20', 'CANDLE LIGHT', 1, '[{\"added\": {}}]', 8, 1),
(68, '2022-11-17 12:40:12.448231', '21', 'Candle holder', 1, '[{\"added\": {}}]', 8, 1),
(69, '2022-11-17 12:42:51.742469', '22', 'Lavender Candle', 1, '[{\"added\": {}}]', 8, 1),
(70, '2022-11-17 12:45:56.070357', '23', 'Candles gift box', 1, '[{\"added\": {}}]', 8, 1),
(71, '2022-11-17 12:50:13.321027', '24', 'Floor rug - round', 1, '[{\"added\": {}}]', 8, 1),
(72, '2022-11-17 12:53:05.204229', '25', 'Jute Rug', 1, '[{\"added\": {}}]', 8, 1),
(73, '2022-11-17 12:55:47.123071', '26', 'Jute Rug', 1, '[{\"added\": {}}]', 8, 1),
(74, '2022-11-17 12:57:53.461111', '27', 'Cushion Cover-16 inch', 1, '[{\"added\": {}}]', 8, 1),
(75, '2022-11-17 13:09:05.990289', '28', 'Recycled Bottle Vase', 1, '[{\"added\": {}}]', 8, 1),
(76, '2022-11-17 13:13:09.105544', '29', 'Bottle Planter', 1, '[{\"added\": {}}]', 8, 1),
(77, '2022-11-17 13:22:09.735539', '30', 'bottle vase - Lavender', 1, '[{\"added\": {}}]', 8, 1),
(78, '2022-11-17 13:26:05.069420', '31', 'Plastic Jharokha', 1, '[{\"added\": {}}]', 8, 1),
(79, '2022-11-17 13:26:48.721519', '30', 'bottle vase - Lavender', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(80, '2022-11-17 13:27:10.297130', '31', 'Plastic Jharokha', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(81, '2022-11-17 13:35:02.357246', '32', 'Dinnerware - Mint Green', 1, '[{\"added\": {}}]', 8, 1),
(82, '2022-11-17 13:37:22.500899', '33', 'Dinnerware - Monochrome', 1, '[{\"added\": {}}]', 8, 1),
(83, '2022-11-17 13:39:46.191261', '34', 'Serving Bowl', 1, '[{\"added\": {}}]', 8, 1),
(84, '2022-11-17 13:41:33.422135', '35', 'Serving Platter', 1, '[{\"added\": {}}]', 8, 1),
(85, '2022-11-17 13:45:24.773223', '36', 'Stationery Holder', 1, '[{\"added\": {}}]', 8, 1),
(86, '2022-11-17 13:47:50.692251', '37', 'Plant Holder', 1, '[{\"added\": {}}]', 8, 1),
(87, '2022-11-17 13:52:56.632756', '38', 'Pencil + 5 Eco Pens', 1, '[{\"added\": {}}]', 8, 1),
(88, '2022-11-17 13:56:13.305744', '39', 'A4 File Folder-', 1, '[{\"added\": {}}]', 8, 1),
(89, '2022-11-17 14:00:12.312770', '40', 'Paper Dustbin', 1, '[{\"added\": {}}]', 8, 1),
(90, '2022-11-17 14:01:54.450805', '41', 'Cane Planter', 1, '[{\"added\": {}}]', 8, 1),
(91, '2022-11-17 14:03:51.109763', '42', 'Grass Container', 1, '[{\"added\": {}}]', 8, 1),
(92, '2022-11-17 14:06:06.225566', '43', 'Grass Container', 1, '[{\"added\": {}}]', 8, 1),
(93, '2022-11-17 14:08:12.330096', '7', 'Samsung Galaxy M13', 3, '', 8, 1),
(94, '2022-11-17 14:08:30.870360', '1', 'Lenovo IdeaPad Slim 3', 3, '', 8, 1),
(95, '2022-11-17 14:08:39.785435', '2', 'HP 14s, 11th Gen', 3, '', 8, 1),
(96, '2022-11-17 14:08:47.244655', '4', 'Dell Inspiron 3525', 3, '', 8, 1),
(97, '2022-11-17 14:09:02.648148', '3', 'Dell Inspiron 3525', 3, '', 8, 1),
(98, '2022-11-17 14:09:11.300889', '8', 'T-Shirt for Men', 3, '', 8, 1),
(99, '2022-11-17 14:09:44.405448', '11', 'Sarees Women\'s', 3, '', 8, 1),
(100, '2022-11-17 14:09:53.900773', '5', 'OPPO A31', 3, '', 8, 1),
(101, '2022-11-17 14:10:01.373498', '6', 'Redmi 9A Sport', 3, '', 8, 1),
(102, '2022-11-17 14:10:09.228106', '10', 'Women\' Solid Kurta', 3, '', 8, 1),
(103, '2022-11-17 14:10:16.637739', '9', 'Women\'s Cotton Kurti', 3, '', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'store', 'category'),
(8, 'store', 'product'),
(9, 'store', 'cart'),
(10, 'store', 'wishlist'),
(11, 'store', 'orderitem'),
(12, 'store', 'order'),
(13, 'store', 'profile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-07-26 05:32:52.247983'),
(2, 'auth', '0001_initial', '2022-07-26 05:32:54.602277'),
(3, 'admin', '0001_initial', '2022-07-26 05:32:55.242175'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-07-26 05:32:55.297787'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-07-26 05:32:55.336757'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-07-26 05:32:55.531143'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-07-26 05:32:55.682736'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-07-26 05:32:55.920411'),
(9, 'auth', '0004_alter_user_username_opts', '2022-07-26 05:32:55.967879'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-07-26 05:32:56.076269'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-07-26 05:32:56.082737'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-07-26 05:32:56.108141'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-07-26 05:32:56.313455'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-07-26 05:32:56.501058'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-07-26 05:32:56.657275'),
(16, 'auth', '0011_update_proxy_permissions', '2022-07-26 05:32:56.677593'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-07-26 05:32:56.770975'),
(18, 'sessions', '0001_initial', '2022-07-26 05:32:56.964502'),
(19, 'store', '0001_initial', '2022-07-26 05:32:57.331313'),
(20, 'store', '0002_alter_category_meta_description_and_more', '2022-07-26 05:33:43.923816'),
(21, 'store', '0003_rename_slug_product_category_slug', '2022-07-26 06:10:24.530263'),
(22, 'store', '0004_rename_category_slug_product_slug', '2022-07-26 06:35:42.281392'),
(23, 'store', '0005_cart', '2022-07-30 04:54:09.272724'),
(24, 'store', '0006_wishlist', '2022-08-01 06:01:00.535695'),
(25, 'store', '0007_order_orderitem', '2022-08-06 07:06:17.784688'),
(26, 'store', '0008_profile', '2022-08-06 10:53:35.888309'),
(27, 'store', '0009_alter_order_created_at', '2022-08-12 10:22:10.125124'),
(28, 'store', '0010_alter_order_created_at', '2022-08-13 06:27:14.043306');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6vogodvz4k1vlrwjq0yve0h3mh6gvtcz', '.eJxVjEEOwiAQRe_C2hBhYEpduu8ZCMxMpWpoUtqV8e7apAvd_vfef6mYtrXErckSJ1YXBer0u-VED6k74Huqt1nTXNdlynpX9EGbHmaW5_Vw_w5KauVbk3W9OPBGchI8Wxt6RjTsfB6zC74jx9gBARqhMGYfMCRAsOAJOBj1_gDWoTdQ:1oOYpa:PiFx3KR95YTehFoziO4I5Ve1eR9vUuXw1AellDdT95k', '2022-09-01 06:16:38.439864'),
('9gd0gegsondvdyzrs4b86x28pboh5h36', '.eJxVjEEOwiAQRe_C2hBhYEpduu8ZCMxMpWpoUtqV8e7apAvd_vfef6mYtrXErckSJ1YXBer0u-VED6k74Huqt1nTXNdlynpX9EGbHmaW5_Vw_w5KauVbk3W9OPBGchI8Wxt6RjTsfB6zC74jx9gBARqhMGYfMCRAsOAJOBj1_gDWoTdQ:1oIPlj:dRH4Ycl55HzbFQpXKVDUogFDswR58OvHItdQdFpuNtk', '2022-08-15 07:23:15.261161'),
('18e5r7cvdibbfn8573zwpfake3s3uswx', '.eJxVjEEOwiAQRe_C2hBhYEpduu8ZCMxMpWpoUtqV8e7apAvd_vfef6mYtrXErckSJ1YXBer0u-VED6k74Huqt1nTXNdlynpX9EGbHmaW5_Vw_w5KauVbk3W9OPBGchI8Wxt6RjTsfB6zC74jx9gBARqhMGYfMCRAsOAJOBj1_gDWoTdQ:1oOYwv:ZvjyOlz5JI16lWjbOC03qDTX3yY9PUy4KYwpxnVzek4', '2022-09-01 06:24:13.417063'),
('q6j9sx265g3klm52bbclgmfpw8e6kpk2', '.eJxVjEEOwiAQRe_C2pChUAou3XsGMswMUjVtUtqV8e7apAvd_vfef6mE21rT1mRJI6uzMur0u2Wkh0w74DtOt1nTPK3LmPWu6IM2fZ1ZnpfD_Tuo2Oq3tqW3HZfsDcdCINk7DD4Hgmh7w8YgAaGRQN4CRBCKAiTODkN2nbB6fwD0eDhN:1oRSNH:hhbelMJpzRzfB5pJuQEHHm01JOBHgmfc2nHi_jWTzMs', '2022-09-09 05:59:23.683844'),
('w6uu3orcr0wctq09ihcp9e0iv6a9w7r2', '.eJxVjMsOwiAQRf-FtSEMb1y67zeQAUapGkhKuzL-uzbpQrf3nHNfLOK21rgNWuJc2JlZdvrdEuYHtR2UO7Zb57m3dZkT3xV-0MGnXuh5Ody_g4qjfmunc1DaegpQQEoJVkMmAG8J9NWjCCWgUwKVTmS8cehQggjCo7TFSPb-ALH2Nn8:1ouvjz:4ZNESDG2s01xBF1OPWlCYA8TzpdIouG5OhIWUdgrbD0', '2022-11-29 13:12:39.320554'),
('hwqnyf4efozpfegak5gaexlsp7ekwuxp', '.eJxVjMsOwiAQRf-FtSEMb1y67zeQAUapGkhKuzL-uzbpQrf3nHNfLOK21rgNWuJc2JlZdvrdEuYHtR2UO7Zb57m3dZkT3xV-0MGnXuh5Ody_g4qjfmunc1DaegpQQEoJVkMmAG8J9NWjCCWgUwKVTmS8cehQggjCo7TFSPb-ALH2Nn8:1ovHqn:0tC_FWIWo5WgaVhYUz0OllepjEysccprVzqfzNjhBXI', '2022-11-30 12:49:09.729683'),
('l38r29n6a1in3luk6z1j2ltgal9tfwmi', '.eJxVjEEOwiAQRe_C2pChUAou3XsGMswMUjVtUtqV8e7apAvd_vfef6mE21rT1mRJI6uzMur0u2Wkh0w74DtOt1nTPK3LmPWu6IM2fZ1ZnpfD_Tuo2Oq3tqW3HZfsDcdCINk7DD4Hgmh7w8YgAaGRQN4CRBCKAiTODkN2nbB6fwD0eDhN:1ovKi7:LwPgK7B2wQSLEWFdkJlkUjD6Ev24GnG8T4pifRQQEWA', '2022-11-30 15:52:23.876676'),
('ew764v1szqyc1y8hgt2bn38n2xdvrtbp', '.eJxVjEEOwiAQRe_C2pChUAou3XsGMswMUjVtUtqV8e7apAvd_vfef6mE21rT1mRJI6uzMur0u2Wkh0w74DtOt1nTPK3LmPWu6IM2fZ1ZnpfD_Tuo2Oq3tqW3HZfsDcdCINk7DD4Hgmh7w8YgAaGRQN4CRBCKAiTODkN2nbB6fwD0eDhN:1ovg9t:t0fUYt1CsoNG474VND2q2zM9wKijlxvW9Z46PXQysUE', '2022-12-01 14:46:29.070517');

-- --------------------------------------------------------

--
-- Table structure for table `store_cart`
--

DROP TABLE IF EXISTS `store_cart`;
CREATE TABLE IF NOT EXISTS `store_cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_qty` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_cart_product_id_b219c080` (`product_id`),
  KEY `store_cart_user_id_99e99107` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_cart`
--

INSERT INTO `store_cart` (`id`, `product_qty`, `created_at`, `product_id`, `user_id`) VALUES
(54, 1, '2022-08-13 10:06:08.573774', 13, 6),
(65, 1, '2022-11-18 05:33:52.258101', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_category`
--

DROP TABLE IF EXISTS `store_category`;
CREATE TABLE IF NOT EXISTS `store_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `slug` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `meta_title` varchar(150) NOT NULL,
  `meta_keywords` varchar(150) NOT NULL,
  `meta_description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_category`
--

INSERT INTO `store_category` (`id`, `slug`, `name`, `image`, `description`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`) VALUES
(1, 'Plants', 'Plants', 'category/plant.jpg', 'Plants', 0, 0, 'Plants', 'Plants', 'Plants indoor plants, outdoor plants', '2022-07-26 05:36:44.001686'),
(7, 'Eco-friendly Storage, Containers', 'Eco-friendly Storage, Containers', 'category/storage.jpg', 'Eco-friendly Storage, Containers & Organisers', 0, 0, 'Eco-friendly Storage, Containers & Organisers', 'Eco-friendly Storage, Containers & Organisers', 'Eco-friendly Storage, Containers & Organisers', '2022-11-17 11:57:01.104704'),
(2, 'Bags', 'Bags', 'category/bags.jpg', 'Bags', 0, 0, 'Bags', 'Bags', 'Bags, eco friednly', '2022-07-27 05:26:17.813252'),
(5, 'Eco Floor Mats', 'Eco Floor Mats', 'category/cover.jpg', 'Eco Floor Mats', 0, 0, 'Eco Floor Mats', 'Eco Floor Mats', 'Eco Floor Mats', '2022-11-17 11:52:12.360189'),
(6, 'Eco-friendly Stationary', 'Eco-friendly Stationary', 'category/penbox.jpg', 'Eco-friendly Stationary', 0, 0, 'Eco-friendly Stationary', 'Eco-friendly Stationary', 'Eco-friendly Stationary', '2022-11-17 11:54:06.474830'),
(3, 'Recycled Plastic Products', 'Recycled Plastic Products', 'category/recycle_product.jpg', 'Recycled Plastic Products', 0, 0, 'Recycled Plastic Products', 'Recycled Plastic Products', 'Recycled Plastic Products', '2022-07-27 07:12:14.111876'),
(4, 'Eco-friendly Serveware & Tableware', 'Eco-friendly Serveware & Tableware', 'category/homedecor.png', 'Eco-friendly Serveware & Tableware', 0, 0, 'Eco-friendly Serveware & Tableware', 'Eco-friendly Serveware & Tableware', 'Eco-friendly Serveware & Tableware', '2022-08-12 16:36:39.159535'),
(8, 'Eco-friendly Candles -Diyas', 'Eco-friendly Candles-Diyas', 'category/diya.jpg', 'Eco-friendly Candles/Diyas', 0, 0, 'Eco-friendly Candles/Diyas', 'Eco-friendly Candles/Diyas', 'Eco-friendly Candles/Diyas', '2022-11-17 11:59:20.787259');

-- --------------------------------------------------------

--
-- Table structure for table `store_order`
--

DROP TABLE IF EXISTS `store_order`;
CREATE TABLE IF NOT EXISTS `store_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fname` varchar(150) NOT NULL,
  `lname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `country` varchar(150) NOT NULL,
  `pincode` varchar(150) NOT NULL,
  `total_price` double NOT NULL,
  `payment_mode` varchar(150) NOT NULL,
  `payment_id` varchar(250) DEFAULT NULL,
  `status` varchar(150) NOT NULL,
  `message` longtext,
  `tracking_no` varchar(150) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_order_user_id_ae5f7a5f` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_order`
--

INSERT INTO `store_order` (`id`, `fname`, `lname`, `email`, `phone`, `address`, `city`, `state`, `country`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033', 'gaytrinagar ', 'BHAVNAGAR', 'gujrat', 'India', '364001', 22998, 'COD', NULL, 'Pending', NULL, 'pritesh6589319', '2022-08-06 10:20:35.452605', '2022-08-06 10:20:35.452605', 3),
(2, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033', 'gaytrinagar ', 'BHAVNAGAR', 'gujrat', 'India', '364001', 22998, 'COD', NULL, 'Pending', NULL, 'pritesh1196857', '2022-08-06 10:21:38.205410', '2022-08-06 10:21:38.206398', 3),
(3, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033', 'gaytrinagar ', 'BHAVNAGAR', 'gujrat', 'India', '364001', 22998, 'COD', NULL, 'Pending', NULL, 'pritesh2035873', '2022-08-06 10:29:01.921690', '2022-08-06 10:29:01.921690', 3),
(4, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 327, 'COD', NULL, 'Pending', NULL, 'pritesh9051197', '2022-08-07 06:47:06.824521', '2022-08-07 06:47:06.824521', 3),
(5, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 11990, 'COD', NULL, 'Pending', NULL, 'pritesh2285565', '2022-08-07 06:54:42.334237', '2022-08-07 06:54:42.334237', 3),
(6, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 34789, 'Paid by Razorpay', 'pay_K32wFBmnuu6pK5', 'Pending', NULL, 'pritesh5681538', '2022-08-08 06:51:47.630719', '2022-08-08 06:51:47.630719', 3),
(7, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 327, 'Paid by Razorpay', 'pay_K32xuWwIWVYlBr', 'Pending', NULL, 'pritesh1114604', '2022-08-08 06:53:29.450825', '2022-08-08 06:53:29.450825', 3),
(8, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 30990, 'COD', NULL, 'Pending', NULL, 'pritesh3130320', '2022-08-08 07:14:31.751888', '2022-08-08 07:14:31.751888', 3),
(9, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 16326, 'Paid by Razorpay', 'pay_K33MHJglhOuL0Z', 'Pending', NULL, 'pritesh2343807', '2022-08-08 07:16:26.610861', '2022-08-08 07:16:26.610861', 3),
(10, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 327, 'COD', NULL, 'Pending', NULL, 'pritesh9918231', '2022-08-10 04:47:00.284224', '2022-08-10 04:47:00.284224', 3),
(11, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 27790, 'Paid by Razorpay', 'pay_K3o2NEfKzaYom8', 'Pending', NULL, 'pritesh7105103', '2022-08-10 04:56:13.658844', '2022-08-10 04:56:13.658844', 3),
(12, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 6999, 'Paid by Razorpay', 'pay_K4bhS2R37pWnMs', 'Pending', NULL, 'pritesh6935668', '2022-08-12 05:31:05.620977', '2022-08-12 05:31:05.620977', 3),
(13, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 110280, 'Paid by Razorpay', 'pay_K4gXMZc5h7HB1m', 'Pending', NULL, 'pritesh6422551', '2022-08-12 10:15:00.703036', '2022-08-12 10:15:00.703036', 3),
(14, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 6999, 'Paid by Razorpay', 'pay_K4gvHZQpLO6Nwe', 'Pending', NULL, 'pritesh3130377', '2022-08-12 10:36:16.029960', '2022-08-12 10:37:39.347080', 3),
(15, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 15999, 'Paid by Razorpay', 'pay_K500ieGaoCgBWD', 'Pending', NULL, 'pritesh1522507', '2022-08-13 04:53:16.017573', '2022-08-13 05:17:57.917054', 3),
(16, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 27790, 'Paid by Razorpay', 'pay_K517nroqB1A9bA', 'Pending', NULL, 'pritesh2248767', '2022-08-13 04:53:16.017573', '2022-08-13 06:23:22.013457', 3),
(17, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 699, 'Paid by Razorpay', 'pay_K51CRhfqjbT0wj', 'Pending', NULL, 'pritesh5605782', '2022-08-13 06:27:45.749555', '2022-08-13 06:27:45.749555', 3),
(18, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 15999, 'COD', NULL, 'Pending', NULL, 'pritesh3971456', '2022-08-13 06:28:46.311304', '2022-08-13 06:28:46.311304', 3),
(19, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 699, 'COD', NULL, 'Pending', NULL, 'pritesh3113171', '2022-08-13 07:10:31.416843', '2022-08-13 07:10:31.416843', 3),
(20, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 51999, 'Paid by Razorpay', 'pay_K6GRoqzBoZppbu', 'Pending', NULL, 'pritesh8301149', '2022-08-16 10:01:43.226664', '2022-08-16 10:01:43.226664', 3),
(21, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 15999, 'COD', NULL, 'Pending', NULL, 'pritesh4333050', '2022-08-16 10:02:33.673479', '2022-08-16 10:02:33.673479', 3),
(22, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 27790, 'COD', NULL, 'Pending', NULL, 'pritesh5278641', '2022-08-18 06:17:44.916023', '2022-08-18 06:17:44.916023', 3),
(23, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 649, 'Paid by Razorpay', 'pay_K6zkVWIHedvXG6', 'Pending', NULL, 'pritesh5962396', '2022-08-18 06:20:41.542953', '2022-08-18 06:20:41.545286', 3),
(24, 'PRITESH', 'BHATIYA', 'priteshbhatiya52@gmail.com', '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', 15999, 'COD', NULL, 'Pending', NULL, 'pritesh9743370', '2022-08-18 06:24:35.223035', '2022-08-18 06:24:35.223035', 3),
(25, 'JIMIT', 'CHANDNANI', 'jimit64@gmail.com', '6355226040', 'AASHIRVAD SOCIETY  PLOT  NO 1292/2 NEAR UNION BANK', 'BHAVNAGAR', 'GUJRAT', 'INDIA', '364001', 15999, 'Paid by Razorpay', 'pay_KS5JsMoNNpoBQY', 'Pending', NULL, 'pritesh1814586', '2022-10-10 13:26:43.013219', '2022-10-10 13:26:43.013219', 7),
(26, 'HARESH', 'BHATIYA', 'jimit64@gmail.com', '9824749431', 'AHMEDABAD 380006', 'AHMEDABAD', 'GUJRAT', 'INDIA', '380006', 250, 'COD', NULL, 'Pending', NULL, 'pritesh5636916', '2022-11-17 14:26:20.123324', '2022-11-17 14:26:20.123324', 8);

-- --------------------------------------------------------

--
-- Table structure for table `store_orderitem`
--

DROP TABLE IF EXISTS `store_orderitem`;
CREATE TABLE IF NOT EXISTS `store_orderitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_orderitem_order_id_acf8722d` (`order_id`),
  KEY `store_orderitem_product_id_f2b098d4` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_orderitem`
--

INSERT INTO `store_orderitem` (`id`, `price`, `quantity`, `order_id`, `product_id`) VALUES
(30, 250, 1, 26, 17);

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

DROP TABLE IF EXISTS `store_product`;
CREATE TABLE IF NOT EXISTS `store_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `slug` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `small_description` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `original_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `tag` varchar(150) NOT NULL,
  `meta_title` varchar(150) NOT NULL,
  `meta_keywords` varchar(150) NOT NULL,
  `meta_description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_product_category_id_574bae65` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_product`
--

INSERT INTO `store_product` (`id`, `slug`, `name`, `product_image`, `small_description`, `quantity`, `description`, `original_price`, `selling_price`, `status`, `trending`, `tag`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `category_id`) VALUES
(12, 'Plants', 'Yellow Rose Plant', 'product/plant-2.jpg', 'Yellow Rose Plant OutDoor Live Natural Plant', 15, 'Plant or Animal Product Type 	Rose\r\nIndoor/Outdoor Usage 	Indoor\r\nBrand 	Generic\r\nMaterial Feature 	Organic\r\nSpecial Feature 	Air Purification\r\nItem Weight 	0.48 Kilograms\r\nSunlight Exposure 	Full Sun', 149, 99, 0, 0, 'Generic', 'Plants,  Green Plant', 'Plants,  Green Plant', 'Plants,  Green Plant Generic', '2022-08-12 16:55:34.677688', 1),
(14, 'Plants', 'Jade Plant', 'product/plant-3.jpg', 'Rolling Nature Good Luck Jade Plant', 15, 'Material: Natural Live Plant & Ceramic Pot, Qty: 1 (Plant with Pot)\r\n    Pot Color: Red, Pot Width:5 X 3.5 Inches (13 X 8.9 cm), Height: 3.2 Inches (8 cm),\r\n    Plant with Pot Height: 6 - 9 Inches\r\n    Feng Shui Good Luck Plant for Prosperity\r\n    Indoor Plant', 470, 430, 0, 0, 'Rolling Nature', 'Plants,  Green Plant', 'Plants,  Green Plant', 'Plants,  Green Plant Rolling Nature', '2022-11-17 12:10:19.574261', 1),
(13, 'Plants', 'Green Tulsi Plant', 'product/plant-1.jpg', 'EverSneh Live Real Ayurvedic Rama Tulsi Plant', 15, 'Shipped In ... 1 Live Rama Tulsi Plant With Black Plastic Pot 4 Inch Size, Corrugated Box\r\nEasy To Grow\r\nWater the plant daily to the required levels, Provide nutrition compost, fertilizers, manures every week for better growth\r\nSave from Insects and pest. Grow in healthy organic content mixed soil. Give timely micronutrients and fertilisers. Follow the instructions given along with the plant.', 299, 199, 0, 0, 'EverSneh', 'Plants,  Green Plant', 'Plants, Green Plant', 'Plants, Green Plant  EverSneh Live Real Ayurvedic Rama Tulsi Plant', '2022-08-12 16:58:26.236459', 1),
(15, 'Plants', 'Ceramic Pot', 'product/plant-4.jpg', 'White Square Aroez Ceramic Pot', 15, 'Material: Natural Live Plant & Ceramic Pot, Qty: 1 (Plant with Pot)\r\n    Pot Color: White, Pot Width: 3 Inches (8cm), Height: 3 Inches (8cm)\r\n    Plant with Pot Height: 6 - 7 Inches\r\n    Best Air purifying Plant Approved by NASA\r\n    Air Purifying Indoor Plant', 420, 380, 0, 0, 'Rolling Nature', 'Plants,  Green Plant', 'Plants,  Green Plant', 'Rolling Nature  Plants,  Green Plant', '2022-11-17 12:12:32.893046', 1),
(16, 'Bags', 'Aleaf Reusable Tote Bags', 'product/bag-1.jpg', '100% Organic Cotton Canvas Grocery Bag|Eco-Friendly,', 15, 'Care Instructions: Hand Wash Only\r\nQUALITY & DURABILITY: Our bags are light weighted but it still holds a full load of groceries, a day’s worth of supplies or really anything else you may want to fit it. High strength stitching at the handles gives it a maximum strength. These bags are more versatile than other options simply because of their combination of size and durability.\r\nVERSATILITY WITH MULTI-FUNCTIONAL - Whether it’s a trip to the beach, weekly grocery shopping,', 250, 200, 0, 0, 'Generic', 'Bags, Eco-friendly', 'Bags, Eco-friendly', 'Bags, Eco-friendly   Generic', '2022-11-17 12:16:58.424035', 2),
(17, 'Bags', 'Hand Bag with Zip', 'product/bag-2.jpg', 'Grocery Multipurpose Hand Bag with Zip', 14, 'PROUDLY MADE IN INDIA - This jute bag is made of natural Jute or burlap which is laminated inside for extra strength GO GREEN WITH ENSAC\r\nREUSABLE BAGS – Green Bags are healthy for the environment – these Reusable bags are Comfortable, Durable & Lightweight - 100% Biodegradable and Recyclable, Eco Friendly Bag and also foldable, collapsible which makes storage and organisation easy and accessible.\r\nHAND PRINTED, HANDCRAFTED .', 280, 250, 0, 0, 'Asian', 'Bags, Eco-friendly', 'Bags, Eco-friendly', 'Bags, Eco-friendly', '2022-11-17 12:30:36.129721', 2),
(18, 'Bags', 'Vegetable Bag', 'product/BAG-3.jpg', 'Vegetable Bag With Full Handles Best Gifting', 15, 'The main features are - full handle stitching for better support and durability , special bartec stitching on the top corners , and special pattern stitching on the handles\r\nFeel good about the way you shop for your kitchen : this bag can hold upto 15 kgs weight\r\nIts an innovate vegetable bag with compartments that helps to separate your grocery items messing up with each other', 550, 500, 0, 0, 'Double R Bags', 'Bags, Eco-friendly', 'Bags, Eco-friendly', 'Bags, Eco-friendly', '2022-11-17 12:32:29.257441', 2),
(19, 'Bags', 'Kitchen  Bags', 'product/bag-4.jpg', 'DOUBLE R BAGS Waterproof Large Cotton Canvas Shopping Bags', 15, 'Care Instructions: Dry Clean Only\r\nThe main features are - full handle stitching for better support and durability , special bartec stitching on the top corners , and special pattern stitching on the handles\r\nFeel good about the way you shop for your kitchen : this bag can hold upto 15 kgs weight\r\nIts an innovate vegetable bag with compartments that helps to separate your grocery items messing up with each other\r\nNaturally reliable: the perfect size.', 450, 380, 0, 0, 'Double R Bags', 'Bags, Eco-friendly', 'Bags, Eco-friendly', 'Bags, Eco-friendly', '2022-11-17 12:34:27.874270', 2),
(20, 'Eco-friendly Candles -Diyas', 'CANDLE LIGHT', 'product/diya_-1.jpg', 'KULLAD LANTERN/CLAY CANDLE LIGHT', 15, 'KULLAD LANTERN/CLAY CANDLE LIGHT : For those of you who are in love with the finery of the old world, these kullad products are the right choice for you.Kullad is a revolutionary self-cooling eco-friendly vessel. It is handmade and bought for you with love and care by the women of Sanjay Gandhi National Park. It is completely eco-friendly and Discover a whole new level of elegance and class with this very special piece, made specifically to suit your fine taste.', 350, 300, 0, 0, 'KULLAD', 'Eco-friendly Candles/Diyas', 'Eco-friendly Candles/Diyas', 'Eco-friendly Candles/Diyas', '2022-11-17 12:38:17.956211', 8),
(21, 'Eco-friendly Candles -Diyas', 'Candle holder', 'product/diya-2.jpg', 'Eco Bowls Natural Candle holder (Yin Yang) Eco Bowls Natural Candle holder (Yin Yang)', 15, 'Eco Bowls Natural Candle holder (Yin Yang)  : Every year, millions of coconut shells are discarded as waste. We give them a new life as a beautiful candle holder that you can enjoy every day. Each coconut candle holder is a piece of art, crafted by hand and beautifully designed by our team of skilled artisans in Vietnam. Handmade and sHandmade and sustainable\r\nBeautifully designed and ethically made\r\nTake a moment for yourself and connect with nature', 250, 200, 0, 0, 'Eco', 'Eco-friendly Candles/Diyas', 'Eco-friendly Candles/Diyas', 'Eco-friendly Candles/Diyas', '2022-11-17 12:40:12.430748', 8),
(22, 'Eco-friendly Candles -Diyas', 'Lavender Candle', 'product/diya-3.jpg', 'Handcrafted Lavender Candle', 15, 'Ecotyl Coconut Shell Lavender Candle: Uplift your mood with Ecotyl’s Handcrafted Lavender Candle, an up-cycled coconut shell bowl made from pure vegan soy wax. Lavender has a soothing and relaxing fragrance, and the ability to relieve anxiety, stress, headaches, and insomnia. This candle is non-toxic and bio-degradable Durable and user-friendlyReusable and Plastic-free', 250, 200, 0, 0, 'Handcrafted', 'Eco-friendly Candles/Diyas', 'Eco-friendly Candles/Diyas', 'Eco-friendly Candles/Diyas', '2022-11-17 12:42:51.738296', 8),
(23, 'Eco-friendly Candles -Diyas', 'Candles gift box', 'product/diya-4.jpg', 'Eco-friendly Candles gift box', 15, 'Eco-friendly Candles gift box  : Why get one when you can have them all? Auro ESSENTIALS gift set comes with all the favourites - Spicy grapefruit , amber moss , meditation . We believe in the power of Natural products and use 100 % Pure Beeswax and essential oils for our candles . Spicy grapefruit : Sweet and spicy … A Sweet gr .. Created by the bees, 100% natural, all chemical-free.Eco-friendly and safe, non-toxic. Burn very clean with little smoke when trimmed properly as they are not oil-ba', 500, 450, 0, 0, 'Eco', 'Eco-friendly Candles/Diyas', 'Eco-friendly Candles/Diyas', 'Eco-friendly Candles/Diyas', '2022-11-17 12:45:56.067262', 8),
(24, 'Eco Floor Mats', 'Floor rug - round', 'product/Mats-1.jpg', 'Bunko junko multicolor floor rug - round', 15, 'Upcycled multi-colour floor rugs - This beautiful  a symmetry pattern rug has so many options! Intricate hand weaving by artisan with fringe ends makes this rug the perfect addition to your floor decor/side table. These are all handmade and made from preconsumed dupatta from manufacturing unit. Ethical designed terms of this product by BunkojThis product is hand-made and does not depend on energy-intensive machines. By using Up-cycled products one does not only reduce their respective footprint', 480, 400, 0, 0, 'Bunko junko', 'Eco Floor Mats', 'Eco Floor Mats', 'Eco Floor Mats', '2022-11-17 12:50:13.319985', 5),
(25, 'Eco Floor Mats', 'Jute Rug', 'product/mats-2.jpg', 'Rectangular Jute Rug', 15, 'Rectangular Jute Rug : Premium Quality /Best Finish/Durable/ Easy To Carry/ Eco Friendly / Good Strength. Our PREMIUM Jute area rugs bring inherent natural beauty to any space in which they are used. Our braided rugs are made with jute.  Rectangle area rug is extremely durable, protecting your floors and adding a cohesive element to your home This natural jute rug is made from all-natural fibre and is completely biodegradable. It is an eco-friendly rug that’s green and sustainable. Buying a natu', 300, 270, 0, 0, 'Eco', 'Eco Floor Mats', 'Eco Floor Mats', 'Eco Floor Mats', '2022-11-17 12:53:05.200003', 5),
(26, 'Eco Floor Mats', 'Jute Rug', 'product/matts-3.jpg', 'Cylindrical Jute Rug Cylindrical Jute Rug', 15, 'Cylindrical Jute Rug  : Premium Quality /Best Finish/Durable/ Easy To Carry/ Eco Friendly / Good Strength.. Add to the beauty of your interior décor with Cylindric shape jute rug with jute round. A natural eco-friendly jute rug will bring beauty to your home whether it be in the kitchen, under a dining table, or on hardwood floors. JutAs the products are made from waste fabrics, we will not be able to repeat the same fabrics or same prints for the products.', 250, 230, 0, 0, 'Cylindrical', 'Eco Floor Mats', 'Eco Floor Mats', 'Eco Floor Mats', '2022-11-17 12:55:47.120800', 5),
(27, 'Eco Floor Mats', 'Cushion Cover-16 inch', 'product/matts-4.jpg', 'Mystic Flower Cushion Cover-16 inch', 15, 'Our Mystic flower cushion cover will elevate your living space with its vibrancy and colors resembling that of a spring. This cushion cover will turn your home into a happy space inviting nature indoors. Our Mystic flower print has been designed by our design team and is inspired by the natural urban surrounding with spring flowers and butterflies.Cotton is very drought and heat-tolerant. Cotton does not require excessive amounts of water. In fact, cotton uses less water than many other major cr', 450, 430, 0, 0, 'Mystic', 'Eco Floor Mats', 'Eco Floor Mats', 'Eco Floor Mats Mystic', '2022-11-17 12:57:53.458813', 5),
(28, 'Recycled Plastic Products', 'Recycled Bottle Vase', 'product/platic-1.jpg', 'Jute Acrylic Recycled Bottle Vase', 15, 'A small glass bottle recycled with jute strings and acrylic designs to aesthetically suit your living room\r\nHeight- 170 mm\r\nDiameter- 58 mm\r\nColour- Royal blue, white, yellow acrylic lines\r\n\r\nCountry of Origin - India', 250, 200, 0, 0, 'Jute', 'Recycled Plastic Products', 'Recycled Plastic Products', 'Recycled Plastic Products  Jute', '2022-11-17 13:09:05.987298', 3),
(29, 'Recycled Plastic Products', 'Bottle Planter', 'product/plastic-2.jpg', 'Sapphire Bottle Planter (Hanging)', 15, 'Get your hands dirty with some eco-friendly gardening. Fill the planter with cocopeat or soil and place the plant inside it. The cut and depth of the bottle planter is enough, making it easy to plant any plant inside this planter. Each piece is handmade by Kavi from cutting, to sanding the lip, to any fill or decoration. This planter is easy to set up and maintain which makes gardening fun and can be used indoor as well as outdoor. Please note that glass is a challenging medium and,', 450, 400, 0, 0, 'Sapphire', 'Recycled Plastic Products', 'Recycled Plastic Products', 'Recycled Plastic Products Sapphire Bottle Planter (Hanging)', '2022-11-17 13:13:09.075888', 3),
(30, 'Recycled Plastic Products', 'bottle vase - Lavender', 'product/plastic-3.jpg', 'Hand painted glass bottle vase - Lavender', 15, 'Material : Glass\r\nDimension : 12â€³*2.75â€³ \r\nThis lavender hand painted glass bottle vase is painted with complementary colors and coated with a glossy sealant. It makes a beautiful centerpiece for your home. Fill it with flowers or simply leave it on the table top, it is perfect for bringing a minimalist touch to your room. You can also gift it to your loved ones for their special occasions.', 380, 300, 0, 0, 'Hand painted', 'Recycled Plastic Products', 'Recycled Plastic Products', 'Recycled Plastic Products', '2022-11-17 13:22:09.725295', 3),
(31, 'Recycled Plastic Products', 'Plastic Jharokha', 'product/plastic-4.jpg', 'shanu craft and creations Plastic Jharokha', 15, 'It is a traditional item made up of fabric, wood, metal bells and artificial pearls. Each bell is of different color and has been handcrafted and added to string with other props. This wall hanging gives a royal touch to your home and surprises your friends and guests with the artistic and embroidery work. Highlighting the fine and intricate detailing, this beautiful vintage art can be a surprise for your loved ones', 200, 120, 0, 0, 'shanu craft', 'Recycled Plastic Products', 'Recycled Plastic Products', 'Recycled Plastic Products', '2022-11-17 13:26:05.065034', 3),
(32, 'Eco-friendly Serveware & Tableware', 'Dinnerware - Mint Green', 'product/house-1.jpg', 'Bamboo Dinnerware - Mint Green', 15, '5 Piece Children’s Bamboo Dinnerware - Mint Green: Range of Modern and stylish Bamboo dinnerware - minimalistic, non-toxic and BPA – free dinnerware for kids. All our products are food – safe and comply with all standards and regulations (Approved by FDA & LFGB). This product is durable & eco-friendly  that last longe\r\nThis Product is made at factories that are focussed on eco-friendly and non-toxic products, these products are free from BPA, PVC, Phthalates, Lead, Cadmium & Mercury.', 900, 850, 0, 0, 'Ecohoy', 'Eco-friendly Serveware & Tableware', 'Eco-friendly Serveware & Tableware', 'Eco-friendly Serveware & Tableware', '2022-11-17 13:35:02.354150', 4),
(33, 'Eco-friendly Serveware & Tableware', 'Dinnerware - Monochrome', 'product/house-2.jpg', '5 Piece Children’s Bamboo Dinnerware - Monochrome', 15, '5 Piece Children’s Bamboo Dinnerware - Monochrome:Range of Modern and stylish Bamboo dinnerware - minimalistic, non-toxic and BPA – free dinnerware for kids. All our products are food – safe and comply with all standards and regulations (Approved by FDA & LFGB). This product is durable & eco-friendly  that last longerThis Product is made at factories that are focussed on eco-friendly and non-toxic products, these products are free from BPA, PVC, Phthalates, Lead, Cadmium & Mercury.', 900, 850, 0, 0, 'Ecohoy', 'Eco-friendly Serveware & Tableware', 'Eco-friendly Serveware & Tableware', 'This Product is made at factories that are focussed on eco-friendly and non-toxic products, these products are free from BPA, PVC, Phthalates, Lead, Cadmium & Mercury.', '2022-11-17 13:37:22.496326', 4),
(34, 'Eco-friendly Serveware & Tableware', 'Serving Bowl', 'product/house-3.jpg', 'Beautiful Serving Bowl cum Glass Planter (White & Blue)', 15, 'Add an accent to your home décor that comes in the form of this Beautiful Serving Bowl cum Glass Planter (White & Blue). This comes in blue colour and will awe you with its grace.Please Note: The plant in the picture is only representational. The packaged unit does not include the plant.Purpose: This upcycled glass bottle art can be usedcycled products one does not only reduce the footprint of the material being disposed but also positively impacts an individual’s footprint by ensuring no new ra', 850, 800, 0, 0, 'Ecohoy', 'Eco-friendly Serveware & Tableware', 'Eco-friendly Serveware & Tableware', 'Eco-friendly Serveware & Tableware', '2022-11-17 13:39:46.190264', 4),
(35, 'Eco-friendly Serveware & Tableware', 'Serving Platter', 'product/house-4.jpg', 'Sustainable Serving Platter cum Glass Planter (Green)', 15, 'This table top Sustainable Serving Platter cum Glass Planter (Green) is for those who like to match style with simplicity. Crafted with an upcycled Liquor bottle and suited for both indoor and outdoor use, it comes with a first-of-its-kind eco-friendly design and has a drilled-in outlet for excess water drainage. The edges have been smoothened and using up-cycled products one does not only reduce the footprint of the material being disposed but also positively impacts an individual’s footprint b', 850, 800, 0, 0, 'Ecohoy', 'Eco-friendly Serveware & Tableware', 'Eco-friendly Serveware & Tableware', 'Eco-friendly Serveware & Tableware', '2022-11-17 13:41:33.418547', 4),
(36, 'Eco-friendly Stationary', 'Stationery Holder', 'product/ecohoy.jpg', 'Unique Stationery Holder - Magazine (Square) Unique Stationery Holder - Magazine (Square)', 15, 'This Unique Stationery Holder - Magazine (Square) is exquisitely handcrafted and will surely lend a touch of elegance to your area. This is a multipurpose holder that can be used to hold your stationery products, cutlery items, tissues & napkins and more.As it’s made from recycled papers the product is lightweight, easy to use and requireEvery time paper recycles, the fibre becomes shorter, weaker and more brittle. In general, paper can be recycled up to seven times before it must be discarded.', 200, 130, 0, 0, 'Ecohoy', 'Eco-friendly Stationary', 'Eco-friendly Stationary', 'Eco-friendly Stationary', '2022-11-17 13:45:24.770952', 6),
(37, 'Eco-friendly Stationary', 'Plant Holder', 'product/stanory-2.jpg', 'Storage Plant Holder (Yellow) - IVY Storage Plant Holder (Yellow) - IVY', 15, 'Storage Plant Holder (Yellow) - IVY is a table top mini wooden plant holder along with a stand for pens, pencils and other stationery items. Enjoy the warmth of your own little plant growing right next to you in your study or workplace. This plant pod is an ideal gift for anyone who loves greenery. Fill the glass tube provided with water and aThis product is a lacware craft which is made of lac, a naturally available resin. It is non-toxic and chemical free and safe for children.', 180, 110, 0, 0, 'Ecohoy', 'Eco-friendly Stationary', 'Eco-friendly Stationary', 'Eco-friendly Stationary', '2022-11-17 13:47:50.688921', 6),
(38, 'Eco-friendly Stationary', 'Pencil + 5 Eco Pens', 'product/stanory-3.jpg', 'Paryaya Combo 2 = 1 Notepad + 5 Premium Pencil + 5 Eco Pens', 15, 'combo 2 = 1 Notepad + 5 Premium Pencil + 5 Eco Pens :  Made from recycled wastepaper 100%Ecofriendly Eco Friendly Combo contains 1 Plantable Notepad - A5 1 Plantable Premium Pencil - Pack of 5 (Gold) 1 Plantable Eco Pens - Pack of 5 \r\nThe recycled cardboard is completely bio-degradable, thus do not pollute the environment.\r\n\r\nThe cardboard is ethically sourced, thus no harm is done to the environment while sourcing them.\r\n\r\nT', 330, 270, 0, 0, 'Ecohoy', 'Eco-friendly Stationary', 'Eco-friendly Stationary', 'Eco-friendly Stationary', '2022-11-17 13:52:56.629763', 6),
(39, 'Eco-friendly Stationary', 'A4 File Folder-', 'product/staonry-4.jpg', 'A4 File Folder- Set of 3 (Geometric Blue) A4 File Folder- Set of 3 (Geometric Blue)', 15, 'A4 File Folder- Set of 3 (Geometric Blue): Designed to re-purpose our fabric waste, this set of File Folder ensures the safety of your documents sustainably. Made from completely Up-cycled materia, 100% plastic free including the packaging.Plastic debris is found absolutely everywhere, from the Arctic to Antarctica. It clogs street drains in our cities; it litters campgrounds and national parks and is even piling up on Mount Everest. This product is made from up-cycled products. This product is', 200, 15, 0, 0, 'Ecohoy', 'Eco-friendly Stationary', 'Eco-friendly Stationary', 'Eco-friendly Stationary', '2022-11-17 13:56:13.303756', 6),
(40, 'Eco-friendly Storage, Containers', 'Paper Dustbin', 'product/storaage-1.jpg', 'Handmade Paper Dustbin (Red Orange)', 15, 'Handmade Paper Dustbin Basket: Helping to keep your room tidy and clutter free while adding a pastoral look to your decor, the rustic waste bin made from recycled paper using organic colors is ideal for disposing of papers or used things. The lightweight basket is easy to carry, so you can take it down to your recycling bin with ease. A practical a', 250, 200, 0, 0, 'Ecohoy', 'Eco-friendly Storage, Containers & Organisers', 'Eco-friendly Storage, Containers & Organisers', 'Eco-friendly Storage, Containers & Organisers', '2022-11-17 14:00:12.310738', 7),
(41, 'Eco-friendly Storage, Containers', 'Cane Planter', 'product/storage-2.jpg', 'Natural Cane Planter cum Multipurpose Bin (Round 14\")', 15, 'This Natural Cane Planter cum Multipurpose Bin (Round 14\") is exquisitely handcrafted and its natural texture will surely lend a touch of elegance to your area. This planter being made of cane is waterproof and so can be cleaned easily with a wet and dry cloth. It is also weather proof making it ideal for indoor as well as outdoor use. It\r\nCane is cost effective, resistant to weather changes, versatile, lightweight and does not require constant maintenance.', 250, 200, 0, 0, 'Ecohoy', 'Eco-friendly Storage, Containers & Organisers', 'Eco-friendly Storage, Containers & Organisers', 'Eco-friendly Storage, Containers & Organisers', '2022-11-17 14:01:54.446064', 7),
(42, 'Eco-friendly Storage, Containers', 'Grass Container', 'product/storage-3.jpg', 'Dry Grass Container - Rectangular', 15, 'This Dry Grass Container - Rectangular is sturdy, made of grass and have multiple use. This light weight grass container can be used to store fruits, vegetables, can be used as a laundry basket, newspaper and magazine holder, kids toy storage and many more. Grass products are natural, eco-friendly and bio-degradable thus making it a sustainable pr\r\nGrass products are handcrafted, are not chemically treated and are non-toxic. The material used to make a grass product are natural, eco-friendly and', 230, 190, 0, 0, 'Ecohoy', 'Eco-friendly Storage, Containers & Organisers', 'Eco-friendly Storage, Containers & Organisers', 'Eco-friendly Storage, Containers & Organisers', '2022-11-17 14:03:51.107676', 7),
(43, 'Eco-friendly Storage, Containers', 'Grass Container', 'product/storage-4.jpg', 'Dry Grass Container - Rectangular (Short)', 15, 'This Dry Grass Container - Rectangular (Short) is sturdy, made of grass and have multiple uses. This lightweight grass container can be used to store fruits, vegetables can be used as a laundry basket, newspaper and magazine holder, kids toy storage and many more. Grass products are natural, eco-friendly and bio-degradable thus making it a sustainGrass product makers depend on grass which not only let them earn their living but also contribute positively towards the environment.', 240, 200, 0, 0, 'Ecohoy', 'Eco-friendly Storage, Containers & Organisers', 'Eco-friendly Storage, Containers & Organisers', 'Eco-friendly Storage, Containers & Organisers', '2022-11-17 14:06:06.220605', 7);

-- --------------------------------------------------------

--
-- Table structure for table `store_profile`
--

DROP TABLE IF EXISTS `store_profile`;
CREATE TABLE IF NOT EXISTS `store_profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `phone` varchar(150) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `country` varchar(150) NOT NULL,
  `pincode` varchar(150) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_profile`
--

INSERT INTO `store_profile` (`id`, `phone`, `address`, `city`, `state`, `country`, `pincode`, `created_at`, `user_id`) VALUES
(1, '9033174261', 'gaytringar parth socitey plot no 4296', 'BHAVNAGAR', 'GUJRAT', 'India', '364001', '2022-08-07 06:47:06.820493', 3),
(2, '6355226040', 'AASHIRVAD SOCIETY  PLOT  NO 1292/2 NEAR UNION BANK', 'BHAVNAGAR', 'GUJRAT', 'INDIA', '364001', '2022-10-10 13:26:43.003974', 7),
(3, '9824749431', 'AHMEDABAD 380006', 'AHMEDABAD', 'GUJRAT', 'INDIA', '380006', '2022-11-17 14:26:20.119284', 8);

-- --------------------------------------------------------

--
-- Table structure for table `store_wishlist`
--

DROP TABLE IF EXISTS `store_wishlist`;
CREATE TABLE IF NOT EXISTS `store_wishlist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_wishlist_product_id_8af1333d` (`product_id`),
  KEY `store_wishlist_user_id_afcc4e88` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
