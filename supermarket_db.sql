-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 04:57 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermarket_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_admin_tb`
--

CREATE TABLE `adminapp_admin_tb` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_cart_tb`
--

CREATE TABLE `adminapp_cart_tb` (
  `id` bigint(20) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `totalamount` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `pid_id` bigint(20) NOT NULL,
  `uid_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminapp_cart_tb`
--

INSERT INTO `adminapp_cart_tb` (`id`, `quantity`, `totalamount`, `status`, `pid_id`, `uid_id`) VALUES
(8, '1', '481.8', 'paid', 25, 1),
(9, '1', '522.5', 'paid', 24, 1),
(10, '1', '198.0', 'paid', 21, 1),
(11, '1', '82.5', 'paid', 30, 1),
(12, '1', '418.0', 'paid', 18, 1),
(13, '1', '44.0', 'paid', 17, 1),
(14, '1', '44.0', 'paid', 17, 1),
(15, '1', '481.8', 'paid', 25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_form_tb`
--

CREATE TABLE `adminapp_form_tb` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `catagory` varchar(255) NOT NULL,
  `proimage` varchar(100) NOT NULL,
  `offprice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminapp_form_tb`
--

INSERT INTO `adminapp_form_tb` (`id`, `name`, `price`, `details`, `catagory`, `proimage`, `offprice`) VALUES
(17, 'Frooty', '50', 'Mango Frooty', 'beverages', 'product/bv2.png', '40'),
(18, 'Fry Pan  ', '400', 'Fry Pan', 'household', 'product/hh1.png', '380'),
(19, 'Baby Lotion', '230', 'Baby Lotion', 'Personal Care', 'product/pc1.png', '200'),
(20, 'Sampann-toor-dal', '80', 'Sampann-toor-dal', 'Packaged Food', 'product/pf3.png', '70'),
(21, 'Toor Dal', '100', 'Toor Dal', 'Groceries', 'product/14.png', '180'),
(22, 'Arhar Dal', '60', 'Arhar Dal', 'Groceries', 'product/15.png', '35'),
(23, 'Channa', '30', 'Channa', 'Groceries', 'product/16.png', '28'),
(24, 'Cookware', '500', 'Cookware', 'Household', 'product/hh2.png', '475'),
(25, 'Kadai Idly', '450', 'Kadai Idly', 'Household', 'product/hh5.png', '438'),
(26, 'Wipes Gentle', '90', 'Wipes Gentle', 'Personal Care', 'product/pc8.png', '70'),
(27, 'Rash Cream', '60', 'Rash Cream', 'Personal Care', 'product/pc4.png', '58'),
(28, 'Parryss-sugar', '150', 'Parryss-sugar', 'Packaged Food', 'product/pf4.png', '140'),
(29, 'Saffola-gold', '80', 'Saffola-gold', 'Packaged Food', 'product/pf8.png', '70'),
(30, 'Coca Cola', '80', 'Coca Cola', 'Beverages', 'product/bv6.png', '75'),
(31, 'Minute Maid', '70', 'Minute Maid', 'Beverages', 'product/bv1.png', '60'),
(32, 'Milk Caramel', '159', 'Milk Caramel', 'Gourmet', 'product/gu1.png', '149'),
(33, 'Gourmet', '110', 'Gourmet', 'Gourmet', 'product/gu2.png', '100'),
(34, 'Le-Gourmet', '150', 'Le-Gourmet', 'Gourmet', 'product/gu5.png', '140');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_payment_tb`
--

CREATE TABLE `adminapp_payment_tb` (
  `id` bigint(20) NOT NULL,
  `totalamount` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `uid_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminapp_payment_tb`
--

INSERT INTO `adminapp_payment_tb` (`id`, `totalamount`, `status`, `date`, `time`, `uid_id`) VALUES
(1, '1746.8', 'paid', '2022-12-16', '09:40:46.692186', 1),
(2, '1746.8', 'paid', '2022-12-16', '09:45:27.271478', 1),
(3, '525.8', 'paid', '2022-12-16', '10:09:30.438708', 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_signup_tb`
--

CREATE TABLE `adminapp_signup_tb` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hashpassword` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminapp_signup_tb`
--

INSERT INTO `adminapp_signup_tb` (`id`, `name`, `email`, `message`, `password`, `hashpassword`) VALUES
(1, 'minnu', 'minnu123@gmail.com', '', '123', '202cb962ac59075b964b07152d234b70'),
(2, 'ajay', 'ajaymanoj66@gmail.com', 'werty', '', ''),
(3, 'ajay', 'ajaymanoj66@gmail.com', 'qwedfg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `app5_cont_tb`
--

CREATE TABLE `app5_cont_tb` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app5_cont_tb`
--

INSERT INTO `app5_cont_tb` (`id`, `name`, `subject`, `email`, `message`) VALUES
(1, 'ajay', '', 'ajaymanoj66@gmail.com', 'iuy'),
(2, 'Ajay Manoj', '', 'ajaymanoj66@gmail.com', 'mnbvcx');

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
  `id` bigint(20) NOT NULL,
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
(25, 'Can add signup_tb', 7, 'add_signup_tb'),
(26, 'Can change signup_tb', 7, 'change_signup_tb'),
(27, 'Can delete signup_tb', 7, 'delete_signup_tb'),
(28, 'Can view signup_tb', 7, 'view_signup_tb'),
(29, 'Can add admin_tb', 8, 'add_admin_tb'),
(30, 'Can change admin_tb', 8, 'change_admin_tb'),
(31, 'Can delete admin_tb', 8, 'delete_admin_tb'),
(32, 'Can view admin_tb', 8, 'view_admin_tb'),
(33, 'Can add product_tb', 9, 'add_product_tb'),
(34, 'Can change product_tb', 9, 'change_product_tb'),
(35, 'Can delete product_tb', 9, 'delete_product_tb'),
(36, 'Can view product_tb', 9, 'view_product_tb'),
(37, 'Can add form_tb', 10, 'add_form_tb'),
(38, 'Can change form_tb', 10, 'change_form_tb'),
(39, 'Can delete form_tb', 10, 'delete_form_tb'),
(40, 'Can view form_tb', 10, 'view_form_tb'),
(41, 'Can add cart_tb', 11, 'add_cart_tb'),
(42, 'Can change cart_tb', 11, 'change_cart_tb'),
(43, 'Can delete cart_tb', 11, 'delete_cart_tb'),
(44, 'Can view cart_tb', 11, 'view_cart_tb'),
(45, 'Can add cont_tb', 12, 'add_cont_tb'),
(46, 'Can change cont_tb', 12, 'change_cont_tb'),
(47, 'Can delete cont_tb', 12, 'delete_cont_tb'),
(48, 'Can view cont_tb', 12, 'view_cont_tb'),
(49, 'Can add cart_tb', 13, 'add_cart_tb'),
(50, 'Can change cart_tb', 13, 'change_cart_tb'),
(51, 'Can delete cart_tb', 13, 'delete_cart_tb'),
(52, 'Can view cart_tb', 13, 'view_cart_tb'),
(53, 'Can add signup_tb', 14, 'add_signup_tb'),
(54, 'Can change signup_tb', 14, 'change_signup_tb'),
(55, 'Can delete signup_tb', 14, 'delete_signup_tb'),
(56, 'Can view signup_tb', 14, 'view_signup_tb'),
(57, 'Can add payment_tb', 15, 'add_payment_tb'),
(58, 'Can change payment_tb', 15, 'change_payment_tb'),
(59, 'Can delete payment_tb', 15, 'delete_payment_tb'),
(60, 'Can view payment_tb', 15, 'view_payment_tb'),
(61, 'Can add admin_tb', 16, 'add_admin_tb'),
(62, 'Can change admin_tb', 16, 'change_admin_tb'),
(63, 'Can delete admin_tb', 16, 'delete_admin_tb'),
(64, 'Can view admin_tb', 16, 'view_admin_tb');

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
(1, 'admin', NULL, 0, 'admin', '', '', 'admin@gmail.com', 0, 0, '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
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
(1, 'admin', 'logentry'),
(16, 'adminapp', 'admin_tb'),
(13, 'adminapp', 'cart_tb'),
(10, 'adminapp', 'form_tb'),
(15, 'adminapp', 'payment_tb'),
(14, 'adminapp', 'signup_tb'),
(8, 'app5', 'admin_tb'),
(11, 'app5', 'cart_tb'),
(12, 'app5', 'cont_tb'),
(9, 'app5', 'product_tb'),
(7, 'app5', 'signup_tb'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-30 15:08:09.169104'),
(2, 'auth', '0001_initial', '2022-11-30 15:08:09.377088'),
(3, 'admin', '0001_initial', '2022-11-30 15:08:09.420773'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-30 15:08:09.424154'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-30 15:08:09.424154'),
(6, 'app5', '0001_initial', '2022-11-30 15:08:09.433273'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-11-30 15:08:09.471834'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-11-30 15:08:09.508241'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-11-30 15:08:09.525917'),
(10, 'auth', '0004_alter_user_username_opts', '2022-11-30 15:08:09.525917'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-11-30 15:08:09.553395'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-11-30 15:08:09.557769'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-11-30 15:08:09.560470'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-11-30 15:08:09.568918'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-11-30 15:08:09.579978'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-11-30 15:08:09.591377'),
(17, 'auth', '0011_update_proxy_permissions', '2022-11-30 15:08:09.591377'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-11-30 15:08:09.606401'),
(19, 'sessions', '0001_initial', '2022-11-30 15:08:09.626106'),
(20, 'app5', '0002_rename_password2_signup_tb_hashpassword', '2022-12-01 04:18:40.103594'),
(21, 'app5', '0003_admin_tb', '2022-12-02 03:42:52.473495'),
(22, 'app5', '0004_delete_admin_tb', '2022-12-02 03:54:25.478641'),
(23, 'app5', '0005_signup_tb_message', '2022-12-05 04:42:01.392075'),
(24, 'app5', '0006_rename_fname_signup_tb_name_remove_signup_tb_lname', '2022-12-05 04:56:05.981500'),
(25, 'adminapp', '0001_initial', '2022-12-06 05:15:15.177623'),
(26, 'app5', '0007_product_tb', '2022-12-06 05:15:15.203555'),
(27, 'adminapp', '0002_form_tb_proimage', '2022-12-06 06:03:54.477831'),
(28, 'adminapp', '0003_form_tb_offprice', '2022-12-07 04:31:07.754044'),
(29, 'adminapp', '0004_remove_form_tb_email_remove_form_tb_password_and_more', '2022-12-07 04:31:07.779401'),
(30, 'adminapp', '0005_alter_form_tb_details_alter_form_tb_proimage', '2022-12-08 03:24:06.611810'),
(31, 'app5', '0008_cart_tb', '2022-12-08 04:45:08.693806'),
(32, 'adminapp', '0006_signup_tb_cart_tb', '2022-12-12 03:33:57.587985'),
(33, 'app5', '0009_cont_tb_delete_cart_tb_delete_product_tb_and_more', '2022-12-12 03:33:57.644378'),
(34, 'adminapp', '0007_payment_tb', '2022-12-12 05:27:48.518508'),
(35, 'adminapp', '0008_admin_tb', '2022-12-14 11:11:44.044103');

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
('bp1jvoqs74gom6sfwwyd90va1b0mr3l0', '.eJyrVsqtzExRsjLUATLyEnNTlayUcjPz8kqVdJQSoRKJUPHEFKCMUi0AoDYP-Q:1p5Obc:1zy0zFxoLQVuFQchgR50Z9P357DOQhVQiH76NVg3IUU', '2022-12-28 10:03:16.780999'),
('kiys9vkh22wqwbyma16xbi1n60f4su7z', '.eJyrVkrMTFGyMtRRSsxLzE1VslJKTMnNzFPSUcqtBEkYgxhQmbzEssySjESlWgCz-RC_:1p39cC:JJ2xn2Qa6DjD_VV94Yqg48AYMuZtLCOPc4QV5uP9754', '2022-12-22 05:38:36.969001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminapp_admin_tb`
--
ALTER TABLE `adminapp_admin_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminapp_cart_tb`
--
ALTER TABLE `adminapp_cart_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_cart_tb_pid_id_78673167_fk_adminapp_form_tb_id` (`pid_id`),
  ADD KEY `adminapp_cart_tb_uid_id_fca633c0_fk_adminapp_signup_tb_id` (`uid_id`);

--
-- Indexes for table `adminapp_form_tb`
--
ALTER TABLE `adminapp_form_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminapp_payment_tb`
--
ALTER TABLE `adminapp_payment_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_payment_tb_uid_id_c4b4ec85_fk_adminapp_signup_tb_id` (`uid_id`);

--
-- Indexes for table `adminapp_signup_tb`
--
ALTER TABLE `adminapp_signup_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app5_cont_tb`
--
ALTER TABLE `app5_cont_tb`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminapp_admin_tb`
--
ALTER TABLE `adminapp_admin_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adminapp_cart_tb`
--
ALTER TABLE `adminapp_cart_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `adminapp_form_tb`
--
ALTER TABLE `adminapp_form_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `adminapp_payment_tb`
--
ALTER TABLE `adminapp_payment_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminapp_signup_tb`
--
ALTER TABLE `adminapp_signup_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app5_cont_tb`
--
ALTER TABLE `app5_cont_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adminapp_cart_tb`
--
ALTER TABLE `adminapp_cart_tb`
  ADD CONSTRAINT `adminapp_cart_tb_pid_id_78673167_fk_adminapp_form_tb_id` FOREIGN KEY (`pid_id`) REFERENCES `adminapp_form_tb` (`id`),
  ADD CONSTRAINT `adminapp_cart_tb_uid_id_fca633c0_fk_adminapp_signup_tb_id` FOREIGN KEY (`uid_id`) REFERENCES `adminapp_signup_tb` (`id`);

--
-- Constraints for table `adminapp_payment_tb`
--
ALTER TABLE `adminapp_payment_tb`
  ADD CONSTRAINT `adminapp_payment_tb_uid_id_c4b4ec85_fk_adminapp_signup_tb_id` FOREIGN KEY (`uid_id`) REFERENCES `adminapp_signup_tb` (`id`);

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
