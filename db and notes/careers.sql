-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2013 at 12:58 PM
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
-- Table structure for table `obj_companies`
--

CREATE TABLE IF NOT EXISTS `obj_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `verified_flag` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `obj_companies`
--

INSERT INTO `obj_companies` (`id`, `name`, `verified_flag`) VALUES
(1, 'Millennium IT', 1),
(2, 'Virtusa Corp.', 0),
(3, 'Cambio Healthcare Systems', 0),
(4, 'ThinkCube (Pvt) Ltd.', 0),
(5, 'SimCentric Technologies', 0),
(6, 'TNL Radio Networks (Pvt) Ltd.', 0),
(7, 'HSBC DPL (Pvt.) Ltd.', 0),
(8, 'British Council', 0);

-- --------------------------------------------------------

--
-- Table structure for table `obj_degree_programs`
--

CREATE TABLE IF NOT EXISTS `obj_degree_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `duration` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `obj_degree_programs`
--

INSERT INTO `obj_degree_programs` (`id`, `name`, `display_name`, `duration`) VALUES
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
-- Table structure for table `obj_edu_quals`
--

CREATE TABLE IF NOT EXISTS `obj_edu_quals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `obj_edu_quals`
--

INSERT INTO `obj_edu_quals` (`id`, `name`) VALUES
(1, 'G. C. E. Advanced Level'),
(2, 'G. C. E. Ordinary Level'),
(3, 'Grade 5 Scholarship Exam');

-- --------------------------------------------------------

--
-- Table structure for table `obj_months`
--

CREATE TABLE IF NOT EXISTS `obj_months` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `obj_months`
--

INSERT INTO `obj_months` (`id`, `name`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `obj_papers`
--

CREATE TABLE IF NOT EXISTS `obj_papers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `year` int(11) NOT NULL,
  `authors` text NOT NULL,
  `abstract` text NOT NULL,
  `file_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `obj_papers`
--

INSERT INTO `obj_papers` (`id`, `title`, `year`, `authors`, `abstract`, `file_name`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 2012, 'Jaldin, A. Smith, J. Doe, J.', 'Integer non leo viverra, scelerisque ipsum sed, malesuada elit. Phasellus fringilla porttitor porta. Aenean adipiscing imperdiet porta. Aenean non elit id leo sodales placerat vitae et felis. Curabitur vel quam lectus. In bibendum molestie fringilla. Vivamus eget nulla in nibh ultricies blandit. Suspendisse tristique pulvinar placerat. Cras aliquet tempor urna id viverra. Ut nisi orci, bibendum nec quam sed, elementum commodo augue.', ''),
(2, 'Integer non leo viverra, scelerisque ipsum sed, malesuada elit.', 2013, 'Amarasinghe, S. Jaldin, A. Perera A.', 'In porta posuere lobortis. Nullam in dolor eros. Curabitur tortor enim, varius ut vehicula ac, ultricies vel quam. Suspendisse potenti. Ut felis odio, tempus in vestibulum non, hendrerit non arcu. In hac habitasse platea dictumst. Praesent adipiscing interdum libero, nec commodo sapien mollis vel. Praesent auctor leo nec iaculis volutpat. Aenean porta nisl vel enim viverra interdum. Aliquam diam leo, rhoncus in molestie aliquet, scelerisque eget lorem. Praesent suscipit tortor quis enim cursus mattis. Ut porta vel lorem sit amet scelerisque. Sed accumsan ut turpis id luctus.', '');

-- --------------------------------------------------------

--
-- Table structure for table `obj_photos`
--

CREATE TABLE IF NOT EXISTS `obj_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `related_object_type` int(11) NOT NULL,
  `related_object_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL,
  `size` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `related_object_type` (`related_object_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `obj_photos`
--

INSERT INTO `obj_photos` (`id`, `related_object_type`, `related_object_id`, `filename`, `file_type`, `size`) VALUES
(1, 3, 1, 'Aftha_jaldin.jpg', 'image/jpeg', ''),
(2, 3, 2, 'Aftha_Jaldin.jpg', 'image/jpeg', ''),
(3, 2, 3, 'Aruni_Bandara.jpg', 'image/jpeg', ''),
(4, 2, 4, 'Aftha_Jaldin.jpg', 'image/jpeg', ''),
(5, 2, 5, 'Banu_Liyanapathirana.jpg', 'image/jpeg', ''),
(6, 2, 6, 'Buddhi_De_Silva.jpg', 'image/jpeg', ''),
(7, 2, 7, 'Chamali_Waduge.jpg', 'image/jpeg', ''),
(8, 2, 8, 'Chandima_Fernando.jpg', 'image/jpeg', ''),
(12, 2, 12, 'Dayan_Kulatunga.jpg', 'image/jpeg', ''),
(13, 2, 13, 'Dilini_Madushika.jpg', 'image/jpeg', ''),
(14, 2, 14, 'Dilini_Muthumala.jpg', 'image/jpeg', ''),
(16, 2, 16, 'Hashan_Silva.jpg', 'image/jpeg', ''),
(17, 2, 17, 'Ifancy_Ariaratnam.jpg', 'image/jpeg', ''),
(18, 2, 18, 'Janitha_Karunawallabha.jpg', 'image/jpeg', ''),
(19, 2, 19, 'Jinadi_Dahanayaka.jpg', 'image/jpeg', ''),
(20, 2, 20, 'Lakkhana_Mallikarachchi.jpg', 'image/jpeg', ''),
(21, 2, 21, 'Madhawa_Bandara.jpg', 'image/jpeg', ''),
(22, 2, 22, 'Madhawa_Gunasekara.jpg', 'image/jpeg', ''),
(23, 2, 23, 'Madhujith_Kariyapperuma.jpg', 'image/jpeg', ''),
(24, 2, 24, 'Madusanka_Balasooriya.jpg', 'image/jpeg', ''),
(25, 2, 25, 'Malinga_Alwis.jpg', 'image/jpeg', ''),
(26, 2, 26, 'Mihan_Liyanage.jpg', 'image/jpeg', ''),
(27, 2, 27, 'Milani_Athapattu.jpg', 'image/jpeg', ''),
(31, 2, 31, 'Niluka_Thilakarathna.jpg', 'image/jpeg', ''),
(32, 2, 32, 'Nipun_De_Silva.jpg', 'image/jpeg', ''),
(33, 2, 33, 'Nisansala_Liyanage.jpg', 'image/jpeg', ''),
(34, 2, 34, 'Nuwan_Chathuranga.jpg', 'image/jpeg', ''),
(35, 2, 35, 'Pabitha_Teldeniya.jpg', 'image/jpeg', ''),
(36, 2, 36, 'Pankajan_Chanthirasegaran.jpg', 'image/jpeg', ''),
(37, 2, 37, 'Pasan_De_Silva.jpg', 'image/jpeg', ''),
(38, 2, 38, 'Pubudu_Sandaruwani.jpg', 'image/jpeg', ''),
(40, 2, 40, 'Sachith_Senevirathna.jpg', 'image/jpeg', ''),
(41, 2, 41, 'Sahan_Udana.jpg', 'image/jpeg', ''),
(42, 2, 42, 'Sandunika_Wijerathne.jpg', 'image/jpeg', ''),
(43, 2, 43, 'Sanjaya_Amarasinghe.jpg', 'image/jpeg', ''),
(44, 2, 44, 'Sashika_Rangoda.jpg', 'image/jpeg', ''),
(45, 2, 45, 'Sashika_Wijesinghe.jpg', 'image/jpeg', ''),
(46, 2, 46, 'Shyama_Chandani.jpg', 'image/jpeg', ''),
(47, 2, 47, 'Sumeda_Viduranga.jpg', 'image/jpeg', ''),
(48, 2, 48, 'Suranga_Guawardhana.jpg', 'image/jpeg', ''),
(49, 2, 49, 'Tharindu_Gunasekara.jpg', 'image/jpeg', ''),
(51, 2, 51, 'Vajisha_Wanniarachchi.jpg', 'image/jpeg', ''),
(52, 2, 52, 'Vinod_Kavinda.jpg', 'image/jpeg', ''),
(53, 2, 53, 'Yasasri_Sampath.jpg', 'image/jpeg', '');

-- --------------------------------------------------------

--
-- Table structure for table `obj_prof_institutions`
--

