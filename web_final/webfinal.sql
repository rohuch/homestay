-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 04:02 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webfinal`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add images', 1, 'add_images'),
(2, 'Can change images', 1, 'change_images'),
(3, 'Can delete images', 1, 'delete_images'),
(4, 'Can view images', 1, 'view_images'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add room', 9, 'add_room'),
(34, 'Can change room', 9, 'change_room'),
(35, 'Can delete room', 9, 'delete_room'),
(36, 'Can view room', 9, 'view_room'),
(37, 'Can add contact', 10, 'add_contact'),
(38, 'Can change contact', 10, 'change_contact'),
(39, 'Can delete contact', 10, 'delete_contact'),
(40, 'Can view contact', 10, 'view_contact'),
(41, 'Can add booking', 11, 'add_booking'),
(42, 'Can change booking', 11, 'change_booking'),
(43, 'Can delete booking', 11, 'delete_booking'),
(44, 'Can view booking', 11, 'view_booking'),
(45, 'Can add reserve', 11, 'add_reserve'),
(46, 'Can change reserve', 11, 'change_reserve'),
(47, 'Can delete reserve', 11, 'delete_reserve'),
(48, 'Can view reserve', 11, 'view_reserve');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$SPl61jOyFoBC$qLENYxIBioN0SszECeFZU9LWgXnTfQXMiP2hAYT3Kro=', '2021-04-20 11:22:25.790973', 1, 'admin', '', '', '', 1, 1, '2021-04-03 14:40:11.030905'),
(2, 'pbkdf2_sha256$216000$OPT5WPXNALN2$v8aaSD1N+4NCjqHShlVpfDAEsaXJb0KYcKsR18EauuI=', '2021-04-20 12:24:49.631538', 0, 'Abcdef', '', '', '', 0, 1, '2021-04-07 07:25:58.083319'),
(4, 'pbkdf2_sha256$216000$E5Nbbldu7iqJ$w9Z3Diny1Qv4WTcmaydbR6jk4jy0Y2eAWgP0RHTpBuE=', NULL, 0, 'Test', '', '', '', 0, 1, '2021-04-10 08:38:59.781445'),
(5, 'pbkdf2_sha256$216000$VRQD5AxFAJfz$2kf9GBhaYCzxsZ3nXc89DwhgvGJg2MmrBXWKGn4JPng=', NULL, 1, 'achbj', '', '', 'ach.bj27@gmail.com', 1, 1, '2021-04-17 05:53:18.864192'),
(6, 'pbkdf2_sha256$216000$ZLMz4q1VwEIQ$pdEpKd2ifa7HkZVJG9c/R9gvjbEi0WHZLiDFsTU/tQQ=', '2021-04-20 10:57:07.041967', 0, 'Rohan', '', '', '', 0, 1, '2021-04-20 10:56:54.076247'),
(7, 'pbkdf2_sha256$216000$rVEa8LMqSCbq$0yAojpmzMan0XNtuzQvKljUv3nmbtWYbFw57AkZph9w=', '2021-04-20 11:26:03.156139', 0, 'abcd', '', '', '', 0, 1, '2021-04-20 11:25:51.593759'),
(8, 'pbkdf2_sha256$216000$IdpTQVyHJS8l$C99zv9r0zWCmUKFHb280VgiRsR+EK5AsznImb6bxmeA=', '2021-04-20 13:24:49.905577', 1, 'final', '', '', '', 1, 1, '2021-04-20 11:42:48.734466');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-04-17 08:18:12.361082', '3', 'Chandika', 3, '', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(7, 'sessions', 'session'),
(10, 'user', 'contact'),
(1, 'user', 'images'),
(8, 'user', 'product'),
(11, 'user', 'reserve'),
(9, 'user', 'room');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-03 14:39:11.957890'),
(2, 'auth', '0001_initial', '2021-04-03 14:39:12.315829'),
(3, 'admin', '0001_initial', '2021-04-03 14:39:13.399173'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-04-03 14:39:13.662221'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-03 14:39:13.675573'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-04-03 14:39:13.830392'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-04-03 14:39:13.963152'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-04-03 14:39:14.000199'),
(9, 'auth', '0004_alter_user_username_opts', '2021-04-03 14:39:14.021299'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-04-03 14:39:14.139674'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-04-03 14:39:14.144973'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-04-03 14:39:14.160693'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-04-03 14:39:14.194918'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-04-03 14:39:14.230791'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-04-03 14:39:14.260124'),
(16, 'auth', '0011_update_proxy_permissions', '2021-04-03 14:39:14.284746'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-04-03 14:39:14.329289'),
(18, 'sessions', '0001_initial', '2021-04-03 14:39:14.387131'),
(19, 'user', '0001_initial', '2021-04-03 14:39:14.504940'),
(20, 'user', '0002_auto_20210407_1550', '2021-04-07 10:05:33.631927'),
(21, 'user', '0003_auto_20210407_2238', '2021-04-07 16:53:37.018133'),
(22, 'user', '0004_room_text', '2021-04-09 10:55:24.562322'),
(23, 'user', '0005_contact', '2021-04-09 20:12:18.467651'),
(24, 'user', '0006_delete_contact', '2021-04-12 12:32:37.712464'),
(25, 'user', '0007_contact', '2021-04-13 09:00:53.723704'),
(26, 'user', '0002_booking', '2021-04-16 09:40:14.988852'),
(27, 'user', '0003_auto_20210416_1552', '2021-04-16 10:07:35.539048'),
(28, 'user', '0004_auto_20210416_1606', '2021-04-16 10:22:00.044157'),
(29, 'user', '0005_room_image2', '2021-04-17 12:55:53.604604'),
(30, 'user', '0006_auto_20210418_2045', '2021-04-18 15:00:31.338705'),
(31, 'user', '0007_auto_20210418_2050', '2021-04-18 15:05:26.729599'),
(32, 'user', '0008_auto_20210420_1233', '2021-04-20 06:48:37.229277'),
(33, 'user', '0009_auto_20210420_1449', '2021-04-20 09:04:17.050254');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0u2uawetgmpxzgtf5g56jr5f2zr8q2rv', '.eJxVjMsOwiAQAP-FsyGly2s9eu83NLALtmogKe3J-O-GpAe9zkzmLeZw7Mt8tLTNK4urUOLyy2KgZypd8COUe5VUy76tUfZEnrbJqXJ63c72b7CEtvStA9IeWGcanWfExAjRDG5kHDN6o0Fnr6zNyqagBlJI3hqIGSEMDsTnC8fINwE:1lXkCX:TXtR9OsYMNJOX1k2lXjRLzXN7Y2m_4KYhvGiwJFvJW0', '2021-05-01 12:37:29.679442'),
('16lfehoel2fccx98q4cxn0mv0k9v8nlo', '.eJxVjEEOwiAQRe_C2hBoGQou3XsGMjOMUjU0Ke3KeHfbpAvd_vfef6uE61LS2mROY1ZnFdTpdyPkp9Qd5AfW-6R5qss8kt4VfdCmr1OW1-Vw_w4KtrLVPbJFJApDzDdkMQZiLwHYg7NkvRMbATpyZsNOBmchEKL3sWPO5NTnC_1UOFk:1lYqMz:E87pUULapKW1Nak3BIZ5EJ0SjFf6zwUq-yuwbMpjrJ8', '2021-05-04 13:24:49.910968'),
('20v8nrrynmge9ojfggdpr0zsgsbzlqk9', '.eJxVjMsOwiAQAP-FsyGly2s9eu83NLALtmogKe3J-O-GpAe9zkzmLeZw7Mt8tLTNK4urUOLyy2KgZypd8COUe5VUy76tUfZEnrbJqXJ63c72b7CEtvStA9IeWGcanWfExAjRDG5kHDN6o0Fnr6zNyqagBlJI3hqIGSEMDsTnC8fINwE:1lYTXi:fcauy49VVbxFBgr3VTx09tyg5wUf99cyr_jvFlo2FbM', '2021-05-03 13:02:22.498383'),
('89b13x0mzfminypgsiwr03fwpev9laue', '.eJxVjMsOwiAQAP-FsyGly2s9eu83NLALtmogKe3J-O-GpAe9zkzmLeZw7Mt8tLTNK4urUOLyy2KgZypd8COUe5VUy76tUfZEnrbJqXJ63c72b7CEtvStA9IeWGcanWfExAjRDG5kHDN6o0Fnr6zNyqagBlJI3hqIGSEMDsTnC8fINwE:1lXkdo:XfshYIyiVUiJxZmqjRr4pciCLjIaGCw7Ax4GpcKHKkI', '2021-05-01 13:05:40.265580'),
('a4hn2wt5cfqv42wsbxx4i4qsz20tl8xh', '.eJxVjMsOwiAQAP-FsyGly2s9eu83NLALtmogKe3J-O-GpAe9zkzmLeZw7Mt8tLTNK4urUOLyy2KgZypd8COUe5VUy76tUfZEnrbJqXJ63c72b7CEtvStA9IeWGcanWfExAjRDG5kHDN6o0Fnr6zNyqagBlJI3hqIGSEMDsTnC8fINwE:1lV8Pl:o10aAgOGZRXtqEw9Ec6olbp1aVMTqvOoM3jSQERbJ88', '2021-04-24 07:52:21.203872'),
('n2ghyvidjgw0ajf7y11mcwakip40auyw', '.eJxVjEEOwiAQRe_C2hA6QAdcuvcMZGBAqqYkpV0Z765NutDtf-_9lwi0rTVsPS9hYnEWIE6_W6T0yPMO-E7zrcnU5nWZotwVedAur43z83K4fweVev3WSBa9cUiACYcCmnyM4AuqlIwbLWLJoJiLHUwCJjJQ9KAVgGc3ai3eH9QbN0c:1lUNkg:gOdx2t34xyg5m64RiXOu0bnfleKMqegws9fLrLAjBcg', '2021-04-22 06:02:50.447855'),
('r99k2eeus2mhuywgdot2qda2lycjqzac', '.eJxVjE0OgyAYBe_CuiGCItBl956BfH8ptg0koqumd68mLtrtm5n3Vgm2NaetyZJmVlfVq8vvhkBPKQfgB5R71VTLusyoD0WftOmpsrxup_t3kKHlvQa2nhyjHzsjViIZCp694d5hdHGEfsDAzMYDWevtgLsYDHDETkwk9fkC7jU3-g:1lVvlW:5WUL6hjSmIKw1NOvaQ0VtGbxxPQyQnflEq7g4TauWJ8', '2021-04-26 12:34:06.563744'),
('tjxs0hap216f61zokihn67kzfb80qd42', '.eJxVjE0OgyAYBe_CuiGCItBl956BfH8ptg0koqumd68mLtrtm5n3Vgm2NaetyZJmVlfVq8vvhkBPKQfgB5R71VTLusyoD0WftOmpsrxup_t3kKHlvQa2nhyjHzsjViIZCp694d5hdHGEfsDAzMYDWevtgLsYDHDETkwk9fkC7jU3-g:1lVEAJ:W8aV1Wi4xggqvZ3Q1HlZjL_rJA73Js_XAQc5ieGUjUw', '2021-04-24 14:00:47.207994'),
('wu1ectr4f61lvlj2nwcidp9c9prgixmi', '.eJxVjMsOwiAQAP-FsyGly2s9eu83NLALtmogKe3J-O-GpAe9zkzmLeZw7Mt8tLTNK4urUOLyy2KgZypd8COUe5VUy76tUfZEnrbJqXJ63c72b7CEtvStA9IeWGcanWfExAjRDG5kHDN6o0Fnr6zNyqagBlJI3hqIGSEMDsTnC8fINwE:1lYmRX:PxvgFTArPRwWAwrG5xXK7yuByEUIC93qN8BlnQ8dMdM', '2021-05-04 09:13:15.942855');

-- --------------------------------------------------------

--
-- Table structure for table `user_reserve`
--

CREATE TABLE `user_reserve` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `roomcode` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_reserve`
--

