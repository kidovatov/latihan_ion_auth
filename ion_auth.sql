-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2014 at 10:56 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ion_auth`
--
CREATE DATABASE IF NOT EXISTS `ion_auth` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ion_auth`;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'PT_WGS', 'Grup 1 - PT WGS'),
(4, 'Kidovatov_Ltd', 'Grup 2 - Kidovatov Ltd.');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('user','admin') NOT NULL DEFAULT 'user',
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, 'admin', '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, 'NfX.FzDuBZF97XLEvlN0Vu', 1268889823, 1400056956, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(2, 'user', '::1', 'kido vatov', '$2y$08$hloQ9.S8NsfMHSxDC.r2F.MHkl9uC6SS1RMpI30jEW0QYkpoC2agO', NULL, 'kido@vatov.com', NULL, 'T6qY0DJbFOTB.AS/xb1fEea3aadccddb87e04203', 1399879096, NULL, 1399869887, 1400056488, 1, 'Kido', 'Vatov', 'Kidosoft Ltd.', '55555'),
(3, 'user', '::1', 'acep saepudin', '$2y$08$rx1atCMBFpSVWmrJ1WTp5OEOQ8pT7h.0vYQ86TM9cqX3ljuE1cfHm', NULL, 'acep@acep.com', NULL, NULL, NULL, NULL, 1399869915, 1400057579, 1, 'Acep', 'Saepudin', 'PT WGS', '12345'),
(4, 'user', '::1', 'agung gustiana', '$2y$08$RM2THAGVvlb44MotSGUkuO8sPIjiXgRiyayen7VPBb0uzEtDDQOL6', NULL, 'agung@agung.com', NULL, NULL, NULL, NULL, 1399869946, 1399869946, 1, 'Agung', 'Gustiana', 'PT WGS', '12345'),
(5, 'user', '::1', 'hendy yanuar', '$2y$08$l5PiaRMWOYwT191M53XgA.Cp914tsXlfD.uACwrCHlTgCmCifIfse', NULL, 'hendy@wgs.co.id', NULL, NULL, NULL, NULL, 1399886726, 1399886779, 1, 'Hendy', 'Yanuar', 'PT WGS', '12345'),
(6, 'user', '::1', 'aaa aaa', '$2y$08$d31A6M6Rnk6dUpPJ8di2CuO0mFtShL65cE27vGe2dcSjpSk4O2Cc6', NULL, 'aaa@aaa.com', NULL, NULL, NULL, NULL, 1399887360, 1399972972, 1, 'aaa', 'aaa', 'aaa', '123'),
(7, 'user', '::1', 'acep saepudin1', '$2y$08$ceH39d6LMNEzUInIQzcDHu5AtcDa.CvPrvsXHnMRrZQfoimOhZRoe', NULL, 'acep@saepudin.com', NULL, 'wzLi5A/WOgEfoqfFJzFYlu20bc7f69dc7e84d71a', 1399972781, NULL, 1399971587, 1399973674, 1, 'Acep', 'Saepudin', 'PT WGS', '12345'),
(8, 'user', '::1', 'aas sas', '$2y$08$kn9hgwNrPTpVh6N89CyzQerhyvedgUL61hS/7dwYsTL5C1.ZPsjJG', NULL, 'sadas@dfdc.com', NULL, NULL, NULL, NULL, 1400056805, 1400056805, 1, 'aas', 'sas', 'sdaa', '123'),
(9, 'user', '::1', 'aaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '$2y$08$27hiexEJrI07c7sqih9FNe8mEk61i3D9PXwtihBsRNAkNLeid16lm', NULL, 'aaaaaaaaaaaaaaaa@aaaaaaaaaaaaaaaaaaaaa.com', NULL, NULL, NULL, NULL, 1400056916, 1400056916, 1, 'aaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaa', '123');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(6, 2, 1),
(7, 2, 2),
(8, 2, 4),
(9, 3, 2),
(10, 3, 3),
(11, 4, 4),
(12, 5, 2),
(13, 6, 2),
(14, 7, 2),
(15, 8, 2),
(16, 9, 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