CREATE TABLE IF NOT EXISTS `obj_prof_institutions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prof_institution_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `obj_prof_institutions`
--

INSERT INTO `obj_prof_institutions` (`id`, `prof_institution_name`, `location`) VALUES
(1, 'Oracle Inc.', 'USA'),
(2, 'Chartered Institute of Management Accountants', 'UK'),
(3, 'Chartered Accountants of Sri Lanka', 'Colombo'),
(4, 'British Computer Society', 'UK'),
(5, 'Cisco Corp.', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `obj_prof_quals`
--

CREATE TABLE IF NOT EXISTS `obj_prof_quals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `obj_prof_quals`
--

INSERT INTO `obj_prof_quals` (`id`, `name`) VALUES
(1, 'CIMA'),
(2, 'ACCA'),
(3, 'BCS'),
(4, 'Oracle-Certified Java Programmer'),
(5, 'Cisco-Certified Network Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `obj_schools`
--

CREATE TABLE IF NOT EXISTS `obj_schools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `obj_schools`
--

INSERT INTO `obj_schools` (`id`, `school_name`, `location`) VALUES
(1, 'Wesley College', 'Colombo'),
(2, 'Ananda College', 'Colombo'),
(3, 'Royal College', 'Colombo'),
(4, 'St. Thomas'' College', 'Mt. Lavinia'),
(5, 'Dharmasoka College', 'Ambalangoda'),
(6, 'St. Aloysius College', 'Galle'),
(7, 'Holy Family Convent', 'Bambalapitiya'),
(8, 'Devi Balika Vidyalaya', 'Colombo'),
(9, 'Museaus College', 'Colombo'),
(10, 'Bishop''s College', 'Colombo'),
(11, 'Methodist College', 'Colombo'),
(12, 'Dharmaraja College', 'Kandy'),
(13, 'University of Colombo School of Computing', 'Colombo');

-- --------------------------------------------------------

--
-- Table structure for table `obj_skills`
--

CREATE TABLE IF NOT EXISTS `obj_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(255) NOT NULL,
  `skill_type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=112 ;

--
-- Dumping data for table `obj_skills`
--

INSERT INTO `obj_skills` (`id`, `skill_name`, `skill_type`) VALUES
(1, 'Java', 2),
(2, 'Servlets', 1),
(3, 'JSP', 1),
(4, 'PHP', 2),
(5, 'MySQL', 1),
(6, 'Oracle', 1),
(7, 'Python', 2),
(8, 'Django Framework', 1),
(9, 'Apache Struts', 1),
(10, 'Hibernate', 1),
(11, 'PostgreSQL', 1),
(12, 'Android Development', 1),
(13, 'iOS Development', 1),
(14, 'Windows Phone Development', 1),
(15, 'Web Services', 3),
(16, '.NET Framework', 1),
(17, 'C', 2),
(18, 'C++', 2),
(19, 'Object-oriented Programming', 4),
(20, 'CMS', 3),
(21, 'Wordpress', 1),
(22, 'Joomla', 1),
(23, 'Drupal', 1),
(24, 'Networking', 3),
(25, 'System Administration', 3),
(26, 'Bootstrap', 1),
(27, 'Gumby', 1),
(28, 'HTML', 1),
(29, 'CSS', 1),
(30, 'Javascript', 2),
(31, 'Ajax', 1),
(32, 'Apache Server', 1),
(33, 'Apache Maven', 1),
(34, 'Apache Tomcat', 1),
(35, 'JBoss', 1),
(36, 'Glassfish', 1),
(37, 'Ruby', 2),
(38, 'Ruby on Rails', 1),
(39, 'Perl', 2),
(40, 'Business Analysis', 3),
(41, 'Github', 1),
(42, 'Apache Subversion', 1),
(43, 'Linux', 3),
(44, 'Shell Scripting', 3),
(45, 'Web Develepment', 3),
(46, 'UI Design', 4),
(47, 'UX Design', 4),
(48, 'UML', 3),
(49, 'XML', 1),
(50, 'SOAP', 1),
(51, 'REST', 1),
(52, 'JSON', 1),
(53, 'Graphic Design', 3),
(54, 'Enterprise Resource Planning', 3),
(55, 'Strategic Management', 3),
(56, 'HR Management', 3),
(57, 'DBMS', 3),
(58, 'LaTeX', 1),
(59, 'Microsoft Office', 1),
(60, 'C#', 2),
(61, 'Moodle', 1),
(62, 'Social Media Marketing', 3),
(63, 'Wireless Ad-Hoc and Sensor Networks', 3),
(64, 'Adobe Photoshop', 1),
(65, 'Adobe After Effects', 1),
(66, 'Adobe Fireworks', 1),
(67, 'Adobe Premiere Pro', 1),
(68, 'Adobe Illustrator', 1),
(69, 'Accountancy', 3),
(70, 'Economics', 3),
(71, 'Sociology', 3),
(72, 'Psychology', 3),
(73, '3DStudio Max', 1),
(74, 'Maya', 1),
(75, 'Middleware Architectures', 4),
(76, 'Data-mining', 3),
(77, 'Instructional Design', 3),
(78, 'Risk management', 3),
(79, 'IT Procurement', 3),
(80, 'Research Methods and Concepts', 4),
(81, 'Distributed Computing', 3),
(82, 'High Performance Computing', 3),
(83, 'Cryptography', 3),
(84, 'System Programming', 3),
(85, 'Operating System Concepts', 4),
(86, 'Electronics', 3),
(87, 'Natural Language Processing', 3),
(88, 'Neural Networks and Computing', 3),
(89, 'Software Development Life Cycle', 4),
(90, 'System Analysis and Design', 3),
(91, 'Human Computer Interaction', 3),
(92, 'Compilers and Automata Theory', 3),
(93, 'Data Structures and Algorithms', 3),
(94, 'Statistics', 3),
(95, 'Computer Graphics and Image Processing', 3),
(96, 'Augmented Reality', 3),
(97, 'Virtual Reality', 3),
(98, 'Intelligent Systems', 3),
(99, 'Computational Pattern Recognition', 3),
(100, 'MongoDB', 1),
(101, 'Enterprise Modelling', 3),
(102, 'IT Project Management', 3),
(103, 'NoSQL', 4),
(104, 'Apache Hadoop', 1),
(105, 'Git', 1),
(106, 'Supply Chain Management', 3),
(107, 'Customer Relationship Management', 3),
(108, 'Bio-Informatics', 3),
(109, 'Geographic IS', 3),
(110, 'IS Security and Audit', 3),
(111, 'SQL', 2);

-- --------------------------------------------------------

--
-- Table structure for table `obj_skill_types`
--

CREATE TABLE IF NOT EXISTS `obj_skill_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_type_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `obj_skill_types`
--

INSERT INTO `obj_skill_types` (`id`, `skill_type_name`) VALUES
(1, 'Technology'),
(2, 'Programming/Scripting Language'),
(3, 'Subject Area'),
(4, 'Concept');

-- --------------------------------------------------------

--
-- Table structure for table `obj_students_companies`
--

CREATE TABLE IF NOT EXISTS `obj_students_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `position` varchar(255) NOT NULL,
  `start_month` int(11) NOT NULL,
  `start_year` int(11) NOT NULL,
  `end_month` int(11) NOT NULL,
  `end_year` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `obj_students_companies`
--

INSERT INTO `obj_students_companies` (`id`, `student_id`, `company_id`, `position`, `start_month`, `start_year`, `end_month`, `end_year`) VALUES
(3, 4, 2, 'Industrial Trainee', 4, 2012, 10, 2012),
(4, 10, 2, 'Industrial Trainee', 4, 2012, 10, 2012),
(5, 13, 1, 'Industrial Trainee', 4, 2012, 9, 2012),
(6, 14, 1, 'Industrial Trainee', 4, 2012, 9, 2012),
(7, 4, 6, 'News Editor/Presenter', 4, 2010, 10, 2011),
(8, 4, 7, 'Customer Service Executive', 11, 2008, 7, 2009),
(9, 4, 8, 'Customer Service Representative', 4, 2008, 6, 2008);

-- --------------------------------------------------------

--
-- Table structure for table `obj_students_edu_quals`
--

CREATE TABLE IF NOT EXISTS `obj_students_edu_quals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `edu_qual_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `edu_qual_id` (`edu_qual_id`),
  KEY `school_id` (`school_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `obj_students_edu_quals`
--

INSERT INTO `obj_students_edu_quals` (`id`, `student_id`, `edu_qual_id`, `school_id`, `year`) VALUES
(1, 4, 1, 1, 2008),
(2, 4, 2, 1, 2004);

-- --------------------------------------------------------

--
-- Table structure for table `obj_students_papers`
--

CREATE TABLE IF NOT EXISTS `obj_students_papers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `paper_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `paper_id` (`paper_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `obj_students_papers`
--

INSERT INTO `obj_students_papers` (`id`, `student_id`, `paper_id`) VALUES
(1, 4, 1),
(2, 4, 2),
(3, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `obj_students_prof_quals`
--

CREATE TABLE IF NOT EXISTS `obj_students_prof_quals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `prof_qual_id` int(11) NOT NULL,
  `prof_institution_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `prof_qual_id` (`prof_qual_id`),
  KEY `prof_institution_id` (`prof_institution_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `obj_students_prof_quals`
--

INSERT INTO `obj_students_prof_quals` (`id`, `student_id`, `prof_qual_id`, `prof_institution_id`, `year`) VALUES
(1, 4, 1, 2, 2012),
(2, 4, 3, 4, 2013),
(3, 4, 4, 1, 2011),
(4, 4, 5, 5, 2010);

-- --------------------------------------------------------

--
-- Table structure for table `obj_students_schools`
--

CREATE TABLE IF NOT EXISTS `obj_students_schools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `start_year` int(11) NOT NULL,
  `end_year` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `school_id` (`school_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `obj_students_schools`
--

INSERT INTO `obj_students_schools` (`id`, `student_id`, `school_id`, `start_year`, `end_year`) VALUES
(1, 4, 1, 1994, 2008),
(2, 4, 13, 2009, 2014);

-- --------------------------------------------------------

--
-- Table structure for table `obj_students_skills`
--

CREATE TABLE IF NOT EXISTS `obj_students_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `skill_id` (`skill_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `obj_students_skills`
--

INSERT INTO `obj_students_skills` (`id`, `student_id`, `skill_id`) VALUES
(1, 4, 1),
(2, 4, 4),
(3, 4, 5),
(4, 4, 12),
(5, 4, 13),
(6, 4, 19),
(7, 4, 20),
(8, 4, 21),
(9, 4, 22),
(10, 4, 24),
(11, 4, 25),
(12, 4, 26),
(13, 4, 28),
(14, 4, 29),
(15, 4, 30),
(16, 4, 31),
(17, 4, 40),
(18, 4, 41),
(19, 4, 43),
(20, 4, 45),
(21, 4, 46),
(22, 4, 47),
(23, 4, 48),
(24, 4, 49),
(25, 4, 52),
(26, 4, 53),
(27, 4, 54),
(28, 4, 55),
(29, 4, 56),
(30, 4, 57),
(31, 4, 58),
(32, 4, 59),
(33, 4, 62),
(34, 4, 63),
(35, 4, 65),
(36, 4, 66),
(37, 4, 67),
(38, 4, 111);

-- --------------------------------------------------------

--
-- Table structure for table `user_admins`
--

CREATE TABLE IF NOT EXISTS `user_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) NOT NULL,
  `admin_level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_admins`
--

INSERT INTO `user_admins` (`id`, `login_id`, `admin_level`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_admin_levels`
--

CREATE TABLE IF NOT EXISTS `user_admin_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_level_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_admin_levels`
--

INSERT INTO `user_admin_levels` (`id`, `admin_level_name`) VALUES
(1, 'System Administrator'),
(2, 'PDC User'),
(3, 'Lecturer'),
(4, 'Senior Lecturer');

-- --------------------------------------------------------

--
-- Table structure for table `user_company_users`
--

CREATE TABLE IF NOT EXISTS `user_company_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_company_users`
--

INSERT INTO `user_company_users` (`id`, `login_id`, `company_id`) VALUES
(1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE IF NOT EXISTS `user_logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_type` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `telephone_number` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type` (`object_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`id`, `object_type`, `username`, `password`, `first_name`, `last_name`, `email_address`, `telephone_number`) VALUES
(1, 3, 'admin', '123', 'Admin', 'User', 'aftha.jaldin88@gmail.com', '+94-774-422980'),
(2, 2, 'anuradhi.weerasinghe', '123', 'Anuradhi', 'Weerasinghe', 'au.maheshya@ieee.org', '+94-712-773570'),
(3, 2, 'aruni.bandara', '123', 'Aruni', 'Bandara', 'akbandara21@gmail.com', '+94-714-716869'),
(4, 2, 'aftha.jaldin', '123', 'Aftha', 'Jaldin', 'aftha.jaldin88@gmail.com', '+94-774-422980'),
(5, 2, 'banu.liyanapathirana', '123', 'Banu', 'Liyanapathirana', 'manupriyabanu@gmail.com', '+94-718-196237'),
(6, 2, 'buddhi.de.silva', '123', 'Buddhi', 'De Silva', 'gbidsilva@gmail.com', '+94-775-033983'),
(7, 2, 'chamali.waduge', '123', 'Chamali', 'Waduge', 'chamalikw@gmail.com', '+94-774-653771'),
(8, 2, 'chandima.fernando', '123', 'Chandima', 'Fernando', 'chandimafdo@gmail.com', '+94-779-206531'),
(9, 2, 'chathumi.perera', '123', 'Chathumi', 'Perera', 'chathumi001@gmail.com', '+94-717-871403'),
(10, 2, 'chathurika.lakmali', '123', 'Chathurika', 'Lakmali', 'kgclakmali@gmail.com', '+94-716-444262'),
(11, 2, 'dawpadee.kiriella', '123', 'Dawpadee', 'Kiriella', 'kiriella.dawpadee@gmail.com', '+94-714-411801'),
(12, 2, 'dayan.kulatunga', '123', 'Dayan', 'Kulatunga', 'dayankulatunga@gmail.com', '+94-716-522068'),
(13, 2, 'dilini.madushika', '123', 'Dilini', 'Madushika', 'dilinimadushika89@gmail.com', '+94-718-583872'),
(14, 2, 'dilini.muthumala', '123', 'Dilini', 'Muthumala', 'diliniasanga@gmail.com', '+94-713-400029'),
(15, 2, 'dinuni.fernando', '123', 'Dinuni', 'Fernando', 'dinuni.fernando@gmail.com', '+94-714-293337'),
(16, 2, 'hashan.silva', '123', 'Hashan', 'Silva', 'hashan.silva@gmail.com', '+94-770-668792'),
(17, 2, 'ifancy.ariaratnam', '123', 'Ifancy', 'Ariaratnam', 'avifancy@gmail.com', '+94-773-987071'),
(18, 2, 'janitha.karunawallabha', '123', 'Janitha', 'Karunawallabha', 'janitharasanga@gmail.com', '+94-774-521340'),
(19, 2, 'jinadi.dahanayaka', '123', 'Jinadi', 'Dahanayaka', 'jinadikd@gmail.com', '+94-716-496139'),
(20, 2, 'lakkhana.mallikarachchi', '123', 'Lakkhana', 'Mallikarachchi', 'tlmallik@gmail.com', '+94-715-956225'),
(21, 2, 'madhawa.bandara', '123', 'Madhawa', 'Bandara', 'madhawa.mb@gmail.com', '+94-777-487726'),
(22, 2, 'madhawa.gunasekara', '123', 'Madhawa', 'Gunasekara', 'madhawaudayakantha@gmail.com', '+94-717-134341'),
(23, 2, 'madhujith.kariyapperuma', '123', 'Madhujith', 'Kariyapperuma', 'madhujithac@gmail.com', '+94-713-435053'),
(24, 2, 'madusanka.balasooriya', '123', 'Madusanka', 'Balasooriya', 'madusankabalasooriya@gmail.com', '+94-778-686750'),
(25, 2, 'malinga.alwis', '123', 'Malinga', 'Alwis', 'randika.malinga@gmail.com', '+94-774-192561'),
(26, 2, 'mihan.liyanage', '123', 'Mihan', 'Liyanage', 'mihan070@gmail.com', '+94-712-770783'),
(27, 2, 'milani.athapattu', '123', 'Milani', 'Athapattu', 'mileee1000@gmail.com', '+94-716-034982'),
(28, 2, 'naduni.gunathilake', '123', 'Naduni', 'Gunathilake', 'gnaduni@gmail.com', '+94-715-150624'),
(29, 2, 'nayomi.wickramasekara', '123', 'Nayomi', 'Wickramasekara', 'nayomi122@gmail.com', '+94-771-223929'),
(30, 2, 'nelka.perera', '123', 'Nelka', 'Perera', 'inoshinidtn@gmail.com', '+94-713-978315'),
(31, 2, 'niluka.thilakarathna', '123', 'Niluka', 'Thilakarathna', 'nilu.nmt@gmail.com', '+94-774-522734'),
(32, 2, 'nipun.de.silva', '123', 'Nipun', 'De Silva', 'nipundesilva@live.com', '+94-779-508223'),
(33, 2, 'nisansala.liyanage', '123', 'Nisansala', 'Liyanage', 'liyanagenn@gmail.com', '+94-718-246127'),
(34, 2, 'nuwan.chathuranga', '123', 'Nuwan', 'Chathuranga', 'nuwanchathuranga.t@gmail.com', '+94-788-541107'),
(35, 2, 'pabitha.teldeniya', '123', 'Pabitha', 'Teldeniya', 'wpabitha@gmail.com', '+94-718-886949'),
(36, 2, 'pankajan.chanthirasegaran', '123', 'Pankajan', 'Chanthirasegaran', 'cpankajan@gmail.com', '+94-712-926347'),
(37, 2, 'pasan.de.silva', '123', 'Pasan', 'De Silva', 'epmdesilva@gmail.com', '+94-777-302716'),
(38, 2, 'pubudu.sandaruwani', '123', 'Pubudu', 'Sandaruwani', 'psandaru@gmail.com', '+94-770-658208'),
(39, 2, 'ruwan.wickramarachchi', '123', 'Ruwan', 'Wickramarachchi', 'rtwickramarachchi@gmail.com', '+94-777-487727'),
(40, 2, 'sachith.senevirathna', '123', 'Sachith', 'Senevirathna', 'sachithsenevirathna@yahoo.com', '+94-714-156910'),
(41, 2, 'sahan.udana', '123', 'Sahan', 'Udana', 'sahanudana1@gmail.com', '+94-717-126648'),
(42, 2, 'sandunika.wijerathne', '123', 'Sandunika', 'Wijerathne', 'swijerathne35@gmail.com', '+94-718-292746'),
(43, 2, 'sanjaya.amarasinghe', '123', 'Sanjaya', 'Amarasinghe', 'mailme@sanjaya.me', '+94-719-417343'),
(44, 2, 'sashika.rangoda', '123', 'Sashika', 'Rangoda', 'sashikarangoda1@gmail.com', '+94-712-536946'),
(45, 2, 'sashika.wijesinghe', '123', 'Sashika', 'Wijesinghe', 'sashimw@gmail.com', '+94-774-537487'),
(46, 2, 'shyama.chandani', '123', 'Shyama', 'Chandani', 'shyama3000@gmail.com', '+94-779-661473'),
(47, 2, 'sumeda.viduranga', '123', 'Sumedha', 'Viduranga', 'hbsumeda@gmail.com', '+94-725-505347'),
(48, 2, 'suranga.gunawardhana', '123', 'Suranga', 'Gunawardhana', 'suranga.dwg@gmail.com', '+94-776-431135'),
(49, 2, 'tharindu.gunasekara', '123', 'Tharindu', 'Gunasekara', 'jgtharindu@gmail.com', '+94-714-771759'),
(50, 2, 'thilini.wijesiriwardene', '123', 'Thilini', 'Wijesiriwardene', 'amthiliniiw@gmail.com', '+94-777-487728'),
(51, 2, 'vajisha.wanniarachchi', '123', 'Vajisha', 'Wanniarachchi', 'vajishaw@gmail.com', '+94-772-346202'),
(52, 2, 'vinod.kavinda', '123', 'Vinod', 'Kavinda', 'vinok88@gmail.com', '+94-783-495877'),
(53, 2, 'yasasri.sampath', '123', 'Yasasri', 'Sampath', 'yasaucsc@gmail.com', '+94-783-495859');

-- --------------------------------------------------------

--
-- Table structure for table `user_students`
--

CREATE TABLE IF NOT EXISTS `user_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) NOT NULL,
  `degree_program_id` int(11) NOT NULL,
  `executive_summary` text NOT NULL,
  `research_project_title` text NOT NULL,
  `research_project_desc` text NOT NULL,
  `cv_file_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `degree_program_id` (`degree_program_id`),
  KEY `login_id` (`login_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `user_students`
--

INSERT INTO `user_students` (`id`, `login_id`, `degree_program_id`, `executive_summary`, `research_project_title`, `research_project_desc`, `cv_file_name`) VALUES
(2, 2, 1, 'Highly motivated researcher who is a self-starter and capable of effectively functioning with minimum supervision.Able to negotiate and problem solve quickly, accurately, and efficiently. Adept at multitasking to achieve individual and team goals. Reliable, hard \r\nworking, and dedicated team player who works well under pressure. Fast learner and capable of transferring knowledge to others. Ability to grasp new technologies and methodologies as required.\r\n', 'Modeling and Simulation of Wind-driven Ocean Waves for a Naval Tactical Training System.\r\n', 'The main purpose my research is to simulate the geometrical changing process of ocean waves according to the variations of wind conditions, by designing a new mathematical model using computational fluid dynamics and ocean wave spectrum (hybrid model). It also provides physically meaningful interaction information sufficiently rapid to be integrated into a naval training simulator by managing the underlying physics of natural phenomena by using user experiences/perception as an input to the wave model.', ''),
(3, 3, 1, 'My objective is to become a highly skilled professional in the field of computer programming and vision with the practical usage of computer science knowledge reinforced with my skills and contribute to the team, employed institute and the betterment of mankind.', 'Seamless Real Time 3D Image Stitching Using Scale Invariant Features.', 'Applying mask considering identified SIFT features to the frames of 3D videos in order to get a seamless view after projecting the video streams using a 3D ready projector. Trying out the solution for real time videos too and use in simulations to create panoramas using multiple projectors with further improvements.\r\n\r\nTechnologies used: Directx 9.0, Visual Studio IDE, C++, Matlab', ''),
(4, 4, 2, 'I am an ICT undergraduate with experience in web design & development, customer service and radio broadcasting. I am a highly-motivated, goal-oriented individual able to work in a team environment to accomplish targets and business objectives.  My analytical skills are my forte. I excel at communicating and getting the job done, whatever it may be. When presented with a problem, I believe that understanding it is of the utmost importance.  I learn fast, adapt efficiently and plan to succeed. A team player at heart, my attitude is always my strong suit and I strive to catalyse my colleagues in the workplace.', 'A Decision Support System for the management of Transportation Information for Public Transport in Developing Countries', 'Public Transportation Management in developing countries presents a more challenging environment than its counterpart in developed nations. And, as in any Public Transport System, the Scheduling Process provides the framework in which the Transport Service operates. It is responsible for the formulation of timetables, vehicle and crew scheduling, and crew rostering. Although this is the most important part of the transport system, it is the most difficult to manage. The varied inputs to the process, the lack of proper infrastructure and improper technology and processes available all lead to a unique problem in terms of Public Transportation Management in a developing country. Therefore it is imperative for a system to cater to these limitations and meet the demands of a developing country specifically. My research prototype proposes an alternative system to aid the Schedulers in their capacity to formulate timetables and schedule vehicles and crew. The system will also act as an information portal to commuters to obtain information about transport modes and associated routes as well as other related information. The project uses the case of the Western Province Bus Transportation System in Sri Lanka as an example to draw conclusions regarding the proposed information system.', ''),
(5, 5, 1, 'Maximize my capabilities on Software engineering, using modern technologies and contribute to create innovations with successful methodologies.\r\n', 'Text to Sign Language Interpreter for Sinhala Language (TSLI)', 'This is my 4th  year individual research project. The main objective of this research is to fill the gap between deaf and non-deaf people using TSLI. TSLI System will convert Sinhala text into Sinhala sign language by analyzing the morphological features of a given text. Identified word components are mapped with corresponding signs and concatenated to get the final output. TSLI supports Sinhala Unicode and if there no sign is available, system will be automatically finger-spelled.', ''),
(6, 6, 2, 'I worked at Virtusa for 8 months as a trainee software engineer (intern) and currently I am a final (4th) year student at UCSC. I am specialized in enterprise application development with technologies such as EJB (Enterprise Java Beans) and JPA (Java Persistence API). I am a Sun certified Java Programmer and have already followed courses for Oracle certified Web Component Developer and Oracle certified Business Component Developer exams at ICBT.', 'Project Pheonix - ICT Enabled Solution for Dynamic Resource Scheduling in Forest Fire Situations.\r\n', 'This project is mainly focused on improving the performance of resource scheduling during forest fire situations in Sri Lanka by managing and mapping available resources dynamically for requests (which will be generated from risk entities) in any given time and thereby reduce the damage which will happen to the environment.\r\n', ''),
(7, 7, 2, 'Enthusiastic character to explore and to widen the knowledge in ICT, and willing to acquire a challenging position, with an opportunity to progress and provide leadership in a demanding and challenging work environment. Thorough subject knowledge together with the practical experience I am ready to take any\r\nchallenge in this dynamic field of ICT.', '‘Hasarel’ - ICT Based Solution to Improve Social Skills of Autistic Children', 'Autism is a complex developmental disorder distinguished by difficulties with social interaction, verbal and nonverbal communication, and behavioral problems, including repetitive behaviors and narrow focus of interest. There are significant number of Autistic children in Sri Lanka. Our research is to identify features of Autistic children and to provide them an ICT based solution to overcome the disease. \r\nHere we are concerning providing them a game based environment in an interactive manner to learn behavioral skills with social scenarios.', ''),
(8, 8, 1, 'About Me : \r\nAbility to visualize a given problem.\r\nThink hard on a problem until a suitable solution is arrived.\r\nGood understanding on computer science concepts.\r\nDespite failures, ability to try out different methods in order to arrive at the optimal.\r\nFast learner , Team worker.\r\n\r\nObjectives :\r\nGather deeper knowledge on computer science theory.\r\nAchieve career success on computer science research.\r\nBe a Computer Scientist and work for a top research position in a world class company.', 'Topic Model Approach to Lyrics Based Song Classification\r\n', 'Topic Model is a statistical model for identifying latent topics in a\r\nlarge document collection.\r\nThe latest development is Latent Dirichlet Allocation(LDA).\r\nThe research will use LDA model to uncover the latent topics in song lyrics and ultimately will classify them according to a set of moods.', ''),
(9, 9, 1, 'I may introduce myself as an innovative and hard working character. I am good at analysing things, learning, and providing innovative ideas. I am willing to achieve an opportunity which can enhance my challenging skills and provide a gateway for my career development in the field of Information Technology and Management while utilizing my skills to help such a reputed organization to achieve the best solution in business world.', 'Privacy Enhanced Data Sharing Model for Smart Phones in a Distributed environment.', 'This project proposes the smart phones to co-operate and share sensor data to form a distributed database.\r\nThis research will address the issues in peer-to-peer systems such as;\r\n• How smart phones can share sensed data with each other without incurring a high cost? In here the available methods for smart phone communication will be analyzed to identify the best solution.\r\n• The other issue is the accessibility what? What sensed data can be accessed by the requester. The receiver can be able to avoid the full or partial request if he is not willing to send them to the requester. More over the time for replying for the sensor query can also be controlled by the mobile owner.\r\n•This user can share his sensed data with only the requested party and access can be controlled for the users in the network according to the willingness of the user.\r\n• Finally their should be a proper authentication mechanism to identify the authenticated people in the network to share the sensed data.', ''),
(10, 10, 2, 'Interested in achieving a suitable placement in an organization in order to utilize and improve my skills, knowledge and experiences.', 'Use of Information and Communication Technology (ICT) in preventing suicide ideation.', 'Suicide is a major problem not only in Sri Lanka, but also in the world. Suicide ideation is the first identified stage in the suicide process. Also there is a higher chance of eliminating suicidal risk at this stage. We research on current status of suicides in Sri Lanka, suicide process, where and how ICT can help.', ''),
(11, 11, 2, 'To be a better IT professional and successful innovator contributing to achieve organizational goals and objectives while improving my knowledge.', 'Swaraloka', 'Adaptive Music Score Trainer for Visually Impaired in Sri Lanka', ''),
(12, 12, 2, 'To take a challenging role of a reputed organization to achieve its objectives by utilizing the maximum of myskills and competencies while expanding my knowledge and career achievements.', 'Non Invasive Human Stress Detection Using Key Stroke Dynamics and Key Stroke Pattern Variations', 'Currently we are working on this research to identify whether human stress can be detected through keystroke dynamics and keystroke pattern variations. As a solution we propose a personalized approach in detecting each individual''s level of stress by creating individual key stroke pattern profiles.', ''),
(13, 13, 1, 'An enthusiastic self-starter with strong leadership and communication skills. Proven academic and curricular achievements, and possess the right technical and soft skills required to propel the organization achieving its goals and objectives.', 'Inertial Sensor based Indoor Navigation System', 'The aim of the research is to investigate possible ways of accurately model and identify a human position in an indoor environment. Position tracking is done using phone inertial sensors (accelerometer, gyroscope and magnetometer) and is based on the pedestrian dead reckoning approach where the displacement of the user from an initial position is considered in updating the user position. As the output, the path that the user went is displayed on a map. Data collection is done using Java (Android platform) and signal processing is done in Matlab.', ''),
(14, 14, 1, 'Being highly passionate on Computer Science, I look forward for a challenging Software Engineer position, in a team, that will not only allow me to contribute my knowledge and skills, but also drive me to\r\nseek for new knowledge.', 'Optimizing Concurrent Queries in Wireless Sensor Networks', 'In a shared Wireless Sensor Network (WSN) users may pose concurrent queries to the network. However, unlike in traditional database context, concurrency seems to be advantageous in WSN\r\ncontext.\r\n\r\nOn the other hand, query optimization is vital in WSNs, due to the energy-constrained nature of those. Thus, the objective of this research is to reduce energy consumption of WSNs, through query optimization, by taking concurrency as an advantage.', ''),
(15, 15, 1, 'An enthusiastic, adaptive and fast-learning person with a broad and acute interest in the discovery of new innovative possibilities of research and out of box thinker, I particularly enjoy collaborating with researches from different disciplines to develop new skills and solve new challenges and a good team player.', 'Mathematical model for real-time radar in 3D maritime environment\r\n', 'This is a  mathematical model for radar simulation in 3D maritime environment with dynamic perceptions of the 3D environment. Proposed approach takes the 3D environment as the input and maps the objects via studying electromagnetic wave properties. It captures the surrounding and gives the 2D visualization of the 3D environment as the end result. In the dynamic environment perception radar hosted vessel is considered to be static while other vessels in the environment are considered to be moving. This approach uses efficient techniques to achieve a 2D visualization of the 3D environment by embedding optical phenomena namely reflection, refraction, polarization , attenuation and Doppler frequency shift in wave propagation.\r\n', ''),
(16, 16, 1, 'My objective is to work with an Organization which has the ability to utilize my talents and experience to its fullest, and has the capacity to help me grow, both professionally & personally, to the maximum\r\n', 'Automated Constructing an e-Profile from Web Contents for Academia\r\n', 'Constructing an profile from extracted web content for the persons in academia\r\n', ''),
(17, 17, 1, 'Fresh undergraduate with outstanding academic credentials\r\nGood team player and extremely fast learner\r\nSeek new challenges to further enhance my knowledge, technical skills and soft skills \r\nMore passionate towards the area of Artificial Intelligence \r\nAbility to meet deadlines while maintaining a high standard of work', 'Towards A Shallow Parser for Tamil (Partial Parsing: POS Tagging, Chunking, Dependency Parsing)', 'To provide some machine understanding of the syntactic structure of the natural language sentence without generating a complete parse tree. It is useful in Information extraction, Speech synthesis, and Machine translation.\r\nUsed Languages and Tools - Java, Maximum Entropy framework, Natural Language Toolkit', ''),
(18, 18, 2, 'An Information and Communication Technology (ICT) undergraduate who is keen to find a position as a Business Analyst, Quality Assurance Engineer or Project Manager. Reliable, trustworthy, creative and meticulous. Worked for a private software company last year and gained a good understanding of what is required of an IT professional. Able to work on own initiative or as part of a team and can deal with administrative duties competently.\r\n', 'A Novel Approach to Optimize Crime Investigation Process Using Palmprint Recognition', 'Partial-to-full palmprint matching has attracted the attention of experts in print identification and researchers in palmprint matching. An efficient partial palmprint identification approach can increase the efficiency of the criminal investigation process in Sri Lanka as well as in other countries. \r\nAs the final year research project I and two other colleagues investigate the existing researches done so far in order to achieve the challenges and limitations in palmprint matching and suggest an efficient approach for partial palmprint identification. This research also proposes a novel partial palmprint segmentation and classification methodology after undertaking proper partial palmprint data analysis.', ''),
(19, 19, 1, 'A learning enthusiastic person who is willing to work in a challenging environment to research and develop, using the skills and knowledge for the betterment of the organization and the rest of the mankind.\r\n', 'Named Entity Recognition for Sinhala Language\r\n', 'When considering many of the Natural Language Processing(NLP) related areas, the recognition of Named Entities was discussed as one of the most common and important subtask. The goal of my research is to find out an improved solution for Named Entity Recognition for Sinhala using various data driven techniques and do evaluation among those techniques. It will be the initial stone for most of the NLP related tasks for Sinhala Language. \r\nData driven techniques using: Maximum Entropy, Conditional Random Fields, SVM, HMM', ''),
(20, 20, 1, 'I am willing to solve challenging problems which will be beneficial to society using my knowledge in computer science while further improving my knowledge and skills.\r\n', 'Image reconstruction to identify license plate numbers in low resolution videos\r\n', 'Focused on finding a statistical model to improve the video frames of surveillance camera videos in order to visually identify license plate numbers. The targeted number plates are very small (10x20px) where the numbers are not identifiable visually.\r\n', ''),
(21, 21, 1, 'My passion for Computer Science and long term experience in sports have given me the ability to push my capabilities beyond limits to solve problems and achieve targets in challenging environments as a self-motivated individual as well as a team player.\r\nI Intend to apply my experience, knowledge and skills in Scientific Research, Computer Science and Software Engineering to achieve organizational goals of the company I work for.', 'Investigation of Mixed Mode Programming on GPU Clusters for Matrix-Matrix Multiplication', 'Research objective is to investigate which mixed programming modes (e.g. MPI+CUDA, UPC+CUDA...etc)  give better results on a GPU cluster. Matrix multiplication is used as a case study.\r\n', ''),
(22, 22, 1, 'Joining a progressive firm, this will make use of my talents and experience as a Software Engineer. I believe that my technical, functional and communication skills will enable me in facing the challenging career ahead.\r\n', 'Investigating the Relationship Between Facial Images in Different Poses\r\n', 'The aim of this image processing research project is to develop a face recognition system in order to build a relationship between 2D face images of the same person with different poses. The ways in which a person''s facial feature points change according to his or her pose is considered in this investigation. \r\n\r\nTechnologies: Matlab/ openCV', ''),
(23, 23, 1, 'I''m Currently an undergraduate in University of Colombo School of Computing and I enjoy working in an esteemed organization where acquired education and skills will be utilized towards continuous growth and advancement.\r\n', 'Automated Drinking Action Recognition in videos. (Computer Vision)\r\n', 'Many of the human actions are combined with objects in semantic ways. To recognize such actions it is important to detect action, detect objects and identify the relationship with the object and the action. This research project explores how to identify the relationship between cylindrical object and human action to detect "drinking" action accurately.\r\n', ''),
(24, 24, 1, 'To become an asset to a software development company and work in a competitive environment where my knowledge and technical skills will be in greater use and thereby achieve company goals.\r\n', 'An Empirical Study of The Behaviour of Web Services on Enterprise Service Bus\r\n', 'There are two choices when connecting to an Enterprise Service Bus (ESB) with web services, which are SOAP and RESTful web services. The features of an ESB can be different for these web services in terms of CPU usage, memory usage, mean response time and throughput. In this research, the core features of an ESB are empirically studied and statistically analyzed with respect to web services.\r\n', ''),
(25, 25, 1, 'I intend to obtain a dynamic IT professional position allowing me to apply the IT skills and experience I have gained to a maximum extent. I have a passion for working with new technologies and applying my full potential to any work I undertake.\r\n', 'A Middleware for Energy Effective Hybrid Execution in Mobile Cloud Computing.\r\n', 'Investigated a methodology for mobile platforms to perform processing tasks energy effectively in hybrid manner by using shared amounts of mobile and cloud resources.\r\n', ''),
(26, 26, 1, 'Dedicate my IT competence to a software engineering position that demands proficiency in modern development technologies and thorough understanding of design concepts.\r\n', 'Transactions on Shared Peer to Peer Dataspace\r\n', 'Model introduces middleware platform which enables the transactional operations in the shared p2p dataspace. Tuples are stored (located) in the local storage of the each node. Although tuples are in various places, peer to peer communication model helps to create abstract, virtual centralized storage to perform computation. To perform transaction tuple location has to be identified and that is done by using bloom filters. Transactions are implemented with basic transactional properties.\r\n', ''),
(27, 27, 1, 'Proficient in prioritizing and completing tasks in a timely manner, yet flexible to multitask when necessary. Enjoys learning new programs and technical stuffs. A team player who is attentive to detail and able to work in a fast paced environment. Self learner and capable of applied knowledge in practically any situation.\r\n', 'Automated Process of Identifying Tuberculosis in Ziehl Neelsen Stain\r\n', 'Develop an automated digital image analysis system for identification of the Mycobacterium Tuberculosis bacteria in a given smear after Ziehl–Neelsen stain by using direct light microscopy. Computer Vision technology based method is used in this research project.\r\n', ''),
(28, 28, 1, 'Software engineer with a proven record of team work, system design, and development, with object-oriented software development using C++ and Java. Passionate about agile software development practices and willing to apply my full potential to work through the effective use of knowledge, information, and communication with the inclination to learn new technologies.\r\n', 'Autonomous Surrounding Ship Navigation In Virtual Maritime Environments\r\n', 'Intelligent navigation of surrounding vessels other than the trainee’s ship in a virtual maritme environment enriches the realism of marine simulations. By automating the navigation with sufficient intelligence, it is possible to create an effective environment for the training with less instructor involvement. \r\nThe autonomous navigation can be augmented by applying real AIS data gathered from real ships in real sea environment and a suitable collision avoidance mechanism need to be integrated with the system to obtain the intelligence.', ''),
(29, 29, 1, 'A self-motivated and a committed character with excellent interpersonal skills which will enable to get along with work colleagues and the leadership skills, possessing excellent job knowledge through academic and professional qualifications with communication skills and having the ability to communicate project matters effectively, is currently seeking for career advancement as an Software Engineer.\r\n', 'Mitigation of Breast Cancer Deaths using Data Mining Techniques : In Sri Lankan Context', 'In mitigation of breast cancer deaths, in order to aid clinicians, recent research has looked into the development of computer aided tools. Currently there are available data mining solutions for mitigation of breast cancer deaths which have observed a highly acceptable accuracy for the analysis of various applied classification techniques on breast cancer data. Since Sri Lankan breast cancer data get differs from other countries especially from United States, the available solutions may not be suitable to be applied to Sri Lanka. Therefore the ultimate goal of this research is to come up with a breast cancer risk model that will be suitable to the Sri Lankan context.\r\n', ''),
(30, 30, 1, 'I have the ability to visualize business problems and offer well designed maintainable solutions with deep understanding of core computer science concepts. I am a fast learner and have the capability to grasp new technologies and methodologies as required. I would like to dedicate my IT competence to a software engineering position that demands proficiency in modern development technologies and thorough understanding of design concepts.\r\n', 'Dynamic Access Control Mechanism for Shared Wireless Sensor Networks\r\n', 'An access controlling mechanism for shared wireless sensor networks which enables only authorized users to obtain data from the network only in accessible time durations for those data. It is implemented in C on ‘TikiriDB’ using ‘Contiki’ development environment and “Cooja” simulator.\r\n', ''),
(31, 31, 1, 'I can introduce myself as a honest, self motivated and hardworking character with the ability to handle responsibilities, having a can-do attitude with the ability to learn fast, providing innovative ideas and build positive relationships with work colleagues at all levels. I am also willing to work and adapt into a competitive environment that would help to effectively utilize my analytical, leadership, interpersonal and organizational skills to conceive and achieve the best solution which would in turn help the organization to grow allowing me to enhance my skills as an individual and to act as a key player in the organization''s development.\r\n', 'A Hybrid Approach for Medical Decision Support and Critical Alerts of Chronic Patients.\r\n', 'A computer based approach which has capable of identifying and alerting potentially dangerous trends developing which would enable the physician to intervene early to prevent complications and supporting the clinician to make the most appropriate clinical decision in keeping with current best clinical evidence and guidelines. Implementation is based on AI technologies.\r\n', ''),
(32, 32, 1, 'My aspiration is to gain entry and start a challenging career as a Software Developer that will allow me to expand my knowledge in IT field and contribute from the best of my ability for the good of the organization. Also, I enjoy taking up challenges which require good judgment, analytical skills, management skills and team work.\r\n', 'UCSC Learning Cloud: Technical and Pedagogical Validation of Cloud based Architecture for a Virtual Learning Environment\r\n', 'In this project a cloud hosted Software system is evaluated in order to find whether it’s possible get advantages over in house traditional non virtualized environment and evaluate private cloud scalability by using open source virtualization and cloud computing technologies. Xen is used as virtualization technology and OpenNebula is used as cloud computing software. The software system hosted in private cloud is Moodle CMS. It will be measured number of users that Moodle instance can cater in a cloud hosted system over a non-virtualized system and observe the scalability of the system in the cloud with concern to network bottle neck. If there will be technical benefits by using cloud based learning environment several eLearning applications will be implemented and pedagogical validation will be conducted.\r\n', ''),
(33, 33, 1, 'I may introduce myself as a person who is self-motivated individual and really passionate about Computer Science. I am mainly interested in web development and android development and have a great desire towards augmented reality. While exposing myself to new technologies and learning new theories and concepts in Computer Science, I like to use my potential to the fullest to serve the company I am working. I have always enjoyed working as a team and look forward to have a great working experience.\r\n', 'Tactile Routing Cues for Blind Outdoor Navigation\r\n', 'Focused on investigating the feasibility of using tactile cues to assist visually impaired individuals to navigate to a required destination in outdoor environments while giving obstacle avoidance capability along the moving path. An Android application is used to track the user''s current position, orientation and rotation. Google Maps and inertial sensors of the mobile device are used in this purpose.  Vibro-tactile feedback controlled through Arduino micro-controller is used to guide the blind user ahead and to inform the user about the obstacles.\r\n', ''),
(34, 34, 1, 'I enjoy working in software firm, highly motivating position where I can assist others while challenging and expanding my knowledge and understanding of the task at hand. I am seeking a position that will utilize my skills and offer the chance for advancement as well as allow me the opportunity to gain additional skills and experience.\r\nI have three university project experience with 4th year research project, two project experience at eBeyonds Pvt Ltd and one Free Lancer Project.\r\n', 'Secure Routing for Mobile Ad Hoc Networks\r\n', 'Mobile Ad hoc Network (MANET) is a kind of wireless network which is formed by mobile nodes communicating with each other through wireless link without having fixed infrastructure. Each device in MANET is free to move independently in any direction and change its links to other devices frequency. Securing wireless ad hoc networks is a highly challenging issue. Understanding possible form of attacks is always the first step towards developing good security solutions. Security of communication in MANET is important for secure transmission of information. Absence of any central co-ordination mechanism and shared wireless medium makes MANET more vulnerable to digital/cyber-attacks than wired network there are a number of attacks that affect MANET. The main goal of this research project is to identify the malicious nodes in a MANET and provide a secure routing mechanism for the network to prevent routing attacks.\r\n', ''),
(35, 35, 1, 'Work passionately and efficiently with new technologies and new working environments as a team player providing the best within me while encouraging others as well and also to give commitment to the work that I am assigned while making it my priority.\r\n', 'Towards language independent semi-automated tool for software refactoring\r\n', 'Main objective of this project is to optimize the quality of source code to increase the maintainability of software independent of the implemented language and evaluate the impact of software refactoring on development life cycle. We are on the process of developing an extension for eclipse IDE using eclipse PDE, java, XML to automate the process of software refactoring.\r\n', ''),
(36, 36, 1, 'Self-motivated graduate to learn new technologies and solve novel problems. Quick learner and a good team player with the intention of sharing knowledge. Exposure in the industry and research disciplines with high degree of knowledge in various technologies. First class degree in Computer Science with mathematical background. Developed award winning applications and published research paper.\r\n', 'Towards a probability model for source code\r\n', 'Apply Document Modeling techniques from Natural Language Processing to source code to create data driven model that captures the quality of the source code.\r\n', ''),
(37, 37, 2, 'I am a disciplined and highly-motivated fresh graduate from UCSC with a special degree in B.Sc. ICT, who is looking forward to complete his CIMA qualification this November. A fluent communicator with strong investigation, problem-solving and decision-making skills, combined with a pragmatic approach and sound business acumen that is passionately waiting to pursue a business analysis oriented career.\r\n', 'Non Invasive Human Stress Detection Using Keystroke Dynamics and Pattern Variations\r\n', 'Recent developments in keystroke dynamics based affective computing and biometrics research proves that keystroke variations is a very powerful source of input that provides a valuable insight about an individual''s psychological and emotional states.\r\n\r\nOur research suggests a personalized approach in detecting stress levels through keystroke variations. An application specific, individual keystroke pattern profile is created for an individual based on his normal typing patterns. This profile consists of trained average values for a set of typing features. Real time stress specific deviations of these features are analyzed and classification techniques are applied to arrive at the individual stress level.\r\n\r\nOur Research paper “Non Invasive Human Stress Detection Using Keystroke Dynamics and Pattern Variations” was accepted as a full paper in the conference “ICTer 2013”', ''),
(38, 38, 2, 'I am an impassioned fresh undergraduate of UCSC who is willing to take up challenges in fast growing Information Technology (IT) and Management industries. I have strong analytical and technical skills; therefore I am looking forward for an opportunity to dedicate my knowledge and skills for the continuous success of this reputed organization while serving to the IT industry and community.\r\n', 'A Model based Approach to Simulate Excess Water of Reservoirs in Sri Lanka.\r\n', 'The research is focused on the risk of floods due to spilling of reservoirs in Sri Lanka through a model based approach where operators can get in advance information of the reservoir water level while raining to the catchment and water releasing optimization decisions. Through this research we expect to prove the concept of how ICT can effectively address this issue and to create a number of significant avenues to continue researches to build a perfect system.\r\n', ''),
(39, 39, 1, 'A self-motivated and goal-driven person with good analytical skills. I am a fast learner with good searching skills and ever ready to adapt to new technologies. I''m a hardworking and dedicated team player who can work well under pressure with minimal supervision. I am interested in computational biology, swarm intelligence, pattern recognition and search space optimization algorithms.\r\n', 'Species-Specific Primer Design for Unique Identification of Closely-Related Species.\r\n', 'Investigating on a computational method to uniquely identify closely-related biological organisms(e.g. sub types of viruses and tumors, species of a particular gene family).Here we are trying to provide a design of a possible tool to generate primers/probes for PCR based  experiments. We further try to use search space optimization algorithms based on the swarm intelligence such as Particle Swarm Optimization(PSO) to computationally validate PCR primers generated by a possible tool.\r\n', ''),
(40, 40, 2, 'Multi-faceted, efficient and reliable individual with more than 4 years of exposure in information technology with experience in all the phases of full SDLC lifecycle. Ability to work independently and organize workload with minimal direct supervision. Excellent communication, analytical, interpersonal, and presentation skills.\r\n', 'A Model based Approach to Simulate Excess Water of Reservoirs in Sri Lanka\r\n', 'This is an ongoing group research project consisting of three members. Our goal is to address the reservoir water overflow issue during heavy rain seasons, by building a mechanism to monitor water level in advance and identify optimum water release mechanisms. This conceptual model will be an effective communication mechanism for the users operating reservoirs, to take proper decisions in maintaining reservoir water levels and water releasing.\r\n', ''),
(41, 41, 1, 'To be make best contribution to the IT proficiency through creativity and knowledge in order to achieve company objectives.\r\n', 'Facial Expression Generation in 3D Space\r\n', 'Image Processing and Computer graphic research which exploring the capability of generating facial expressions to a given neutral 3D face mesh model.\r\n', ''),
(42, 42, 2, 'I am an undergraduate of UCSC who is reading for the Bachelor of Science Information and Communication Technology. I am eagerly looking forward for an opportunity to improve my knowledge through facing challenges and exploring new technologies to serve the community and information technology industry.\r\n', 'ICT Enabled Solution for Dynamic Resource Scheduling in Forest Fire Situations\r\n', 'Through this research we are exploring on possibilities of scheduling the resources dynamically at a forest fire situation which can also be generalized into other disaster situations as well. Therefore our objective is to develop an architecture which is consisted with three different modules for resource tracking, disaster spread estimation and dynamic resource allocation.\r\n', ''),
(43, 43, 1, 'A tech enthusiast whose objective is to be highly skilled in the software field while giving the best contribution to the team, the company and towards the betterment of the mankind.\r\n', 'Computer Vision Based Approach for Object Detection and Location Estimation in a Maritime Environment\r\n', 'In this research a computer vision based approach to detect surface objects in a maritime environment and estimate locations and extract physical features of the detected objects is explored. Here the location estimation is done using only the visual data taken from a video camera using a mathematics model.\r\n', ''),
(44, 44, 2, 'To be part of the organization to achieve its objectives by using the maximum of my skills and competencies while expanding my knowledge and achieving.\r\n', 'A Model Based Approach to Simulate Excess Water of Reservoirs in Sri Lanka\r\n', 'Main objective of this research is, mitigating the flood situations which is happen because of the inconsistent gate operations in reservoirs. This research is carried out finding an ICT based solution which can be addressed the above scenario.\r\n', ''),
(45, 45, 2, 'My objective is to work in a responsible and challenging position of an organization where I can utilize my skills, knowledge and personality for the betterment of the organization and thereby achieve self-satisfaction. \r\n\r\nEnterprise Resource Planning systems is one of my favorite area that I like to work.', 'Use of ICT in preventing suicidal ideation\r\n', 'The objective of this research is to provide an optimal method to prevent suicidal ideation by improving the emotional well-being and mental health of people by listening to their concerns and help in improving their internal strengths. This is the first effort to implement an online help forum in Sri Lanka.\r\n', ''),
(46, 46, 2, 'Bachelor of Science (ICT) graduate from University of Colombo School of Computing heading to be a Qualified Business Analyst with the objective to work as a business analyst in in an organization where I can maximize my quality of working and skills and to give my best effort and creativity to make my work to be value added and beneficial for the organization.\r\n', 'Swaraloka (Adaptive eastern music score trainer for visually impaired in Sri Lanka)\r\n', 'The research project is a study that tries to solve a problem in music industry, faced by visually impaired people in Sri Lanka. Further elaborating, to solve the problem they face in reading eastern music notation.  Through a literature survey and several questionnaires based surveys, audio format was identified as the most feasible and effective readable format to read music notations for visually impaired. The project presents a system to convert visual music notations (of Eastern music in Sri Lanka) into an audio output which gives visually impaired user the real feeling of reading the visual notation as it is, for the first time in Sri Lanka as well as in the world.\r\n', ''),
(47, 47, 1, 'Contributing to achieve organizational goals with maximum effort and flexibility using my knowledge, skills and competencies while achieving a career growth\r\n', 'A dynamic model for human face aging\r\n', 'Research Question: “How is Human Face Aging affected by the wrinkling in the forehead region?”\r\n\r\nAim: Design and implement a wrinkling model for human face aging by only \r\nconsidering wrinkling in the forehead region.\r\n\r\nExpected Contribution:  propose and evaluate an enhanced model for wrinkles \r\nbased on aging.', ''),
(48, 48, 2, 'My objective is to take a challenge and gain a good experience in any new field I work, while applying knowledge, skills and experiences which I have gained up to this stage, to contribute the achievement of goals of the organization which I work in\r\n', 'Non Invasive Human Stress Detection Using Key Stroke Dynamics & Key Stroke Variations\r\n', 'This is a group project conducted by three members. In this we consider about detecting human stress in a non invasive way with using interaction patterns of a computer user when he/she uses a computer keyboard. In this we use key logging techniques to gather keystroke data, macros for data analysis, classification networks. In addition to these things psychology is involved in this project as this is based on human stress. At the end of this research we hope to suggest a model which can be implemented as a software solution.\r\n', ''),
(49, 49, 1, 'Seeking a position to utilize my skills and abilities in the Information Technology Industry that offers professional growth while being resourceful, innovative and flexible to combine my theoretical knowledge, skills and practical experience in Computer Systems and Software Engineering with the organizational perspectives.\r\n', 'Collaborative Inference Detection\r\n', 'Database Inference detection when many users are accessing the database. The system considers on a specific schema. The system expects to detect inference based on a deductive approach where consider both deterministic and non-deterministic data.\r\n', ''),
(50, 50, 2, 'I am self motivated with good analytical and problem solving skills. I am focused, can work under minimum supervision and able to multitask when necessary. Human Computer Interaction, Data mining, System analysis and design and  Research methods are subject areas I am interested in.My interests and abilities are not limited to any specific technology but I am eager to learn new technologies.\r\n', 'A Novel Approach to Optimize Crime Investigation Process Using Palmprint Recognition\r\n', 'This project focuses on implementing a novel approach to palmprint matching through segmenting a human palm into pre-identified sectors. Real world data is being analyzed to identify the sectors and three matching algorithms will be evaluated against each other in order to identify the most efficient and effective algorithm.\r\n', ''),
(51, 51, 2, 'I am passionate, dedicated, hard worker who strive for perfection. I believe I have the ability to concentrate on any given task and work hard as an individual as well as a team to complete it on time. I am intend to establish as a System Consultant to use my skills, knowledge and experiences towards the great success of the organization which I am working for and in turn ensuring personal growth within the organization.\r\n', 'A Novel Approach to Optimize Crime Investigation Process Using Palmprint Recognition\r\n', 'Partial-to-full palmprint matching has attracted the attention of experts in print identification and researchers in palmprint matching. An efficient partial palmprint identification approach can increase the efficiency of the criminal investigation process in Sri Lanka as well as in other countries.\r\nAs the final year research project I and two other colleagues investigate the existing researches done so far in order to achieve the challenges and limitations in palmprint matching and suggest an efficient approach for partial palmprint identification. This research also proposes a novel partial palmprint segmentation and classification methodology after undertaking proper partial palmprint data analysis.', ''),
(52, 52, 1, 'A fresh graduate with sound education background, willing to accept challenges and work in variety of technologies. Resourceful team player and a leader with ability to deliver the best with research background. Strong understanding and practice of software development life-cycle and corporate environment with ability to generate effective solutions with good understanding of underlying technologies.\r\n', 'Ontology based Semantic enhancement of Web Services discovery\r\n', 'Since the number of Web Services available in  the web is growing rapidly, need for automatic service discovery methods is critical. \r\nHere I try to enhance the classical web services discovery method that uses UDDI by introducing a semantic layer using an ontology. Research areas included are Web Services, Semantic Web, Ontologies and Matchmaking.', ''),
(53, 53, 1, 'Seeking a career challenge in a challenging atmosphere where I will use my profound skills, knowledge and abilities to contribute towards the growth of the company I work, with and to attach value to myself professionally. Work as an excellent Team Player who will drive the team towards the intended goal by providing reliability and efficiency in whatever the workload that is given to me, while helping others in the team.\r\n', 'Obstacle Classification through Acoustic Echolocation\r\n', 'Main intention of this research is to investigate a methodology to detect and classify the obstacles in a navigational path of a visually impaired person using acoustic echolocation. A sensor and Microcontroller embedded wearable cloth is invented in the research to get the sensor readings and to classify obstacles according to patterns identified at different obstacle classes. After identifying the obstacle classes the system will feedback information via tactile feedback methodology implemented in the wearable cloth. \r\n\r\nTechnologies used -\r\nMicro Controller Programming, Sensor Networks, Data Fusion Techniques, Pattern Recognition, Windows Mobile development / Android App development, Arduino Programming', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `obj_photos`
--
ALTER TABLE `obj_photos`
  ADD CONSTRAINT `obj_photos_ibfk_1` FOREIGN KEY (`related_object_type`) REFERENCES `object_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `obj_students_companies`
--
ALTER TABLE `obj_students_companies`
  ADD CONSTRAINT `obj_students_companies_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `user_students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obj_students_companies_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `obj_companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `obj_students_edu_quals`
--
ALTER TABLE `obj_students_edu_quals`
  ADD CONSTRAINT `obj_students_edu_quals_ibfk_3` FOREIGN KEY (`school_id`) REFERENCES `obj_schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obj_students_edu_quals_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `user_students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obj_students_edu_quals_ibfk_2` FOREIGN KEY (`edu_qual_id`) REFERENCES `obj_edu_quals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `obj_students_papers`
--
ALTER TABLE `obj_students_papers`
  ADD CONSTRAINT `obj_students_papers_ibfk_2` FOREIGN KEY (`paper_id`) REFERENCES `obj_papers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obj_students_papers_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `user_logins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `obj_students_prof_quals`
--
ALTER TABLE `obj_students_prof_quals`
  ADD CONSTRAINT `obj_students_prof_quals_ibfk_3` FOREIGN KEY (`prof_institution_id`) REFERENCES `obj_prof_institutions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obj_students_prof_quals_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `user_students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obj_students_prof_quals_ibfk_2` FOREIGN KEY (`prof_qual_id`) REFERENCES `obj_prof_quals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `obj_students_schools`
--
ALTER TABLE `obj_students_schools`
  ADD CONSTRAINT `obj_students_schools_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `user_students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obj_students_schools_ibfk_2` FOREIGN KEY (`school_id`) REFERENCES `obj_schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `obj_students_skills`
--
ALTER TABLE `obj_students_skills`
  ADD CONSTRAINT `obj_students_skills_ibfk_2` FOREIGN KEY (`skill_id`) REFERENCES `obj_skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obj_students_skills_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `user_students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_company_users`
--
ALTER TABLE `user_company_users`
  ADD CONSTRAINT `user_company_users_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `obj_companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD CONSTRAINT `user_logins_ibfk_1` FOREIGN KEY (`object_type`) REFERENCES `object_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_students`
--
ALTER TABLE `user_students`
  ADD CONSTRAINT `user_students_ibfk_2` FOREIGN KEY (`degree_program_id`) REFERENCES `obj_degree_programs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_students_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `user_logins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
