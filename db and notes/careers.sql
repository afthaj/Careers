-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 18, 2013 at 10:20 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `obj_companies`
--

INSERT INTO `obj_companies` VALUES(1, 'Millennium IT', 1);
INSERT INTO `obj_companies` VALUES(2, 'Virtusa Corp.', 0);
INSERT INTO `obj_companies` VALUES(3, 'Cambio Healthcare Systems', 0);
INSERT INTO `obj_companies` VALUES(4, 'ThinkCube (Pvt) Ltd.', 0);
INSERT INTO `obj_companies` VALUES(5, 'SimCentric Technologies', 0);
INSERT INTO `obj_companies` VALUES(6, 'TNL Radio Networks (Pvt) Ltd.', 0);
INSERT INTO `obj_companies` VALUES(7, 'HSBC DPL (Pvt.) Ltd.', 0);
INSERT INTO `obj_companies` VALUES(8, 'British Council', 0);

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
-- Table structure for table `obj_edu_quals`
--

CREATE TABLE `obj_edu_quals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `obj_edu_quals`
--

INSERT INTO `obj_edu_quals` VALUES(1, 'G. C. E. Advanced Level');
INSERT INTO `obj_edu_quals` VALUES(2, 'G. C. E. Ordinary Level');
INSERT INTO `obj_edu_quals` VALUES(3, 'Grade 5 Scholarship Exam');

-- --------------------------------------------------------

--
-- Table structure for table `obj_months`
--

CREATE TABLE `obj_months` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `obj_months`
--

INSERT INTO `obj_months` VALUES(1, 'January');
INSERT INTO `obj_months` VALUES(2, 'February');
INSERT INTO `obj_months` VALUES(3, 'March');
INSERT INTO `obj_months` VALUES(4, 'April');
INSERT INTO `obj_months` VALUES(5, 'May');
INSERT INTO `obj_months` VALUES(6, 'June');
INSERT INTO `obj_months` VALUES(7, 'July');
INSERT INTO `obj_months` VALUES(8, 'August');
INSERT INTO `obj_months` VALUES(9, 'September');
INSERT INTO `obj_months` VALUES(10, 'October');
INSERT INTO `obj_months` VALUES(11, 'November');
INSERT INTO `obj_months` VALUES(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `obj_papers`
--

CREATE TABLE `obj_papers` (
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

INSERT INTO `obj_papers` VALUES(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 2012, 'Jaldin, A. Smith, J. Doe, J.', 'Integer non leo viverra, scelerisque ipsum sed, malesuada elit. Phasellus fringilla porttitor porta. Aenean adipiscing imperdiet porta. Aenean non elit id leo sodales placerat vitae et felis. Curabitur vel quam lectus. In bibendum molestie fringilla. Vivamus eget nulla in nibh ultricies blandit. Suspendisse tristique pulvinar placerat. Cras aliquet tempor urna id viverra. Ut nisi orci, bibendum nec quam sed, elementum commodo augue.', '');
INSERT INTO `obj_papers` VALUES(2, 'Integer non leo viverra, scelerisque ipsum sed, malesuada elit.', 2013, 'Amarasinghe, S. Jaldin, A. Perera A.', 'In porta posuere lobortis. Nullam in dolor eros. Curabitur tortor enim, varius ut vehicula ac, ultricies vel quam. Suspendisse potenti. Ut felis odio, tempus in vestibulum non, hendrerit non arcu. In hac habitasse platea dictumst. Praesent adipiscing interdum libero, nec commodo sapien mollis vel. Praesent auctor leo nec iaculis volutpat. Aenean porta nisl vel enim viverra interdum. Aliquam diam leo, rhoncus in molestie aliquet, scelerisque eget lorem. Praesent suscipit tortor quis enim cursus mattis. Ut porta vel lorem sit amet scelerisque. Sed accumsan ut turpis id luctus.', '');

-- --------------------------------------------------------

--
-- Table structure for table `obj_photos`
--

CREATE TABLE `obj_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `related_object_type` int(11) NOT NULL,
  `related_object_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL,
  `size` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `related_object_type` (`related_object_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `obj_photos`
--

