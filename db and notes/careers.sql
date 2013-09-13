-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 14, 2013 at 12:20 AM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `careers`
--

-- --------------------------------------------------------

--
-- Table structure for table `object_types`
--

CREATE TABLE `object_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_type_name` varchar(100) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `user_flag` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `object_types`
--

INSERT INTO `object_types` VALUES(1, 'skill', 'Skill', 0);
INSERT INTO `object_types` VALUES(2, 'student', 'Student', 1);
INSERT INTO `object_types` VALUES(3, 'admin', 'Administrator', 1);
INSERT INTO `object_types` VALUES(4, 'company', 'Company', 0);
INSERT INTO `object_types` VALUES(5, 'company_user', 'Company User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `obj_companies`
--

CREATE TABLE `obj_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `verified_flag` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `obj_companies`
--


-- --------------------------------------------------------

--
-- Table structure for table `obj_degree_programs`
--

CREATE TABLE `obj_degree_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `duration` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `obj_degree_programs`
--

INSERT INTO `obj_degree_programs` VALUES(1, 'BScCS', 'Bachelor of Science (CS)', 4);
INSERT INTO `obj_degree_programs` VALUES(2, 'BScICT', 'Bachelor of Science (ICT)', 4);
INSERT INTO `obj_degree_programs` VALUES(3, 'BCSc', 'Bachelor of Computer Science', 3);
INSERT INTO `obj_degree_programs` VALUES(4, 'BICT', 'Bachelor of Information and Communication Technology', 3);
INSERT INTO `obj_degree_programs` VALUES(5, 'BCS', 'Bachelor of Computer Science', 3);
INSERT INTO `obj_degree_programs` VALUES(6, 'BScCS', 'Bachelor of Science (Computer Science)', 4);
INSERT INTO `obj_degree_programs` VALUES(7, 'BScSE', 'Bachelor of Science (Software Engineering)', 4);
INSERT INTO `obj_degree_programs` VALUES(8, 'BIS', 'Bachelor of Information Systems', 3);
INSERT INTO `obj_degree_programs` VALUES(9, 'BScISE', 'Bachelor of Science (Information Systems Engineering)', 4);

-- --------------------------------------------------------

--
-- Table structure for table `obj_photos`
--

CREATE TABLE `obj_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `related_object_type` int(11) NOT NULL,
  `related_object_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL,
  `size` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `obj_photos`
--


-- --------------------------------------------------------

--
-- Table structure for table `obj_skills`
--

CREATE TABLE `obj_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `obj_skills`
--


-- --------------------------------------------------------

--
-- Table structure for table `obj_skills_students`
--

CREATE TABLE `obj_skills_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `skill_id` (`skill_id`,`student_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `obj_skills_students`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_admins`
--

CREATE TABLE `user_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) NOT NULL,
  `admin_level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_admins`
--

INSERT INTO `user_admins` VALUES(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_admin_levels`
--

CREATE TABLE `user_admin_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_level_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_admin_levels`
--

INSERT INTO `user_admin_levels` VALUES(1, 'System Administrator');
INSERT INTO `user_admin_levels` VALUES(2, 'PDC User');
INSERT INTO `user_admin_levels` VALUES(3, 'Lecturer');
INSERT INTO `user_admin_levels` VALUES(4, 'Senior Lecturer');

-- --------------------------------------------------------

--
-- Table structure for table `user_company_users`
--

CREATE TABLE `user_company_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_company_users`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_type` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `telephone_number` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` VALUES(1, 3, 'admin', '123', 'Admin', 'User', 'aftha.jaldin88@gmail.com', '+94774422980');
INSERT INTO `user_logins` VALUES(2, 2, 'student', '123', 'Generic', 'Student', 'johnsmith@acme.com', '+94777654321');
INSERT INTO `user_logins` VALUES(3, 5, 'compuser', '123', 'Company', 'User', 'johndoe@acme.com', '+94777123456');
INSERT INTO `user_logins` VALUES(4, 2, 'aftha.j', '123', 'Aftha', 'Jaldin', 'aftha.jaldin88@gmail.com', '+94774422980');
INSERT INTO `user_logins` VALUES(5, 2, 'sanjaya.a', '123', 'Sanjaya', 'Amarasinghe', 'sanjboy@gmail.com', '+94719417343');

-- --------------------------------------------------------

--
-- Table structure for table `user_students`
--

CREATE TABLE `user_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) NOT NULL,
  `degree_program_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `degree_program_id` (`degree_program_id`),
  KEY `login_id` (`login_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_students`
--

INSERT INTO `user_students` VALUES(3, 2, 1);
INSERT INTO `user_students` VALUES(4, 4, 2);
INSERT INTO `user_students` VALUES(5, 5, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `obj_skills_students`
--
ALTER TABLE `obj_skills_students`
  ADD CONSTRAINT `obj_skills_students_ibfk_1` FOREIGN KEY (`skill_id`) REFERENCES `obj_skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obj_skills_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `user_students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_company_users`
--
ALTER TABLE `user_company_users`
  ADD CONSTRAINT `user_company_users_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `obj_companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
