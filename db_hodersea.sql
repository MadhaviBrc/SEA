-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2020 at 04:43 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hodersea`
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
(25, 'Can add lead', 7, 'add_lead'),
(26, 'Can change lead', 7, 'change_lead'),
(27, 'Can delete lead', 7, 'delete_lead'),
(28, 'Can view lead', 7, 'view_lead'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add infrastructure', 9, 'add_infrastructure'),
(34, 'Can change infrastructure', 9, 'change_infrastructure'),
(35, 'Can delete infrastructure', 9, 'delete_infrastructure'),
(36, 'Can view infrastructure', 9, 'view_infrastructure'),
(37, 'Can add class', 10, 'add_class'),
(38, 'Can change class', 10, 'change_class'),
(39, 'Can delete class', 10, 'delete_class'),
(40, 'Can view class', 10, 'view_class'),
(41, 'Can add section', 11, 'add_section'),
(42, 'Can change section', 11, 'change_section'),
(43, 'Can delete section', 11, 'delete_section'),
(44, 'Can view section', 11, 'view_section'),
(45, 'Can add academic_years', 12, 'add_academic_years'),
(46, 'Can change academic_years', 12, 'change_academic_years'),
(47, 'Can delete academic_years', 12, 'delete_academic_years'),
(48, 'Can view academic_years', 12, 'view_academic_years');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Table structure for table `backend_academic_years`
--

CREATE TABLE `backend_academic_years` (
  `i_year_id` int(11) NOT NULL,
  `c_academic_year` varchar(50) NOT NULL,
  `c_description` varchar(1000) NOT NULL,
  `c_status` varchar(10) NOT NULL,
  `d_created_at` datetime(6) NOT NULL,
  `d_updated_at` datetime(6) NOT NULL,
  `c_created_by` varchar(50) NOT NULL,
  `c_updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `backend_class`
--