INSERT INTO `user_reserve` (`id`, `name`, `email`, `date`, `roomcode`) VALUES
(5, 'Badal', 'badal@gmail.com', '2021-04-16', '1111'),
(7, 'Rohan', 'rohanchaulagain20@yahoo.com', '2021-04-20', '112'),
(8, 'Rimsa', 'rimsachaulagain@gmail.com', '2021-04-20', '112'),
(9, 'Booking Test1', 'bookinftest@gmail.com', '2021-11-14', '147`'),
(10, 'Rohan', 'rohanchaulagain1@gmail.com', '2021-04-16', '101');

-- --------------------------------------------------------

--
-- Table structure for table `user_room`
--

CREATE TABLE `user_room` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_room`
--

INSERT INTO `user_room` (`id`, `name`, `price`, `image`, `text`, `image2`) VALUES
(44, 'Homestay third', '100.00', 'h3_LhBeVUL.jpg', 'Looking for quality place to stay? \r\nYou are at the right place.', 'r6_cBXgbmG.webp'),
(45, 'Homestay fourth', '100.00', 'h5.jpg', 'Sound food with quality service, 24/7 wifi service here. \r\nBook now.', 'r5.jpg'),
(46, 'Homestay fourth', '100.00', 'h6_6P8wymo.jpg', 'Come, give us a chance.', 'room3_MYkI1mW.jpg'),
(47, 'Homestay fifth', '100.00', 'h7.jpg', 'acbd', 'room3_o4X8UaB.jpg'),
(50, 'abcd', '100.00', 'h3_Ylup1eK.jpg', 'abcd', 'room2.jpg'),
(51, 'rohan', '100.00', 'h6_B7SsSvv.jpg', 'this is demonstrations.', 'room2_BccLMer.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `user_reserve`
--
ALTER TABLE `user_reserve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_room`
--
ALTER TABLE `user_room`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user_reserve`
--
ALTER TABLE `user_reserve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_room`
--
ALTER TABLE `user_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