INSERT INTO `obj_photos` VALUES(1, 2, 4, '4_Aftha.jpg', 'image/jpeg', '18432');
INSERT INTO `obj_photos` VALUES(2, 2, 5, '5_Sanjaya.jpg', 'image/jpeg', '19456');
INSERT INTO `obj_photos` VALUES(3, 2, 6, '6_Akila.jpg', 'image/jpeg', '12288');
INSERT INTO `obj_photos` VALUES(4, 2, 7, '7_Pabitha.jpg', 'image/jpeg', '28672');
INSERT INTO `obj_photos` VALUES(5, 2, 10, '10_Buddhi.jpg', 'image/jpeg', '18432');
INSERT INTO `obj_photos` VALUES(6, 2, 14, '14_Sachith.jpg', 'image/jpeg', '21504');

-- --------------------------------------------------------

--
-- Table structure for table `obj_prof_institutions`
--

CREATE TABLE `obj_prof_institutions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prof_institution_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `obj_prof_institutions`
--

INSERT INTO `obj_prof_institutions` VALUES(1, 'Oracle Inc.', 'USA');
INSERT INTO `obj_prof_institutions` VALUES(2, 'Chartered Institute of Management Accountants', 'UK');
INSERT INTO `obj_prof_institutions` VALUES(3, 'Chartered Accountants of Sri Lanka', 'Colombo');
INSERT INTO `obj_prof_institutions` VALUES(4, 'British Computer Society', 'UK');
INSERT INTO `obj_prof_institutions` VALUES(5, 'Cisco Corp.', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `obj_prof_quals`
--

CREATE TABLE `obj_prof_quals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `obj_prof_quals`
--

