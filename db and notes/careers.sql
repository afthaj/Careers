-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 17, 2013 at 11:22 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

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
-- Table structure for table `obj_educational_qualifications`
--

CREATE TABLE IF NOT EXISTS `obj_educational_qualifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `obj_educational_qualifications`
--

INSERT INTO `obj_educational_qualifications` (`id`, `name`) VALUES
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`id`, `object_type`, `username`, `password`, `first_name`, `last_name`, `email_address`, `telephone_number`) VALUES
(1, 3, 'admin', '123', 'Admin', 'User', 'aftha.jaldin88@gmail.com', '+94774422980'),
(2, 2, 'student', '123', 'Generic', 'Student', 'johnsmith@acme.com', '+94777654321'),
(3, 5, 'compuser', '123', 'Company', 'User', 'johndoe@acme.com', '+94777123456'),
(4, 2, 'aftha.jaldin', '123', 'Aftha', 'Jaldin', 'aftha.jaldin88@gmail.com', '+94774422980'),
(5, 2, 'sanjaya.amarasinghe', '123', 'Sanjaya', 'Amarasinghe', 'sanjboy@gmail.com', '+94719417343'),
(6, 2, 'akila.perera', '123', 'Akila', 'Perera', 'ravihansa3000@gmail.com', '+94776415438'),
(7, 2, 'pabitha.wishvajith', '123', 'Pabitha', 'Wishvajith', 'wpabitha@gmail.com', '+94718889662'),
(8, 2, 'madhawa.bandara', '123', 'Madhawa', 'Bandara', 'madawa911@gmail.com', '+94773487726'),
(9, 2, 'randika.malinga', '123', 'Randika', 'Malinga', '2009malinga@gmail.com', '+94774192561'),
(10, 2, 'buddhi.de.silva', '123', 'Buddhi', 'De Silva', 'gbidsilva@gmail.com', '+94775033983'),
(11, 2, 'laleen.pallegoda', '123', 'Laleen', 'Pallegoda', 'laleen.kp@gmail.com', '+94715574228'),
(12, 2, 'dinuni.fernando', '123', 'Dinuni', 'Fernando', 'dinuni.fernando@gmail.com', '+94714293337'),
(13, 2, 'pasan.de.silva', '123', 'Pasan', 'De Silva', '$papers_of_student', '+94777302716'),
(14, 2, 'sachith.seneviratne', '123', 'Sachith', 'Seneviratne', 'vihanga88@gmail.com', '+94779467439');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `user_students`
--

INSERT INTO `user_students` (`id`, `login_id`, `degree_program_id`, `executive_summary`, `research_project_title`, `research_project_desc`, `cv_file_name`) VALUES
(3, 2, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', ''),
(4, 4, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', ''),
(5, 5, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', ''),
(6, 6, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', ''),
(7, 7, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', ''),
(8, 8, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', ''),
(9, 9, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', ''),
(10, 10, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', ''),
(11, 11, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', ''),
(12, 12, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae ', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae lorem nec mollis. Nam a aliq', ''),
(13, 13, 2, 'Proin sed libero non metus rutrum ornare. Nulla commodo nibh at libero scelerisque egestas. Donec ac nibh sapien. Donec sed malesuada lectus, a condimentum magna. Nullam in aliquam elit, non ornare velit. Maecenas blandit interdum sapien, a adipiscing orci condimentum nec. Morbi quis augue id sapien consectetur ultricies at id magna.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Sed lectus velit, sodales eu bibendum id, dapibus et velit. In posuere mi turpis, eget tincidunt nunc pellentesque vitae. Nam interdum tristique gravida. Nulla bibendum risus non magna dictum commodo. Morbi est ligula, facilisis eu elit at, facilisis convallis massa. Vestibulum accumsan turpis sed dapibus viverra. Aliquam lacinia scelerisque elit vitae scelerisque. Integer tincidunt vehicula dolor, ac auctor urna vehicula ut. Sed at turpis suscipit, pulvinar enim sit amet, fringilla felis.', ''),
(14, 14, 2, 'Proin sed libero non metus rutrum ornare. Nulla commodo nibh at libero scelerisque egestas. Donec ac nibh sapien. Donec sed malesuada lectus, a condimentum magna. Nullam in aliquam elit, non ornare velit. Maecenas blandit interdum sapien, a adipiscing orci condimentum nec. Morbi quis augue id sapien consectetur ultricies at id magna.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Sed lectus velit, sodales eu bibendum id, dapibus et velit. In posuere mi turpis, eget tincidunt nunc pellentesque vitae. Nam interdum tristique gravida. Nulla bibendum risus non magna dictum commodo. Morbi est ligula, facilisis eu elit at, facilisis convallis massa. Vestibulum accumsan turpis sed dapibus viverra. Aliquam lacinia scelerisque elit vitae scelerisque. Integer tincidunt vehicula dolor, ac auctor urna vehicula ut. Sed at turpis suscipit, pulvinar enim sit amet, fringilla felis.', '');

--
-- Constraints for dumped tables
--

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
  ADD CONSTRAINT `obj_students_edu_quals_ibfk_2` FOREIGN KEY (`edu_qual_id`) REFERENCES `obj_educational_qualifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `obj_students_papers`
--
ALTER TABLE `obj_students_papers`
  ADD CONSTRAINT `obj_students_papers_ibfk_2` FOREIGN KEY (`paper_id`) REFERENCES `obj_papers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obj_students_papers_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `user_logins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
