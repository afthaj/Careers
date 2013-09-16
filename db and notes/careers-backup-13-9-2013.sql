-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2013 at 10:44 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `careers`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_levels`
--

CREATE TABLE IF NOT EXISTS `admin_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_level_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `admin_levels`
--

INSERT INTO `admin_levels` (`id`, `admin_level_name`) VALUES
(1, 'System Administrator'),
(2, 'PDC User'),
(3, 'Lecturer'),
(4, 'Senior Lecturer');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE IF NOT EXISTS `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `verified_flag` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `degree_programs`
--

CREATE TABLE IF NOT EXISTS `degree_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `duration` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `degree_programs`
--

INSERT INTO `degree_programs` (`id`, `name`, `display_name`, `duration`) VALUES
(1, 'BScCS', 'Bachelor of Science (CS)', 4),
(2, 'BScICT', 'Bachelor of Science (ICT)', 4),
(3, 'BCSc', 'Bachelor of Computer Science', 3),
(4, 'BICT', 'Bachelor of Information and Communication Technology', 3),
(5, 'BCS', 'Bachelor of Computer Science', 3),
(6, 'BScCS', 'Bachelor of Science (Computer Science)', 4),
(7, 'BScSE', 'Bachelor of Science (Software Engineering)', 4),
(8, 'BIS', 'Bachelor of Information Systems', 3),
(9, 'BScISE', 'Bachelor of Science (Information Systems Engineering)', 4);

-- --------------------------------------------------------

--
-- Table structure for table `object_types`
--

CREATE TABLE IF NOT EXISTS `object_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_type_name` varchar(100) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `user_flag` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `object_types`
--

INSERT INTO `object_types` (`id`, `object_type_name`, `display_name`, `user_flag`) VALUES
(1, 'skill', 'Skill', 0),
(2, 'student', 'Student', 1),
(3, 'admin', 'Administrator', 1),
(4, 'company', 'Company', 0),
(5, 'company_user', 'Company User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `related_object_type` int(11) NOT NULL,
  `related_object_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL,
  `size` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `skills_students`
--

CREATE TABLE IF NOT EXISTS `skills_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `skill_id` (`skill_id`,`student_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_admins`
--

CREATE TABLE IF NOT EXISTS `user_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `admin_level` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `telephone_number` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_admins`
--

INSERT INTO `user_admins` (`id`, `username`, `password`, `admin_level`, `first_name`, `last_name`, `email_address`, `telephone_number`) VALUES
(1, 'admin', '123', 1, 'Admin', 'User', 'aftha.jaldin88@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_company_users`
--

CREATE TABLE IF NOT EXISTS `user_company_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `telephone_number` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_students`
--

CREATE TABLE IF NOT EXISTS `user_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `degree_program_id` int(11) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `telephone_number` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `degree_program_id` (`degree_program_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_students`
--

INSERT INTO `user_students` (`id`, `username`, `password`, `first_name`, `last_name`, `degree_program_id`, `email_address`, `telephone_number`) VALUES
(1, 'aftha.jaldin', '1qaz2wsx@', 'Aftha', 'Jaldin', 2, 'aftha.jaldin88@gmail.com', '+94774422980'),
(2, 'sanjaya.amarasinghe', '1qaz2wsx@', 'Sanjaya', 'Amarasinghe', 1, 'sanjboy@gmail.com', '+94719417343');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `skills_students`
--
ALTER TABLE `skills_students`
  ADD CONSTRAINT `skills_students_ibfk_1` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `skills_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `user_students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_company_users`
--
ALTER TABLE `user_company_users`
  ADD CONSTRAINT `user_company_users_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;