INSERT INTO `obj_prof_quals` VALUES(1, 'CIMA');
INSERT INTO `obj_prof_quals` VALUES(2, 'ACCA');
INSERT INTO `obj_prof_quals` VALUES(3, 'BCS');
INSERT INTO `obj_prof_quals` VALUES(4, 'Oracle-Certified Java Programmer');
INSERT INTO `obj_prof_quals` VALUES(5, 'Cisco-Certified Network Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `obj_schools`
--

CREATE TABLE `obj_schools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `obj_schools`
--

INSERT INTO `obj_schools` VALUES(1, 'Wesley College', 'Colombo');
INSERT INTO `obj_schools` VALUES(2, 'Ananda College', 'Colombo');
INSERT INTO `obj_schools` VALUES(3, 'Royal College', 'Colombo');
INSERT INTO `obj_schools` VALUES(4, 'St. Thomas'' College', 'Mt. Lavinia');
INSERT INTO `obj_schools` VALUES(5, 'Dharmasoka College', 'Ambalangoda');
INSERT INTO `obj_schools` VALUES(6, 'St. Aloysius College', 'Galle');
INSERT INTO `obj_schools` VALUES(7, 'Holy Family Convent', 'Bambalapitiya');
INSERT INTO `obj_schools` VALUES(8, 'Devi Balika Vidyalaya', 'Colombo');
INSERT INTO `obj_schools` VALUES(9, 'Museaus College', 'Colombo');
INSERT INTO `obj_schools` VALUES(10, 'Bishop''s College', 'Colombo');
INSERT INTO `obj_schools` VALUES(11, 'Methodist College', 'Colombo');
INSERT INTO `obj_schools` VALUES(12, 'Dharmaraja College', 'Kandy');
INSERT INTO `obj_schools` VALUES(13, 'University of Colombo School of Computing', 'Colombo');

-- --------------------------------------------------------

--
-- Table structure for table `obj_skills`
--

CREATE TABLE `obj_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(255) NOT NULL,
  `skill_type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=112 ;

--
-- Dumping data for table `obj_skills`
--

INSERT INTO `obj_skills` VALUES(1, 'Java', 2);
INSERT INTO `obj_skills` VALUES(2, 'Servlets', 1);
INSERT INTO `obj_skills` VALUES(3, 'JSP', 1);
INSERT INTO `obj_skills` VALUES(4, 'PHP', 2);
INSERT INTO `obj_skills` VALUES(5, 'MySQL', 1);
INSERT INTO `obj_skills` VALUES(6, 'Oracle', 1);
INSERT INTO `obj_skills` VALUES(7, 'Python', 2);
INSERT INTO `obj_skills` VALUES(8, 'Django Framework', 1);
INSERT INTO `obj_skills` VALUES(9, 'Apache Struts', 1);
INSERT INTO `obj_skills` VALUES(10, 'Hibernate', 1);
INSERT INTO `obj_skills` VALUES(11, 'PostgreSQL', 1);
INSERT INTO `obj_skills` VALUES(12, 'Android Development', 1);
INSERT INTO `obj_skills` VALUES(13, 'iOS Development', 1);
INSERT INTO `obj_skills` VALUES(14, 'Windows Phone Development', 1);
INSERT INTO `obj_skills` VALUES(15, 'Web Services', 3);
INSERT INTO `obj_skills` VALUES(16, '.NET Framework', 1);
INSERT INTO `obj_skills` VALUES(17, 'C', 2);
INSERT INTO `obj_skills` VALUES(18, 'C++', 2);
INSERT INTO `obj_skills` VALUES(19, 'Object-oriented Programming', 4);
INSERT INTO `obj_skills` VALUES(20, 'CMS', 3);
INSERT INTO `obj_skills` VALUES(21, 'Wordpress', 1);
INSERT INTO `obj_skills` VALUES(22, 'Joomla', 1);
INSERT INTO `obj_skills` VALUES(23, 'Drupal', 1);
INSERT INTO `obj_skills` VALUES(24, 'Networking', 3);
INSERT INTO `obj_skills` VALUES(25, 'System Administration', 3);
INSERT INTO `obj_skills` VALUES(26, 'Bootstrap', 1);
INSERT INTO `obj_skills` VALUES(27, 'Gumby', 1);
INSERT INTO `obj_skills` VALUES(28, 'HTML', 1);
INSERT INTO `obj_skills` VALUES(29, 'CSS', 1);
INSERT INTO `obj_skills` VALUES(30, 'Javascript', 2);
INSERT INTO `obj_skills` VALUES(31, 'Ajax', 1);
INSERT INTO `obj_skills` VALUES(32, 'Apache Server', 1);
INSERT INTO `obj_skills` VALUES(33, 'Apache Maven', 1);
INSERT INTO `obj_skills` VALUES(34, 'Apache Tomcat', 1);
INSERT INTO `obj_skills` VALUES(35, 'JBoss', 1);
INSERT INTO `obj_skills` VALUES(36, 'Glassfish', 1);
INSERT INTO `obj_skills` VALUES(37, 'Ruby', 2);
INSERT INTO `obj_skills` VALUES(38, 'Ruby on Rails', 1);
INSERT INTO `obj_skills` VALUES(39, 'Perl', 2);
INSERT INTO `obj_skills` VALUES(40, 'Business Analysis', 3);
INSERT INTO `obj_skills` VALUES(41, 'Github', 1);
INSERT INTO `obj_skills` VALUES(42, 'Apache Subversion', 1);
INSERT INTO `obj_skills` VALUES(43, 'Linux', 3);
INSERT INTO `obj_skills` VALUES(44, 'Shell Scripting', 3);
INSERT INTO `obj_skills` VALUES(45, 'Web Develepment', 3);
INSERT INTO `obj_skills` VALUES(46, 'UI Design', 4);
INSERT INTO `obj_skills` VALUES(47, 'UX Design', 4);
INSERT INTO `obj_skills` VALUES(48, 'UML', 3);
INSERT INTO `obj_skills` VALUES(49, 'XML', 1);
INSERT INTO `obj_skills` VALUES(50, 'SOAP', 1);
INSERT INTO `obj_skills` VALUES(51, 'REST', 1);
INSERT INTO `obj_skills` VALUES(52, 'JSON', 1);
INSERT INTO `obj_skills` VALUES(53, 'Graphic Design', 3);
INSERT INTO `obj_skills` VALUES(54, 'Enterprise Resource Planning', 3);
INSERT INTO `obj_skills` VALUES(55, 'Strategic Management', 3);
INSERT INTO `obj_skills` VALUES(56, 'HR Management', 3);
INSERT INTO `obj_skills` VALUES(57, 'DBMS', 3);
INSERT INTO `obj_skills` VALUES(58, 'LaTeX', 1);
INSERT INTO `obj_skills` VALUES(59, 'Microsoft Office', 1);
INSERT INTO `obj_skills` VALUES(60, 'C#', 2);
INSERT INTO `obj_skills` VALUES(61, 'Moodle', 1);
INSERT INTO `obj_skills` VALUES(62, 'Social Media Marketing', 3);
INSERT INTO `obj_skills` VALUES(63, 'Wireless Ad-Hoc and Sensor Networks', 3);
INSERT INTO `obj_skills` VALUES(64, 'Adobe Photoshop', 1);
INSERT INTO `obj_skills` VALUES(65, 'Adobe After Effects', 1);
INSERT INTO `obj_skills` VALUES(66, 'Adobe Fireworks', 1);
INSERT INTO `obj_skills` VALUES(67, 'Adobe Premiere Pro', 1);
INSERT INTO `obj_skills` VALUES(68, 'Adobe Illustrator', 1);
INSERT INTO `obj_skills` VALUES(69, 'Accountancy', 3);
INSERT INTO `obj_skills` VALUES(70, 'Economics', 3);
INSERT INTO `obj_skills` VALUES(71, 'Sociology', 3);
INSERT INTO `obj_skills` VALUES(72, 'Psychology', 3);
INSERT INTO `obj_skills` VALUES(73, '3DStudio Max', 1);
INSERT INTO `obj_skills` VALUES(74, 'Maya', 1);
INSERT INTO `obj_skills` VALUES(75, 'Middleware Architectures', 4);
INSERT INTO `obj_skills` VALUES(76, 'Data-mining', 3);
INSERT INTO `obj_skills` VALUES(77, 'Instructional Design', 3);
INSERT INTO `obj_skills` VALUES(78, 'Risk management', 3);
INSERT INTO `obj_skills` VALUES(79, 'IT Procurement', 3);
INSERT INTO `obj_skills` VALUES(80, 'Research Methods and Concepts', 4);
INSERT INTO `obj_skills` VALUES(81, 'Distributed Computing', 3);
INSERT INTO `obj_skills` VALUES(82, 'High Performance Computing', 3);
INSERT INTO `obj_skills` VALUES(83, 'Cryptography', 3);
INSERT INTO `obj_skills` VALUES(84, 'System Programming', 3);
INSERT INTO `obj_skills` VALUES(85, 'Operating System Concepts', 4);
INSERT INTO `obj_skills` VALUES(86, 'Electronics', 3);
INSERT INTO `obj_skills` VALUES(87, 'Natural Language Processing', 3);
INSERT INTO `obj_skills` VALUES(88, 'Neural Networks and Computing', 3);
INSERT INTO `obj_skills` VALUES(89, 'Software Development Life Cycle', 4);
INSERT INTO `obj_skills` VALUES(90, 'System Analysis and Design', 3);
INSERT INTO `obj_skills` VALUES(91, 'Human Computer Interaction', 3);
INSERT INTO `obj_skills` VALUES(92, 'Compilers and Automata Theory', 3);
INSERT INTO `obj_skills` VALUES(93, 'Data Structures and Algorithms', 3);
INSERT INTO `obj_skills` VALUES(94, 'Statistics', 3);
INSERT INTO `obj_skills` VALUES(95, 'Computer Graphics and Image Processing', 3);
INSERT INTO `obj_skills` VALUES(96, 'Augmented Reality', 3);
INSERT INTO `obj_skills` VALUES(97, 'Virtual Reality', 3);
INSERT INTO `obj_skills` VALUES(98, 'Intelligent Systems', 3);
INSERT INTO `obj_skills` VALUES(99, 'Computational Pattern Recognition', 3);
INSERT INTO `obj_skills` VALUES(100, 'MongoDB', 1);
INSERT INTO `obj_skills` VALUES(101, 'Enterprise Modelling', 3);
INSERT INTO `obj_skills` VALUES(102, 'IT Project Management', 3);
INSERT INTO `obj_skills` VALUES(103, 'NoSQL', 4);
INSERT INTO `obj_skills` VALUES(104, 'Apache Hadoop', 1);
INSERT INTO `obj_skills` VALUES(105, 'Git', 1);
INSERT INTO `obj_skills` VALUES(106, 'Supply Chain Management', 3);
INSERT INTO `obj_skills` VALUES(107, 'Customer Relationship Management', 3);
INSERT INTO `obj_skills` VALUES(108, 'Bio-Informatics', 3);
INSERT INTO `obj_skills` VALUES(109, 'Geographic IS', 3);
INSERT INTO `obj_skills` VALUES(110, 'IS Security and Audit', 3);
INSERT INTO `obj_skills` VALUES(111, 'SQL', 2);

-- --------------------------------------------------------

--
-- Table structure for table `obj_skill_types`
--

CREATE TABLE `obj_skill_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_type_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `obj_skill_types`
--

INSERT INTO `obj_skill_types` VALUES(1, 'Technology');
INSERT INTO `obj_skill_types` VALUES(2, 'Programming/Scripting Language');
INSERT INTO `obj_skill_types` VALUES(3, 'Subject Area');
INSERT INTO `obj_skill_types` VALUES(4, 'Concept');

-- --------------------------------------------------------

--
-- Table structure for table `obj_students_companies`
--

CREATE TABLE `obj_students_companies` (
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

INSERT INTO `obj_students_companies` VALUES(3, 4, 2, 'Industrial Trainee', 4, 2012, 10, 2012);
INSERT INTO `obj_students_companies` VALUES(4, 10, 2, 'Industrial Trainee', 4, 2012, 10, 2012);
INSERT INTO `obj_students_companies` VALUES(5, 13, 1, 'Industrial Trainee', 4, 2012, 9, 2012);
INSERT INTO `obj_students_companies` VALUES(6, 14, 1, 'Industrial Trainee', 4, 2012, 9, 2012);
INSERT INTO `obj_students_companies` VALUES(7, 4, 6, 'News Editor/Presenter', 4, 2010, 10, 2011);
INSERT INTO `obj_students_companies` VALUES(8, 4, 7, 'Customer Service Executive', 11, 2008, 7, 2009);
INSERT INTO `obj_students_companies` VALUES(9, 4, 8, 'Customer Service Representative', 4, 2008, 6, 2008);

-- --------------------------------------------------------

--
-- Table structure for table `obj_students_edu_quals`
--

CREATE TABLE `obj_students_edu_quals` (
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

INSERT INTO `obj_students_edu_quals` VALUES(1, 4, 1, 1, 2008);
INSERT INTO `obj_students_edu_quals` VALUES(2, 4, 2, 1, 2004);

-- --------------------------------------------------------

--
-- Table structure for table `obj_students_papers`
--

CREATE TABLE `obj_students_papers` (
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

INSERT INTO `obj_students_papers` VALUES(1, 4, 1);
INSERT INTO `obj_students_papers` VALUES(2, 4, 2);
INSERT INTO `obj_students_papers` VALUES(3, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `obj_students_prof_quals`
--

CREATE TABLE `obj_students_prof_quals` (
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

INSERT INTO `obj_students_prof_quals` VALUES(1, 4, 1, 2, 2012);
INSERT INTO `obj_students_prof_quals` VALUES(2, 4, 3, 4, 2013);
INSERT INTO `obj_students_prof_quals` VALUES(3, 4, 4, 1, 2011);
INSERT INTO `obj_students_prof_quals` VALUES(4, 4, 5, 5, 2010);

-- --------------------------------------------------------

--
-- Table structure for table `obj_students_schools`
--

CREATE TABLE `obj_students_schools` (
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

INSERT INTO `obj_students_schools` VALUES(1, 4, 1, 1994, 2008);
INSERT INTO `obj_students_schools` VALUES(2, 4, 13, 2009, 2014);

-- --------------------------------------------------------

--
-- Table structure for table `obj_students_skills`
--

CREATE TABLE `obj_students_skills` (
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

INSERT INTO `obj_students_skills` VALUES(1, 4, 1);
INSERT INTO `obj_students_skills` VALUES(2, 4, 4);
INSERT INTO `obj_students_skills` VALUES(3, 4, 5);
INSERT INTO `obj_students_skills` VALUES(4, 4, 12);
INSERT INTO `obj_students_skills` VALUES(5, 4, 13);
INSERT INTO `obj_students_skills` VALUES(6, 4, 19);
INSERT INTO `obj_students_skills` VALUES(7, 4, 20);
INSERT INTO `obj_students_skills` VALUES(8, 4, 21);
INSERT INTO `obj_students_skills` VALUES(9, 4, 22);
INSERT INTO `obj_students_skills` VALUES(10, 4, 24);
INSERT INTO `obj_students_skills` VALUES(11, 4, 25);
INSERT INTO `obj_students_skills` VALUES(12, 4, 26);
INSERT INTO `obj_students_skills` VALUES(13, 4, 28);
INSERT INTO `obj_students_skills` VALUES(14, 4, 29);
INSERT INTO `obj_students_skills` VALUES(15, 4, 30);
INSERT INTO `obj_students_skills` VALUES(16, 4, 31);
INSERT INTO `obj_students_skills` VALUES(17, 4, 40);
INSERT INTO `obj_students_skills` VALUES(18, 4, 41);
INSERT INTO `obj_students_skills` VALUES(19, 4, 43);
INSERT INTO `obj_students_skills` VALUES(20, 4, 45);
INSERT INTO `obj_students_skills` VALUES(21, 4, 46);
INSERT INTO `obj_students_skills` VALUES(22, 4, 47);
INSERT INTO `obj_students_skills` VALUES(23, 4, 48);
INSERT INTO `obj_students_skills` VALUES(24, 4, 49);
INSERT INTO `obj_students_skills` VALUES(25, 4, 52);
INSERT INTO `obj_students_skills` VALUES(26, 4, 53);
INSERT INTO `obj_students_skills` VALUES(27, 4, 54);
INSERT INTO `obj_students_skills` VALUES(28, 4, 55);
INSERT INTO `obj_students_skills` VALUES(29, 4, 56);
INSERT INTO `obj_students_skills` VALUES(30, 4, 57);
INSERT INTO `obj_students_skills` VALUES(31, 4, 58);
INSERT INTO `obj_students_skills` VALUES(32, 4, 59);
INSERT INTO `obj_students_skills` VALUES(33, 4, 62);
INSERT INTO `obj_students_skills` VALUES(34, 4, 63);
INSERT INTO `obj_students_skills` VALUES(35, 4, 65);
INSERT INTO `obj_students_skills` VALUES(36, 4, 66);
INSERT INTO `obj_students_skills` VALUES(37, 4, 67);
INSERT INTO `obj_students_skills` VALUES(38, 4, 111);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_company_users`
--

INSERT INTO `user_company_users` VALUES(1, 3, 1);

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
  PRIMARY KEY (`id`),
  KEY `object_type` (`object_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` VALUES(1, 3, 'admin', '123', 'Admin', 'User', 'aftha.jaldin88@gmail.com', '+94774422980');
INSERT INTO `user_logins` VALUES(2, 2, 'student', '123', 'Generic', 'Student', 'johnsmith@acme.com', '+94777654321');
INSERT INTO `user_logins` VALUES(3, 5, 'compuser', '123', 'Company', 'User', 'johndoe@acme.com', '+94777123456');
INSERT INTO `user_logins` VALUES(4, 2, 'aftha.jaldin', '123', 'Aftha', 'Jaldin', 'aftha.jaldin88@gmail.com', '+94774422980');
INSERT INTO `user_logins` VALUES(5, 2, 'sanjaya.amarasinghe', '123', 'Sanjaya', 'Amarasinghe', 'sanjboy@gmail.com', '+94719417343');
INSERT INTO `user_logins` VALUES(6, 2, 'akila.perera', '123', 'Akila', 'Perera', 'ravihansa3000@gmail.com', '+94776415438');
INSERT INTO `user_logins` VALUES(7, 2, 'pabitha.wishvajith', '123', 'Pabitha', 'Wishvajith', 'wpabitha@gmail.com', '+94718889662');
INSERT INTO `user_logins` VALUES(8, 2, 'madhawa.bandara', '123', 'Madhawa', 'Bandara', 'madawa911@gmail.com', '+94773487726');
INSERT INTO `user_logins` VALUES(9, 2, 'randika.malinga', '123', 'Randika', 'Malinga', '2009malinga@gmail.com', '+94774192561');
INSERT INTO `user_logins` VALUES(10, 2, 'buddhi.de.silva', '123', 'Buddhi', 'De Silva', 'gbidsilva@gmail.com', '+94775033983');
INSERT INTO `user_logins` VALUES(11, 2, 'laleen.pallegoda', '123', 'Laleen', 'Pallegoda', 'laleen.kp@gmail.com', '+94715574228');
INSERT INTO `user_logins` VALUES(12, 2, 'dinuni.fernando', '123', 'Dinuni', 'Fernando', 'dinuni.fernando@gmail.com', '+94714293337');
INSERT INTO `user_logins` VALUES(13, 2, 'pasan.de.silva', '123', 'Pasan', 'De Silva', '$papers_of_student', '+94777302716');
INSERT INTO `user_logins` VALUES(14, 2, 'sachith.seneviratne', '123', 'Sachith', 'Seneviratne', 'vihanga88@gmail.com', '+94779467439');

-- --------------------------------------------------------

--
-- Table structure for table `user_students`
--

CREATE TABLE `user_students` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `user_students`
--

INSERT INTO `user_students` VALUES(3, 2, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', '');
INSERT INTO `user_students` VALUES(4, 4, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', '');
INSERT INTO `user_students` VALUES(5, 5, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', '');
INSERT INTO `user_students` VALUES(6, 6, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', '');
INSERT INTO `user_students` VALUES(7, 7, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', '');
INSERT INTO `user_students` VALUES(8, 8, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', '');
INSERT INTO `user_students` VALUES(9, 9, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', '');
INSERT INTO `user_students` VALUES(10, 10, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', '');
INSERT INTO `user_students` VALUES(11, 11, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', '');
INSERT INTO `user_students` VALUES(12, 12, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae lorem nec mollis. Nam a aliq', '');
INSERT INTO `user_students` VALUES(13, 13, 2, 'Proin sed libero non metus rutrum ornare. Nulla commodo nibh at libero scelerisque egestas. Donec ac nibh sapien. Donec sed malesuada lectus, a condimentum magna. Nullam in aliquam elit, non ornare velit. Maecenas blandit interdum sapien, a adipiscing orci condimentum nec. Morbi quis augue id sapien consectetur ultricies at id magna.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Sed lectus velit, sodales eu bibendum id, dapibus et velit. In posuere mi turpis, eget tincidunt nunc pellentesque vitae. Nam interdum tristique gravida. Nulla bibendum risus non magna dictum commodo. Morbi est ligula, facilisis eu elit at, facilisis convallis massa. Vestibulum accumsan turpis sed dapibus viverra. Aliquam lacinia scelerisque elit vitae scelerisque. Integer tincidunt vehicula dolor, ac auctor urna vehicula ut. Sed at turpis suscipit, pulvinar enim sit amet, fringilla felis.', '');
INSERT INTO `user_students` VALUES(14, 14, 2, 'Proin sed libero non metus rutrum ornare. Nulla commodo nibh at libero scelerisque egestas. Donec ac nibh sapien. Donec sed malesuada lectus, a condimentum magna. Nullam in aliquam elit, non ornare velit. Maecenas blandit interdum sapien, a adipiscing orci condimentum nec. Morbi quis augue id sapien consectetur ultricies at id magna.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Sed lectus velit, sodales eu bibendum id, dapibus et velit. In posuere mi turpis, eget tincidunt nunc pellentesque vitae. Nam interdum tristique gravida. Nulla bibendum risus non magna dictum commodo. Morbi est ligula, facilisis eu elit at, facilisis convallis massa. Vestibulum accumsan turpis sed dapibus viverra. Aliquam lacinia scelerisque elit vitae scelerisque. Integer tincidunt vehicula dolor, ac auctor urna vehicula ut. Sed at turpis suscipit, pulvinar enim sit amet, fringilla felis.', '');

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