CREATE TABLE `backend_class` (
  `i_class_id` int(11) NOT NULL,
  `c_class_name` varchar(100) NOT NULL,
  `c_description` varchar(1000) NOT NULL,
  `i_branch_id` int(11) DEFAULT NULL,
  `c_status` varchar(10) NOT NULL,
  `d_created_at` datetime(6) DEFAULT NULL,
  `d_updated_at` datetime(6) DEFAULT NULL,
  `c_created_by` varchar(50) DEFAULT NULL,
  `c_updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `backend_class`
--

INSERT INTO `backend_class` (`i_class_id`, `c_class_name`, `c_description`, `i_branch_id`, `c_status`, `d_created_at`, `d_updated_at`, `c_created_by`, `c_updated_by`) VALUES
(71, '111', '1234', NULL, '1', '2020-08-05 08:54:10.674266', '2020-08-05 10:42:00.277612', '', ''),
(72, '2', '2', NULL, '2', '2020-08-05 08:55:34.032812', '2020-08-05 08:55:34.032812', '', ''),
(74, '3', '3', NULL, '3', '2020-08-05 09:08:21.601211', '2020-08-05 09:08:21.601211', '', ''),
(77, '4', '4', NULL, '4', '2020-08-05 10:31:35.413999', '2020-08-05 10:31:35.413999', '', ''),
(79, '55', '5', NULL, '5', '2020-08-05 10:42:21.676371', '2020-08-05 10:42:28.686661', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `backend_infrastructure`
--

CREATE TABLE `backend_infrastructure` (
  `id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_code` varchar(100) NOT NULL,
  `c_address` varchar(1000) NOT NULL,
  `c_description` varchar(1000) NOT NULL,
  `c_logo` varchar(500) NOT NULL,
  `i_main_branch` int(11) NOT NULL,
  `i_parent_branch` int(11) NOT NULL,
  `c_status` varchar(10) NOT NULL,
  `d_created_at` datetime(6) NOT NULL,
  `d_updated_at` datetime(6) NOT NULL,
  `c_created_by` varchar(50) NOT NULL,
  `c_updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `backend_section`
--

CREATE TABLE `backend_section` (
  `i_section_id` int(11) NOT NULL,
  `c_section_name` varchar(100) NOT NULL,
  `c_description` varchar(1000) NOT NULL,
  `i_class_id` int(11) NOT NULL,
  `c_status` varchar(10) NOT NULL,
  `d_created_at` datetime(6) NOT NULL,
  `d_updated_at` datetime(6) NOT NULL,
  `c_created_by` varchar(50) NOT NULL,
  `c_updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `backend_user`
--

CREATE TABLE `backend_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `backend_user`
--

INSERT INTO `backend_user` (`id`, `username`, `password`, `email`, `created_at`, `updated_at`) VALUES
(13, 'madhavi', 'madhavi1238787', 'madhavi@gmail.com', '2020-08-17 22:49:48.051278', '2020-08-18 12:23:24.417378'),
(17, 'chinna', 'chinna1233', 'chinna@gmail.com', '2020-08-18 11:00:36.881451', '2020-08-18 12:21:51.593798'),
(22, 'manish', 'manish123456', 'manish@gmail.com', '2020-08-18 12:23:56.079170', '2020-08-18 12:24:08.427859');

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
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(12, 'Backend', 'academic_years'),
(10, 'Backend', 'class'),
(9, 'Backend', 'infrastructure'),
(11, 'Backend', 'section'),
(8, 'Backend', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'leads', 'lead'),
(6, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2020-07-28 10:46:05.643709'),
(2, 'auth', '0001_initial', '2020-07-28 10:46:05.806051'),
(3, 'admin', '0001_initial', '2020-07-28 10:46:06.488262'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-07-28 10:46:06.671256'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-07-28 10:46:06.698825'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-07-28 10:46:06.821666'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-07-28 10:46:06.898080'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-07-28 10:46:06.928822'),
(9, 'auth', '0004_alter_user_username_opts', '2020-07-28 10:46:06.939305'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-07-28 10:46:07.039521'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-07-28 10:46:07.045531'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-07-28 10:46:07.073876'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-07-28 10:46:07.108264'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-07-28 10:46:07.154473'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-07-28 10:46:07.197256'),
(16, 'auth', '0011_update_proxy_permissions', '2020-07-28 10:46:07.222226'),
(17, 'leads', '0001_initial', '2020-07-28 10:46:07.272997'),
(18, 'sessions', '0001_initial', '2020-07-28 10:46:07.314899'),
(19, 'Backend', '0001_initial', '2020-07-30 05:39:44.161301'),
(20, 'Backend', '0002_infrastructure', '2020-07-30 05:39:44.211206'),
(21, 'Backend', '0003_auto_20200729_1537', '2020-07-30 05:39:44.297424'),
(22, 'Backend', '0004_auto_20200729_1545', '2020-07-30 05:39:44.627013'),
(23, 'Backend', '0005_auto_20200729_1548', '2020-07-30 05:39:44.652544'),
(24, 'Backend', '0006_class_section', '2020-07-30 05:39:44.735308'),
(25, 'Backend', '0007_auto_20200729_1556', '2020-07-30 05:39:44.887731'),
(26, 'Backend', '0008_academic_years', '2020-07-30 05:39:44.938496');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `leads_lead`
--

CREATE TABLE `leads_lead` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` varchar(300) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leads_lead`
--

INSERT INTO `leads_lead` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'roja', 'roja@gmail.com', 'Hello Roja', '2020-07-28 10:47:16.994583'),
(2, 'madhavi', 'madhavi@gmail.com', 'Hello Madhavi', '2020-07-28 10:47:38.375223');

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
-- Indexes for table `backend_academic_years`
--
ALTER TABLE `backend_academic_years`
  ADD PRIMARY KEY (`i_year_id`);

--
-- Indexes for table `backend_class`
--
ALTER TABLE `backend_class`
  ADD PRIMARY KEY (`i_class_id`);

--
-- Indexes for table `backend_infrastructure`
--
ALTER TABLE `backend_infrastructure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_section`
--
ALTER TABLE `backend_section`
  ADD PRIMARY KEY (`i_section_id`);

--
-- Indexes for table `backend_user`
--
ALTER TABLE `backend_user`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `leads_lead`
--
ALTER TABLE `leads_lead`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `backend_academic_years`
--
ALTER TABLE `backend_academic_years`
  MODIFY `i_year_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backend_class`
--
ALTER TABLE `backend_class`
  MODIFY `i_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `backend_infrastructure`
--
ALTER TABLE `backend_infrastructure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backend_section`
--
ALTER TABLE `backend_section`
  MODIFY `i_section_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backend_user`
--
ALTER TABLE `backend_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `leads_lead`
--
ALTER TABLE `leads_lead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
