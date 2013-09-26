-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 27, 2013 at 12:14 AM
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

INSERT INTO `obj_companies` VALUES(1, 'Millennium IT', 0);
INSERT INTO `obj_companies` VALUES(2, 'Virtusa Corp.', 1);
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `obj_papers`
--

INSERT INTO `obj_papers` VALUES(1, 'A novel approach to simulate wind-driven waves in the deep ocean', 2012, 'Maheshya Weerasinghe, D. Sandaruwan, C. Keppitiyagama, N. D. Kodikara.', '', '');
INSERT INTO `obj_papers` VALUES(2, 'A lightweight approach to simulate a 2D radar coverage for virtual maritime environments', 2013, 'W. Ranaweera, S. Jabbar, R. Wickramarachchi, Maheshya Weerasinghe, N. Gunathilake, C. Keppitiyagama, D. Sandaruwan, and P. Samarasinghe.', '', '');
INSERT INTO `obj_papers` VALUES(3, 'Virtual Eye: A sensor based mobile viewer to aid collaborative decision making in virtual environments', 2012, 'W. Ranaweera, R. Wickramarachchi, S. Jabbar, Maheshya Weerasinghe, N. Gunathilake, C. Keppitiyagama, D. Sandaruwan, and P. Samarasinghe.', 'Current virtual simulation techniques often include multi-user interactivity in virtual environments that can be controlled in real time. Such simulation techniques are mostly employed in virtual military training sessions and in real time gaming experiences, where users have to make more strategic decisions by analyzing the information they receive, in response to the actions of the other users in the same virtual environment. Generally, in the real world, collaborative decision making takes place when a team of people work together to control the behavior of a single object which cannot be handled alone by an individual. A ship with its crew can be held as an example. When applying this scenario into virtually simulated environments, multiple users have to involve in representing a single object in the virtual world. These users need to obtain sufficient information about the activities in the environment that will contribute to the collaborative decision making process. Out of many sources, visual information is the most reliable source the users tend to depend on. The use of traditional static displays to obtain visual information limits the capability of providing a rich set of information about the 3D environment. Head Mounted Displays address these limitations while introducing several new problems. On the other hand, our work is focused on exploring how smart devices can be employed by a collaboratively working team of users to obtain visual information to the level beyond which a static display provides, thus aiding the process of decision making. To serve the above purpose, we propose a solution, Virtual Eye, which uses a smart mobile device with the ability to view the visual output of the virtual world and the ability to control that view according to user''s orientation changes and movements with the use of its inbuilt sensors', '');
INSERT INTO `obj_papers` VALUES(4, 'Virtual Eye: Reflection of real world motion changes in a virtual world with the use of sensor based mobile viewers', 2012, 'W. Ranaweera, R. Wickramarachchi, S. Jabbar, Maheshya Weerasinghe, N. Gunathilake, C. Keppitiyagama, D. Sandaruwan, and P. Samarasinghe.', 'Today, the advancing technology has granted the privilege to users to experience real world scenarios simulated in virtual 3D environments and to interact with them in real time. Existing devices to interact with virtual environments are having some limitations making them less usable in day-to-day life. To enhance user interactivity by removing those limitations, everyday devices such as mobile phones, both portable and highly familiar to users, could be of great use. In our research, we mainly focus on enhancing the interactivity between the user and the virtual world using mobile phones.Here, the mobile phone is used as a client device to view a virtual model located in a distant server,which displays a view of the virtual model as if the user resides inside that virtual world, literally mapping him to be an object within that virtual world. Furthermore our research focuses on user motion and orientation changes happening in real world to be mapped with the virtual world. 2-way communication will be needed to transfer sensor readings of motion from client device to the server,thus representing his actual activities inside the virtual world, and to send back the updated video output from server to the client', '');
INSERT INTO `obj_papers` VALUES(5, 'Dynamic Resource Scheduling in Forest Fire Situations in Sri Lanka', 2013, 'Sandunika T. Wijerathne, Buddhi I. De Silva, Y. Ekenayake, Anuja T. Dharmaratne', 'Despite the damage caused by the forest fires there are very few attempts have been taken by the respective authorities in Sri Lanka in order to lessen the destruction occurred due to the forest fires. The current procedure of controlling and extinguishing forest fires has number of weak points which have to be addressed immediately in order to minimize the damage caused by the forest fires. This study covers the current situation of forest fires in Sri Lanka through highlighting the drawbacks and issues of the existing procedure. By following the design science research methodology this research project will present a framework for dynamic resource allocation during a forest fire situation. After thoroughly reviewing the existing ICT approaches available for dynamic resource allocation during a forest fire and their applicability for Sri Lankan context, the overall architecture of the system is designed. Together with three sub modules the system is going to be track the available resources, predict the forest fire burnt area and finally allocate the resources dynamically based on the prediction', '');
INSERT INTO `obj_papers` VALUES(6, 'A sustainable mechanism for gathering road traffic data using smart-phones', 2012, 'Udalagama, S.; Sahabandu, L.; Samarkoon, L.;  Fernando, D.; Chanthirasegaran, P.; Udana, S.; Asanga, D.; Fernando, C.; Keppetiyagama, C.; Ranasinghe, C.', 'The idea of using sensors on modern smart-phones to collect road traffic information has garnered much attention in the recent past. Several such systems  which had been implemented at an experimental level have  proven to be capable of collecting highly accurate information in a  cost effective manner.  It is seen as a viable option especially for emerging regions as an alternative to expensive in-site traffic sensors. Real world implementation of such a system however, poses several intrinsic challenges; chief among which is the  heavy dependence of the system on the contribution of everyday users. We propose a conceptual model and  framework to quantitatively assess some of the business oriented targets and contributing parameters associated with achieving social and economic sustainability in such a system.', '');
INSERT INTO `obj_papers` VALUES(7, 'TikiriPower - Using TikiriDB abstraction on Smart Home systems', 2012, 'Weerawarne, L.; Sayakkara, A.; Fernando, D.; Suduwella, C.; De Zoysa, K.', 'In the domain of Wireless Sensor Networks, Smart Home applications are becoming the newest trend. Such deployments face challenges of underlying complexity in programming of traditional wireless sensor networks as well as lack of collaboration within hardware components. To address these issues, a platform that considers sensors and actuators in a wireless sensor network as a database framework is presented. Monitoring electrical and environmental parameters and controlling electrical appliances in a Smart Home via SQL queries is suggested. A prototype system consists of monitoring and controlling capabilities was implemented to evaluate the framework. Usage of our platform would makeSmart Home applications more efficient, reliable and maintainable. In return, reduction of domestic energy consumption and cost in monetary terms would be beneficial.', '');
INSERT INTO `obj_papers` VALUES(8, 'An Intelligent Smart Building System for Energy Efficient Lighting Management', 2012, 'Fernando, MAID.,Sayakkara, A.,Fernando, D., Siriwardena, EMD.,Ekanayake, EMWV.,De Zoysa, K.', '', '');
INSERT INTO `obj_papers` VALUES(9, '3D Radar – Modeling Virtual Maritime Environment - For the Static Environment Perception', 2013, 'Fernando, D. ; Kodikara, N.; Keppetiyagama, C.', '', '');
INSERT INTO `obj_papers` VALUES(10, 'Mathematical Model for Radar in 3D Virtual Maritime Environment for the Dynamic Perception', 2013, 'Fernando, D. ; Kodikara, N.; Keppetiyagama, C.', '', '');
INSERT INTO `obj_papers` VALUES(11, 'Humanity-Hub: The location based shelter guidance and rescue system for disaster situations in Sri-Lanka', 2013, 'K.P.J.R.Karunawallabha, Yamaya Ekanayake', 'In every year, thousands of people either lose their lives or are fatally affected due to various disasters. Disasters like floods, tsunamies, tropical cyclones, landslides, rockslides, transport accidents,  fires,  rarely  earthquakes  can  be identified  as  more  acquainted  disasters  when considering the Sri Lankan context. Very  often  natural  disasters cannot  be  avoided.  However,  we  can  manage  those  situations effectively.  Ministry  of  Disaster  management fulfills the  need  for  a  disaster  management authority  in  Sri  Lanka.  Under  this  Ministry,  Disaster  Management  Center holds  the  main contribution to the disaster management process in the whole country. When  looking  at  current disaster  management  status  in  Sri  Lanka,  Preparedness  phase (activities prior to a disaster) and Response phase (activities during a disaster) activities are still  developing  and  not  in  required  level.  Therefore,  early  warning systems have  been identified  as  an  urgent  requirement.  Literature  also  highlights  the  need  for  an  effective emergency communications system within a disastrous situation.', '');
INSERT INTO `obj_papers` VALUES(12, 'A Novel Approach to Optimize Crime Investigation Process Using Palmprint Recognition', 2013, 'Janitha R. Karunawallabha, Thilini I. Wijesiriwardene, Vajisha U. Wanniarachchi, Anuja T. Dharmaratne, Damitha Sandaruwan', 'Partial-to-full palmprint matching has attracted the attention of experts in print identification and researchers in palmprint matching. An efficient partial palmprint identification approach can increase the efficiency of the criminal investigation process in Sri Lanka as well as in other countries. This research investigates the existing researches done so far in order to achieve the challenges and limitations in palmprint matching.  In this paper, the design of a segment based partial-to-full palmprint identification approach is presented which consists of three main modules: segment identification, hand type identification and minutiae matching.', '');
INSERT INTO `obj_papers` VALUES(13, 'Non Invasive Human Stress Detection Using Key Stroke Dynamics and Pattern Variations', 2013, 'Suranga D.W. Gunawardhane, Pasan M. De Silva, Dayan S.B. Kulathunga, Shiromi M.K.D. Arunatileka', 'Stress is considered as a very harmful health problem in the modern world. A large proportion of sick leave in the industrial world is believed to be related to stress.  While some level of stress can act as a positive factor, extensive exposure to high levels of stress can have detrimental effects on one''s health. Depression, panic attacks, high blood pressure, diabetes, heart problems are few of such diseases that can be initiated or worsened by stress. With the increasing people centricity in contemporary developments of computer science, Affective computing has become a popular research area. According to the existing research, affective computing has shown positive results in detecting human stress. Stress detection has been tackled in various approaches including heart rate variability (HRV), skin conductance (SC), pupil diameter (PD) based detection, Finger Temperature (FT) and etc. Our focus in this study is to utilize a readily available yet underutilized resource in Affective computing, key stroke dynamics (KSD). Recent developments in KSD based affective computing and Biometrics research proves that key stroke variations is a very powerful source of input that provides a valuable insight about an individual''s psychological and emotional states. Our methodology suggests a personalised approach in detecting stress levels through keystroke variations. An application specific Individual key stroke pattern profile is created for an individual based on his normal typing patterns. This profile consists of trained average values for a set of typing features. Real time stress specific deviations of these features are analysed in order to arrive at the individual stress level', '');
INSERT INTO `obj_papers` VALUES(14, 'A Model based Approach to Simulate Excess Water of Reservoirs in Sri Lanka.', 2013, 'Pubudu Sandaruwani, Sachith H. Senevirathna, Sashika Rangoda, Ajantha S. Atukorale', 'Water reservoir has been a part and parcel of the life style of community living around it. Its operation and maintenance directly influence the dependents as well as community living around and suburbs of the reservoir. While this mechanism is an excellent solution to preserve water, its operations can become precarious during a time of a heavy rainy season where the amount of water accumulated to the reservoir increases significantly during this period resulting in reservoir being unable to handle the subsequent water inflow and ultimately releases this water at a daunting rate making the downstream flood. So this research focuses on addressing this scenario through a model based approach where operators can get an in advance information as to how the water level of the reservoir is going to rise during the time to come when a rainy season is started to the catchment area of the reservoir using both physics based and neural network based models and also how to effectively operate the water releasing mechanism through an optimized water release policy where the underlying model will be an optimization model. Through this research we expect to prove the concept of how Information and Communication Technology can effectively address this issue and to create a number of significant avenues to continue researches to build a perfect system.', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `obj_photos`
--

INSERT INTO `obj_photos` VALUES(1, 3, 1, 'Aftha_Jaldin.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(2, 2, 2, '', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(3, 2, 3, 'Aruni_Bandara.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(4, 2, 4, 'Aftha_Jaldin.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(5, 2, 5, 'Banu_Liyanapathirana.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(6, 2, 6, 'Buddhi_De_Silva.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(7, 2, 7, 'Chamali_Waduge.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(8, 2, 8, 'Chandima_Fernando.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(10, 2, 10, 'Chathurika_Lakmali.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(12, 2, 12, 'Dayan_Kulatunga.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(13, 2, 13, 'Dilini_Madushika.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(14, 2, 14, 'Dilini_Muthumala.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(15, 2, 15, 'Dinuni_Fernando.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(16, 2, 16, 'Hashan_Silva.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(17, 2, 17, 'Ifancy_Ariaratnam.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(18, 2, 18, 'Janitha_Karunawallabha.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(19, 2, 19, 'Jinadi_Dahanayaka.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(20, 2, 20, 'Lakkhana_Mallikarachchi.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(21, 2, 21, 'Madhawa_Bandara.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(22, 2, 22, 'Madhawa_Gunasekara.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(23, 2, 23, 'Madhujith_Kariyapperuma.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(24, 2, 24, 'Madusanka_Balasooriya.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(25, 2, 25, 'Malinga_Alwis.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(26, 2, 26, 'Mihan_Liyanage.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(27, 2, 27, 'Milani_Athapattu.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(30, 2, 30, 'Nelka_Perera.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(31, 2, 31, 'Niluka_Thilakarathna.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(32, 2, 32, 'Nipun_De_Silva.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(33, 2, 33, 'Nisansala_Liyanage.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(34, 2, 34, 'Nuwan_Chathuranga.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(35, 2, 35, 'Pabitha_Teldeniya.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(36, 2, 36, 'Pankajan_Chanthirasegaran.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(37, 2, 37, 'Pasan_De_Silva.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(38, 2, 38, 'Pubudu_Sandaruwani.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(39, 2, 39, 'Ruwan_Wickramarachchi.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(40, 2, 40, 'Sachith_Senevirathna.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(41, 2, 41, 'Sahan_Udana.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(42, 2, 42, 'Sandunika_Wijerathne.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(43, 2, 43, 'Sanjaya_Amarasinghe.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(44, 2, 44, 'Sashika_Rangoda.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(45, 2, 45, 'Sashika_Wijesinghe.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(46, 2, 46, 'Shyama_Chandani.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(47, 2, 47, 'Sumeda_Viduranga.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(48, 2, 48, 'Suranga_Guawardhana.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(49, 2, 49, 'Tharindu_Gunasekara.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(50, 2, 50, 'Thilini_Wijesiriwardene.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(51, 2, 51, 'Vajisha_Wanniarachchi.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(52, 2, 52, 'Vinod_Kavinda.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(53, 2, 53, 'Yasasri_Sampath.jpg', 'image/jpeg', '');
INSERT INTO `obj_photos` VALUES(54, 2, 54, 'Akila_Perera.jpg', 'image/jpeg', '');

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
  `skill_type` int(11) NOT NULL,
  `skill_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `skill_type` (`skill_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=112 ;

--
-- Dumping data for table `obj_skills`
--

INSERT INTO `obj_skills` VALUES(1, 1, 'C');
INSERT INTO `obj_skills` VALUES(2, 1, 'C++');
INSERT INTO `obj_skills` VALUES(3, 1, 'C#');
INSERT INTO `obj_skills` VALUES(4, 1, 'Java');
INSERT INTO `obj_skills` VALUES(5, 1, 'Javascript');
INSERT INTO `obj_skills` VALUES(6, 1, 'Perl');
INSERT INTO `obj_skills` VALUES(7, 1, 'PHP');
INSERT INTO `obj_skills` VALUES(8, 1, 'Python');
INSERT INTO `obj_skills` VALUES(9, 1, 'Ruby');
INSERT INTO `obj_skills` VALUES(10, 1, 'SQL');
INSERT INTO `obj_skills` VALUES(11, 2, '.NET Framework');
INSERT INTO `obj_skills` VALUES(12, 2, '3DStudio Max');
INSERT INTO `obj_skills` VALUES(13, 2, 'Adobe After Effects');
INSERT INTO `obj_skills` VALUES(14, 2, 'Adobe Fireworks');
INSERT INTO `obj_skills` VALUES(15, 2, 'Adobe Illustrator');
INSERT INTO `obj_skills` VALUES(16, 2, 'Adobe Photoshop');
INSERT INTO `obj_skills` VALUES(17, 2, 'Adobe Premiere Pro');
INSERT INTO `obj_skills` VALUES(18, 2, 'Ajax');
INSERT INTO `obj_skills` VALUES(19, 2, 'Android Development');
INSERT INTO `obj_skills` VALUES(20, 2, 'Apache Hadoop');
INSERT INTO `obj_skills` VALUES(21, 2, 'Apache Maven');
INSERT INTO `obj_skills` VALUES(22, 2, 'Apache Server');
INSERT INTO `obj_skills` VALUES(23, 2, 'Apache Struts');
INSERT INTO `obj_skills` VALUES(24, 2, 'Apache Subversion');
INSERT INTO `obj_skills` VALUES(25, 2, 'Apache Tomcat');
INSERT INTO `obj_skills` VALUES(26, 2, 'Bootstrap');
INSERT INTO `obj_skills` VALUES(27, 2, 'CSS');
INSERT INTO `obj_skills` VALUES(28, 2, 'Django Framework');
INSERT INTO `obj_skills` VALUES(29, 2, 'Drupal');
INSERT INTO `obj_skills` VALUES(30, 2, 'Git');
INSERT INTO `obj_skills` VALUES(31, 2, 'Github');
INSERT INTO `obj_skills` VALUES(32, 2, 'Glassfish');
INSERT INTO `obj_skills` VALUES(33, 2, 'Gumby');
INSERT INTO `obj_skills` VALUES(34, 2, 'Hibernate');
INSERT INTO `obj_skills` VALUES(35, 2, 'HTML');
INSERT INTO `obj_skills` VALUES(36, 2, 'iOS Development');
INSERT INTO `obj_skills` VALUES(37, 2, 'JBoss');
INSERT INTO `obj_skills` VALUES(38, 2, 'Joomla');
INSERT INTO `obj_skills` VALUES(39, 2, 'JSON');
INSERT INTO `obj_skills` VALUES(40, 2, 'JSP');
INSERT INTO `obj_skills` VALUES(41, 2, 'LaTeX');
INSERT INTO `obj_skills` VALUES(42, 2, 'Maya');
INSERT INTO `obj_skills` VALUES(43, 2, 'Microsoft Office');
INSERT INTO `obj_skills` VALUES(44, 2, 'MongoDB');
INSERT INTO `obj_skills` VALUES(45, 2, 'Moodle');
INSERT INTO `obj_skills` VALUES(46, 2, 'MySQL');
INSERT INTO `obj_skills` VALUES(47, 2, 'Oracle');
INSERT INTO `obj_skills` VALUES(48, 2, 'PostgreSQL');
INSERT INTO `obj_skills` VALUES(49, 2, 'REST');
INSERT INTO `obj_skills` VALUES(50, 2, 'Ruby on Rails');
INSERT INTO `obj_skills` VALUES(51, 2, 'Servlets');
INSERT INTO `obj_skills` VALUES(52, 2, 'SOAP');
INSERT INTO `obj_skills` VALUES(53, 2, 'Windows Phone Development');
INSERT INTO `obj_skills` VALUES(54, 2, 'Wordpress');
INSERT INTO `obj_skills` VALUES(55, 2, 'XML');
INSERT INTO `obj_skills` VALUES(56, 3, 'Accountancy');
INSERT INTO `obj_skills` VALUES(57, 3, 'Augmented Reality');
INSERT INTO `obj_skills` VALUES(58, 3, 'Bio-Informatics');
INSERT INTO `obj_skills` VALUES(59, 3, 'Business Analysis');
INSERT INTO `obj_skills` VALUES(60, 3, 'CMS');
INSERT INTO `obj_skills` VALUES(61, 3, 'Compilers and Automata Theory');
INSERT INTO `obj_skills` VALUES(62, 3, 'Computational Pattern Recognition');
INSERT INTO `obj_skills` VALUES(63, 3, 'Computer Graphics and Image Processing');
INSERT INTO `obj_skills` VALUES(64, 3, 'Cryptography');
INSERT INTO `obj_skills` VALUES(65, 3, 'Customer Relationship Management');
INSERT INTO `obj_skills` VALUES(66, 3, 'Data Structures and Algorithms');
INSERT INTO `obj_skills` VALUES(67, 3, 'Data-mining');
INSERT INTO `obj_skills` VALUES(68, 3, 'DBMS');
INSERT INTO `obj_skills` VALUES(69, 3, 'Distributed Computing');
INSERT INTO `obj_skills` VALUES(70, 3, 'Economics');
INSERT INTO `obj_skills` VALUES(71, 3, 'Electronics');
INSERT INTO `obj_skills` VALUES(72, 3, 'Enterprise Modelling');
INSERT INTO `obj_skills` VALUES(73, 3, 'Enterprise Resource Planning');
INSERT INTO `obj_skills` VALUES(74, 3, 'Geographic IS');
INSERT INTO `obj_skills` VALUES(75, 3, 'Graphic Design');
INSERT INTO `obj_skills` VALUES(76, 3, 'High Performance Computing');
INSERT INTO `obj_skills` VALUES(77, 3, 'HR Management');
INSERT INTO `obj_skills` VALUES(78, 3, 'Human-Computer Interaction');
INSERT INTO `obj_skills` VALUES(79, 3, 'Instructional Design');
INSERT INTO `obj_skills` VALUES(80, 3, 'Intelligent Systems');
INSERT INTO `obj_skills` VALUES(81, 3, 'IS Security and Audit');
INSERT INTO `obj_skills` VALUES(82, 3, 'IT Procurement');
INSERT INTO `obj_skills` VALUES(83, 3, 'IT Project Management');
INSERT INTO `obj_skills` VALUES(84, 3, 'Linux');
INSERT INTO `obj_skills` VALUES(85, 3, 'Natural Language Processing');
INSERT INTO `obj_skills` VALUES(86, 3, 'Networking');
INSERT INTO `obj_skills` VALUES(87, 3, 'Neural Networks and Computing');
INSERT INTO `obj_skills` VALUES(88, 3, 'Psychology');
INSERT INTO `obj_skills` VALUES(89, 3, 'Risk management');
INSERT INTO `obj_skills` VALUES(90, 3, 'Shell Scripting');
INSERT INTO `obj_skills` VALUES(91, 3, 'Social Media Marketing');
INSERT INTO `obj_skills` VALUES(92, 3, 'Sociology');
INSERT INTO `obj_skills` VALUES(93, 3, 'Statistics');
INSERT INTO `obj_skills` VALUES(94, 3, 'Strategic Management');
INSERT INTO `obj_skills` VALUES(95, 3, 'Supply Chain Management');
INSERT INTO `obj_skills` VALUES(96, 3, 'System Administration');
INSERT INTO `obj_skills` VALUES(97, 3, 'System Analysis and Design');
INSERT INTO `obj_skills` VALUES(98, 3, 'System Programming');
INSERT INTO `obj_skills` VALUES(99, 3, 'UML');
INSERT INTO `obj_skills` VALUES(100, 3, 'Virtual Reality');
INSERT INTO `obj_skills` VALUES(101, 3, 'Web Develepment');
INSERT INTO `obj_skills` VALUES(102, 3, 'Web Services');
INSERT INTO `obj_skills` VALUES(103, 3, 'Wireless Ad-Hoc and Sensor Networks');
INSERT INTO `obj_skills` VALUES(104, 4, 'Middleware Architectures');
INSERT INTO `obj_skills` VALUES(105, 4, 'NoSQL');
INSERT INTO `obj_skills` VALUES(106, 4, 'Object-oriented Programming');
INSERT INTO `obj_skills` VALUES(107, 4, 'Operating System Concepts');
INSERT INTO `obj_skills` VALUES(108, 4, 'Research Methods and Concepts');
INSERT INTO `obj_skills` VALUES(109, 4, 'Software Development Life Cycle');
INSERT INTO `obj_skills` VALUES(110, 4, 'UI Design');
INSERT INTO `obj_skills` VALUES(111, 4, 'UX Design');

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

INSERT INTO `obj_skill_types` VALUES(1, 'Programming Language');
INSERT INTO `obj_skill_types` VALUES(2, 'Technology');
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `obj_students_papers`
--

INSERT INTO `obj_students_papers` VALUES(1, 2, 1);
INSERT INTO `obj_students_papers` VALUES(2, 2, 2);
INSERT INTO `obj_students_papers` VALUES(3, 2, 3);
INSERT INTO `obj_students_papers` VALUES(4, 2, 4);
INSERT INTO `obj_students_papers` VALUES(5, 6, 5);
INSERT INTO `obj_students_papers` VALUES(6, 8, 6);
INSERT INTO `obj_students_papers` VALUES(7, 14, 6);
INSERT INTO `obj_students_papers` VALUES(8, 15, 7);
INSERT INTO `obj_students_papers` VALUES(9, 15, 6);
INSERT INTO `obj_students_papers` VALUES(10, 15, 8);
INSERT INTO `obj_students_papers` VALUES(11, 15, 9);
INSERT INTO `obj_students_papers` VALUES(12, 15, 10);
INSERT INTO `obj_students_papers` VALUES(13, 18, 11);
INSERT INTO `obj_students_papers` VALUES(14, 18, 12);
INSERT INTO `obj_students_papers` VALUES(15, 28, 2);
INSERT INTO `obj_students_papers` VALUES(16, 28, 3);
INSERT INTO `obj_students_papers` VALUES(17, 28, 4);
INSERT INTO `obj_students_papers` VALUES(18, 36, 6);
INSERT INTO `obj_students_papers` VALUES(19, 37, 13);
INSERT INTO `obj_students_papers` VALUES(20, 38, 14);
INSERT INTO `obj_students_papers` VALUES(21, 39, 2);
INSERT INTO `obj_students_papers` VALUES(22, 39, 3);
INSERT INTO `obj_students_papers` VALUES(23, 39, 4);
INSERT INTO `obj_students_papers` VALUES(24, 41, 6);
INSERT INTO `obj_students_papers` VALUES(25, 44, 14);
INSERT INTO `obj_students_papers` VALUES(26, 50, 12);
INSERT INTO `obj_students_papers` VALUES(27, 51, 12);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2285 ;

--
-- Dumping data for table `obj_students_skills`
--

INSERT INTO `obj_students_skills` VALUES(1, 2, 1);
INSERT INTO `obj_students_skills` VALUES(2, 2, 2);
INSERT INTO `obj_students_skills` VALUES(3, 2, 3);
INSERT INTO `obj_students_skills` VALUES(4, 2, 4);
INSERT INTO `obj_students_skills` VALUES(5, 2, 7);
INSERT INTO `obj_students_skills` VALUES(6, 2, 8);
INSERT INTO `obj_students_skills` VALUES(7, 2, 10);
INSERT INTO `obj_students_skills` VALUES(8, 2, 11);
INSERT INTO `obj_students_skills` VALUES(9, 2, 15);
INSERT INTO `obj_students_skills` VALUES(10, 2, 16);
INSERT INTO `obj_students_skills` VALUES(11, 2, 19);
INSERT INTO `obj_students_skills` VALUES(12, 2, 27);
INSERT INTO `obj_students_skills` VALUES(13, 2, 35);
INSERT INTO `obj_students_skills` VALUES(14, 2, 36);
INSERT INTO `obj_students_skills` VALUES(15, 2, 38);
INSERT INTO `obj_students_skills` VALUES(16, 2, 41);
INSERT INTO `obj_students_skills` VALUES(17, 2, 43);
INSERT INTO `obj_students_skills` VALUES(18, 2, 46);
INSERT INTO `obj_students_skills` VALUES(19, 2, 52);
INSERT INTO `obj_students_skills` VALUES(20, 2, 53);
INSERT INTO `obj_students_skills` VALUES(21, 2, 56);
INSERT INTO `obj_students_skills` VALUES(22, 2, 60);
INSERT INTO `obj_students_skills` VALUES(23, 2, 64);
INSERT INTO `obj_students_skills` VALUES(24, 2, 68);
INSERT INTO `obj_students_skills` VALUES(25, 2, 69);
INSERT INTO `obj_students_skills` VALUES(26, 2, 75);
INSERT INTO `obj_students_skills` VALUES(27, 2, 76);
INSERT INTO `obj_students_skills` VALUES(28, 2, 84);
INSERT INTO `obj_students_skills` VALUES(29, 2, 86);
INSERT INTO `obj_students_skills` VALUES(30, 2, 98);
INSERT INTO `obj_students_skills` VALUES(31, 2, 99);
INSERT INTO `obj_students_skills` VALUES(32, 2, 101);
INSERT INTO `obj_students_skills` VALUES(33, 2, 102);
INSERT INTO `obj_students_skills` VALUES(34, 2, 71);
INSERT INTO `obj_students_skills` VALUES(35, 2, 87);
INSERT INTO `obj_students_skills` VALUES(36, 2, 97);
INSERT INTO `obj_students_skills` VALUES(37, 2, 61);
INSERT INTO `obj_students_skills` VALUES(38, 2, 66);
INSERT INTO `obj_students_skills` VALUES(39, 2, 93);
INSERT INTO `obj_students_skills` VALUES(40, 2, 63);
INSERT INTO `obj_students_skills` VALUES(41, 2, 57);
INSERT INTO `obj_students_skills` VALUES(42, 2, 100);
INSERT INTO `obj_students_skills` VALUES(43, 2, 80);
INSERT INTO `obj_students_skills` VALUES(44, 2, 58);
INSERT INTO `obj_students_skills` VALUES(45, 2, 106);
INSERT INTO `obj_students_skills` VALUES(46, 2, 110);
INSERT INTO `obj_students_skills` VALUES(47, 2, 104);
INSERT INTO `obj_students_skills` VALUES(48, 2, 108);
INSERT INTO `obj_students_skills` VALUES(49, 2, 107);
INSERT INTO `obj_students_skills` VALUES(50, 3, 4);
INSERT INTO `obj_students_skills` VALUES(51, 3, 8);
INSERT INTO `obj_students_skills` VALUES(52, 3, 1);
INSERT INTO `obj_students_skills` VALUES(53, 3, 2);
INSERT INTO `obj_students_skills` VALUES(54, 3, 3);
INSERT INTO `obj_students_skills` VALUES(55, 3, 10);
INSERT INTO `obj_students_skills` VALUES(56, 3, 46);
INSERT INTO `obj_students_skills` VALUES(57, 3, 11);
INSERT INTO `obj_students_skills` VALUES(58, 3, 35);
INSERT INTO `obj_students_skills` VALUES(59, 3, 18);
INSERT INTO `obj_students_skills` VALUES(60, 3, 22);
INSERT INTO `obj_students_skills` VALUES(61, 3, 25);
INSERT INTO `obj_students_skills` VALUES(62, 3, 37);
INSERT INTO `obj_students_skills` VALUES(63, 3, 41);
INSERT INTO `obj_students_skills` VALUES(64, 3, 43);
INSERT INTO `obj_students_skills` VALUES(65, 3, 45);
INSERT INTO `obj_students_skills` VALUES(66, 3, 86);
INSERT INTO `obj_students_skills` VALUES(67, 3, 84);
INSERT INTO `obj_students_skills` VALUES(68, 3, 99);
INSERT INTO `obj_students_skills` VALUES(69, 3, 68);
INSERT INTO `obj_students_skills` VALUES(70, 3, 76);
INSERT INTO `obj_students_skills` VALUES(71, 3, 64);
INSERT INTO `obj_students_skills` VALUES(72, 3, 98);
INSERT INTO `obj_students_skills` VALUES(73, 3, 71);
INSERT INTO `obj_students_skills` VALUES(74, 3, 87);
INSERT INTO `obj_students_skills` VALUES(75, 3, 97);
INSERT INTO `obj_students_skills` VALUES(76, 3, 61);
INSERT INTO `obj_students_skills` VALUES(77, 3, 66);
INSERT INTO `obj_students_skills` VALUES(78, 3, 93);
INSERT INTO `obj_students_skills` VALUES(79, 3, 80);
INSERT INTO `obj_students_skills` VALUES(80, 3, 62);
INSERT INTO `obj_students_skills` VALUES(81, 3, 58);
INSERT INTO `obj_students_skills` VALUES(82, 3, 106);
INSERT INTO `obj_students_skills` VALUES(83, 3, 110);
INSERT INTO `obj_students_skills` VALUES(84, 3, 108);
INSERT INTO `obj_students_skills` VALUES(85, 3, 107);
INSERT INTO `obj_students_skills` VALUES(86, 3, 109);
INSERT INTO `obj_students_skills` VALUES(87, 4, 4);
INSERT INTO `obj_students_skills` VALUES(88, 4, 5);
INSERT INTO `obj_students_skills` VALUES(89, 4, 7);
INSERT INTO `obj_students_skills` VALUES(90, 4, 10);
INSERT INTO `obj_students_skills` VALUES(91, 4, 12);
INSERT INTO `obj_students_skills` VALUES(92, 4, 13);
INSERT INTO `obj_students_skills` VALUES(93, 4, 14);
INSERT INTO `obj_students_skills` VALUES(94, 4, 15);
INSERT INTO `obj_students_skills` VALUES(95, 4, 16);
INSERT INTO `obj_students_skills` VALUES(96, 4, 17);
INSERT INTO `obj_students_skills` VALUES(97, 4, 18);
INSERT INTO `obj_students_skills` VALUES(98, 4, 19);
INSERT INTO `obj_students_skills` VALUES(99, 4, 22);
INSERT INTO `obj_students_skills` VALUES(100, 4, 25);
INSERT INTO `obj_students_skills` VALUES(101, 4, 26);
INSERT INTO `obj_students_skills` VALUES(102, 4, 27);
INSERT INTO `obj_students_skills` VALUES(103, 4, 30);
INSERT INTO `obj_students_skills` VALUES(104, 4, 31);
INSERT INTO `obj_students_skills` VALUES(105, 4, 33);
INSERT INTO `obj_students_skills` VALUES(106, 4, 35);
INSERT INTO `obj_students_skills` VALUES(107, 4, 36);
INSERT INTO `obj_students_skills` VALUES(108, 4, 38);
INSERT INTO `obj_students_skills` VALUES(109, 4, 39);
INSERT INTO `obj_students_skills` VALUES(110, 4, 40);
INSERT INTO `obj_students_skills` VALUES(111, 4, 41);
INSERT INTO `obj_students_skills` VALUES(112, 4, 42);
INSERT INTO `obj_students_skills` VALUES(113, 4, 43);
INSERT INTO `obj_students_skills` VALUES(114, 4, 46);
INSERT INTO `obj_students_skills` VALUES(115, 4, 54);
INSERT INTO `obj_students_skills` VALUES(116, 4, 55);
INSERT INTO `obj_students_skills` VALUES(117, 4, 56);
INSERT INTO `obj_students_skills` VALUES(118, 4, 59);
INSERT INTO `obj_students_skills` VALUES(119, 4, 60);
INSERT INTO `obj_students_skills` VALUES(120, 4, 65);
INSERT INTO `obj_students_skills` VALUES(121, 4, 68);
INSERT INTO `obj_students_skills` VALUES(122, 4, 70);
INSERT INTO `obj_students_skills` VALUES(123, 4, 72);
INSERT INTO `obj_students_skills` VALUES(124, 4, 73);
INSERT INTO `obj_students_skills` VALUES(125, 4, 75);
INSERT INTO `obj_students_skills` VALUES(126, 4, 77);
INSERT INTO `obj_students_skills` VALUES(127, 4, 78);
INSERT INTO `obj_students_skills` VALUES(128, 4, 81);
INSERT INTO `obj_students_skills` VALUES(129, 4, 82);
INSERT INTO `obj_students_skills` VALUES(130, 4, 83);
INSERT INTO `obj_students_skills` VALUES(131, 4, 84);
INSERT INTO `obj_students_skills` VALUES(132, 4, 86);
INSERT INTO `obj_students_skills` VALUES(133, 4, 88);
INSERT INTO `obj_students_skills` VALUES(134, 4, 89);
INSERT INTO `obj_students_skills` VALUES(135, 4, 91);
INSERT INTO `obj_students_skills` VALUES(136, 4, 92);
INSERT INTO `obj_students_skills` VALUES(137, 4, 93);
INSERT INTO `obj_students_skills` VALUES(138, 4, 94);
INSERT INTO `obj_students_skills` VALUES(139, 4, 95);
INSERT INTO `obj_students_skills` VALUES(140, 4, 96);
INSERT INTO `obj_students_skills` VALUES(141, 4, 97);
INSERT INTO `obj_students_skills` VALUES(142, 4, 99);
INSERT INTO `obj_students_skills` VALUES(143, 4, 101);
INSERT INTO `obj_students_skills` VALUES(144, 4, 103);
INSERT INTO `obj_students_skills` VALUES(145, 4, 106);
INSERT INTO `obj_students_skills` VALUES(146, 4, 108);
INSERT INTO `obj_students_skills` VALUES(147, 4, 109);
INSERT INTO `obj_students_skills` VALUES(148, 4, 110);
INSERT INTO `obj_students_skills` VALUES(149, 4, 111);
INSERT INTO `obj_students_skills` VALUES(150, 5, 4);
INSERT INTO `obj_students_skills` VALUES(151, 5, 7);
INSERT INTO `obj_students_skills` VALUES(152, 5, 8);
INSERT INTO `obj_students_skills` VALUES(153, 5, 1);
INSERT INTO `obj_students_skills` VALUES(154, 5, 2);
INSERT INTO `obj_students_skills` VALUES(155, 5, 5);
INSERT INTO `obj_students_skills` VALUES(156, 5, 3);
INSERT INTO `obj_students_skills` VALUES(157, 5, 10);
INSERT INTO `obj_students_skills` VALUES(158, 5, 51);
INSERT INTO `obj_students_skills` VALUES(159, 5, 40);
INSERT INTO `obj_students_skills` VALUES(160, 5, 46);
INSERT INTO `obj_students_skills` VALUES(161, 5, 47);
INSERT INTO `obj_students_skills` VALUES(162, 5, 34);
INSERT INTO `obj_students_skills` VALUES(163, 5, 19);
INSERT INTO `obj_students_skills` VALUES(164, 5, 11);
INSERT INTO `obj_students_skills` VALUES(165, 5, 54);
INSERT INTO `obj_students_skills` VALUES(166, 5, 38);
INSERT INTO `obj_students_skills` VALUES(167, 5, 29);
INSERT INTO `obj_students_skills` VALUES(168, 5, 35);
INSERT INTO `obj_students_skills` VALUES(169, 5, 27);
INSERT INTO `obj_students_skills` VALUES(170, 5, 18);
INSERT INTO `obj_students_skills` VALUES(171, 5, 22);
INSERT INTO `obj_students_skills` VALUES(172, 5, 55);
INSERT INTO `obj_students_skills` VALUES(173, 5, 52);
INSERT INTO `obj_students_skills` VALUES(174, 5, 39);
INSERT INTO `obj_students_skills` VALUES(175, 5, 41);
INSERT INTO `obj_students_skills` VALUES(176, 5, 43);
INSERT INTO `obj_students_skills` VALUES(177, 5, 16);
INSERT INTO `obj_students_skills` VALUES(178, 5, 102);
INSERT INTO `obj_students_skills` VALUES(179, 5, 60);
INSERT INTO `obj_students_skills` VALUES(180, 5, 86);
INSERT INTO `obj_students_skills` VALUES(181, 5, 96);
INSERT INTO `obj_students_skills` VALUES(182, 5, 84);
INSERT INTO `obj_students_skills` VALUES(183, 5, 90);
INSERT INTO `obj_students_skills` VALUES(184, 5, 101);
INSERT INTO `obj_students_skills` VALUES(185, 5, 99);
INSERT INTO `obj_students_skills` VALUES(186, 5, 68);
INSERT INTO `obj_students_skills` VALUES(187, 5, 103);
INSERT INTO `obj_students_skills` VALUES(188, 5, 69);
INSERT INTO `obj_students_skills` VALUES(189, 5, 76);
INSERT INTO `obj_students_skills` VALUES(190, 5, 64);
INSERT INTO `obj_students_skills` VALUES(191, 5, 98);
INSERT INTO `obj_students_skills` VALUES(192, 5, 71);
INSERT INTO `obj_students_skills` VALUES(193, 5, 85);
INSERT INTO `obj_students_skills` VALUES(194, 5, 87);
INSERT INTO `obj_students_skills` VALUES(195, 5, 97);
INSERT INTO `obj_students_skills` VALUES(196, 5, 78);
INSERT INTO `obj_students_skills` VALUES(197, 5, 61);
INSERT INTO `obj_students_skills` VALUES(198, 5, 66);
INSERT INTO `obj_students_skills` VALUES(199, 5, 93);
INSERT INTO `obj_students_skills` VALUES(200, 5, 63);
INSERT INTO `obj_students_skills` VALUES(201, 5, 80);
INSERT INTO `obj_students_skills` VALUES(202, 5, 106);
INSERT INTO `obj_students_skills` VALUES(203, 5, 110);
INSERT INTO `obj_students_skills` VALUES(204, 5, 111);
INSERT INTO `obj_students_skills` VALUES(205, 5, 104);
INSERT INTO `obj_students_skills` VALUES(206, 5, 108);
INSERT INTO `obj_students_skills` VALUES(207, 5, 107);
INSERT INTO `obj_students_skills` VALUES(208, 5, 109);
INSERT INTO `obj_students_skills` VALUES(209, 6, 4);
INSERT INTO `obj_students_skills` VALUES(210, 6, 7);
INSERT INTO `obj_students_skills` VALUES(211, 6, 8);
INSERT INTO `obj_students_skills` VALUES(212, 6, 5);
INSERT INTO `obj_students_skills` VALUES(213, 6, 10);
INSERT INTO `obj_students_skills` VALUES(214, 6, 51);
INSERT INTO `obj_students_skills` VALUES(215, 6, 40);
INSERT INTO `obj_students_skills` VALUES(216, 6, 46);
INSERT INTO `obj_students_skills` VALUES(217, 6, 47);
INSERT INTO `obj_students_skills` VALUES(218, 6, 34);
INSERT INTO `obj_students_skills` VALUES(219, 6, 19);
INSERT INTO `obj_students_skills` VALUES(220, 6, 11);
INSERT INTO `obj_students_skills` VALUES(221, 6, 35);
INSERT INTO `obj_students_skills` VALUES(222, 6, 27);
INSERT INTO `obj_students_skills` VALUES(223, 6, 18);
INSERT INTO `obj_students_skills` VALUES(224, 6, 22);
INSERT INTO `obj_students_skills` VALUES(225, 6, 25);
INSERT INTO `obj_students_skills` VALUES(226, 6, 37);
INSERT INTO `obj_students_skills` VALUES(227, 6, 32);
INSERT INTO `obj_students_skills` VALUES(228, 6, 55);
INSERT INTO `obj_students_skills` VALUES(229, 6, 52);
INSERT INTO `obj_students_skills` VALUES(230, 6, 49);
INSERT INTO `obj_students_skills` VALUES(231, 6, 39);
INSERT INTO `obj_students_skills` VALUES(232, 6, 41);
INSERT INTO `obj_students_skills` VALUES(233, 6, 43);
INSERT INTO `obj_students_skills` VALUES(234, 6, 16);
INSERT INTO `obj_students_skills` VALUES(235, 6, 14);
INSERT INTO `obj_students_skills` VALUES(236, 6, 17);
INSERT INTO `obj_students_skills` VALUES(237, 6, 30);
INSERT INTO `obj_students_skills` VALUES(238, 6, 102);
INSERT INTO `obj_students_skills` VALUES(239, 6, 101);
INSERT INTO `obj_students_skills` VALUES(240, 6, 99);
INSERT INTO `obj_students_skills` VALUES(241, 6, 68);
INSERT INTO `obj_students_skills` VALUES(242, 6, 103);
INSERT INTO `obj_students_skills` VALUES(243, 6, 97);
INSERT INTO `obj_students_skills` VALUES(244, 6, 74);
INSERT INTO `obj_students_skills` VALUES(245, 6, 106);
INSERT INTO `obj_students_skills` VALUES(246, 6, 110);
INSERT INTO `obj_students_skills` VALUES(247, 6, 104);
INSERT INTO `obj_students_skills` VALUES(248, 6, 108);
INSERT INTO `obj_students_skills` VALUES(249, 6, 109);
INSERT INTO `obj_students_skills` VALUES(250, 7, 7);
INSERT INTO `obj_students_skills` VALUES(251, 7, 10);
INSERT INTO `obj_students_skills` VALUES(252, 7, 38);
INSERT INTO `obj_students_skills` VALUES(253, 7, 35);
INSERT INTO `obj_students_skills` VALUES(254, 7, 27);
INSERT INTO `obj_students_skills` VALUES(255, 7, 41);
INSERT INTO `obj_students_skills` VALUES(256, 7, 43);
INSERT INTO `obj_students_skills` VALUES(257, 7, 45);
INSERT INTO `obj_students_skills` VALUES(258, 7, 16);
INSERT INTO `obj_students_skills` VALUES(259, 7, 59);
INSERT INTO `obj_students_skills` VALUES(260, 7, 101);
INSERT INTO `obj_students_skills` VALUES(261, 7, 94);
INSERT INTO `obj_students_skills` VALUES(262, 7, 77);
INSERT INTO `obj_students_skills` VALUES(263, 7, 68);
INSERT INTO `obj_students_skills` VALUES(264, 7, 91);
INSERT INTO `obj_students_skills` VALUES(265, 7, 103);
INSERT INTO `obj_students_skills` VALUES(266, 7, 56);
INSERT INTO `obj_students_skills` VALUES(267, 7, 70);
INSERT INTO `obj_students_skills` VALUES(268, 7, 92);
INSERT INTO `obj_students_skills` VALUES(269, 7, 88);
INSERT INTO `obj_students_skills` VALUES(270, 7, 67);
INSERT INTO `obj_students_skills` VALUES(271, 7, 79);
INSERT INTO `obj_students_skills` VALUES(272, 7, 89);
INSERT INTO `obj_students_skills` VALUES(273, 7, 82);
INSERT INTO `obj_students_skills` VALUES(274, 7, 97);
INSERT INTO `obj_students_skills` VALUES(275, 7, 78);
INSERT INTO `obj_students_skills` VALUES(276, 7, 93);
INSERT INTO `obj_students_skills` VALUES(277, 7, 72);
INSERT INTO `obj_students_skills` VALUES(278, 7, 83);
INSERT INTO `obj_students_skills` VALUES(279, 7, 95);
INSERT INTO `obj_students_skills` VALUES(280, 7, 65);
INSERT INTO `obj_students_skills` VALUES(281, 7, 58);
INSERT INTO `obj_students_skills` VALUES(282, 7, 74);
INSERT INTO `obj_students_skills` VALUES(283, 7, 81);
INSERT INTO `obj_students_skills` VALUES(284, 7, 110);
INSERT INTO `obj_students_skills` VALUES(285, 7, 108);
INSERT INTO `obj_students_skills` VALUES(286, 7, 109);
INSERT INTO `obj_students_skills` VALUES(287, 8, 4);
INSERT INTO `obj_students_skills` VALUES(288, 8, 8);
INSERT INTO `obj_students_skills` VALUES(289, 8, 1);
INSERT INTO `obj_students_skills` VALUES(290, 8, 5);
INSERT INTO `obj_students_skills` VALUES(291, 8, 46);
INSERT INTO `obj_students_skills` VALUES(292, 8, 19);
INSERT INTO `obj_students_skills` VALUES(293, 8, 36);
INSERT INTO `obj_students_skills` VALUES(294, 8, 53);
INSERT INTO `obj_students_skills` VALUES(295, 8, 38);
INSERT INTO `obj_students_skills` VALUES(296, 8, 35);
INSERT INTO `obj_students_skills` VALUES(297, 8, 27);
INSERT INTO `obj_students_skills` VALUES(298, 8, 55);
INSERT INTO `obj_students_skills` VALUES(299, 8, 39);
INSERT INTO `obj_students_skills` VALUES(300, 8, 41);
INSERT INTO `obj_students_skills` VALUES(301, 8, 43);
INSERT INTO `obj_students_skills` VALUES(302, 8, 45);
INSERT INTO `obj_students_skills` VALUES(303, 8, 60);
INSERT INTO `obj_students_skills` VALUES(304, 8, 59);
INSERT INTO `obj_students_skills` VALUES(305, 8, 84);
INSERT INTO `obj_students_skills` VALUES(306, 8, 101);
INSERT INTO `obj_students_skills` VALUES(307, 8, 94);
INSERT INTO `obj_students_skills` VALUES(308, 8, 70);
INSERT INTO `obj_students_skills` VALUES(309, 8, 89);
INSERT INTO `obj_students_skills` VALUES(310, 8, 85);
INSERT INTO `obj_students_skills` VALUES(311, 8, 87);
INSERT INTO `obj_students_skills` VALUES(312, 8, 78);
INSERT INTO `obj_students_skills` VALUES(313, 8, 66);
INSERT INTO `obj_students_skills` VALUES(314, 8, 93);
INSERT INTO `obj_students_skills` VALUES(315, 8, 63);
INSERT INTO `obj_students_skills` VALUES(316, 8, 80);
INSERT INTO `obj_students_skills` VALUES(317, 8, 62);
INSERT INTO `obj_students_skills` VALUES(318, 8, 83);
INSERT INTO `obj_students_skills` VALUES(319, 8, 95);
INSERT INTO `obj_students_skills` VALUES(320, 8, 58);
INSERT INTO `obj_students_skills` VALUES(321, 8, 106);
INSERT INTO `obj_students_skills` VALUES(322, 8, 108);
INSERT INTO `obj_students_skills` VALUES(323, 8, 107);
INSERT INTO `obj_students_skills` VALUES(324, 9, 4);
INSERT INTO `obj_students_skills` VALUES(325, 9, 7);
INSERT INTO `obj_students_skills` VALUES(326, 9, 8);
INSERT INTO `obj_students_skills` VALUES(327, 9, 1);
INSERT INTO `obj_students_skills` VALUES(328, 9, 10);
INSERT INTO `obj_students_skills` VALUES(329, 9, 40);
INSERT INTO `obj_students_skills` VALUES(330, 9, 46);
INSERT INTO `obj_students_skills` VALUES(331, 9, 47);
INSERT INTO `obj_students_skills` VALUES(332, 9, 23);
INSERT INTO `obj_students_skills` VALUES(333, 9, 34);
INSERT INTO `obj_students_skills` VALUES(334, 9, 19);
INSERT INTO `obj_students_skills` VALUES(335, 9, 38);
INSERT INTO `obj_students_skills` VALUES(336, 9, 35);
INSERT INTO `obj_students_skills` VALUES(337, 9, 27);
INSERT INTO `obj_students_skills` VALUES(338, 9, 22);
INSERT INTO `obj_students_skills` VALUES(339, 9, 25);
INSERT INTO `obj_students_skills` VALUES(340, 9, 55);
INSERT INTO `obj_students_skills` VALUES(341, 9, 41);
INSERT INTO `obj_students_skills` VALUES(342, 9, 43);
INSERT INTO `obj_students_skills` VALUES(343, 9, 60);
INSERT INTO `obj_students_skills` VALUES(344, 9, 59);
INSERT INTO `obj_students_skills` VALUES(345, 9, 84);
INSERT INTO `obj_students_skills` VALUES(346, 9, 101);
INSERT INTO `obj_students_skills` VALUES(347, 9, 99);
INSERT INTO `obj_students_skills` VALUES(348, 9, 94);
INSERT INTO `obj_students_skills` VALUES(349, 9, 77);
INSERT INTO `obj_students_skills` VALUES(350, 9, 68);
INSERT INTO `obj_students_skills` VALUES(351, 9, 103);
INSERT INTO `obj_students_skills` VALUES(352, 9, 56);
INSERT INTO `obj_students_skills` VALUES(353, 9, 70);
INSERT INTO `obj_students_skills` VALUES(354, 9, 67);
INSERT INTO `obj_students_skills` VALUES(355, 9, 89);
INSERT INTO `obj_students_skills` VALUES(356, 9, 76);
INSERT INTO `obj_students_skills` VALUES(357, 9, 64);
INSERT INTO `obj_students_skills` VALUES(358, 9, 98);
INSERT INTO `obj_students_skills` VALUES(359, 9, 85);
INSERT INTO `obj_students_skills` VALUES(360, 9, 87);
INSERT INTO `obj_students_skills` VALUES(361, 9, 97);
INSERT INTO `obj_students_skills` VALUES(362, 9, 66);
INSERT INTO `obj_students_skills` VALUES(363, 9, 93);
INSERT INTO `obj_students_skills` VALUES(364, 9, 62);
INSERT INTO `obj_students_skills` VALUES(365, 9, 83);
INSERT INTO `obj_students_skills` VALUES(366, 9, 95);
INSERT INTO `obj_students_skills` VALUES(367, 9, 58);
INSERT INTO `obj_students_skills` VALUES(368, 9, 106);
INSERT INTO `obj_students_skills` VALUES(369, 9, 110);
INSERT INTO `obj_students_skills` VALUES(370, 9, 108);
INSERT INTO `obj_students_skills` VALUES(371, 9, 107);
INSERT INTO `obj_students_skills` VALUES(372, 9, 109);
INSERT INTO `obj_students_skills` VALUES(373, 10, 4);
INSERT INTO `obj_students_skills` VALUES(374, 10, 7);
INSERT INTO `obj_students_skills` VALUES(375, 10, 10);
INSERT INTO `obj_students_skills` VALUES(376, 10, 46);
INSERT INTO `obj_students_skills` VALUES(377, 10, 54);
INSERT INTO `obj_students_skills` VALUES(378, 10, 35);
INSERT INTO `obj_students_skills` VALUES(379, 10, 45);
INSERT INTO `obj_students_skills` VALUES(380, 10, 60);
INSERT INTO `obj_students_skills` VALUES(381, 10, 59);
INSERT INTO `obj_students_skills` VALUES(382, 10, 77);
INSERT INTO `obj_students_skills` VALUES(383, 10, 92);
INSERT INTO `obj_students_skills` VALUES(384, 10, 88);
INSERT INTO `obj_students_skills` VALUES(385, 10, 67);
INSERT INTO `obj_students_skills` VALUES(386, 10, 79);
INSERT INTO `obj_students_skills` VALUES(387, 10, 89);
INSERT INTO `obj_students_skills` VALUES(388, 10, 97);
INSERT INTO `obj_students_skills` VALUES(389, 10, 83);
INSERT INTO `obj_students_skills` VALUES(390, 10, 65);
INSERT INTO `obj_students_skills` VALUES(391, 10, 106);
INSERT INTO `obj_students_skills` VALUES(392, 10, 108);
INSERT INTO `obj_students_skills` VALUES(393, 10, 109);
INSERT INTO `obj_students_skills` VALUES(394, 11, 4);
INSERT INTO `obj_students_skills` VALUES(395, 11, 7);
INSERT INTO `obj_students_skills` VALUES(396, 11, 10);
INSERT INTO `obj_students_skills` VALUES(397, 11, 46);
INSERT INTO `obj_students_skills` VALUES(398, 11, 47);
INSERT INTO `obj_students_skills` VALUES(399, 11, 19);
INSERT INTO `obj_students_skills` VALUES(400, 11, 38);
INSERT INTO `obj_students_skills` VALUES(401, 11, 35);
INSERT INTO `obj_students_skills` VALUES(402, 11, 27);
INSERT INTO `obj_students_skills` VALUES(403, 11, 55);
INSERT INTO `obj_students_skills` VALUES(404, 11, 41);
INSERT INTO `obj_students_skills` VALUES(405, 11, 43);
INSERT INTO `obj_students_skills` VALUES(406, 11, 16);
INSERT INTO `obj_students_skills` VALUES(407, 11, 17);
INSERT INTO `obj_students_skills` VALUES(408, 11, 15);
INSERT INTO `obj_students_skills` VALUES(409, 11, 59);
INSERT INTO `obj_students_skills` VALUES(410, 11, 84);
INSERT INTO `obj_students_skills` VALUES(411, 11, 101);
INSERT INTO `obj_students_skills` VALUES(412, 11, 99);
INSERT INTO `obj_students_skills` VALUES(413, 11, 73);
INSERT INTO `obj_students_skills` VALUES(414, 11, 94);
INSERT INTO `obj_students_skills` VALUES(415, 11, 77);
INSERT INTO `obj_students_skills` VALUES(416, 11, 68);
INSERT INTO `obj_students_skills` VALUES(417, 11, 91);
INSERT INTO `obj_students_skills` VALUES(418, 11, 56);
INSERT INTO `obj_students_skills` VALUES(419, 11, 70);
INSERT INTO `obj_students_skills` VALUES(420, 11, 92);
INSERT INTO `obj_students_skills` VALUES(421, 11, 88);
INSERT INTO `obj_students_skills` VALUES(422, 11, 67);
INSERT INTO `obj_students_skills` VALUES(423, 11, 89);
INSERT INTO `obj_students_skills` VALUES(424, 11, 82);
INSERT INTO `obj_students_skills` VALUES(425, 11, 97);
INSERT INTO `obj_students_skills` VALUES(426, 11, 78);
INSERT INTO `obj_students_skills` VALUES(427, 11, 93);
INSERT INTO `obj_students_skills` VALUES(428, 11, 72);
INSERT INTO `obj_students_skills` VALUES(429, 11, 83);
INSERT INTO `obj_students_skills` VALUES(430, 11, 95);
INSERT INTO `obj_students_skills` VALUES(431, 11, 65);
INSERT INTO `obj_students_skills` VALUES(432, 11, 74);
INSERT INTO `obj_students_skills` VALUES(433, 11, 81);
INSERT INTO `obj_students_skills` VALUES(434, 11, 106);
INSERT INTO `obj_students_skills` VALUES(435, 11, 104);
INSERT INTO `obj_students_skills` VALUES(436, 11, 108);
INSERT INTO `obj_students_skills` VALUES(437, 11, 109);
INSERT INTO `obj_students_skills` VALUES(438, 12, 7);
INSERT INTO `obj_students_skills` VALUES(439, 12, 5);
INSERT INTO `obj_students_skills` VALUES(440, 12, 46);
INSERT INTO `obj_students_skills` VALUES(441, 12, 19);
INSERT INTO `obj_students_skills` VALUES(442, 12, 38);
INSERT INTO `obj_students_skills` VALUES(443, 12, 29);
INSERT INTO `obj_students_skills` VALUES(444, 12, 35);
INSERT INTO `obj_students_skills` VALUES(445, 12, 27);
INSERT INTO `obj_students_skills` VALUES(446, 12, 18);
INSERT INTO `obj_students_skills` VALUES(447, 12, 55);
INSERT INTO `obj_students_skills` VALUES(448, 12, 43);
INSERT INTO `obj_students_skills` VALUES(449, 12, 16);
INSERT INTO `obj_students_skills` VALUES(450, 12, 17);
INSERT INTO `obj_students_skills` VALUES(451, 12, 15);
INSERT INTO `obj_students_skills` VALUES(452, 12, 60);
INSERT INTO `obj_students_skills` VALUES(453, 12, 86);
INSERT INTO `obj_students_skills` VALUES(454, 12, 59);
INSERT INTO `obj_students_skills` VALUES(455, 12, 101);
INSERT INTO `obj_students_skills` VALUES(456, 12, 99);
INSERT INTO `obj_students_skills` VALUES(457, 12, 75);
INSERT INTO `obj_students_skills` VALUES(458, 12, 73);
INSERT INTO `obj_students_skills` VALUES(459, 12, 94);
INSERT INTO `obj_students_skills` VALUES(460, 12, 77);
INSERT INTO `obj_students_skills` VALUES(461, 12, 68);
INSERT INTO `obj_students_skills` VALUES(462, 12, 91);
INSERT INTO `obj_students_skills` VALUES(463, 12, 56);
INSERT INTO `obj_students_skills` VALUES(464, 12, 70);
INSERT INTO `obj_students_skills` VALUES(465, 12, 92);
INSERT INTO `obj_students_skills` VALUES(466, 12, 88);
INSERT INTO `obj_students_skills` VALUES(467, 12, 79);
INSERT INTO `obj_students_skills` VALUES(468, 12, 89);
INSERT INTO `obj_students_skills` VALUES(469, 12, 82);
INSERT INTO `obj_students_skills` VALUES(470, 12, 97);
INSERT INTO `obj_students_skills` VALUES(471, 12, 78);
INSERT INTO `obj_students_skills` VALUES(472, 12, 93);
INSERT INTO `obj_students_skills` VALUES(473, 12, 72);
INSERT INTO `obj_students_skills` VALUES(474, 12, 83);
INSERT INTO `obj_students_skills` VALUES(475, 12, 95);
INSERT INTO `obj_students_skills` VALUES(476, 12, 65);
INSERT INTO `obj_students_skills` VALUES(477, 12, 58);
INSERT INTO `obj_students_skills` VALUES(478, 12, 74);
INSERT INTO `obj_students_skills` VALUES(479, 12, 81);
INSERT INTO `obj_students_skills` VALUES(480, 12, 110);
INSERT INTO `obj_students_skills` VALUES(481, 12, 108);
INSERT INTO `obj_students_skills` VALUES(482, 12, 109);
INSERT INTO `obj_students_skills` VALUES(483, 13, 4);
INSERT INTO `obj_students_skills` VALUES(484, 13, 7);
INSERT INTO `obj_students_skills` VALUES(485, 13, 8);
INSERT INTO `obj_students_skills` VALUES(486, 13, 1);
INSERT INTO `obj_students_skills` VALUES(487, 13, 2);
INSERT INTO `obj_students_skills` VALUES(488, 13, 5);
INSERT INTO `obj_students_skills` VALUES(489, 13, 10);
INSERT INTO `obj_students_skills` VALUES(490, 13, 46);
INSERT INTO `obj_students_skills` VALUES(491, 13, 48);
INSERT INTO `obj_students_skills` VALUES(492, 13, 19);
INSERT INTO `obj_students_skills` VALUES(493, 13, 38);
INSERT INTO `obj_students_skills` VALUES(494, 13, 35);
INSERT INTO `obj_students_skills` VALUES(495, 13, 27);
INSERT INTO `obj_students_skills` VALUES(496, 13, 55);
INSERT INTO `obj_students_skills` VALUES(497, 13, 41);
INSERT INTO `obj_students_skills` VALUES(498, 13, 43);
INSERT INTO `obj_students_skills` VALUES(499, 13, 45);
INSERT INTO `obj_students_skills` VALUES(500, 13, 60);
INSERT INTO `obj_students_skills` VALUES(501, 13, 90);
INSERT INTO `obj_students_skills` VALUES(502, 13, 101);
INSERT INTO `obj_students_skills` VALUES(503, 13, 68);
INSERT INTO `obj_students_skills` VALUES(504, 13, 76);
INSERT INTO `obj_students_skills` VALUES(505, 13, 64);
INSERT INTO `obj_students_skills` VALUES(506, 13, 98);
INSERT INTO `obj_students_skills` VALUES(507, 13, 85);
INSERT INTO `obj_students_skills` VALUES(508, 13, 97);
INSERT INTO `obj_students_skills` VALUES(509, 13, 78);
INSERT INTO `obj_students_skills` VALUES(510, 13, 61);
INSERT INTO `obj_students_skills` VALUES(511, 13, 66);
INSERT INTO `obj_students_skills` VALUES(512, 13, 93);
INSERT INTO `obj_students_skills` VALUES(513, 13, 63);
INSERT INTO `obj_students_skills` VALUES(514, 13, 57);
INSERT INTO `obj_students_skills` VALUES(515, 13, 100);
INSERT INTO `obj_students_skills` VALUES(516, 13, 80);
INSERT INTO `obj_students_skills` VALUES(517, 13, 83);
INSERT INTO `obj_students_skills` VALUES(518, 13, 58);
INSERT INTO `obj_students_skills` VALUES(519, 13, 106);
INSERT INTO `obj_students_skills` VALUES(520, 13, 110);
INSERT INTO `obj_students_skills` VALUES(521, 13, 104);
INSERT INTO `obj_students_skills` VALUES(522, 13, 108);
INSERT INTO `obj_students_skills` VALUES(523, 13, 107);
INSERT INTO `obj_students_skills` VALUES(524, 13, 109);
INSERT INTO `obj_students_skills` VALUES(525, 14, 4);
INSERT INTO `obj_students_skills` VALUES(526, 14, 7);
INSERT INTO `obj_students_skills` VALUES(527, 14, 8);
INSERT INTO `obj_students_skills` VALUES(528, 14, 1);
INSERT INTO `obj_students_skills` VALUES(529, 14, 2);
INSERT INTO `obj_students_skills` VALUES(530, 14, 5);
INSERT INTO `obj_students_skills` VALUES(531, 14, 3);
INSERT INTO `obj_students_skills` VALUES(532, 14, 10);
INSERT INTO `obj_students_skills` VALUES(533, 14, 51);
INSERT INTO `obj_students_skills` VALUES(534, 14, 40);
INSERT INTO `obj_students_skills` VALUES(535, 14, 46);
INSERT INTO `obj_students_skills` VALUES(536, 14, 47);
INSERT INTO `obj_students_skills` VALUES(537, 14, 34);
INSERT INTO `obj_students_skills` VALUES(538, 14, 11);
INSERT INTO `obj_students_skills` VALUES(539, 14, 38);
INSERT INTO `obj_students_skills` VALUES(540, 14, 35);
INSERT INTO `obj_students_skills` VALUES(541, 14, 22);
INSERT INTO `obj_students_skills` VALUES(542, 14, 25);
INSERT INTO `obj_students_skills` VALUES(543, 14, 32);
INSERT INTO `obj_students_skills` VALUES(544, 14, 24);
INSERT INTO `obj_students_skills` VALUES(545, 14, 55);
INSERT INTO `obj_students_skills` VALUES(546, 14, 52);
INSERT INTO `obj_students_skills` VALUES(547, 14, 41);
INSERT INTO `obj_students_skills` VALUES(548, 14, 102);
INSERT INTO `obj_students_skills` VALUES(549, 14, 60);
INSERT INTO `obj_students_skills` VALUES(550, 14, 86);
INSERT INTO `obj_students_skills` VALUES(551, 14, 84);
INSERT INTO `obj_students_skills` VALUES(552, 14, 101);
INSERT INTO `obj_students_skills` VALUES(553, 14, 68);
INSERT INTO `obj_students_skills` VALUES(554, 14, 103);
INSERT INTO `obj_students_skills` VALUES(555, 14, 69);
INSERT INTO `obj_students_skills` VALUES(556, 14, 76);
INSERT INTO `obj_students_skills` VALUES(557, 14, 64);
INSERT INTO `obj_students_skills` VALUES(558, 14, 98);
INSERT INTO `obj_students_skills` VALUES(559, 14, 87);
INSERT INTO `obj_students_skills` VALUES(560, 14, 97);
INSERT INTO `obj_students_skills` VALUES(561, 14, 61);
INSERT INTO `obj_students_skills` VALUES(562, 14, 66);
INSERT INTO `obj_students_skills` VALUES(563, 14, 93);
INSERT INTO `obj_students_skills` VALUES(564, 14, 80);
INSERT INTO `obj_students_skills` VALUES(565, 14, 106);
INSERT INTO `obj_students_skills` VALUES(566, 14, 110);
INSERT INTO `obj_students_skills` VALUES(567, 14, 104);
INSERT INTO `obj_students_skills` VALUES(568, 14, 108);
INSERT INTO `obj_students_skills` VALUES(569, 14, 107);
INSERT INTO `obj_students_skills` VALUES(570, 14, 109);
INSERT INTO `obj_students_skills` VALUES(571, 15, 4);
INSERT INTO `obj_students_skills` VALUES(572, 15, 7);
INSERT INTO `obj_students_skills` VALUES(573, 15, 8);
INSERT INTO `obj_students_skills` VALUES(574, 15, 1);
INSERT INTO `obj_students_skills` VALUES(575, 15, 3);
INSERT INTO `obj_students_skills` VALUES(576, 15, 10);
INSERT INTO `obj_students_skills` VALUES(577, 15, 40);
INSERT INTO `obj_students_skills` VALUES(578, 15, 46);
INSERT INTO `obj_students_skills` VALUES(579, 15, 19);
INSERT INTO `obj_students_skills` VALUES(580, 15, 38);
INSERT INTO `obj_students_skills` VALUES(581, 15, 27);
INSERT INTO `obj_students_skills` VALUES(582, 15, 25);
INSERT INTO `obj_students_skills` VALUES(583, 15, 32);
INSERT INTO `obj_students_skills` VALUES(584, 15, 41);
INSERT INTO `obj_students_skills` VALUES(585, 15, 43);
INSERT INTO `obj_students_skills` VALUES(586, 15, 16);
INSERT INTO `obj_students_skills` VALUES(587, 15, 14);
INSERT INTO `obj_students_skills` VALUES(588, 15, 15);
INSERT INTO `obj_students_skills` VALUES(589, 15, 30);
INSERT INTO `obj_students_skills` VALUES(590, 15, 59);
INSERT INTO `obj_students_skills` VALUES(591, 15, 87);
INSERT INTO `obj_students_skills` VALUES(592, 15, 97);
INSERT INTO `obj_students_skills` VALUES(593, 15, 61);
INSERT INTO `obj_students_skills` VALUES(594, 15, 66);
INSERT INTO `obj_students_skills` VALUES(595, 15, 93);
INSERT INTO `obj_students_skills` VALUES(596, 15, 63);
INSERT INTO `obj_students_skills` VALUES(597, 15, 62);
INSERT INTO `obj_students_skills` VALUES(598, 15, 58);
INSERT INTO `obj_students_skills` VALUES(599, 15, 106);
INSERT INTO `obj_students_skills` VALUES(600, 15, 108);
INSERT INTO `obj_students_skills` VALUES(601, 15, 109);
INSERT INTO `obj_students_skills` VALUES(603, 16, 4);
INSERT INTO `obj_students_skills` VALUES(604, 16, 7);
INSERT INTO `obj_students_skills` VALUES(605, 16, 1);
INSERT INTO `obj_students_skills` VALUES(606, 16, 2);
INSERT INTO `obj_students_skills` VALUES(607, 16, 46);
INSERT INTO `obj_students_skills` VALUES(608, 16, 34);
INSERT INTO `obj_students_skills` VALUES(609, 16, 19);
INSERT INTO `obj_students_skills` VALUES(610, 16, 38);
INSERT INTO `obj_students_skills` VALUES(611, 16, 35);
INSERT INTO `obj_students_skills` VALUES(612, 16, 27);
INSERT INTO `obj_students_skills` VALUES(613, 16, 41);
INSERT INTO `obj_students_skills` VALUES(614, 16, 43);
INSERT INTO `obj_students_skills` VALUES(615, 16, 16);
INSERT INTO `obj_students_skills` VALUES(616, 16, 60);
INSERT INTO `obj_students_skills` VALUES(617, 16, 86);
INSERT INTO `obj_students_skills` VALUES(618, 16, 96);
INSERT INTO `obj_students_skills` VALUES(619, 16, 84);
INSERT INTO `obj_students_skills` VALUES(620, 16, 101);
INSERT INTO `obj_students_skills` VALUES(621, 16, 103);
INSERT INTO `obj_students_skills` VALUES(622, 16, 76);
INSERT INTO `obj_students_skills` VALUES(623, 16, 98);
INSERT INTO `obj_students_skills` VALUES(624, 16, 87);
INSERT INTO `obj_students_skills` VALUES(625, 16, 61);
INSERT INTO `obj_students_skills` VALUES(626, 16, 66);
INSERT INTO `obj_students_skills` VALUES(627, 16, 106);
INSERT INTO `obj_students_skills` VALUES(628, 16, 107);
INSERT INTO `obj_students_skills` VALUES(629, 16, 109);
INSERT INTO `obj_students_skills` VALUES(630, 17, 4);
INSERT INTO `obj_students_skills` VALUES(631, 17, 7);
INSERT INTO `obj_students_skills` VALUES(632, 17, 8);
INSERT INTO `obj_students_skills` VALUES(633, 17, 1);
INSERT INTO `obj_students_skills` VALUES(634, 17, 3);
INSERT INTO `obj_students_skills` VALUES(635, 17, 10);
INSERT INTO `obj_students_skills` VALUES(636, 17, 40);
INSERT INTO `obj_students_skills` VALUES(637, 17, 46);
INSERT INTO `obj_students_skills` VALUES(638, 17, 19);
INSERT INTO `obj_students_skills` VALUES(639, 17, 38);
INSERT INTO `obj_students_skills` VALUES(640, 17, 27);
INSERT INTO `obj_students_skills` VALUES(641, 17, 25);
INSERT INTO `obj_students_skills` VALUES(642, 17, 32);
INSERT INTO `obj_students_skills` VALUES(643, 17, 41);
INSERT INTO `obj_students_skills` VALUES(644, 17, 43);
INSERT INTO `obj_students_skills` VALUES(645, 17, 16);
INSERT INTO `obj_students_skills` VALUES(646, 17, 14);
INSERT INTO `obj_students_skills` VALUES(647, 17, 15);
INSERT INTO `obj_students_skills` VALUES(648, 17, 30);
INSERT INTO `obj_students_skills` VALUES(649, 17, 59);
INSERT INTO `obj_students_skills` VALUES(650, 17, 87);
INSERT INTO `obj_students_skills` VALUES(651, 17, 97);
INSERT INTO `obj_students_skills` VALUES(652, 17, 61);
INSERT INTO `obj_students_skills` VALUES(653, 17, 66);
INSERT INTO `obj_students_skills` VALUES(654, 17, 93);
INSERT INTO `obj_students_skills` VALUES(655, 17, 63);
INSERT INTO `obj_students_skills` VALUES(656, 17, 62);
INSERT INTO `obj_students_skills` VALUES(657, 17, 58);
INSERT INTO `obj_students_skills` VALUES(658, 17, 106);
INSERT INTO `obj_students_skills` VALUES(659, 17, 108);
INSERT INTO `obj_students_skills` VALUES(660, 17, 109);
INSERT INTO `obj_students_skills` VALUES(661, 18, 4);
INSERT INTO `obj_students_skills` VALUES(662, 18, 7);
INSERT INTO `obj_students_skills` VALUES(663, 18, 5);
INSERT INTO `obj_students_skills` VALUES(664, 18, 3);
INSERT INTO `obj_students_skills` VALUES(665, 18, 10);
INSERT INTO `obj_students_skills` VALUES(666, 18, 46);
INSERT INTO `obj_students_skills` VALUES(667, 18, 19);
INSERT INTO `obj_students_skills` VALUES(668, 18, 53);
INSERT INTO `obj_students_skills` VALUES(669, 18, 11);
INSERT INTO `obj_students_skills` VALUES(670, 18, 38);
INSERT INTO `obj_students_skills` VALUES(671, 18, 29);
INSERT INTO `obj_students_skills` VALUES(672, 18, 35);
INSERT INTO `obj_students_skills` VALUES(673, 18, 27);
INSERT INTO `obj_students_skills` VALUES(674, 18, 18);
INSERT INTO `obj_students_skills` VALUES(675, 18, 22);
INSERT INTO `obj_students_skills` VALUES(676, 18, 25);
INSERT INTO `obj_students_skills` VALUES(677, 18, 55);
INSERT INTO `obj_students_skills` VALUES(678, 18, 52);
INSERT INTO `obj_students_skills` VALUES(679, 18, 39);
INSERT INTO `obj_students_skills` VALUES(680, 18, 41);
INSERT INTO `obj_students_skills` VALUES(681, 18, 43);
INSERT INTO `obj_students_skills` VALUES(682, 18, 16);
INSERT INTO `obj_students_skills` VALUES(683, 18, 17);
INSERT INTO `obj_students_skills` VALUES(684, 18, 15);
INSERT INTO `obj_students_skills` VALUES(685, 18, 102);
INSERT INTO `obj_students_skills` VALUES(686, 18, 60);
INSERT INTO `obj_students_skills` VALUES(687, 18, 86);
INSERT INTO `obj_students_skills` VALUES(688, 18, 96);
INSERT INTO `obj_students_skills` VALUES(689, 18, 59);
INSERT INTO `obj_students_skills` VALUES(690, 18, 84);
INSERT INTO `obj_students_skills` VALUES(691, 18, 90);
INSERT INTO `obj_students_skills` VALUES(692, 18, 101);
INSERT INTO `obj_students_skills` VALUES(693, 18, 99);
INSERT INTO `obj_students_skills` VALUES(694, 18, 75);
INSERT INTO `obj_students_skills` VALUES(695, 18, 73);
INSERT INTO `obj_students_skills` VALUES(696, 18, 94);
INSERT INTO `obj_students_skills` VALUES(697, 18, 77);
INSERT INTO `obj_students_skills` VALUES(698, 18, 68);
INSERT INTO `obj_students_skills` VALUES(699, 18, 91);
INSERT INTO `obj_students_skills` VALUES(700, 18, 103);
INSERT INTO `obj_students_skills` VALUES(701, 18, 56);
INSERT INTO `obj_students_skills` VALUES(702, 18, 70);
INSERT INTO `obj_students_skills` VALUES(703, 18, 92);
INSERT INTO `obj_students_skills` VALUES(704, 18, 88);
INSERT INTO `obj_students_skills` VALUES(705, 18, 89);
INSERT INTO `obj_students_skills` VALUES(706, 18, 82);
INSERT INTO `obj_students_skills` VALUES(707, 18, 97);
INSERT INTO `obj_students_skills` VALUES(708, 18, 78);
INSERT INTO `obj_students_skills` VALUES(709, 18, 93);
INSERT INTO `obj_students_skills` VALUES(710, 18, 72);
INSERT INTO `obj_students_skills` VALUES(711, 18, 83);
INSERT INTO `obj_students_skills` VALUES(712, 18, 58);
INSERT INTO `obj_students_skills` VALUES(713, 18, 74);
INSERT INTO `obj_students_skills` VALUES(714, 18, 81);
INSERT INTO `obj_students_skills` VALUES(715, 18, 106);
INSERT INTO `obj_students_skills` VALUES(716, 18, 110);
INSERT INTO `obj_students_skills` VALUES(717, 18, 104);
INSERT INTO `obj_students_skills` VALUES(718, 18, 108);
INSERT INTO `obj_students_skills` VALUES(719, 18, 109);
INSERT INTO `obj_students_skills` VALUES(720, 19, 4);
INSERT INTO `obj_students_skills` VALUES(721, 19, 7);
INSERT INTO `obj_students_skills` VALUES(722, 19, 8);
INSERT INTO `obj_students_skills` VALUES(723, 19, 1);
INSERT INTO `obj_students_skills` VALUES(724, 19, 2);
INSERT INTO `obj_students_skills` VALUES(725, 19, 46);
INSERT INTO `obj_students_skills` VALUES(726, 19, 11);
INSERT INTO `obj_students_skills` VALUES(727, 19, 38);
INSERT INTO `obj_students_skills` VALUES(728, 19, 35);
INSERT INTO `obj_students_skills` VALUES(729, 19, 27);
INSERT INTO `obj_students_skills` VALUES(730, 19, 55);
INSERT INTO `obj_students_skills` VALUES(731, 19, 41);
INSERT INTO `obj_students_skills` VALUES(732, 19, 43);
INSERT INTO `obj_students_skills` VALUES(733, 19, 60);
INSERT INTO `obj_students_skills` VALUES(734, 19, 86);
INSERT INTO `obj_students_skills` VALUES(735, 19, 84);
INSERT INTO `obj_students_skills` VALUES(736, 19, 101);
INSERT INTO `obj_students_skills` VALUES(737, 19, 99);
INSERT INTO `obj_students_skills` VALUES(738, 19, 68);
INSERT INTO `obj_students_skills` VALUES(739, 19, 76);
INSERT INTO `obj_students_skills` VALUES(740, 19, 64);
INSERT INTO `obj_students_skills` VALUES(741, 19, 98);
INSERT INTO `obj_students_skills` VALUES(742, 19, 71);
INSERT INTO `obj_students_skills` VALUES(743, 19, 85);
INSERT INTO `obj_students_skills` VALUES(744, 19, 97);
INSERT INTO `obj_students_skills` VALUES(745, 19, 61);
INSERT INTO `obj_students_skills` VALUES(746, 19, 66);
INSERT INTO `obj_students_skills` VALUES(747, 19, 93);
INSERT INTO `obj_students_skills` VALUES(748, 19, 62);
INSERT INTO `obj_students_skills` VALUES(749, 19, 83);
INSERT INTO `obj_students_skills` VALUES(750, 19, 58);
INSERT INTO `obj_students_skills` VALUES(751, 19, 106);
INSERT INTO `obj_students_skills` VALUES(752, 19, 108);
INSERT INTO `obj_students_skills` VALUES(753, 19, 107);
INSERT INTO `obj_students_skills` VALUES(754, 19, 109);
INSERT INTO `obj_students_skills` VALUES(755, 20, 4);
INSERT INTO `obj_students_skills` VALUES(756, 20, 7);
INSERT INTO `obj_students_skills` VALUES(757, 20, 1);
INSERT INTO `obj_students_skills` VALUES(758, 20, 2);
INSERT INTO `obj_students_skills` VALUES(759, 20, 3);
INSERT INTO `obj_students_skills` VALUES(760, 20, 10);
INSERT INTO `obj_students_skills` VALUES(761, 20, 11);
INSERT INTO `obj_students_skills` VALUES(762, 20, 24);
INSERT INTO `obj_students_skills` VALUES(763, 20, 12);
INSERT INTO `obj_students_skills` VALUES(764, 20, 30);
INSERT INTO `obj_students_skills` VALUES(765, 20, 101);
INSERT INTO `obj_students_skills` VALUES(766, 20, 68);
INSERT INTO `obj_students_skills` VALUES(767, 20, 103);
INSERT INTO `obj_students_skills` VALUES(768, 20, 69);
INSERT INTO `obj_students_skills` VALUES(769, 20, 76);
INSERT INTO `obj_students_skills` VALUES(770, 20, 64);
INSERT INTO `obj_students_skills` VALUES(771, 20, 98);
INSERT INTO `obj_students_skills` VALUES(772, 20, 71);
INSERT INTO `obj_students_skills` VALUES(773, 20, 87);
INSERT INTO `obj_students_skills` VALUES(774, 20, 97);
INSERT INTO `obj_students_skills` VALUES(775, 20, 61);
INSERT INTO `obj_students_skills` VALUES(776, 20, 66);
INSERT INTO `obj_students_skills` VALUES(777, 20, 93);
INSERT INTO `obj_students_skills` VALUES(778, 20, 63);
INSERT INTO `obj_students_skills` VALUES(779, 20, 57);
INSERT INTO `obj_students_skills` VALUES(780, 20, 100);
INSERT INTO `obj_students_skills` VALUES(781, 20, 62);
INSERT INTO `obj_students_skills` VALUES(782, 20, 106);
INSERT INTO `obj_students_skills` VALUES(783, 20, 104);
INSERT INTO `obj_students_skills` VALUES(784, 20, 108);
INSERT INTO `obj_students_skills` VALUES(785, 20, 107);
INSERT INTO `obj_students_skills` VALUES(786, 20, 109);
INSERT INTO `obj_students_skills` VALUES(787, 21, 4);
INSERT INTO `obj_students_skills` VALUES(788, 21, 7);
INSERT INTO `obj_students_skills` VALUES(789, 21, 8);
INSERT INTO `obj_students_skills` VALUES(790, 21, 1);
INSERT INTO `obj_students_skills` VALUES(791, 21, 2);
INSERT INTO `obj_students_skills` VALUES(792, 21, 5);
INSERT INTO `obj_students_skills` VALUES(793, 21, 3);
INSERT INTO `obj_students_skills` VALUES(794, 21, 10);
INSERT INTO `obj_students_skills` VALUES(795, 21, 51);
INSERT INTO `obj_students_skills` VALUES(796, 21, 40);
INSERT INTO `obj_students_skills` VALUES(797, 21, 46);
INSERT INTO `obj_students_skills` VALUES(798, 21, 34);
INSERT INTO `obj_students_skills` VALUES(799, 21, 19);
INSERT INTO `obj_students_skills` VALUES(800, 21, 53);
INSERT INTO `obj_students_skills` VALUES(801, 21, 11);
INSERT INTO `obj_students_skills` VALUES(802, 21, 54);
INSERT INTO `obj_students_skills` VALUES(803, 21, 38);
INSERT INTO `obj_students_skills` VALUES(804, 21, 29);
INSERT INTO `obj_students_skills` VALUES(805, 21, 35);
INSERT INTO `obj_students_skills` VALUES(806, 21, 27);
INSERT INTO `obj_students_skills` VALUES(807, 21, 18);
INSERT INTO `obj_students_skills` VALUES(808, 21, 22);
INSERT INTO `obj_students_skills` VALUES(809, 21, 21);
INSERT INTO `obj_students_skills` VALUES(810, 21, 25);
INSERT INTO `obj_students_skills` VALUES(811, 21, 37);
INSERT INTO `obj_students_skills` VALUES(812, 21, 32);
INSERT INTO `obj_students_skills` VALUES(813, 21, 31);
INSERT INTO `obj_students_skills` VALUES(814, 21, 24);
INSERT INTO `obj_students_skills` VALUES(815, 21, 55);
INSERT INTO `obj_students_skills` VALUES(816, 21, 52);
INSERT INTO `obj_students_skills` VALUES(817, 21, 49);
INSERT INTO `obj_students_skills` VALUES(818, 21, 39);
INSERT INTO `obj_students_skills` VALUES(819, 21, 41);
INSERT INTO `obj_students_skills` VALUES(820, 21, 43);
INSERT INTO `obj_students_skills` VALUES(821, 21, 45);
INSERT INTO `obj_students_skills` VALUES(822, 21, 16);
INSERT INTO `obj_students_skills` VALUES(823, 21, 17);
INSERT INTO `obj_students_skills` VALUES(824, 21, 102);
INSERT INTO `obj_students_skills` VALUES(825, 21, 60);
INSERT INTO `obj_students_skills` VALUES(826, 21, 86);
INSERT INTO `obj_students_skills` VALUES(827, 21, 84);
INSERT INTO `obj_students_skills` VALUES(828, 21, 101);
INSERT INTO `obj_students_skills` VALUES(829, 21, 99);
INSERT INTO `obj_students_skills` VALUES(830, 21, 68);
INSERT INTO `obj_students_skills` VALUES(831, 21, 91);
INSERT INTO `obj_students_skills` VALUES(832, 21, 69);
INSERT INTO `obj_students_skills` VALUES(833, 21, 76);
INSERT INTO `obj_students_skills` VALUES(834, 21, 64);
INSERT INTO `obj_students_skills` VALUES(835, 21, 98);
INSERT INTO `obj_students_skills` VALUES(836, 21, 71);
INSERT INTO `obj_students_skills` VALUES(837, 21, 87);
INSERT INTO `obj_students_skills` VALUES(838, 21, 97);
INSERT INTO `obj_students_skills` VALUES(839, 21, 78);
INSERT INTO `obj_students_skills` VALUES(840, 21, 61);
INSERT INTO `obj_students_skills` VALUES(841, 21, 66);
INSERT INTO `obj_students_skills` VALUES(842, 21, 93);
INSERT INTO `obj_students_skills` VALUES(843, 21, 80);
INSERT INTO `obj_students_skills` VALUES(844, 21, 58);
INSERT INTO `obj_students_skills` VALUES(845, 21, 106);
INSERT INTO `obj_students_skills` VALUES(846, 21, 110);
INSERT INTO `obj_students_skills` VALUES(847, 21, 111);
INSERT INTO `obj_students_skills` VALUES(848, 21, 104);
INSERT INTO `obj_students_skills` VALUES(849, 21, 108);
INSERT INTO `obj_students_skills` VALUES(850, 21, 107);
INSERT INTO `obj_students_skills` VALUES(851, 21, 109);
INSERT INTO `obj_students_skills` VALUES(852, 22, 4);
INSERT INTO `obj_students_skills` VALUES(853, 22, 7);
INSERT INTO `obj_students_skills` VALUES(854, 22, 8);
INSERT INTO `obj_students_skills` VALUES(855, 22, 1);
INSERT INTO `obj_students_skills` VALUES(856, 22, 2);
INSERT INTO `obj_students_skills` VALUES(857, 22, 5);
INSERT INTO `obj_students_skills` VALUES(858, 22, 51);
INSERT INTO `obj_students_skills` VALUES(859, 22, 40);
INSERT INTO `obj_students_skills` VALUES(860, 22, 46);
INSERT INTO `obj_students_skills` VALUES(861, 22, 23);
INSERT INTO `obj_students_skills` VALUES(862, 22, 34);
INSERT INTO `obj_students_skills` VALUES(863, 22, 19);
INSERT INTO `obj_students_skills` VALUES(864, 22, 38);
INSERT INTO `obj_students_skills` VALUES(865, 22, 35);
INSERT INTO `obj_students_skills` VALUES(866, 22, 27);
INSERT INTO `obj_students_skills` VALUES(867, 22, 18);
INSERT INTO `obj_students_skills` VALUES(868, 22, 22);
INSERT INTO `obj_students_skills` VALUES(869, 22, 21);
INSERT INTO `obj_students_skills` VALUES(870, 22, 25);
INSERT INTO `obj_students_skills` VALUES(871, 22, 37);
INSERT INTO `obj_students_skills` VALUES(872, 22, 55);
INSERT INTO `obj_students_skills` VALUES(873, 22, 52);
INSERT INTO `obj_students_skills` VALUES(874, 22, 39);
INSERT INTO `obj_students_skills` VALUES(875, 22, 41);
INSERT INTO `obj_students_skills` VALUES(876, 22, 43);
INSERT INTO `obj_students_skills` VALUES(877, 22, 16);
INSERT INTO `obj_students_skills` VALUES(878, 22, 30);
INSERT INTO `obj_students_skills` VALUES(879, 22, 102);
INSERT INTO `obj_students_skills` VALUES(880, 22, 60);
INSERT INTO `obj_students_skills` VALUES(881, 22, 86);
INSERT INTO `obj_students_skills` VALUES(882, 22, 84);
INSERT INTO `obj_students_skills` VALUES(883, 22, 101);
INSERT INTO `obj_students_skills` VALUES(884, 22, 99);
INSERT INTO `obj_students_skills` VALUES(885, 22, 68);
INSERT INTO `obj_students_skills` VALUES(886, 22, 103);
INSERT INTO `obj_students_skills` VALUES(887, 22, 76);
INSERT INTO `obj_students_skills` VALUES(888, 22, 64);
INSERT INTO `obj_students_skills` VALUES(889, 22, 98);
INSERT INTO `obj_students_skills` VALUES(890, 22, 71);
INSERT INTO `obj_students_skills` VALUES(891, 22, 87);
INSERT INTO `obj_students_skills` VALUES(892, 22, 97);
INSERT INTO `obj_students_skills` VALUES(893, 22, 66);
INSERT INTO `obj_students_skills` VALUES(894, 22, 93);
INSERT INTO `obj_students_skills` VALUES(895, 22, 63);
INSERT INTO `obj_students_skills` VALUES(896, 22, 80);
INSERT INTO `obj_students_skills` VALUES(897, 22, 83);
INSERT INTO `obj_students_skills` VALUES(898, 22, 58);
INSERT INTO `obj_students_skills` VALUES(899, 22, 106);
INSERT INTO `obj_students_skills` VALUES(900, 22, 104);
INSERT INTO `obj_students_skills` VALUES(901, 22, 108);
INSERT INTO `obj_students_skills` VALUES(902, 22, 107);
INSERT INTO `obj_students_skills` VALUES(903, 22, 109);
INSERT INTO `obj_students_skills` VALUES(904, 23, 4);
INSERT INTO `obj_students_skills` VALUES(905, 23, 1);
INSERT INTO `obj_students_skills` VALUES(906, 23, 2);
INSERT INTO `obj_students_skills` VALUES(907, 23, 5);
INSERT INTO `obj_students_skills` VALUES(908, 23, 10);
INSERT INTO `obj_students_skills` VALUES(909, 23, 46);
INSERT INTO `obj_students_skills` VALUES(910, 23, 34);
INSERT INTO `obj_students_skills` VALUES(911, 23, 48);
INSERT INTO `obj_students_skills` VALUES(912, 23, 35);
INSERT INTO `obj_students_skills` VALUES(913, 23, 27);
INSERT INTO `obj_students_skills` VALUES(914, 23, 25);
INSERT INTO `obj_students_skills` VALUES(915, 23, 55);
INSERT INTO `obj_students_skills` VALUES(916, 23, 49);
INSERT INTO `obj_students_skills` VALUES(917, 23, 39);
INSERT INTO `obj_students_skills` VALUES(918, 23, 41);
INSERT INTO `obj_students_skills` VALUES(919, 23, 43);
INSERT INTO `obj_students_skills` VALUES(920, 23, 102);
INSERT INTO `obj_students_skills` VALUES(921, 23, 86);
INSERT INTO `obj_students_skills` VALUES(922, 23, 101);
INSERT INTO `obj_students_skills` VALUES(923, 23, 99);
INSERT INTO `obj_students_skills` VALUES(924, 23, 68);
INSERT INTO `obj_students_skills` VALUES(925, 23, 69);
INSERT INTO `obj_students_skills` VALUES(926, 23, 76);
INSERT INTO `obj_students_skills` VALUES(927, 23, 64);
INSERT INTO `obj_students_skills` VALUES(928, 23, 98);
INSERT INTO `obj_students_skills` VALUES(929, 23, 85);
INSERT INTO `obj_students_skills` VALUES(930, 23, 87);
INSERT INTO `obj_students_skills` VALUES(931, 23, 97);
INSERT INTO `obj_students_skills` VALUES(932, 23, 66);
INSERT INTO `obj_students_skills` VALUES(933, 23, 93);
INSERT INTO `obj_students_skills` VALUES(934, 23, 63);
INSERT INTO `obj_students_skills` VALUES(935, 23, 57);
INSERT INTO `obj_students_skills` VALUES(936, 23, 72);
INSERT INTO `obj_students_skills` VALUES(937, 23, 106);
INSERT INTO `obj_students_skills` VALUES(938, 23, 110);
INSERT INTO `obj_students_skills` VALUES(939, 23, 108);
INSERT INTO `obj_students_skills` VALUES(940, 23, 107);
INSERT INTO `obj_students_skills` VALUES(941, 23, 109);
INSERT INTO `obj_students_skills` VALUES(942, 24, 4);
INSERT INTO `obj_students_skills` VALUES(943, 24, 7);
INSERT INTO `obj_students_skills` VALUES(944, 24, 51);
INSERT INTO `obj_students_skills` VALUES(945, 24, 40);
INSERT INTO `obj_students_skills` VALUES(946, 24, 23);
INSERT INTO `obj_students_skills` VALUES(947, 24, 34);
INSERT INTO `obj_students_skills` VALUES(948, 24, 32);
INSERT INTO `obj_students_skills` VALUES(949, 24, 55);
INSERT INTO `obj_students_skills` VALUES(950, 24, 52);
INSERT INTO `obj_students_skills` VALUES(951, 24, 49);
INSERT INTO `obj_students_skills` VALUES(952, 24, 102);
INSERT INTO `obj_students_skills` VALUES(953, 24, 84);
INSERT INTO `obj_students_skills` VALUES(954, 24, 68);
INSERT INTO `obj_students_skills` VALUES(955, 24, 69);
INSERT INTO `obj_students_skills` VALUES(956, 24, 76);
INSERT INTO `obj_students_skills` VALUES(957, 24, 61);
INSERT INTO `obj_students_skills` VALUES(958, 24, 66);
INSERT INTO `obj_students_skills` VALUES(959, 24, 106);
INSERT INTO `obj_students_skills` VALUES(960, 24, 104);
INSERT INTO `obj_students_skills` VALUES(961, 24, 108);
INSERT INTO `obj_students_skills` VALUES(962, 24, 109);
INSERT INTO `obj_students_skills` VALUES(963, 25, 4);
INSERT INTO `obj_students_skills` VALUES(964, 25, 7);
INSERT INTO `obj_students_skills` VALUES(965, 25, 8);
INSERT INTO `obj_students_skills` VALUES(966, 25, 1);
INSERT INTO `obj_students_skills` VALUES(967, 25, 2);
INSERT INTO `obj_students_skills` VALUES(968, 25, 5);
INSERT INTO `obj_students_skills` VALUES(969, 25, 3);
INSERT INTO `obj_students_skills` VALUES(970, 25, 10);
INSERT INTO `obj_students_skills` VALUES(971, 25, 51);
INSERT INTO `obj_students_skills` VALUES(972, 25, 40);
INSERT INTO `obj_students_skills` VALUES(973, 25, 46);
INSERT INTO `obj_students_skills` VALUES(974, 25, 47);
INSERT INTO `obj_students_skills` VALUES(975, 25, 34);
INSERT INTO `obj_students_skills` VALUES(976, 25, 19);
INSERT INTO `obj_students_skills` VALUES(977, 25, 11);
INSERT INTO `obj_students_skills` VALUES(978, 25, 54);
INSERT INTO `obj_students_skills` VALUES(979, 25, 38);
INSERT INTO `obj_students_skills` VALUES(980, 25, 35);
INSERT INTO `obj_students_skills` VALUES(981, 25, 27);
INSERT INTO `obj_students_skills` VALUES(982, 25, 18);
INSERT INTO `obj_students_skills` VALUES(983, 25, 22);
INSERT INTO `obj_students_skills` VALUES(984, 25, 21);
INSERT INTO `obj_students_skills` VALUES(985, 25, 25);
INSERT INTO `obj_students_skills` VALUES(986, 25, 37);
INSERT INTO `obj_students_skills` VALUES(987, 25, 32);
INSERT INTO `obj_students_skills` VALUES(988, 25, 31);
INSERT INTO `obj_students_skills` VALUES(989, 25, 55);
INSERT INTO `obj_students_skills` VALUES(990, 25, 52);
INSERT INTO `obj_students_skills` VALUES(991, 25, 49);
INSERT INTO `obj_students_skills` VALUES(992, 25, 39);
INSERT INTO `obj_students_skills` VALUES(993, 25, 41);
INSERT INTO `obj_students_skills` VALUES(994, 25, 43);
INSERT INTO `obj_students_skills` VALUES(995, 25, 45);
INSERT INTO `obj_students_skills` VALUES(996, 25, 16);
INSERT INTO `obj_students_skills` VALUES(997, 25, 17);
INSERT INTO `obj_students_skills` VALUES(998, 25, 12);
INSERT INTO `obj_students_skills` VALUES(999, 25, 102);
INSERT INTO `obj_students_skills` VALUES(1000, 25, 60);
INSERT INTO `obj_students_skills` VALUES(1001, 25, 86);
INSERT INTO `obj_students_skills` VALUES(1002, 25, 84);
INSERT INTO `obj_students_skills` VALUES(1003, 25, 101);
INSERT INTO `obj_students_skills` VALUES(1004, 25, 99);
INSERT INTO `obj_students_skills` VALUES(1005, 25, 68);
INSERT INTO `obj_students_skills` VALUES(1006, 25, 103);
INSERT INTO `obj_students_skills` VALUES(1007, 25, 69);
INSERT INTO `obj_students_skills` VALUES(1008, 25, 76);
INSERT INTO `obj_students_skills` VALUES(1009, 25, 64);
INSERT INTO `obj_students_skills` VALUES(1010, 25, 98);
INSERT INTO `obj_students_skills` VALUES(1011, 25, 87);
INSERT INTO `obj_students_skills` VALUES(1012, 25, 97);
INSERT INTO `obj_students_skills` VALUES(1013, 25, 61);
INSERT INTO `obj_students_skills` VALUES(1014, 25, 66);
INSERT INTO `obj_students_skills` VALUES(1015, 25, 83);
INSERT INTO `obj_students_skills` VALUES(1016, 25, 58);
INSERT INTO `obj_students_skills` VALUES(1017, 25, 106);
INSERT INTO `obj_students_skills` VALUES(1018, 25, 110);
INSERT INTO `obj_students_skills` VALUES(1019, 25, 104);
INSERT INTO `obj_students_skills` VALUES(1020, 25, 108);
INSERT INTO `obj_students_skills` VALUES(1021, 25, 107);
INSERT INTO `obj_students_skills` VALUES(1022, 25, 109);
INSERT INTO `obj_students_skills` VALUES(1023, 26, 4);
INSERT INTO `obj_students_skills` VALUES(1024, 26, 7);
INSERT INTO `obj_students_skills` VALUES(1025, 26, 8);
INSERT INTO `obj_students_skills` VALUES(1026, 26, 1);
INSERT INTO `obj_students_skills` VALUES(1027, 26, 2);
INSERT INTO `obj_students_skills` VALUES(1028, 26, 5);
INSERT INTO `obj_students_skills` VALUES(1029, 26, 6);
INSERT INTO `obj_students_skills` VALUES(1030, 26, 10);
INSERT INTO `obj_students_skills` VALUES(1031, 26, 51);
INSERT INTO `obj_students_skills` VALUES(1032, 26, 40);
INSERT INTO `obj_students_skills` VALUES(1033, 26, 46);
INSERT INTO `obj_students_skills` VALUES(1034, 26, 28);
INSERT INTO `obj_students_skills` VALUES(1035, 26, 19);
INSERT INTO `obj_students_skills` VALUES(1036, 26, 38);
INSERT INTO `obj_students_skills` VALUES(1037, 26, 35);
INSERT INTO `obj_students_skills` VALUES(1038, 26, 27);
INSERT INTO `obj_students_skills` VALUES(1039, 26, 18);
INSERT INTO `obj_students_skills` VALUES(1040, 26, 21);
INSERT INTO `obj_students_skills` VALUES(1041, 26, 25);
INSERT INTO `obj_students_skills` VALUES(1042, 26, 24);
INSERT INTO `obj_students_skills` VALUES(1043, 26, 55);
INSERT INTO `obj_students_skills` VALUES(1044, 26, 52);
INSERT INTO `obj_students_skills` VALUES(1045, 26, 49);
INSERT INTO `obj_students_skills` VALUES(1046, 26, 39);
INSERT INTO `obj_students_skills` VALUES(1047, 26, 41);
INSERT INTO `obj_students_skills` VALUES(1048, 26, 20);
INSERT INTO `obj_students_skills` VALUES(1049, 26, 102);
INSERT INTO `obj_students_skills` VALUES(1050, 26, 60);
INSERT INTO `obj_students_skills` VALUES(1051, 26, 96);
INSERT INTO `obj_students_skills` VALUES(1052, 26, 84);
INSERT INTO `obj_students_skills` VALUES(1053, 26, 90);
INSERT INTO `obj_students_skills` VALUES(1054, 26, 101);
INSERT INTO `obj_students_skills` VALUES(1055, 26, 68);
INSERT INTO `obj_students_skills` VALUES(1056, 26, 103);
INSERT INTO `obj_students_skills` VALUES(1057, 26, 69);
INSERT INTO `obj_students_skills` VALUES(1058, 26, 76);
INSERT INTO `obj_students_skills` VALUES(1059, 26, 64);
INSERT INTO `obj_students_skills` VALUES(1060, 26, 98);
INSERT INTO `obj_students_skills` VALUES(1061, 26, 87);
INSERT INTO `obj_students_skills` VALUES(1062, 26, 61);
INSERT INTO `obj_students_skills` VALUES(1063, 26, 66);
INSERT INTO `obj_students_skills` VALUES(1064, 26, 93);
INSERT INTO `obj_students_skills` VALUES(1065, 26, 58);
INSERT INTO `obj_students_skills` VALUES(1066, 26, 106);
INSERT INTO `obj_students_skills` VALUES(1067, 26, 104);
INSERT INTO `obj_students_skills` VALUES(1068, 26, 108);
INSERT INTO `obj_students_skills` VALUES(1069, 26, 107);
INSERT INTO `obj_students_skills` VALUES(1070, 26, 109);
INSERT INTO `obj_students_skills` VALUES(1071, 26, 105);
INSERT INTO `obj_students_skills` VALUES(1072, 27, 4);
INSERT INTO `obj_students_skills` VALUES(1073, 27, 8);
INSERT INTO `obj_students_skills` VALUES(1074, 27, 2);
INSERT INTO `obj_students_skills` VALUES(1075, 27, 5);
INSERT INTO `obj_students_skills` VALUES(1076, 27, 10);
INSERT INTO `obj_students_skills` VALUES(1077, 27, 51);
INSERT INTO `obj_students_skills` VALUES(1078, 27, 40);
INSERT INTO `obj_students_skills` VALUES(1079, 27, 46);
INSERT INTO `obj_students_skills` VALUES(1080, 27, 34);
INSERT INTO `obj_students_skills` VALUES(1081, 27, 19);
INSERT INTO `obj_students_skills` VALUES(1082, 27, 35);
INSERT INTO `obj_students_skills` VALUES(1083, 27, 27);
INSERT INTO `obj_students_skills` VALUES(1084, 27, 18);
INSERT INTO `obj_students_skills` VALUES(1085, 27, 21);
INSERT INTO `obj_students_skills` VALUES(1086, 27, 25);
INSERT INTO `obj_students_skills` VALUES(1087, 27, 32);
INSERT INTO `obj_students_skills` VALUES(1088, 27, 55);
INSERT INTO `obj_students_skills` VALUES(1089, 27, 49);
INSERT INTO `obj_students_skills` VALUES(1090, 27, 39);
INSERT INTO `obj_students_skills` VALUES(1091, 27, 41);
INSERT INTO `obj_students_skills` VALUES(1092, 27, 43);
INSERT INTO `obj_students_skills` VALUES(1093, 27, 84);
INSERT INTO `obj_students_skills` VALUES(1094, 27, 99);
INSERT INTO `obj_students_skills` VALUES(1095, 27, 68);
INSERT INTO `obj_students_skills` VALUES(1096, 27, 67);
INSERT INTO `obj_students_skills` VALUES(1097, 27, 64);
INSERT INTO `obj_students_skills` VALUES(1098, 27, 98);
INSERT INTO `obj_students_skills` VALUES(1099, 27, 87);
INSERT INTO `obj_students_skills` VALUES(1100, 27, 61);
INSERT INTO `obj_students_skills` VALUES(1101, 27, 66);
INSERT INTO `obj_students_skills` VALUES(1102, 27, 63);
INSERT INTO `obj_students_skills` VALUES(1103, 27, 57);
INSERT INTO `obj_students_skills` VALUES(1104, 27, 62);
INSERT INTO `obj_students_skills` VALUES(1105, 27, 58);
INSERT INTO `obj_students_skills` VALUES(1106, 27, 106);
INSERT INTO `obj_students_skills` VALUES(1107, 27, 108);
INSERT INTO `obj_students_skills` VALUES(1108, 27, 109);
INSERT INTO `obj_students_skills` VALUES(1109, 28, 4);
INSERT INTO `obj_students_skills` VALUES(1110, 28, 7);
INSERT INTO `obj_students_skills` VALUES(1111, 28, 1);
INSERT INTO `obj_students_skills` VALUES(1112, 28, 2);
INSERT INTO `obj_students_skills` VALUES(1113, 28, 46);
INSERT INTO `obj_students_skills` VALUES(1114, 28, 19);
INSERT INTO `obj_students_skills` VALUES(1115, 28, 38);
INSERT INTO `obj_students_skills` VALUES(1116, 28, 35);
INSERT INTO `obj_students_skills` VALUES(1117, 28, 55);
INSERT INTO `obj_students_skills` VALUES(1118, 28, 41);
INSERT INTO `obj_students_skills` VALUES(1119, 28, 43);
INSERT INTO `obj_students_skills` VALUES(1120, 28, 101);
INSERT INTO `obj_students_skills` VALUES(1121, 28, 68);
INSERT INTO `obj_students_skills` VALUES(1122, 28, 76);
INSERT INTO `obj_students_skills` VALUES(1123, 28, 98);
INSERT INTO `obj_students_skills` VALUES(1124, 28, 66);
INSERT INTO `obj_students_skills` VALUES(1125, 28, 57);
INSERT INTO `obj_students_skills` VALUES(1126, 28, 100);
INSERT INTO `obj_students_skills` VALUES(1127, 28, 106);
INSERT INTO `obj_students_skills` VALUES(1128, 28, 108);
INSERT INTO `obj_students_skills` VALUES(1129, 28, 107);
INSERT INTO `obj_students_skills` VALUES(1130, 28, 109);
INSERT INTO `obj_students_skills` VALUES(1131, 29, 4);
INSERT INTO `obj_students_skills` VALUES(1132, 29, 1);
INSERT INTO `obj_students_skills` VALUES(1133, 29, 3);
INSERT INTO `obj_students_skills` VALUES(1134, 29, 10);
INSERT INTO `obj_students_skills` VALUES(1135, 29, 51);
INSERT INTO `obj_students_skills` VALUES(1136, 29, 40);
INSERT INTO `obj_students_skills` VALUES(1137, 29, 46);
INSERT INTO `obj_students_skills` VALUES(1138, 29, 47);
INSERT INTO `obj_students_skills` VALUES(1139, 29, 19);
INSERT INTO `obj_students_skills` VALUES(1140, 29, 11);
INSERT INTO `obj_students_skills` VALUES(1141, 29, 35);
INSERT INTO `obj_students_skills` VALUES(1142, 29, 25);
INSERT INTO `obj_students_skills` VALUES(1143, 29, 55);
INSERT INTO `obj_students_skills` VALUES(1144, 29, 68);
INSERT INTO `obj_students_skills` VALUES(1145, 29, 67);
INSERT INTO `obj_students_skills` VALUES(1146, 29, 76);
INSERT INTO `obj_students_skills` VALUES(1147, 29, 64);
INSERT INTO `obj_students_skills` VALUES(1148, 29, 98);
INSERT INTO `obj_students_skills` VALUES(1149, 29, 87);
INSERT INTO `obj_students_skills` VALUES(1150, 29, 61);
INSERT INTO `obj_students_skills` VALUES(1151, 29, 66);
INSERT INTO `obj_students_skills` VALUES(1152, 29, 93);
INSERT INTO `obj_students_skills` VALUES(1153, 29, 58);
INSERT INTO `obj_students_skills` VALUES(1154, 29, 106);
INSERT INTO `obj_students_skills` VALUES(1155, 30, 4);
INSERT INTO `obj_students_skills` VALUES(1156, 30, 8);
INSERT INTO `obj_students_skills` VALUES(1157, 30, 1);
INSERT INTO `obj_students_skills` VALUES(1158, 30, 2);
INSERT INTO `obj_students_skills` VALUES(1159, 30, 5);
INSERT INTO `obj_students_skills` VALUES(1160, 30, 10);
INSERT INTO `obj_students_skills` VALUES(1161, 30, 51);
INSERT INTO `obj_students_skills` VALUES(1162, 30, 40);
INSERT INTO `obj_students_skills` VALUES(1163, 30, 46);
INSERT INTO `obj_students_skills` VALUES(1164, 30, 47);
INSERT INTO `obj_students_skills` VALUES(1165, 30, 23);
INSERT INTO `obj_students_skills` VALUES(1166, 30, 34);
INSERT INTO `obj_students_skills` VALUES(1167, 30, 38);
INSERT INTO `obj_students_skills` VALUES(1168, 30, 35);
INSERT INTO `obj_students_skills` VALUES(1169, 30, 27);
INSERT INTO `obj_students_skills` VALUES(1170, 30, 22);
INSERT INTO `obj_students_skills` VALUES(1171, 30, 25);
INSERT INTO `obj_students_skills` VALUES(1172, 30, 37);
INSERT INTO `obj_students_skills` VALUES(1173, 30, 55);
INSERT INTO `obj_students_skills` VALUES(1174, 30, 41);
INSERT INTO `obj_students_skills` VALUES(1175, 30, 43);
INSERT INTO `obj_students_skills` VALUES(1176, 30, 60);
INSERT INTO `obj_students_skills` VALUES(1177, 30, 101);
INSERT INTO `obj_students_skills` VALUES(1178, 30, 99);
INSERT INTO `obj_students_skills` VALUES(1179, 30, 68);
INSERT INTO `obj_students_skills` VALUES(1180, 30, 103);
INSERT INTO `obj_students_skills` VALUES(1181, 30, 76);
INSERT INTO `obj_students_skills` VALUES(1182, 30, 64);
INSERT INTO `obj_students_skills` VALUES(1183, 30, 98);
INSERT INTO `obj_students_skills` VALUES(1184, 30, 87);
INSERT INTO `obj_students_skills` VALUES(1185, 30, 97);
INSERT INTO `obj_students_skills` VALUES(1186, 30, 66);
INSERT INTO `obj_students_skills` VALUES(1187, 30, 93);
INSERT INTO `obj_students_skills` VALUES(1188, 30, 83);
INSERT INTO `obj_students_skills` VALUES(1189, 30, 58);
INSERT INTO `obj_students_skills` VALUES(1190, 30, 106);
INSERT INTO `obj_students_skills` VALUES(1191, 30, 108);
INSERT INTO `obj_students_skills` VALUES(1192, 30, 109);
INSERT INTO `obj_students_skills` VALUES(1193, 31, 4);
INSERT INTO `obj_students_skills` VALUES(1194, 31, 7);
INSERT INTO `obj_students_skills` VALUES(1195, 31, 8);
INSERT INTO `obj_students_skills` VALUES(1196, 31, 1);
INSERT INTO `obj_students_skills` VALUES(1197, 31, 2);
INSERT INTO `obj_students_skills` VALUES(1198, 31, 5);
INSERT INTO `obj_students_skills` VALUES(1199, 31, 3);
INSERT INTO `obj_students_skills` VALUES(1200, 31, 10);
INSERT INTO `obj_students_skills` VALUES(1201, 31, 46);
INSERT INTO `obj_students_skills` VALUES(1202, 31, 47);
INSERT INTO `obj_students_skills` VALUES(1203, 31, 19);
INSERT INTO `obj_students_skills` VALUES(1204, 31, 11);
INSERT INTO `obj_students_skills` VALUES(1205, 31, 38);
INSERT INTO `obj_students_skills` VALUES(1206, 31, 35);
INSERT INTO `obj_students_skills` VALUES(1207, 31, 27);
INSERT INTO `obj_students_skills` VALUES(1208, 31, 18);
INSERT INTO `obj_students_skills` VALUES(1209, 31, 22);
INSERT INTO `obj_students_skills` VALUES(1210, 31, 55);
INSERT INTO `obj_students_skills` VALUES(1211, 31, 39);
INSERT INTO `obj_students_skills` VALUES(1212, 31, 41);
INSERT INTO `obj_students_skills` VALUES(1213, 31, 43);
INSERT INTO `obj_students_skills` VALUES(1214, 31, 16);
INSERT INTO `obj_students_skills` VALUES(1215, 31, 60);
INSERT INTO `obj_students_skills` VALUES(1216, 31, 86);
INSERT INTO `obj_students_skills` VALUES(1217, 31, 84);
INSERT INTO `obj_students_skills` VALUES(1218, 31, 101);
INSERT INTO `obj_students_skills` VALUES(1219, 31, 99);
INSERT INTO `obj_students_skills` VALUES(1220, 31, 68);
INSERT INTO `obj_students_skills` VALUES(1221, 31, 56);
INSERT INTO `obj_students_skills` VALUES(1222, 31, 67);
INSERT INTO `obj_students_skills` VALUES(1223, 31, 76);
INSERT INTO `obj_students_skills` VALUES(1224, 31, 64);
INSERT INTO `obj_students_skills` VALUES(1225, 31, 98);
INSERT INTO `obj_students_skills` VALUES(1226, 31, 71);
INSERT INTO `obj_students_skills` VALUES(1227, 31, 87);
INSERT INTO `obj_students_skills` VALUES(1228, 31, 97);
INSERT INTO `obj_students_skills` VALUES(1229, 31, 61);
INSERT INTO `obj_students_skills` VALUES(1230, 31, 66);
INSERT INTO `obj_students_skills` VALUES(1231, 31, 93);
INSERT INTO `obj_students_skills` VALUES(1232, 31, 80);
INSERT INTO `obj_students_skills` VALUES(1233, 31, 62);
INSERT INTO `obj_students_skills` VALUES(1234, 31, 58);
INSERT INTO `obj_students_skills` VALUES(1235, 31, 106);
INSERT INTO `obj_students_skills` VALUES(1236, 31, 108);
INSERT INTO `obj_students_skills` VALUES(1237, 31, 107);
INSERT INTO `obj_students_skills` VALUES(1238, 31, 109);
INSERT INTO `obj_students_skills` VALUES(1239, 31, 105);
INSERT INTO `obj_students_skills` VALUES(1240, 32, 4);
INSERT INTO `obj_students_skills` VALUES(1241, 32, 7);
INSERT INTO `obj_students_skills` VALUES(1242, 32, 2);
INSERT INTO `obj_students_skills` VALUES(1243, 32, 5);
INSERT INTO `obj_students_skills` VALUES(1244, 32, 3);
INSERT INTO `obj_students_skills` VALUES(1245, 32, 10);
INSERT INTO `obj_students_skills` VALUES(1246, 32, 51);
INSERT INTO `obj_students_skills` VALUES(1247, 32, 40);
INSERT INTO `obj_students_skills` VALUES(1248, 32, 46);
INSERT INTO `obj_students_skills` VALUES(1249, 32, 38);
INSERT INTO `obj_students_skills` VALUES(1250, 32, 35);
INSERT INTO `obj_students_skills` VALUES(1251, 32, 27);
INSERT INTO `obj_students_skills` VALUES(1252, 32, 18);
INSERT INTO `obj_students_skills` VALUES(1253, 32, 22);
INSERT INTO `obj_students_skills` VALUES(1254, 32, 25);
INSERT INTO `obj_students_skills` VALUES(1255, 32, 32);
INSERT INTO `obj_students_skills` VALUES(1256, 32, 55);
INSERT INTO `obj_students_skills` VALUES(1257, 32, 52);
INSERT INTO `obj_students_skills` VALUES(1258, 32, 49);
INSERT INTO `obj_students_skills` VALUES(1259, 32, 39);
INSERT INTO `obj_students_skills` VALUES(1260, 32, 41);
INSERT INTO `obj_students_skills` VALUES(1261, 32, 43);
INSERT INTO `obj_students_skills` VALUES(1262, 32, 45);
INSERT INTO `obj_students_skills` VALUES(1263, 32, 102);
INSERT INTO `obj_students_skills` VALUES(1264, 32, 60);
INSERT INTO `obj_students_skills` VALUES(1265, 32, 86);
INSERT INTO `obj_students_skills` VALUES(1266, 32, 84);
INSERT INTO `obj_students_skills` VALUES(1267, 32, 101);
INSERT INTO `obj_students_skills` VALUES(1268, 32, 99);
INSERT INTO `obj_students_skills` VALUES(1269, 32, 68);
INSERT INTO `obj_students_skills` VALUES(1270, 32, 103);
INSERT INTO `obj_students_skills` VALUES(1271, 32, 67);
INSERT INTO `obj_students_skills` VALUES(1272, 32, 69);
INSERT INTO `obj_students_skills` VALUES(1273, 32, 76);
INSERT INTO `obj_students_skills` VALUES(1274, 32, 64);
INSERT INTO `obj_students_skills` VALUES(1275, 32, 98);
INSERT INTO `obj_students_skills` VALUES(1276, 32, 71);
INSERT INTO `obj_students_skills` VALUES(1277, 32, 87);
INSERT INTO `obj_students_skills` VALUES(1278, 32, 97);
INSERT INTO `obj_students_skills` VALUES(1279, 32, 78);
INSERT INTO `obj_students_skills` VALUES(1280, 32, 61);
INSERT INTO `obj_students_skills` VALUES(1281, 32, 66);
INSERT INTO `obj_students_skills` VALUES(1282, 32, 93);
INSERT INTO `obj_students_skills` VALUES(1283, 32, 106);
INSERT INTO `obj_students_skills` VALUES(1284, 32, 111);
INSERT INTO `obj_students_skills` VALUES(1285, 32, 104);
INSERT INTO `obj_students_skills` VALUES(1286, 32, 108);
INSERT INTO `obj_students_skills` VALUES(1287, 32, 107);
INSERT INTO `obj_students_skills` VALUES(1288, 32, 109);
INSERT INTO `obj_students_skills` VALUES(1289, 33, 4);
INSERT INTO `obj_students_skills` VALUES(1290, 33, 7);
INSERT INTO `obj_students_skills` VALUES(1291, 33, 8);
INSERT INTO `obj_students_skills` VALUES(1292, 33, 1);
INSERT INTO `obj_students_skills` VALUES(1293, 33, 2);
INSERT INTO `obj_students_skills` VALUES(1294, 33, 5);
INSERT INTO `obj_students_skills` VALUES(1295, 33, 3);
INSERT INTO `obj_students_skills` VALUES(1296, 33, 10);
INSERT INTO `obj_students_skills` VALUES(1297, 33, 51);
INSERT INTO `obj_students_skills` VALUES(1298, 33, 40);
INSERT INTO `obj_students_skills` VALUES(1299, 33, 46);
INSERT INTO `obj_students_skills` VALUES(1300, 33, 47);
INSERT INTO `obj_students_skills` VALUES(1301, 33, 19);
INSERT INTO `obj_students_skills` VALUES(1302, 33, 11);
INSERT INTO `obj_students_skills` VALUES(1303, 33, 38);
INSERT INTO `obj_students_skills` VALUES(1304, 33, 35);
INSERT INTO `obj_students_skills` VALUES(1305, 33, 27);
INSERT INTO `obj_students_skills` VALUES(1306, 33, 18);
INSERT INTO `obj_students_skills` VALUES(1307, 33, 25);
INSERT INTO `obj_students_skills` VALUES(1308, 33, 32);
INSERT INTO `obj_students_skills` VALUES(1309, 33, 24);
INSERT INTO `obj_students_skills` VALUES(1310, 33, 55);
INSERT INTO `obj_students_skills` VALUES(1311, 33, 39);
INSERT INTO `obj_students_skills` VALUES(1312, 33, 41);
INSERT INTO `obj_students_skills` VALUES(1313, 33, 43);
INSERT INTO `obj_students_skills` VALUES(1314, 33, 86);
INSERT INTO `obj_students_skills` VALUES(1315, 33, 84);
INSERT INTO `obj_students_skills` VALUES(1316, 33, 101);
INSERT INTO `obj_students_skills` VALUES(1317, 33, 99);
INSERT INTO `obj_students_skills` VALUES(1318, 33, 68);
INSERT INTO `obj_students_skills` VALUES(1319, 33, 103);
INSERT INTO `obj_students_skills` VALUES(1320, 33, 67);
INSERT INTO `obj_students_skills` VALUES(1321, 33, 76);
INSERT INTO `obj_students_skills` VALUES(1322, 33, 64);
INSERT INTO `obj_students_skills` VALUES(1323, 33, 98);
INSERT INTO `obj_students_skills` VALUES(1324, 33, 71);
INSERT INTO `obj_students_skills` VALUES(1325, 33, 87);
INSERT INTO `obj_students_skills` VALUES(1326, 33, 97);
INSERT INTO `obj_students_skills` VALUES(1327, 33, 61);
INSERT INTO `obj_students_skills` VALUES(1328, 33, 66);
INSERT INTO `obj_students_skills` VALUES(1329, 33, 93);
INSERT INTO `obj_students_skills` VALUES(1330, 33, 63);
INSERT INTO `obj_students_skills` VALUES(1331, 33, 57);
INSERT INTO `obj_students_skills` VALUES(1332, 33, 100);
INSERT INTO `obj_students_skills` VALUES(1333, 33, 62);
INSERT INTO `obj_students_skills` VALUES(1334, 33, 106);
INSERT INTO `obj_students_skills` VALUES(1335, 33, 110);
INSERT INTO `obj_students_skills` VALUES(1336, 33, 104);
INSERT INTO `obj_students_skills` VALUES(1337, 33, 107);
INSERT INTO `obj_students_skills` VALUES(1338, 33, 109);
INSERT INTO `obj_students_skills` VALUES(1339, 34, 4);
INSERT INTO `obj_students_skills` VALUES(1340, 34, 7);
INSERT INTO `obj_students_skills` VALUES(1341, 34, 1);
INSERT INTO `obj_students_skills` VALUES(1342, 34, 2);
INSERT INTO `obj_students_skills` VALUES(1343, 34, 5);
INSERT INTO `obj_students_skills` VALUES(1344, 34, 10);
INSERT INTO `obj_students_skills` VALUES(1345, 34, 46);
INSERT INTO `obj_students_skills` VALUES(1346, 34, 38);
INSERT INTO `obj_students_skills` VALUES(1347, 34, 35);
INSERT INTO `obj_students_skills` VALUES(1348, 34, 27);
INSERT INTO `obj_students_skills` VALUES(1349, 34, 18);
INSERT INTO `obj_students_skills` VALUES(1350, 34, 22);
INSERT INTO `obj_students_skills` VALUES(1351, 34, 55);
INSERT INTO `obj_students_skills` VALUES(1352, 34, 52);
INSERT INTO `obj_students_skills` VALUES(1353, 34, 49);
INSERT INTO `obj_students_skills` VALUES(1354, 34, 39);
INSERT INTO `obj_students_skills` VALUES(1355, 34, 41);
INSERT INTO `obj_students_skills` VALUES(1356, 34, 43);
INSERT INTO `obj_students_skills` VALUES(1357, 34, 45);
INSERT INTO `obj_students_skills` VALUES(1358, 34, 16);
INSERT INTO `obj_students_skills` VALUES(1359, 34, 102);
INSERT INTO `obj_students_skills` VALUES(1360, 34, 60);
INSERT INTO `obj_students_skills` VALUES(1361, 34, 86);
INSERT INTO `obj_students_skills` VALUES(1362, 34, 84);
INSERT INTO `obj_students_skills` VALUES(1363, 34, 101);
INSERT INTO `obj_students_skills` VALUES(1364, 34, 99);
INSERT INTO `obj_students_skills` VALUES(1365, 34, 68);
INSERT INTO `obj_students_skills` VALUES(1366, 34, 103);
INSERT INTO `obj_students_skills` VALUES(1367, 34, 67);
INSERT INTO `obj_students_skills` VALUES(1368, 34, 76);
INSERT INTO `obj_students_skills` VALUES(1369, 34, 64);
INSERT INTO `obj_students_skills` VALUES(1370, 34, 98);
INSERT INTO `obj_students_skills` VALUES(1371, 34, 71);
INSERT INTO `obj_students_skills` VALUES(1372, 34, 87);
INSERT INTO `obj_students_skills` VALUES(1373, 34, 97);
INSERT INTO `obj_students_skills` VALUES(1374, 34, 61);
INSERT INTO `obj_students_skills` VALUES(1375, 34, 66);
INSERT INTO `obj_students_skills` VALUES(1376, 34, 93);
INSERT INTO `obj_students_skills` VALUES(1377, 34, 72);
INSERT INTO `obj_students_skills` VALUES(1378, 34, 106);
INSERT INTO `obj_students_skills` VALUES(1379, 34, 104);
INSERT INTO `obj_students_skills` VALUES(1380, 34, 107);
INSERT INTO `obj_students_skills` VALUES(1381, 34, 109);
INSERT INTO `obj_students_skills` VALUES(1382, 35, 4);
INSERT INTO `obj_students_skills` VALUES(1383, 35, 7);
INSERT INTO `obj_students_skills` VALUES(1384, 35, 8);
INSERT INTO `obj_students_skills` VALUES(1385, 35, 1);
INSERT INTO `obj_students_skills` VALUES(1386, 35, 2);
INSERT INTO `obj_students_skills` VALUES(1387, 35, 5);
INSERT INTO `obj_students_skills` VALUES(1388, 35, 3);
INSERT INTO `obj_students_skills` VALUES(1389, 35, 10);
INSERT INTO `obj_students_skills` VALUES(1390, 35, 46);
INSERT INTO `obj_students_skills` VALUES(1391, 35, 19);
INSERT INTO `obj_students_skills` VALUES(1392, 35, 11);
INSERT INTO `obj_students_skills` VALUES(1393, 35, 54);
INSERT INTO `obj_students_skills` VALUES(1394, 35, 38);
INSERT INTO `obj_students_skills` VALUES(1395, 35, 35);
INSERT INTO `obj_students_skills` VALUES(1396, 35, 27);
INSERT INTO `obj_students_skills` VALUES(1397, 35, 18);
INSERT INTO `obj_students_skills` VALUES(1398, 35, 22);
INSERT INTO `obj_students_skills` VALUES(1399, 35, 55);
INSERT INTO `obj_students_skills` VALUES(1400, 35, 41);
INSERT INTO `obj_students_skills` VALUES(1401, 35, 43);
INSERT INTO `obj_students_skills` VALUES(1402, 35, 16);
INSERT INTO `obj_students_skills` VALUES(1403, 35, 102);
INSERT INTO `obj_students_skills` VALUES(1404, 35, 60);
INSERT INTO `obj_students_skills` VALUES(1405, 35, 86);
INSERT INTO `obj_students_skills` VALUES(1406, 35, 96);
INSERT INTO `obj_students_skills` VALUES(1407, 35, 84);
INSERT INTO `obj_students_skills` VALUES(1408, 35, 90);
INSERT INTO `obj_students_skills` VALUES(1409, 35, 101);
INSERT INTO `obj_students_skills` VALUES(1410, 35, 99);
INSERT INTO `obj_students_skills` VALUES(1411, 35, 75);
INSERT INTO `obj_students_skills` VALUES(1412, 35, 73);
INSERT INTO `obj_students_skills` VALUES(1413, 35, 68);
INSERT INTO `obj_students_skills` VALUES(1414, 35, 67);
INSERT INTO `obj_students_skills` VALUES(1415, 35, 76);
INSERT INTO `obj_students_skills` VALUES(1416, 35, 64);
INSERT INTO `obj_students_skills` VALUES(1417, 35, 98);
INSERT INTO `obj_students_skills` VALUES(1418, 35, 71);
INSERT INTO `obj_students_skills` VALUES(1419, 35, 87);
INSERT INTO `obj_students_skills` VALUES(1420, 35, 97);
INSERT INTO `obj_students_skills` VALUES(1421, 35, 78);
INSERT INTO `obj_students_skills` VALUES(1422, 35, 61);
INSERT INTO `obj_students_skills` VALUES(1423, 35, 66);
INSERT INTO `obj_students_skills` VALUES(1424, 35, 93);
INSERT INTO `obj_students_skills` VALUES(1425, 35, 63);
INSERT INTO `obj_students_skills` VALUES(1426, 35, 80);
INSERT INTO `obj_students_skills` VALUES(1427, 35, 62);
INSERT INTO `obj_students_skills` VALUES(1428, 35, 58);
INSERT INTO `obj_students_skills` VALUES(1429, 35, 106);
INSERT INTO `obj_students_skills` VALUES(1430, 35, 110);
INSERT INTO `obj_students_skills` VALUES(1431, 35, 108);
INSERT INTO `obj_students_skills` VALUES(1432, 35, 107);
INSERT INTO `obj_students_skills` VALUES(1433, 35, 109);
INSERT INTO `obj_students_skills` VALUES(1434, 36, 4);
INSERT INTO `obj_students_skills` VALUES(1435, 36, 7);
INSERT INTO `obj_students_skills` VALUES(1436, 36, 8);
INSERT INTO `obj_students_skills` VALUES(1437, 36, 1);
INSERT INTO `obj_students_skills` VALUES(1438, 36, 2);
INSERT INTO `obj_students_skills` VALUES(1439, 36, 3);
INSERT INTO `obj_students_skills` VALUES(1440, 36, 10);
INSERT INTO `obj_students_skills` VALUES(1441, 36, 46);
INSERT INTO `obj_students_skills` VALUES(1442, 36, 19);
INSERT INTO `obj_students_skills` VALUES(1443, 36, 11);
INSERT INTO `obj_students_skills` VALUES(1444, 36, 54);
INSERT INTO `obj_students_skills` VALUES(1445, 36, 38);
INSERT INTO `obj_students_skills` VALUES(1446, 36, 35);
INSERT INTO `obj_students_skills` VALUES(1447, 36, 27);
INSERT INTO `obj_students_skills` VALUES(1448, 36, 31);
INSERT INTO `obj_students_skills` VALUES(1449, 36, 24);
INSERT INTO `obj_students_skills` VALUES(1450, 36, 55);
INSERT INTO `obj_students_skills` VALUES(1451, 36, 52);
INSERT INTO `obj_students_skills` VALUES(1452, 36, 39);
INSERT INTO `obj_students_skills` VALUES(1453, 36, 41);
INSERT INTO `obj_students_skills` VALUES(1454, 36, 102);
INSERT INTO `obj_students_skills` VALUES(1455, 36, 60);
INSERT INTO `obj_students_skills` VALUES(1456, 36, 86);
INSERT INTO `obj_students_skills` VALUES(1457, 36, 84);
INSERT INTO `obj_students_skills` VALUES(1458, 36, 90);
INSERT INTO `obj_students_skills` VALUES(1459, 36, 99);
INSERT INTO `obj_students_skills` VALUES(1460, 36, 68);
INSERT INTO `obj_students_skills` VALUES(1461, 36, 67);
INSERT INTO `obj_students_skills` VALUES(1462, 36, 76);
INSERT INTO `obj_students_skills` VALUES(1463, 36, 64);
INSERT INTO `obj_students_skills` VALUES(1464, 36, 98);
INSERT INTO `obj_students_skills` VALUES(1465, 36, 71);
INSERT INTO `obj_students_skills` VALUES(1466, 36, 85);
INSERT INTO `obj_students_skills` VALUES(1467, 36, 87);
INSERT INTO `obj_students_skills` VALUES(1468, 36, 97);
INSERT INTO `obj_students_skills` VALUES(1469, 36, 61);
INSERT INTO `obj_students_skills` VALUES(1470, 36, 66);
INSERT INTO `obj_students_skills` VALUES(1471, 36, 93);
INSERT INTO `obj_students_skills` VALUES(1472, 36, 80);
INSERT INTO `obj_students_skills` VALUES(1473, 36, 62);
INSERT INTO `obj_students_skills` VALUES(1474, 36, 58);
INSERT INTO `obj_students_skills` VALUES(1475, 36, 106);
INSERT INTO `obj_students_skills` VALUES(1476, 36, 110);
INSERT INTO `obj_students_skills` VALUES(1477, 36, 104);
INSERT INTO `obj_students_skills` VALUES(1478, 36, 108);
INSERT INTO `obj_students_skills` VALUES(1479, 36, 107);
INSERT INTO `obj_students_skills` VALUES(1480, 36, 109);
INSERT INTO `obj_students_skills` VALUES(1481, 37, 4);
INSERT INTO `obj_students_skills` VALUES(1482, 37, 7);
INSERT INTO `obj_students_skills` VALUES(1483, 37, 5);
INSERT INTO `obj_students_skills` VALUES(1484, 37, 10);
INSERT INTO `obj_students_skills` VALUES(1485, 37, 46);
INSERT INTO `obj_students_skills` VALUES(1486, 37, 47);
INSERT INTO `obj_students_skills` VALUES(1487, 37, 34);
INSERT INTO `obj_students_skills` VALUES(1488, 37, 48);
INSERT INTO `obj_students_skills` VALUES(1489, 37, 19);
INSERT INTO `obj_students_skills` VALUES(1490, 37, 11);
INSERT INTO `obj_students_skills` VALUES(1491, 37, 54);
INSERT INTO `obj_students_skills` VALUES(1492, 37, 38);
INSERT INTO `obj_students_skills` VALUES(1493, 37, 35);
INSERT INTO `obj_students_skills` VALUES(1494, 37, 27);
INSERT INTO `obj_students_skills` VALUES(1495, 37, 18);
INSERT INTO `obj_students_skills` VALUES(1496, 37, 22);
INSERT INTO `obj_students_skills` VALUES(1497, 37, 24);
INSERT INTO `obj_students_skills` VALUES(1498, 37, 55);
INSERT INTO `obj_students_skills` VALUES(1499, 37, 52);
INSERT INTO `obj_students_skills` VALUES(1500, 37, 39);
INSERT INTO `obj_students_skills` VALUES(1501, 37, 41);
INSERT INTO `obj_students_skills` VALUES(1502, 37, 43);
INSERT INTO `obj_students_skills` VALUES(1503, 37, 45);
INSERT INTO `obj_students_skills` VALUES(1504, 37, 16);
INSERT INTO `obj_students_skills` VALUES(1505, 37, 17);
INSERT INTO `obj_students_skills` VALUES(1506, 37, 15);
INSERT INTO `obj_students_skills` VALUES(1507, 37, 60);
INSERT INTO `obj_students_skills` VALUES(1508, 37, 86);
INSERT INTO `obj_students_skills` VALUES(1509, 37, 59);
INSERT INTO `obj_students_skills` VALUES(1510, 37, 84);
INSERT INTO `obj_students_skills` VALUES(1511, 37, 101);
INSERT INTO `obj_students_skills` VALUES(1512, 37, 99);
INSERT INTO `obj_students_skills` VALUES(1513, 37, 73);
INSERT INTO `obj_students_skills` VALUES(1514, 37, 94);
INSERT INTO `obj_students_skills` VALUES(1515, 37, 68);
INSERT INTO `obj_students_skills` VALUES(1516, 37, 56);
INSERT INTO `obj_students_skills` VALUES(1517, 37, 70);
INSERT INTO `obj_students_skills` VALUES(1518, 37, 88);
INSERT INTO `obj_students_skills` VALUES(1519, 37, 79);
INSERT INTO `obj_students_skills` VALUES(1520, 37, 89);
INSERT INTO `obj_students_skills` VALUES(1521, 37, 82);
INSERT INTO `obj_students_skills` VALUES(1522, 37, 87);
INSERT INTO `obj_students_skills` VALUES(1523, 37, 97);
INSERT INTO `obj_students_skills` VALUES(1524, 37, 78);
INSERT INTO `obj_students_skills` VALUES(1525, 37, 93);
INSERT INTO `obj_students_skills` VALUES(1526, 37, 63);
INSERT INTO `obj_students_skills` VALUES(1527, 37, 57);
INSERT INTO `obj_students_skills` VALUES(1528, 37, 72);
INSERT INTO `obj_students_skills` VALUES(1529, 37, 83);
INSERT INTO `obj_students_skills` VALUES(1530, 37, 95);
INSERT INTO `obj_students_skills` VALUES(1531, 37, 65);
INSERT INTO `obj_students_skills` VALUES(1532, 37, 58);
INSERT INTO `obj_students_skills` VALUES(1533, 37, 81);
INSERT INTO `obj_students_skills` VALUES(1534, 37, 106);
INSERT INTO `obj_students_skills` VALUES(1535, 37, 110);
INSERT INTO `obj_students_skills` VALUES(1536, 37, 108);
INSERT INTO `obj_students_skills` VALUES(1537, 37, 107);
INSERT INTO `obj_students_skills` VALUES(1538, 37, 109);
INSERT INTO `obj_students_skills` VALUES(1539, 38, 4);
INSERT INTO `obj_students_skills` VALUES(1540, 38, 7);
INSERT INTO `obj_students_skills` VALUES(1541, 38, 10);
INSERT INTO `obj_students_skills` VALUES(1542, 38, 46);
INSERT INTO `obj_students_skills` VALUES(1543, 38, 19);
INSERT INTO `obj_students_skills` VALUES(1544, 38, 38);
INSERT INTO `obj_students_skills` VALUES(1545, 38, 35);
INSERT INTO `obj_students_skills` VALUES(1546, 38, 27);
INSERT INTO `obj_students_skills` VALUES(1547, 38, 22);
INSERT INTO `obj_students_skills` VALUES(1548, 38, 55);
INSERT INTO `obj_students_skills` VALUES(1549, 38, 39);
INSERT INTO `obj_students_skills` VALUES(1550, 38, 41);
INSERT INTO `obj_students_skills` VALUES(1551, 38, 43);
INSERT INTO `obj_students_skills` VALUES(1552, 38, 16);
INSERT INTO `obj_students_skills` VALUES(1553, 38, 17);
INSERT INTO `obj_students_skills` VALUES(1554, 38, 15);
INSERT INTO `obj_students_skills` VALUES(1555, 38, 60);
INSERT INTO `obj_students_skills` VALUES(1556, 38, 86);
INSERT INTO `obj_students_skills` VALUES(1557, 38, 96);
INSERT INTO `obj_students_skills` VALUES(1558, 38, 59);
INSERT INTO `obj_students_skills` VALUES(1559, 38, 84);
INSERT INTO `obj_students_skills` VALUES(1560, 38, 90);
INSERT INTO `obj_students_skills` VALUES(1561, 38, 101);
INSERT INTO `obj_students_skills` VALUES(1562, 38, 99);
INSERT INTO `obj_students_skills` VALUES(1563, 38, 75);
INSERT INTO `obj_students_skills` VALUES(1564, 38, 73);
INSERT INTO `obj_students_skills` VALUES(1565, 38, 94);
INSERT INTO `obj_students_skills` VALUES(1566, 38, 77);
INSERT INTO `obj_students_skills` VALUES(1567, 38, 68);
INSERT INTO `obj_students_skills` VALUES(1568, 38, 91);
INSERT INTO `obj_students_skills` VALUES(1569, 38, 56);
INSERT INTO `obj_students_skills` VALUES(1570, 38, 70);
INSERT INTO `obj_students_skills` VALUES(1571, 38, 92);
INSERT INTO `obj_students_skills` VALUES(1572, 38, 88);
INSERT INTO `obj_students_skills` VALUES(1573, 38, 79);
INSERT INTO `obj_students_skills` VALUES(1574, 38, 89);
INSERT INTO `obj_students_skills` VALUES(1575, 38, 82);
INSERT INTO `obj_students_skills` VALUES(1576, 38, 87);
INSERT INTO `obj_students_skills` VALUES(1577, 38, 97);
INSERT INTO `obj_students_skills` VALUES(1578, 38, 78);
INSERT INTO `obj_students_skills` VALUES(1579, 38, 93);
INSERT INTO `obj_students_skills` VALUES(1580, 38, 72);
INSERT INTO `obj_students_skills` VALUES(1581, 38, 83);
INSERT INTO `obj_students_skills` VALUES(1582, 38, 95);
INSERT INTO `obj_students_skills` VALUES(1583, 38, 65);
INSERT INTO `obj_students_skills` VALUES(1584, 38, 58);
INSERT INTO `obj_students_skills` VALUES(1585, 38, 74);
INSERT INTO `obj_students_skills` VALUES(1586, 38, 81);
INSERT INTO `obj_students_skills` VALUES(1587, 38, 106);
INSERT INTO `obj_students_skills` VALUES(1588, 38, 110);
INSERT INTO `obj_students_skills` VALUES(1589, 38, 111);
INSERT INTO `obj_students_skills` VALUES(1590, 38, 108);
INSERT INTO `obj_students_skills` VALUES(1591, 38, 109);
INSERT INTO `obj_students_skills` VALUES(1592, 39, 4);
INSERT INTO `obj_students_skills` VALUES(1593, 39, 7);
INSERT INTO `obj_students_skills` VALUES(1594, 39, 8);
INSERT INTO `obj_students_skills` VALUES(1595, 39, 1);
INSERT INTO `obj_students_skills` VALUES(1596, 39, 2);
INSERT INTO `obj_students_skills` VALUES(1597, 39, 3);
INSERT INTO `obj_students_skills` VALUES(1598, 39, 10);
INSERT INTO `obj_students_skills` VALUES(1599, 39, 46);
INSERT INTO `obj_students_skills` VALUES(1600, 39, 19);
INSERT INTO `obj_students_skills` VALUES(1601, 39, 11);
INSERT INTO `obj_students_skills` VALUES(1602, 39, 54);
INSERT INTO `obj_students_skills` VALUES(1603, 39, 38);
INSERT INTO `obj_students_skills` VALUES(1604, 39, 55);
INSERT INTO `obj_students_skills` VALUES(1605, 39, 52);
INSERT INTO `obj_students_skills` VALUES(1606, 39, 41);
INSERT INTO `obj_students_skills` VALUES(1607, 39, 43);
INSERT INTO `obj_students_skills` VALUES(1608, 39, 45);
INSERT INTO `obj_students_skills` VALUES(1609, 39, 102);
INSERT INTO `obj_students_skills` VALUES(1610, 39, 60);
INSERT INTO `obj_students_skills` VALUES(1611, 39, 84);
INSERT INTO `obj_students_skills` VALUES(1612, 39, 101);
INSERT INTO `obj_students_skills` VALUES(1613, 39, 68);
INSERT INTO `obj_students_skills` VALUES(1614, 39, 76);
INSERT INTO `obj_students_skills` VALUES(1615, 39, 98);
INSERT INTO `obj_students_skills` VALUES(1616, 39, 87);
INSERT INTO `obj_students_skills` VALUES(1617, 39, 61);
INSERT INTO `obj_students_skills` VALUES(1618, 39, 66);
INSERT INTO `obj_students_skills` VALUES(1619, 39, 93);
INSERT INTO `obj_students_skills` VALUES(1620, 39, 80);
INSERT INTO `obj_students_skills` VALUES(1621, 39, 62);
INSERT INTO `obj_students_skills` VALUES(1622, 39, 58);
INSERT INTO `obj_students_skills` VALUES(1623, 39, 106);
INSERT INTO `obj_students_skills` VALUES(1624, 39, 104);
INSERT INTO `obj_students_skills` VALUES(1625, 39, 108);
INSERT INTO `obj_students_skills` VALUES(1626, 39, 107);
INSERT INTO `obj_students_skills` VALUES(1627, 39, 109);
INSERT INTO `obj_students_skills` VALUES(1628, 40, 4);
INSERT INTO `obj_students_skills` VALUES(1629, 40, 7);
INSERT INTO `obj_students_skills` VALUES(1630, 40, 2);
INSERT INTO `obj_students_skills` VALUES(1631, 40, 5);
INSERT INTO `obj_students_skills` VALUES(1632, 40, 10);
INSERT INTO `obj_students_skills` VALUES(1633, 40, 46);
INSERT INTO `obj_students_skills` VALUES(1634, 40, 47);
INSERT INTO `obj_students_skills` VALUES(1635, 40, 19);
INSERT INTO `obj_students_skills` VALUES(1636, 40, 11);
INSERT INTO `obj_students_skills` VALUES(1637, 40, 38);
INSERT INTO `obj_students_skills` VALUES(1638, 40, 29);
INSERT INTO `obj_students_skills` VALUES(1639, 40, 35);
INSERT INTO `obj_students_skills` VALUES(1640, 40, 27);
INSERT INTO `obj_students_skills` VALUES(1641, 40, 18);
INSERT INTO `obj_students_skills` VALUES(1642, 40, 55);
INSERT INTO `obj_students_skills` VALUES(1643, 40, 52);
INSERT INTO `obj_students_skills` VALUES(1644, 40, 39);
INSERT INTO `obj_students_skills` VALUES(1645, 40, 41);
INSERT INTO `obj_students_skills` VALUES(1646, 40, 43);
INSERT INTO `obj_students_skills` VALUES(1647, 40, 16);
INSERT INTO `obj_students_skills` VALUES(1648, 40, 60);
INSERT INTO `obj_students_skills` VALUES(1649, 40, 59);
INSERT INTO `obj_students_skills` VALUES(1650, 40, 101);
INSERT INTO `obj_students_skills` VALUES(1651, 40, 99);
INSERT INTO `obj_students_skills` VALUES(1652, 40, 73);
INSERT INTO `obj_students_skills` VALUES(1653, 40, 94);
INSERT INTO `obj_students_skills` VALUES(1654, 40, 77);
INSERT INTO `obj_students_skills` VALUES(1655, 40, 68);
INSERT INTO `obj_students_skills` VALUES(1656, 40, 91);
INSERT INTO `obj_students_skills` VALUES(1657, 40, 56);
INSERT INTO `obj_students_skills` VALUES(1658, 40, 79);
INSERT INTO `obj_students_skills` VALUES(1659, 40, 89);
INSERT INTO `obj_students_skills` VALUES(1660, 40, 82);
INSERT INTO `obj_students_skills` VALUES(1661, 40, 87);
INSERT INTO `obj_students_skills` VALUES(1662, 40, 97);
INSERT INTO `obj_students_skills` VALUES(1663, 40, 78);
INSERT INTO `obj_students_skills` VALUES(1664, 40, 72);
INSERT INTO `obj_students_skills` VALUES(1665, 40, 83);
INSERT INTO `obj_students_skills` VALUES(1666, 40, 95);
INSERT INTO `obj_students_skills` VALUES(1667, 40, 65);
INSERT INTO `obj_students_skills` VALUES(1668, 40, 58);
INSERT INTO `obj_students_skills` VALUES(1669, 40, 74);
INSERT INTO `obj_students_skills` VALUES(1670, 40, 81);
INSERT INTO `obj_students_skills` VALUES(1671, 40, 106);
INSERT INTO `obj_students_skills` VALUES(1672, 40, 110);
INSERT INTO `obj_students_skills` VALUES(1673, 40, 108);
INSERT INTO `obj_students_skills` VALUES(1674, 40, 109);
INSERT INTO `obj_students_skills` VALUES(1675, 41, 4);
INSERT INTO `obj_students_skills` VALUES(1676, 41, 1);
INSERT INTO `obj_students_skills` VALUES(1677, 41, 2);
INSERT INTO `obj_students_skills` VALUES(1678, 41, 3);
INSERT INTO `obj_students_skills` VALUES(1679, 41, 10);
INSERT INTO `obj_students_skills` VALUES(1680, 41, 40);
INSERT INTO `obj_students_skills` VALUES(1681, 41, 46);
INSERT INTO `obj_students_skills` VALUES(1682, 41, 34);
INSERT INTO `obj_students_skills` VALUES(1683, 41, 19);
INSERT INTO `obj_students_skills` VALUES(1684, 41, 38);
INSERT INTO `obj_students_skills` VALUES(1685, 41, 35);
INSERT INTO `obj_students_skills` VALUES(1686, 41, 37);
INSERT INTO `obj_students_skills` VALUES(1687, 41, 55);
INSERT INTO `obj_students_skills` VALUES(1688, 41, 41);
INSERT INTO `obj_students_skills` VALUES(1689, 41, 43);
INSERT INTO `obj_students_skills` VALUES(1690, 41, 86);
INSERT INTO `obj_students_skills` VALUES(1691, 41, 84);
INSERT INTO `obj_students_skills` VALUES(1692, 41, 99);
INSERT INTO `obj_students_skills` VALUES(1693, 41, 68);
INSERT INTO `obj_students_skills` VALUES(1694, 41, 76);
INSERT INTO `obj_students_skills` VALUES(1695, 41, 64);
INSERT INTO `obj_students_skills` VALUES(1696, 41, 98);
INSERT INTO `obj_students_skills` VALUES(1697, 41, 87);
INSERT INTO `obj_students_skills` VALUES(1698, 41, 97);
INSERT INTO `obj_students_skills` VALUES(1699, 41, 61);
INSERT INTO `obj_students_skills` VALUES(1700, 41, 66);
INSERT INTO `obj_students_skills` VALUES(1701, 41, 93);
INSERT INTO `obj_students_skills` VALUES(1702, 41, 63);
INSERT INTO `obj_students_skills` VALUES(1703, 41, 80);
INSERT INTO `obj_students_skills` VALUES(1704, 41, 62);
INSERT INTO `obj_students_skills` VALUES(1705, 41, 106);
INSERT INTO `obj_students_skills` VALUES(1706, 41, 104);
INSERT INTO `obj_students_skills` VALUES(1707, 41, 108);
INSERT INTO `obj_students_skills` VALUES(1708, 41, 107);
INSERT INTO `obj_students_skills` VALUES(1709, 41, 109);
INSERT INTO `obj_students_skills` VALUES(1710, 42, 4);
INSERT INTO `obj_students_skills` VALUES(1711, 42, 7);
INSERT INTO `obj_students_skills` VALUES(1712, 42, 5);
INSERT INTO `obj_students_skills` VALUES(1713, 42, 10);
INSERT INTO `obj_students_skills` VALUES(1714, 42, 51);
INSERT INTO `obj_students_skills` VALUES(1715, 42, 40);
INSERT INTO `obj_students_skills` VALUES(1716, 42, 46);
INSERT INTO `obj_students_skills` VALUES(1717, 42, 34);
INSERT INTO `obj_students_skills` VALUES(1718, 42, 48);
INSERT INTO `obj_students_skills` VALUES(1719, 42, 19);
INSERT INTO `obj_students_skills` VALUES(1720, 42, 38);
INSERT INTO `obj_students_skills` VALUES(1721, 42, 35);
INSERT INTO `obj_students_skills` VALUES(1722, 42, 27);
INSERT INTO `obj_students_skills` VALUES(1723, 42, 18);
INSERT INTO `obj_students_skills` VALUES(1724, 42, 22);
INSERT INTO `obj_students_skills` VALUES(1725, 42, 25);
INSERT INTO `obj_students_skills` VALUES(1726, 42, 37);
INSERT INTO `obj_students_skills` VALUES(1727, 42, 55);
INSERT INTO `obj_students_skills` VALUES(1728, 42, 41);
INSERT INTO `obj_students_skills` VALUES(1729, 42, 43);
INSERT INTO `obj_students_skills` VALUES(1730, 42, 102);
INSERT INTO `obj_students_skills` VALUES(1731, 42, 60);
INSERT INTO `obj_students_skills` VALUES(1732, 42, 59);
INSERT INTO `obj_students_skills` VALUES(1733, 42, 101);
INSERT INTO `obj_students_skills` VALUES(1734, 42, 99);
INSERT INTO `obj_students_skills` VALUES(1735, 42, 73);
INSERT INTO `obj_students_skills` VALUES(1736, 42, 94);
INSERT INTO `obj_students_skills` VALUES(1737, 42, 77);
INSERT INTO `obj_students_skills` VALUES(1738, 42, 68);
INSERT INTO `obj_students_skills` VALUES(1739, 42, 91);
INSERT INTO `obj_students_skills` VALUES(1740, 42, 56);
INSERT INTO `obj_students_skills` VALUES(1741, 42, 70);
INSERT INTO `obj_students_skills` VALUES(1742, 42, 92);
INSERT INTO `obj_students_skills` VALUES(1743, 42, 88);
INSERT INTO `obj_students_skills` VALUES(1744, 42, 67);
INSERT INTO `obj_students_skills` VALUES(1745, 42, 89);
INSERT INTO `obj_students_skills` VALUES(1746, 42, 82);
INSERT INTO `obj_students_skills` VALUES(1747, 42, 97);
INSERT INTO `obj_students_skills` VALUES(1748, 42, 78);
INSERT INTO `obj_students_skills` VALUES(1749, 42, 72);
INSERT INTO `obj_students_skills` VALUES(1750, 42, 83);
INSERT INTO `obj_students_skills` VALUES(1751, 42, 95);
INSERT INTO `obj_students_skills` VALUES(1752, 42, 65);
INSERT INTO `obj_students_skills` VALUES(1753, 42, 58);
INSERT INTO `obj_students_skills` VALUES(1754, 42, 74);
INSERT INTO `obj_students_skills` VALUES(1755, 42, 81);
INSERT INTO `obj_students_skills` VALUES(1756, 42, 106);
INSERT INTO `obj_students_skills` VALUES(1757, 42, 104);
INSERT INTO `obj_students_skills` VALUES(1758, 42, 108);
INSERT INTO `obj_students_skills` VALUES(1759, 42, 109);
INSERT INTO `obj_students_skills` VALUES(1760, 43, 4);
INSERT INTO `obj_students_skills` VALUES(1761, 43, 7);
INSERT INTO `obj_students_skills` VALUES(1762, 43, 2);
INSERT INTO `obj_students_skills` VALUES(1763, 43, 5);
INSERT INTO `obj_students_skills` VALUES(1764, 43, 10);
INSERT INTO `obj_students_skills` VALUES(1765, 43, 51);
INSERT INTO `obj_students_skills` VALUES(1766, 43, 40);
INSERT INTO `obj_students_skills` VALUES(1767, 43, 46);
INSERT INTO `obj_students_skills` VALUES(1768, 43, 23);
INSERT INTO `obj_students_skills` VALUES(1769, 43, 34);
INSERT INTO `obj_students_skills` VALUES(1770, 43, 54);
INSERT INTO `obj_students_skills` VALUES(1771, 43, 38);
INSERT INTO `obj_students_skills` VALUES(1772, 43, 35);
INSERT INTO `obj_students_skills` VALUES(1773, 43, 27);
INSERT INTO `obj_students_skills` VALUES(1774, 43, 18);
INSERT INTO `obj_students_skills` VALUES(1775, 43, 21);
INSERT INTO `obj_students_skills` VALUES(1776, 43, 25);
INSERT INTO `obj_students_skills` VALUES(1777, 43, 37);
INSERT INTO `obj_students_skills` VALUES(1778, 43, 24);
INSERT INTO `obj_students_skills` VALUES(1779, 43, 55);
INSERT INTO `obj_students_skills` VALUES(1780, 43, 41);
INSERT INTO `obj_students_skills` VALUES(1781, 43, 102);
INSERT INTO `obj_students_skills` VALUES(1782, 43, 60);
INSERT INTO `obj_students_skills` VALUES(1783, 43, 84);
INSERT INTO `obj_students_skills` VALUES(1784, 43, 90);
INSERT INTO `obj_students_skills` VALUES(1785, 43, 101);
INSERT INTO `obj_students_skills` VALUES(1786, 43, 99);
INSERT INTO `obj_students_skills` VALUES(1787, 43, 68);
INSERT INTO `obj_students_skills` VALUES(1788, 43, 103);
INSERT INTO `obj_students_skills` VALUES(1789, 43, 69);
INSERT INTO `obj_students_skills` VALUES(1790, 43, 76);
INSERT INTO `obj_students_skills` VALUES(1791, 43, 64);
INSERT INTO `obj_students_skills` VALUES(1792, 43, 98);
INSERT INTO `obj_students_skills` VALUES(1793, 43, 71);
INSERT INTO `obj_students_skills` VALUES(1794, 43, 85);
INSERT INTO `obj_students_skills` VALUES(1795, 43, 87);
INSERT INTO `obj_students_skills` VALUES(1796, 43, 97);
INSERT INTO `obj_students_skills` VALUES(1797, 43, 61);
INSERT INTO `obj_students_skills` VALUES(1798, 43, 66);
INSERT INTO `obj_students_skills` VALUES(1799, 43, 93);
INSERT INTO `obj_students_skills` VALUES(1800, 43, 63);
INSERT INTO `obj_students_skills` VALUES(1801, 43, 106);
INSERT INTO `obj_students_skills` VALUES(1802, 43, 104);
INSERT INTO `obj_students_skills` VALUES(1803, 43, 108);
INSERT INTO `obj_students_skills` VALUES(1804, 43, 107);
INSERT INTO `obj_students_skills` VALUES(1805, 43, 109);
INSERT INTO `obj_students_skills` VALUES(1806, 44, 4);
INSERT INTO `obj_students_skills` VALUES(1807, 44, 7);
INSERT INTO `obj_students_skills` VALUES(1808, 44, 8);
INSERT INTO `obj_students_skills` VALUES(1809, 44, 5);
INSERT INTO `obj_students_skills` VALUES(1810, 44, 3);
INSERT INTO `obj_students_skills` VALUES(1811, 44, 46);
INSERT INTO `obj_students_skills` VALUES(1812, 44, 28);
INSERT INTO `obj_students_skills` VALUES(1813, 44, 48);
INSERT INTO `obj_students_skills` VALUES(1814, 44, 19);
INSERT INTO `obj_students_skills` VALUES(1815, 44, 38);
INSERT INTO `obj_students_skills` VALUES(1816, 44, 35);
INSERT INTO `obj_students_skills` VALUES(1817, 44, 27);
INSERT INTO `obj_students_skills` VALUES(1818, 44, 18);
INSERT INTO `obj_students_skills` VALUES(1819, 44, 22);
INSERT INTO `obj_students_skills` VALUES(1820, 44, 21);
INSERT INTO `obj_students_skills` VALUES(1821, 44, 25);
INSERT INTO `obj_students_skills` VALUES(1822, 44, 31);
INSERT INTO `obj_students_skills` VALUES(1823, 44, 24);
INSERT INTO `obj_students_skills` VALUES(1824, 44, 55);
INSERT INTO `obj_students_skills` VALUES(1825, 44, 39);
INSERT INTO `obj_students_skills` VALUES(1826, 44, 41);
INSERT INTO `obj_students_skills` VALUES(1827, 44, 16);
INSERT INTO `obj_students_skills` VALUES(1828, 44, 102);
INSERT INTO `obj_students_skills` VALUES(1829, 44, 60);
INSERT INTO `obj_students_skills` VALUES(1830, 44, 86);
INSERT INTO `obj_students_skills` VALUES(1831, 44, 96);
INSERT INTO `obj_students_skills` VALUES(1832, 44, 84);
INSERT INTO `obj_students_skills` VALUES(1833, 44, 90);
INSERT INTO `obj_students_skills` VALUES(1834, 44, 101);
INSERT INTO `obj_students_skills` VALUES(1835, 44, 68);
INSERT INTO `obj_students_skills` VALUES(1836, 44, 103);
INSERT INTO `obj_students_skills` VALUES(1837, 44, 89);
INSERT INTO `obj_students_skills` VALUES(1838, 44, 82);
INSERT INTO `obj_students_skills` VALUES(1839, 44, 64);
INSERT INTO `obj_students_skills` VALUES(1840, 44, 57);
INSERT INTO `obj_students_skills` VALUES(1841, 44, 72);
INSERT INTO `obj_students_skills` VALUES(1842, 44, 83);
INSERT INTO `obj_students_skills` VALUES(1843, 44, 81);
INSERT INTO `obj_students_skills` VALUES(1844, 44, 109);
INSERT INTO `obj_students_skills` VALUES(1845, 45, 7);
INSERT INTO `obj_students_skills` VALUES(1846, 45, 46);
INSERT INTO `obj_students_skills` VALUES(1847, 45, 54);
INSERT INTO `obj_students_skills` VALUES(1848, 45, 35);
INSERT INTO `obj_students_skills` VALUES(1849, 45, 27);
INSERT INTO `obj_students_skills` VALUES(1850, 45, 43);
INSERT INTO `obj_students_skills` VALUES(1851, 45, 16);
INSERT INTO `obj_students_skills` VALUES(1852, 45, 59);
INSERT INTO `obj_students_skills` VALUES(1853, 45, 73);
INSERT INTO `obj_students_skills` VALUES(1854, 45, 94);
INSERT INTO `obj_students_skills` VALUES(1855, 45, 56);
INSERT INTO `obj_students_skills` VALUES(1856, 45, 67);
INSERT INTO `obj_students_skills` VALUES(1857, 45, 89);
INSERT INTO `obj_students_skills` VALUES(1858, 45, 72);
INSERT INTO `obj_students_skills` VALUES(1859, 45, 83);
INSERT INTO `obj_students_skills` VALUES(1860, 45, 95);
INSERT INTO `obj_students_skills` VALUES(1861, 45, 65);
INSERT INTO `obj_students_skills` VALUES(1862, 45, 81);
INSERT INTO `obj_students_skills` VALUES(1863, 45, 110);
INSERT INTO `obj_students_skills` VALUES(1864, 45, 108);
INSERT INTO `obj_students_skills` VALUES(1865, 45, 109);
INSERT INTO `obj_students_skills` VALUES(1866, 46, 4);
INSERT INTO `obj_students_skills` VALUES(1867, 46, 7);
INSERT INTO `obj_students_skills` VALUES(1868, 46, 5);
INSERT INTO `obj_students_skills` VALUES(1869, 46, 10);
INSERT INTO `obj_students_skills` VALUES(1870, 46, 38);
INSERT INTO `obj_students_skills` VALUES(1871, 46, 29);
INSERT INTO `obj_students_skills` VALUES(1872, 46, 35);
INSERT INTO `obj_students_skills` VALUES(1873, 46, 27);
INSERT INTO `obj_students_skills` VALUES(1874, 46, 18);
INSERT INTO `obj_students_skills` VALUES(1875, 46, 22);
INSERT INTO `obj_students_skills` VALUES(1876, 46, 43);
INSERT INTO `obj_students_skills` VALUES(1877, 46, 45);
INSERT INTO `obj_students_skills` VALUES(1878, 46, 16);
INSERT INTO `obj_students_skills` VALUES(1879, 46, 60);
INSERT INTO `obj_students_skills` VALUES(1880, 46, 86);
INSERT INTO `obj_students_skills` VALUES(1881, 46, 59);
INSERT INTO `obj_students_skills` VALUES(1882, 46, 101);
INSERT INTO `obj_students_skills` VALUES(1883, 46, 99);
INSERT INTO `obj_students_skills` VALUES(1884, 46, 94);
INSERT INTO `obj_students_skills` VALUES(1885, 46, 77);
INSERT INTO `obj_students_skills` VALUES(1886, 46, 68);
INSERT INTO `obj_students_skills` VALUES(1887, 46, 91);
INSERT INTO `obj_students_skills` VALUES(1888, 46, 103);
INSERT INTO `obj_students_skills` VALUES(1889, 46, 56);
INSERT INTO `obj_students_skills` VALUES(1890, 46, 70);
INSERT INTO `obj_students_skills` VALUES(1891, 46, 92);
INSERT INTO `obj_students_skills` VALUES(1892, 46, 88);
INSERT INTO `obj_students_skills` VALUES(1893, 46, 79);
INSERT INTO `obj_students_skills` VALUES(1894, 46, 89);
INSERT INTO `obj_students_skills` VALUES(1895, 46, 82);
INSERT INTO `obj_students_skills` VALUES(1896, 46, 97);
INSERT INTO `obj_students_skills` VALUES(1897, 46, 78);
INSERT INTO `obj_students_skills` VALUES(1898, 46, 93);
INSERT INTO `obj_students_skills` VALUES(1899, 46, 83);
INSERT INTO `obj_students_skills` VALUES(1900, 46, 95);
INSERT INTO `obj_students_skills` VALUES(1901, 46, 65);
INSERT INTO `obj_students_skills` VALUES(1902, 46, 58);
INSERT INTO `obj_students_skills` VALUES(1903, 46, 81);
INSERT INTO `obj_students_skills` VALUES(1904, 46, 106);
INSERT INTO `obj_students_skills` VALUES(1905, 46, 108);
INSERT INTO `obj_students_skills` VALUES(1906, 46, 109);
INSERT INTO `obj_students_skills` VALUES(1907, 47, 4);
INSERT INTO `obj_students_skills` VALUES(1908, 47, 1);
INSERT INTO `obj_students_skills` VALUES(1909, 47, 2);
INSERT INTO `obj_students_skills` VALUES(1910, 47, 3);
INSERT INTO `obj_students_skills` VALUES(1911, 47, 19);
INSERT INTO `obj_students_skills` VALUES(1912, 47, 54);
INSERT INTO `obj_students_skills` VALUES(1913, 47, 38);
INSERT INTO `obj_students_skills` VALUES(1914, 47, 35);
INSERT INTO `obj_students_skills` VALUES(1915, 47, 27);
INSERT INTO `obj_students_skills` VALUES(1916, 47, 22);
INSERT INTO `obj_students_skills` VALUES(1917, 47, 31);
INSERT INTO `obj_students_skills` VALUES(1918, 47, 55);
INSERT INTO `obj_students_skills` VALUES(1919, 47, 52);
INSERT INTO `obj_students_skills` VALUES(1920, 47, 41);
INSERT INTO `obj_students_skills` VALUES(1921, 47, 43);
INSERT INTO `obj_students_skills` VALUES(1922, 47, 12);
INSERT INTO `obj_students_skills` VALUES(1923, 47, 60);
INSERT INTO `obj_students_skills` VALUES(1924, 47, 86);
INSERT INTO `obj_students_skills` VALUES(1925, 47, 84);
INSERT INTO `obj_students_skills` VALUES(1926, 47, 99);
INSERT INTO `obj_students_skills` VALUES(1927, 47, 75);
INSERT INTO `obj_students_skills` VALUES(1928, 47, 68);
INSERT INTO `obj_students_skills` VALUES(1929, 47, 103);
INSERT INTO `obj_students_skills` VALUES(1930, 47, 76);
INSERT INTO `obj_students_skills` VALUES(1931, 47, 64);
INSERT INTO `obj_students_skills` VALUES(1932, 47, 98);
INSERT INTO `obj_students_skills` VALUES(1933, 47, 85);
INSERT INTO `obj_students_skills` VALUES(1934, 47, 87);
INSERT INTO `obj_students_skills` VALUES(1935, 47, 97);
INSERT INTO `obj_students_skills` VALUES(1936, 47, 61);
INSERT INTO `obj_students_skills` VALUES(1937, 47, 66);
INSERT INTO `obj_students_skills` VALUES(1938, 47, 93);
INSERT INTO `obj_students_skills` VALUES(1939, 47, 63);
INSERT INTO `obj_students_skills` VALUES(1940, 47, 57);
INSERT INTO `obj_students_skills` VALUES(1941, 47, 100);
INSERT INTO `obj_students_skills` VALUES(1942, 47, 80);
INSERT INTO `obj_students_skills` VALUES(1943, 47, 106);
INSERT INTO `obj_students_skills` VALUES(1944, 47, 110);
INSERT INTO `obj_students_skills` VALUES(1945, 47, 104);
INSERT INTO `obj_students_skills` VALUES(1946, 47, 108);
INSERT INTO `obj_students_skills` VALUES(1947, 47, 107);
INSERT INTO `obj_students_skills` VALUES(1948, 47, 109);
INSERT INTO `obj_students_skills` VALUES(1949, 48, 4);
INSERT INTO `obj_students_skills` VALUES(1950, 48, 10);
INSERT INTO `obj_students_skills` VALUES(1951, 48, 46);
INSERT INTO `obj_students_skills` VALUES(1952, 48, 47);
INSERT INTO `obj_students_skills` VALUES(1953, 48, 35);
INSERT INTO `obj_students_skills` VALUES(1954, 48, 27);
INSERT INTO `obj_students_skills` VALUES(1955, 48, 43);
INSERT INTO `obj_students_skills` VALUES(1956, 48, 16);
INSERT INTO `obj_students_skills` VALUES(1957, 48, 17);
INSERT INTO `obj_students_skills` VALUES(1958, 48, 15);
INSERT INTO `obj_students_skills` VALUES(1959, 48, 86);
INSERT INTO `obj_students_skills` VALUES(1960, 48, 59);
INSERT INTO `obj_students_skills` VALUES(1961, 48, 99);
INSERT INTO `obj_students_skills` VALUES(1962, 48, 73);
INSERT INTO `obj_students_skills` VALUES(1963, 48, 94);
INSERT INTO `obj_students_skills` VALUES(1964, 48, 77);
INSERT INTO `obj_students_skills` VALUES(1965, 48, 68);
INSERT INTO `obj_students_skills` VALUES(1966, 48, 91);
INSERT INTO `obj_students_skills` VALUES(1967, 48, 56);
INSERT INTO `obj_students_skills` VALUES(1968, 48, 70);
INSERT INTO `obj_students_skills` VALUES(1969, 48, 92);
INSERT INTO `obj_students_skills` VALUES(1970, 48, 88);
INSERT INTO `obj_students_skills` VALUES(1971, 48, 79);
INSERT INTO `obj_students_skills` VALUES(1972, 48, 89);
INSERT INTO `obj_students_skills` VALUES(1973, 48, 82);
INSERT INTO `obj_students_skills` VALUES(1974, 48, 78);
INSERT INTO `obj_students_skills` VALUES(1975, 48, 93);
INSERT INTO `obj_students_skills` VALUES(1976, 48, 72);
INSERT INTO `obj_students_skills` VALUES(1977, 48, 83);
INSERT INTO `obj_students_skills` VALUES(1978, 48, 95);
INSERT INTO `obj_students_skills` VALUES(1979, 48, 65);
INSERT INTO `obj_students_skills` VALUES(1980, 48, 58);
INSERT INTO `obj_students_skills` VALUES(1981, 48, 74);
INSERT INTO `obj_students_skills` VALUES(1982, 48, 81);
INSERT INTO `obj_students_skills` VALUES(1983, 48, 106);
INSERT INTO `obj_students_skills` VALUES(1984, 48, 110);
INSERT INTO `obj_students_skills` VALUES(1985, 48, 108);
INSERT INTO `obj_students_skills` VALUES(1986, 48, 109);
INSERT INTO `obj_students_skills` VALUES(1987, 49, 4);
INSERT INTO `obj_students_skills` VALUES(1988, 49, 8);
INSERT INTO `obj_students_skills` VALUES(1989, 49, 1);
INSERT INTO `obj_students_skills` VALUES(1990, 49, 2);
INSERT INTO `obj_students_skills` VALUES(1991, 49, 5);
INSERT INTO `obj_students_skills` VALUES(1992, 49, 3);
INSERT INTO `obj_students_skills` VALUES(1993, 49, 10);
INSERT INTO `obj_students_skills` VALUES(1994, 49, 51);
INSERT INTO `obj_students_skills` VALUES(1995, 49, 40);
INSERT INTO `obj_students_skills` VALUES(1996, 49, 46);
INSERT INTO `obj_students_skills` VALUES(1997, 49, 47);
INSERT INTO `obj_students_skills` VALUES(1998, 49, 34);
INSERT INTO `obj_students_skills` VALUES(1999, 49, 11);
INSERT INTO `obj_students_skills` VALUES(2000, 49, 38);
INSERT INTO `obj_students_skills` VALUES(2001, 49, 35);
INSERT INTO `obj_students_skills` VALUES(2002, 49, 27);
INSERT INTO `obj_students_skills` VALUES(2003, 49, 22);
INSERT INTO `obj_students_skills` VALUES(2004, 49, 21);
INSERT INTO `obj_students_skills` VALUES(2005, 49, 25);
INSERT INTO `obj_students_skills` VALUES(2006, 49, 37);
INSERT INTO `obj_students_skills` VALUES(2007, 49, 32);
INSERT INTO `obj_students_skills` VALUES(2008, 49, 55);
INSERT INTO `obj_students_skills` VALUES(2009, 49, 49);
INSERT INTO `obj_students_skills` VALUES(2010, 49, 39);
INSERT INTO `obj_students_skills` VALUES(2011, 49, 41);
INSERT INTO `obj_students_skills` VALUES(2012, 49, 43);
INSERT INTO `obj_students_skills` VALUES(2013, 49, 102);
INSERT INTO `obj_students_skills` VALUES(2014, 49, 86);
INSERT INTO `obj_students_skills` VALUES(2015, 49, 96);
INSERT INTO `obj_students_skills` VALUES(2016, 49, 59);
INSERT INTO `obj_students_skills` VALUES(2017, 49, 84);
INSERT INTO `obj_students_skills` VALUES(2018, 49, 101);
INSERT INTO `obj_students_skills` VALUES(2019, 49, 99);
INSERT INTO `obj_students_skills` VALUES(2020, 49, 68);
INSERT INTO `obj_students_skills` VALUES(2021, 49, 92);
INSERT INTO `obj_students_skills` VALUES(2022, 49, 67);
INSERT INTO `obj_students_skills` VALUES(2023, 49, 89);
INSERT INTO `obj_students_skills` VALUES(2024, 49, 69);
INSERT INTO `obj_students_skills` VALUES(2025, 49, 76);
INSERT INTO `obj_students_skills` VALUES(2026, 49, 64);
INSERT INTO `obj_students_skills` VALUES(2027, 49, 71);
INSERT INTO `obj_students_skills` VALUES(2028, 49, 87);
INSERT INTO `obj_students_skills` VALUES(2029, 49, 97);
INSERT INTO `obj_students_skills` VALUES(2030, 49, 61);
INSERT INTO `obj_students_skills` VALUES(2031, 49, 66);
INSERT INTO `obj_students_skills` VALUES(2032, 49, 93);
INSERT INTO `obj_students_skills` VALUES(2033, 49, 58);
INSERT INTO `obj_students_skills` VALUES(2034, 49, 106);
INSERT INTO `obj_students_skills` VALUES(2035, 49, 104);
INSERT INTO `obj_students_skills` VALUES(2036, 49, 108);
INSERT INTO `obj_students_skills` VALUES(2037, 49, 107);
INSERT INTO `obj_students_skills` VALUES(2038, 49, 109);
INSERT INTO `obj_students_skills` VALUES(2039, 49, 105);
INSERT INTO `obj_students_skills` VALUES(2040, 50, 4);
INSERT INTO `obj_students_skills` VALUES(2041, 50, 7);
INSERT INTO `obj_students_skills` VALUES(2042, 50, 8);
INSERT INTO `obj_students_skills` VALUES(2043, 50, 5);
INSERT INTO `obj_students_skills` VALUES(2044, 50, 10);
INSERT INTO `obj_students_skills` VALUES(2045, 50, 46);
INSERT INTO `obj_students_skills` VALUES(2046, 50, 47);
INSERT INTO `obj_students_skills` VALUES(2047, 50, 48);
INSERT INTO `obj_students_skills` VALUES(2048, 50, 38);
INSERT INTO `obj_students_skills` VALUES(2049, 50, 35);
INSERT INTO `obj_students_skills` VALUES(2050, 50, 27);
INSERT INTO `obj_students_skills` VALUES(2051, 50, 18);
INSERT INTO `obj_students_skills` VALUES(2052, 50, 55);
INSERT INTO `obj_students_skills` VALUES(2053, 50, 52);
INSERT INTO `obj_students_skills` VALUES(2054, 50, 41);
INSERT INTO `obj_students_skills` VALUES(2055, 50, 43);
INSERT INTO `obj_students_skills` VALUES(2056, 50, 45);
INSERT INTO `obj_students_skills` VALUES(2057, 50, 16);
INSERT INTO `obj_students_skills` VALUES(2058, 50, 102);
INSERT INTO `obj_students_skills` VALUES(2059, 50, 60);
INSERT INTO `obj_students_skills` VALUES(2060, 50, 59);
INSERT INTO `obj_students_skills` VALUES(2061, 50, 84);
INSERT INTO `obj_students_skills` VALUES(2062, 50, 101);
INSERT INTO `obj_students_skills` VALUES(2063, 50, 99);
INSERT INTO `obj_students_skills` VALUES(2064, 50, 75);
INSERT INTO `obj_students_skills` VALUES(2065, 50, 94);
INSERT INTO `obj_students_skills` VALUES(2066, 50, 77);
INSERT INTO `obj_students_skills` VALUES(2067, 50, 68);
INSERT INTO `obj_students_skills` VALUES(2068, 50, 103);
INSERT INTO `obj_students_skills` VALUES(2069, 50, 56);
INSERT INTO `obj_students_skills` VALUES(2070, 50, 70);
INSERT INTO `obj_students_skills` VALUES(2071, 50, 92);
INSERT INTO `obj_students_skills` VALUES(2072, 50, 88);
INSERT INTO `obj_students_skills` VALUES(2073, 50, 67);
INSERT INTO `obj_students_skills` VALUES(2074, 50, 79);
INSERT INTO `obj_students_skills` VALUES(2075, 50, 89);
INSERT INTO `obj_students_skills` VALUES(2076, 50, 82);
INSERT INTO `obj_students_skills` VALUES(2077, 50, 97);
INSERT INTO `obj_students_skills` VALUES(2078, 50, 78);
INSERT INTO `obj_students_skills` VALUES(2079, 50, 93);
INSERT INTO `obj_students_skills` VALUES(2080, 50, 83);
INSERT INTO `obj_students_skills` VALUES(2081, 50, 58);
INSERT INTO `obj_students_skills` VALUES(2082, 50, 74);
INSERT INTO `obj_students_skills` VALUES(2083, 50, 81);
INSERT INTO `obj_students_skills` VALUES(2084, 50, 106);
INSERT INTO `obj_students_skills` VALUES(2085, 50, 104);
INSERT INTO `obj_students_skills` VALUES(2086, 50, 109);
INSERT INTO `obj_students_skills` VALUES(2087, 51, 4);
INSERT INTO `obj_students_skills` VALUES(2088, 51, 7);
INSERT INTO `obj_students_skills` VALUES(2089, 51, 5);
INSERT INTO `obj_students_skills` VALUES(2090, 51, 10);
INSERT INTO `obj_students_skills` VALUES(2091, 51, 51);
INSERT INTO `obj_students_skills` VALUES(2092, 51, 40);
INSERT INTO `obj_students_skills` VALUES(2093, 51, 46);
INSERT INTO `obj_students_skills` VALUES(2094, 51, 48);
INSERT INTO `obj_students_skills` VALUES(2095, 51, 38);
INSERT INTO `obj_students_skills` VALUES(2096, 51, 35);
INSERT INTO `obj_students_skills` VALUES(2097, 51, 27);
INSERT INTO `obj_students_skills` VALUES(2098, 51, 55);
INSERT INTO `obj_students_skills` VALUES(2099, 51, 41);
INSERT INTO `obj_students_skills` VALUES(2100, 51, 43);
INSERT INTO `obj_students_skills` VALUES(2101, 51, 16);
INSERT INTO `obj_students_skills` VALUES(2102, 51, 15);
INSERT INTO `obj_students_skills` VALUES(2103, 51, 60);
INSERT INTO `obj_students_skills` VALUES(2104, 51, 86);
INSERT INTO `obj_students_skills` VALUES(2105, 51, 59);
INSERT INTO `obj_students_skills` VALUES(2106, 51, 84);
INSERT INTO `obj_students_skills` VALUES(2107, 51, 99);
INSERT INTO `obj_students_skills` VALUES(2108, 51, 73);
INSERT INTO `obj_students_skills` VALUES(2109, 51, 94);
INSERT INTO `obj_students_skills` VALUES(2110, 51, 77);
INSERT INTO `obj_students_skills` VALUES(2111, 51, 68);
INSERT INTO `obj_students_skills` VALUES(2112, 51, 91);
INSERT INTO `obj_students_skills` VALUES(2113, 51, 92);
INSERT INTO `obj_students_skills` VALUES(2114, 51, 88);
INSERT INTO `obj_students_skills` VALUES(2115, 51, 67);
INSERT INTO `obj_students_skills` VALUES(2116, 51, 89);
INSERT INTO `obj_students_skills` VALUES(2117, 51, 82);
INSERT INTO `obj_students_skills` VALUES(2118, 51, 97);
INSERT INTO `obj_students_skills` VALUES(2119, 51, 78);
INSERT INTO `obj_students_skills` VALUES(2120, 51, 83);
INSERT INTO `obj_students_skills` VALUES(2121, 51, 95);
INSERT INTO `obj_students_skills` VALUES(2122, 51, 65);
INSERT INTO `obj_students_skills` VALUES(2123, 51, 81);
INSERT INTO `obj_students_skills` VALUES(2124, 51, 108);
INSERT INTO `obj_students_skills` VALUES(2125, 51, 109);
INSERT INTO `obj_students_skills` VALUES(2126, 52, 4);
INSERT INTO `obj_students_skills` VALUES(2127, 52, 7);
INSERT INTO `obj_students_skills` VALUES(2128, 52, 1);
INSERT INTO `obj_students_skills` VALUES(2129, 52, 2);
INSERT INTO `obj_students_skills` VALUES(2130, 52, 5);
INSERT INTO `obj_students_skills` VALUES(2131, 52, 10);
INSERT INTO `obj_students_skills` VALUES(2132, 52, 51);
INSERT INTO `obj_students_skills` VALUES(2133, 52, 40);
INSERT INTO `obj_students_skills` VALUES(2134, 52, 46);
INSERT INTO `obj_students_skills` VALUES(2135, 52, 34);
INSERT INTO `obj_students_skills` VALUES(2136, 52, 54);
INSERT INTO `obj_students_skills` VALUES(2137, 52, 38);
INSERT INTO `obj_students_skills` VALUES(2138, 52, 35);
INSERT INTO `obj_students_skills` VALUES(2139, 52, 27);
INSERT INTO `obj_students_skills` VALUES(2140, 52, 18);
INSERT INTO `obj_students_skills` VALUES(2141, 52, 22);
INSERT INTO `obj_students_skills` VALUES(2142, 52, 21);
INSERT INTO `obj_students_skills` VALUES(2143, 52, 25);
INSERT INTO `obj_students_skills` VALUES(2144, 52, 37);
INSERT INTO `obj_students_skills` VALUES(2145, 52, 24);
INSERT INTO `obj_students_skills` VALUES(2146, 52, 55);
INSERT INTO `obj_students_skills` VALUES(2147, 52, 52);
INSERT INTO `obj_students_skills` VALUES(2148, 52, 49);
INSERT INTO `obj_students_skills` VALUES(2149, 52, 39);
INSERT INTO `obj_students_skills` VALUES(2150, 52, 41);
INSERT INTO `obj_students_skills` VALUES(2151, 52, 43);
INSERT INTO `obj_students_skills` VALUES(2152, 52, 102);
INSERT INTO `obj_students_skills` VALUES(2153, 52, 60);
INSERT INTO `obj_students_skills` VALUES(2154, 52, 84);
INSERT INTO `obj_students_skills` VALUES(2155, 52, 101);
INSERT INTO `obj_students_skills` VALUES(2156, 52, 99);
INSERT INTO `obj_students_skills` VALUES(2157, 52, 68);
INSERT INTO `obj_students_skills` VALUES(2158, 52, 69);
INSERT INTO `obj_students_skills` VALUES(2159, 52, 76);
INSERT INTO `obj_students_skills` VALUES(2160, 52, 64);
INSERT INTO `obj_students_skills` VALUES(2161, 52, 98);
INSERT INTO `obj_students_skills` VALUES(2162, 52, 71);
INSERT INTO `obj_students_skills` VALUES(2163, 52, 87);
INSERT INTO `obj_students_skills` VALUES(2164, 52, 97);
INSERT INTO `obj_students_skills` VALUES(2165, 52, 61);
INSERT INTO `obj_students_skills` VALUES(2166, 52, 66);
INSERT INTO `obj_students_skills` VALUES(2167, 52, 93);
INSERT INTO `obj_students_skills` VALUES(2168, 52, 83);
INSERT INTO `obj_students_skills` VALUES(2169, 52, 106);
INSERT INTO `obj_students_skills` VALUES(2170, 52, 104);
INSERT INTO `obj_students_skills` VALUES(2171, 52, 108);
INSERT INTO `obj_students_skills` VALUES(2172, 52, 107);
INSERT INTO `obj_students_skills` VALUES(2173, 52, 109);
INSERT INTO `obj_students_skills` VALUES(2174, 53, 4);
INSERT INTO `obj_students_skills` VALUES(2175, 53, 7);
INSERT INTO `obj_students_skills` VALUES(2176, 53, 8);
INSERT INTO `obj_students_skills` VALUES(2177, 53, 1);
INSERT INTO `obj_students_skills` VALUES(2178, 53, 2);
INSERT INTO `obj_students_skills` VALUES(2179, 53, 5);
INSERT INTO `obj_students_skills` VALUES(2180, 53, 3);
INSERT INTO `obj_students_skills` VALUES(2181, 53, 10);
INSERT INTO `obj_students_skills` VALUES(2182, 53, 46);
INSERT INTO `obj_students_skills` VALUES(2183, 53, 47);
INSERT INTO `obj_students_skills` VALUES(2184, 53, 23);
INSERT INTO `obj_students_skills` VALUES(2185, 53, 48);
INSERT INTO `obj_students_skills` VALUES(2186, 53, 19);
INSERT INTO `obj_students_skills` VALUES(2187, 53, 53);
INSERT INTO `obj_students_skills` VALUES(2188, 53, 11);
INSERT INTO `obj_students_skills` VALUES(2189, 53, 38);
INSERT INTO `obj_students_skills` VALUES(2190, 53, 35);
INSERT INTO `obj_students_skills` VALUES(2191, 53, 27);
INSERT INTO `obj_students_skills` VALUES(2192, 53, 18);
INSERT INTO `obj_students_skills` VALUES(2193, 53, 22);
INSERT INTO `obj_students_skills` VALUES(2194, 53, 31);
INSERT INTO `obj_students_skills` VALUES(2195, 53, 55);
INSERT INTO `obj_students_skills` VALUES(2196, 53, 41);
INSERT INTO `obj_students_skills` VALUES(2197, 53, 43);
INSERT INTO `obj_students_skills` VALUES(2198, 53, 45);
INSERT INTO `obj_students_skills` VALUES(2199, 53, 16);
INSERT INTO `obj_students_skills` VALUES(2200, 53, 15);
INSERT INTO `obj_students_skills` VALUES(2201, 53, 30);
INSERT INTO `obj_students_skills` VALUES(2202, 53, 60);
INSERT INTO `obj_students_skills` VALUES(2203, 53, 84);
INSERT INTO `obj_students_skills` VALUES(2204, 53, 101);
INSERT INTO `obj_students_skills` VALUES(2205, 53, 75);
INSERT INTO `obj_students_skills` VALUES(2206, 53, 68);
INSERT INTO `obj_students_skills` VALUES(2207, 53, 103);
INSERT INTO `obj_students_skills` VALUES(2208, 53, 76);
INSERT INTO `obj_students_skills` VALUES(2209, 53, 64);
INSERT INTO `obj_students_skills` VALUES(2210, 53, 98);
INSERT INTO `obj_students_skills` VALUES(2211, 53, 71);
INSERT INTO `obj_students_skills` VALUES(2212, 53, 85);
INSERT INTO `obj_students_skills` VALUES(2213, 53, 87);
INSERT INTO `obj_students_skills` VALUES(2214, 53, 97);
INSERT INTO `obj_students_skills` VALUES(2215, 53, 78);
INSERT INTO `obj_students_skills` VALUES(2216, 53, 61);
INSERT INTO `obj_students_skills` VALUES(2217, 53, 66);
INSERT INTO `obj_students_skills` VALUES(2218, 53, 93);
INSERT INTO `obj_students_skills` VALUES(2219, 53, 63);
INSERT INTO `obj_students_skills` VALUES(2220, 53, 57);
INSERT INTO `obj_students_skills` VALUES(2221, 53, 62);
INSERT INTO `obj_students_skills` VALUES(2222, 53, 58);
INSERT INTO `obj_students_skills` VALUES(2223, 53, 106);
INSERT INTO `obj_students_skills` VALUES(2224, 53, 108);
INSERT INTO `obj_students_skills` VALUES(2225, 53, 107);
INSERT INTO `obj_students_skills` VALUES(2226, 53, 109);
INSERT INTO `obj_students_skills` VALUES(2228, 54, 4);
INSERT INTO `obj_students_skills` VALUES(2229, 54, 7);
INSERT INTO `obj_students_skills` VALUES(2230, 54, 8);
INSERT INTO `obj_students_skills` VALUES(2231, 54, 1);
INSERT INTO `obj_students_skills` VALUES(2232, 54, 2);
INSERT INTO `obj_students_skills` VALUES(2233, 54, 5);
INSERT INTO `obj_students_skills` VALUES(2234, 54, 10);
INSERT INTO `obj_students_skills` VALUES(2235, 54, 51);
INSERT INTO `obj_students_skills` VALUES(2236, 54, 40);
INSERT INTO `obj_students_skills` VALUES(2237, 54, 46);
INSERT INTO `obj_students_skills` VALUES(2238, 54, 47);
INSERT INTO `obj_students_skills` VALUES(2239, 54, 34);
INSERT INTO `obj_students_skills` VALUES(2240, 54, 19);
INSERT INTO `obj_students_skills` VALUES(2241, 54, 54);
INSERT INTO `obj_students_skills` VALUES(2242, 54, 38);
INSERT INTO `obj_students_skills` VALUES(2243, 54, 29);
INSERT INTO `obj_students_skills` VALUES(2244, 54, 35);
INSERT INTO `obj_students_skills` VALUES(2245, 54, 27);
INSERT INTO `obj_students_skills` VALUES(2246, 54, 18);
INSERT INTO `obj_students_skills` VALUES(2247, 54, 22);
INSERT INTO `obj_students_skills` VALUES(2248, 54, 21);
INSERT INTO `obj_students_skills` VALUES(2249, 54, 25);
INSERT INTO `obj_students_skills` VALUES(2250, 54, 37);
INSERT INTO `obj_students_skills` VALUES(2251, 54, 31);
INSERT INTO `obj_students_skills` VALUES(2252, 54, 24);
INSERT INTO `obj_students_skills` VALUES(2253, 54, 55);
INSERT INTO `obj_students_skills` VALUES(2254, 54, 52);
INSERT INTO `obj_students_skills` VALUES(2255, 54, 49);
INSERT INTO `obj_students_skills` VALUES(2256, 54, 39);
INSERT INTO `obj_students_skills` VALUES(2257, 54, 41);
INSERT INTO `obj_students_skills` VALUES(2258, 54, 43);
INSERT INTO `obj_students_skills` VALUES(2259, 54, 16);
INSERT INTO `obj_students_skills` VALUES(2260, 54, 30);
INSERT INTO `obj_students_skills` VALUES(2261, 54, 102);
INSERT INTO `obj_students_skills` VALUES(2262, 54, 60);
INSERT INTO `obj_students_skills` VALUES(2263, 54, 86);
INSERT INTO `obj_students_skills` VALUES(2264, 54, 96);
INSERT INTO `obj_students_skills` VALUES(2265, 54, 84);
INSERT INTO `obj_students_skills` VALUES(2266, 54, 90);
INSERT INTO `obj_students_skills` VALUES(2267, 54, 101);
INSERT INTO `obj_students_skills` VALUES(2268, 54, 99);
INSERT INTO `obj_students_skills` VALUES(2269, 54, 68);
INSERT INTO `obj_students_skills` VALUES(2270, 54, 103);
INSERT INTO `obj_students_skills` VALUES(2271, 54, 76);
INSERT INTO `obj_students_skills` VALUES(2272, 54, 64);
INSERT INTO `obj_students_skills` VALUES(2273, 54, 98);
INSERT INTO `obj_students_skills` VALUES(2274, 54, 71);
INSERT INTO `obj_students_skills` VALUES(2275, 54, 97);
INSERT INTO `obj_students_skills` VALUES(2276, 54, 61);
INSERT INTO `obj_students_skills` VALUES(2277, 54, 66);
INSERT INTO `obj_students_skills` VALUES(2278, 54, 93);
INSERT INTO `obj_students_skills` VALUES(2279, 54, 106);
INSERT INTO `obj_students_skills` VALUES(2280, 54, 110);
INSERT INTO `obj_students_skills` VALUES(2281, 54, 104);
INSERT INTO `obj_students_skills` VALUES(2282, 54, 108);
INSERT INTO `obj_students_skills` VALUES(2283, 54, 107);
INSERT INTO `obj_students_skills` VALUES(2284, 54, 109);

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

INSERT INTO `user_company_users` VALUES(1, 61, 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` VALUES(1, 3, 'admin', '123', 'Admin', 'User', 'aftha.jaldin88@gmail.com', '+94-774-422980');
INSERT INTO `user_logins` VALUES(2, 2, 'anuradhi.weerasinghe', '123', 'Anuradhi', 'Weerasinghe', 'au.maheshya@ieee.org', '+94-712-773570');
INSERT INTO `user_logins` VALUES(3, 2, 'aruni.bandara', '123', 'Aruni', 'Bandara', 'akbandara21@gmail.com', '+94-714-716869');
INSERT INTO `user_logins` VALUES(4, 2, 'aftha.jaldin', '123', 'Aftha', 'Jaldin', 'aftha.jaldin88@gmail.com', '+94-774-422980');
INSERT INTO `user_logins` VALUES(5, 2, 'banu.liyanapathirana', '123', 'Banu', 'Liyanapathirana', 'manupriyabanu@gmail.com', '+94-718-196237');
INSERT INTO `user_logins` VALUES(6, 2, 'buddhi.de.silva', '123', 'Buddhi', 'De Silva', 'gbidsilva@gmail.com', '+94-775-033983');
INSERT INTO `user_logins` VALUES(7, 2, 'chamali.waduge', '123', 'Chamali', 'Waduge', 'chamalikw@gmail.com', '+94-774-653771');
INSERT INTO `user_logins` VALUES(8, 2, 'chandima.fernando', '123', 'Chandima', 'Fernando', 'chandimafdo@gmail.com', '+94-779-206531');
INSERT INTO `user_logins` VALUES(9, 2, 'chathumi.perera', '123', 'Chathumi', 'Perera', 'chathumi001@gmail.com', '+94-717-871403');
INSERT INTO `user_logins` VALUES(10, 2, 'chathurika.lakmali', '123', 'Chathurika', 'Lakmali', 'kgclakmali@gmail.com', '+94-716-444262');
INSERT INTO `user_logins` VALUES(11, 2, 'dawpadee.kiriella', '123', 'Dawpadee', 'Kiriella', 'kiriella.dawpadee@gmail.com', '+94-714-411801');
INSERT INTO `user_logins` VALUES(12, 2, 'dayan.kulatunga', '123', 'Dayan', 'Kulatunga', 'dayankulatunga@gmail.com', '+94-716-522068');
INSERT INTO `user_logins` VALUES(13, 2, 'dilini.madushika', '123', 'Dilini', 'Madushika', 'dilinimadushika89@gmail.com', '+94-718-583872');
INSERT INTO `user_logins` VALUES(14, 2, 'dilini.muthumala', '123', 'Dilini', 'Muthumala', 'diliniasanga@gmail.com', '+94-713-400029');
INSERT INTO `user_logins` VALUES(15, 2, 'dinuni.fernando', '123', 'Dinuni', 'Fernando', 'dinuni.fernando@gmail.com', '+94-714-293337');
INSERT INTO `user_logins` VALUES(16, 2, 'hashan.silva', '123', 'Hashan', 'Silva', 'hashan.silva@gmail.com', '+94-770-668792');
INSERT INTO `user_logins` VALUES(17, 2, 'ifancy.ariaratnam', '123', 'Ifancy', 'Ariaratnam', 'avifancy@gmail.com', '+94-773-987071');
INSERT INTO `user_logins` VALUES(18, 2, 'janitha.karunawallabha', '123', 'Janitha', 'Karunawallabha', 'janitharasanga@gmail.com', '+94-774-521340');
INSERT INTO `user_logins` VALUES(19, 2, 'jinadi.dahanayaka', '123', 'Jinadi', 'Dahanayaka', 'jinadikd@gmail.com', '+94-716-496139');
INSERT INTO `user_logins` VALUES(20, 2, 'lakkhana.mallikarachchi', '123', 'Lakkhana', 'Mallikarachchi', 'tlmallik@gmail.com', '+94-715-956225');
INSERT INTO `user_logins` VALUES(21, 2, 'madhawa.bandara', '123', 'Madhawa', 'Bandara', 'madhawa.mb@gmail.com', '+94-777-487726');
INSERT INTO `user_logins` VALUES(22, 2, 'madhawa.gunasekara', '123', 'Madhawa', 'Gunasekara', 'madhawaudayakantha@gmail.com', '+94-717-134341');
INSERT INTO `user_logins` VALUES(23, 2, 'madhujith.kariyapperuma', '123', 'Madhujith', 'Kariyapperuma', 'madhujithac@gmail.com', '+94-713-435053');
INSERT INTO `user_logins` VALUES(24, 2, 'madusanka.balasooriya', '123', 'Madusanka', 'Balasooriya', 'madusankabalasooriya@gmail.com', '+94-778-686750');
INSERT INTO `user_logins` VALUES(25, 2, 'malinga.alwis', '123', 'Malinga', 'Alwis', 'randika.malinga@gmail.com', '+94-774-192561');
INSERT INTO `user_logins` VALUES(26, 2, 'mihan.liyanage', '123', 'Mihan', 'Liyanage', 'mihan070@gmail.com', '+94-712-770783');
INSERT INTO `user_logins` VALUES(27, 2, 'milani.athapattu', '123', 'Milani', 'Athapattu', 'mileee1000@gmail.com', '+94-716-034982');
INSERT INTO `user_logins` VALUES(28, 2, 'naduni.gunathilake', '123', 'Naduni', 'Gunathilake', 'gnaduni@gmail.com', '+94-715-150624');
INSERT INTO `user_logins` VALUES(29, 2, 'nayomi.wickramasekara', '123', 'Nayomi', 'Wickramasekara', 'nayomi122@gmail.com', '+94-771-223929');
INSERT INTO `user_logins` VALUES(30, 2, 'nelka.perera', '123', 'Nelka', 'Perera', 'inoshinidtn@gmail.com', '+94-713-978315');
INSERT INTO `user_logins` VALUES(31, 2, 'niluka.thilakarathna', '123', 'Niluka', 'Thilakarathna', 'nilu.nmt@gmail.com', '+94-774-522734');
INSERT INTO `user_logins` VALUES(32, 2, 'nipun.de.silva', '123', 'Nipun', 'De Silva', 'nipundesilva@live.com', '+94-779-508223');
INSERT INTO `user_logins` VALUES(33, 2, 'nisansala.liyanage', '123', 'Nisansala', 'Liyanage', 'liyanagenn@gmail.com', '+94-718-246127');
INSERT INTO `user_logins` VALUES(34, 2, 'nuwan.chathuranga', '123', 'Nuwan', 'Chathuranga', 'nuwanchathuranga.t@gmail.com', '+94-788-541107');
INSERT INTO `user_logins` VALUES(35, 2, 'pabitha.teldeniya', '123', 'Pabitha', 'Teldeniya', 'wpabitha@gmail.com', '+94-718-886949');
INSERT INTO `user_logins` VALUES(36, 2, 'pankajan.chanthirasegaran', '123', 'Pankajan', 'Chanthirasegaran', 'cpankajan@gmail.com', '+94-712-926347');
INSERT INTO `user_logins` VALUES(37, 2, 'pasan.de.silva', '123', 'Pasan', 'De Silva', 'epmdesilva@gmail.com', '+94-777-302716');
INSERT INTO `user_logins` VALUES(38, 2, 'pubudu.sandaruwani', '123', 'Pubudu', 'Sandaruwani', 'psandaru@gmail.com', '+94-770-658208');
INSERT INTO `user_logins` VALUES(39, 2, 'ruwan.wickramarachchi', '123', 'Ruwan', 'Wickramarachchi', 'rtwickramarachchi@gmail.com', '+94-777-487727');
INSERT INTO `user_logins` VALUES(40, 2, 'sachith.senevirathna', '123', 'Sachith', 'Senevirathna', 'sachithsenevirathna@yahoo.com', '+94-714-156910');
INSERT INTO `user_logins` VALUES(41, 2, 'sahan.udana', '123', 'Sahan', 'Udana', 'sahanudana1@gmail.com', '+94-717-126648');
INSERT INTO `user_logins` VALUES(42, 2, 'sandunika.wijerathne', '123', 'Sandunika', 'Wijerathne', 'swijerathne35@gmail.com', '+94-718-292746');
INSERT INTO `user_logins` VALUES(43, 2, 'sanjaya.amarasinghe', '123', 'Sanjaya', 'Amarasinghe', 'mailme@sanjaya.me', '+94-719-417343');
INSERT INTO `user_logins` VALUES(44, 2, 'sashika.rangoda', '123', 'Sashika', 'Rangoda', 'sashikarangoda1@gmail.com', '+94-712-536946');
INSERT INTO `user_logins` VALUES(45, 2, 'sashika.wijesinghe', '123', 'Sashika', 'Wijesinghe', 'sashimw@gmail.com', '+94-774-537487');
INSERT INTO `user_logins` VALUES(46, 2, 'shyama.chandani', '123', 'Shyama', 'Chandani', 'shyama3000@gmail.com', '+94-779-661473');
INSERT INTO `user_logins` VALUES(47, 2, 'sumeda.viduranga', '123', 'Sumedha', 'Viduranga', 'hbsumeda@gmail.com', '+94-725-505347');
INSERT INTO `user_logins` VALUES(48, 2, 'suranga.gunawardhana', '123', 'Suranga', 'Gunawardhana', 'suranga.dwg@gmail.com', '+94-776-431135');
INSERT INTO `user_logins` VALUES(49, 2, 'tharindu.gunasekara', '123', 'Tharindu', 'Gunasekara', 'jgtharindu@gmail.com', '+94-714-771759');
INSERT INTO `user_logins` VALUES(50, 2, 'thilini.wijesiriwardene', '123', 'Thilini', 'Wijesiriwardene', 'amthiliniiw@gmail.com', '+94-777-487728');
INSERT INTO `user_logins` VALUES(51, 2, 'vajisha.wanniarachchi', '123', 'Vajisha', 'Wanniarachchi', 'vajishaw@gmail.com', '+94-772-346202');
INSERT INTO `user_logins` VALUES(52, 2, 'vinod.kavinda', '123', 'Vinod', 'Kavinda', 'vinok88@gmail.com', '+94-783-495877');
INSERT INTO `user_logins` VALUES(53, 2, 'yasasri.sampath', '123', 'Yasasri', 'Sampath', 'yasaucsc@gmail.com', '+94-783-495859');
INSERT INTO `user_logins` VALUES(54, 2, 'akila.perera', '123', 'Akila', 'Perera', 'ravihansa3000@gmail.com', '+94-776-415438');
INSERT INTO `user_logins` VALUES(61, 5, 'shazmie.adjumain', '123', 'Shazmie', 'Adjumain', 'sshazmie@virtusa.com', '+94-772016936');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `user_students`
--

INSERT INTO `user_students` VALUES(2, 2, 1, 'Highly motivated researcher who is a self-starter and capable of effectively functioning with minimum supervision.Able to negotiate and problem solve quickly, accurately, and efficiently. Adept at multitasking to achieve individual and team goals. Reliable, hard \r\nworking, and dedicated team player who works well under pressure. Fast learner and capable of transferring knowledge to others. Ability to grasp new technologies and methodologies as required.\r\n', 'Modeling and Simulation of Wind-driven Ocean Waves for a Naval Tactical Training System.\r\n', 'The main purpose my research is to simulate the geometrical changing process of ocean waves according to the variations of wind conditions, by designing a new mathematical model using computational fluid dynamics and ocean wave spectrum (hybrid model). It also provides physically meaningful interaction information sufficiently rapid to be integrated into a naval training simulator by managing the underlying physics of natural phenomena by using user experiences/perception as an input to the wave model.', '');
INSERT INTO `user_students` VALUES(3, 3, 1, 'My objective is to become a highly skilled professional in the field of computer programming and vision with the practical usage of computer science knowledge reinforced with my skills and contribute to the team, employed institute and the betterment of mankind.', 'Seamless Real Time 3D Image Stitching Using Scale Invariant Features.', 'Applying mask considering identified SIFT features to the frames of 3D videos in order to get a seamless view after projecting the video streams using a 3D ready projector. Trying out the solution for real time videos too and use in simulations to create panoramas using multiple projectors with further improvements.\r\n\r\nTechnologies used: Directx 9.0, Visual Studio IDE, C++, Matlab', 'Aruni_Bandara.pdf');
INSERT INTO `user_students` VALUES(4, 4, 2, 'I am an ICT undergraduate with experience in web design & development, customer service and radio broadcasting. I am a highly-motivated, goal-oriented individual able to work in a team environment to accomplish targets and business objectives.  My analytical skills are my forte. I excel at communicating and getting the job done, whatever it may be. When presented with a problem, I believe that understanding it is of the utmost importance.  I learn fast, adapt efficiently and plan to succeed. A team player at heart, my attitude is always my strong suit and I strive to catalyse my colleagues in the workplace.', 'A Decision Support System for the management of Transportation Information for Public Transport in Developing Countries', 'Public Transportation Management in developing countries presents a more challenging environment than its counterpart in developed nations. And, as in any Public Transport System, the Scheduling Process provides the framework in which the Transport Service operates. It is responsible for the formulation of timetables, vehicle and crew scheduling, and crew rostering. Although this is the most important part of the transport system, it is the most difficult to manage. The varied inputs to the process, the lack of proper infrastructure and improper technology and processes available all lead to a unique problem in terms of Public Transportation Management in a developing country. Therefore it is imperative for a system to cater to these limitations and meet the demands of a developing country specifically. My research prototype proposes an alternative system to aid the Schedulers in their capacity to formulate timetables and schedule vehicles and crew. The system will also act as an information portal to commuters to obtain information about transport modes and associated routes as well as other related information. The project uses the case of the Western Province Bus Transportation System in Sri Lanka as an example to draw conclusions regarding the proposed information system.', 'Aftha_Jaldin.pdf');
INSERT INTO `user_students` VALUES(5, 5, 1, 'Maximize my capabilities on Software engineering, using modern technologies and contribute to create innovations with successful methodologies.\r\n', 'Text to Sign Language Interpreter for Sinhala Language (TSLI)', 'This is my 4th  year individual research project. The main objective of this research is to fill the gap between deaf and non-deaf people using TSLI. TSLI System will convert Sinhala text into Sinhala sign language by analyzing the morphological features of a given text. Identified word components are mapped with corresponding signs and concatenated to get the final output. TSLI supports Sinhala Unicode and if there no sign is available, system will be automatically finger-spelled.', 'Banu_Liyanapathirana.pdf');
INSERT INTO `user_students` VALUES(6, 6, 2, 'I worked at Virtusa for 8 months as a trainee software engineer (intern) and currently I am a final (4th) year student at UCSC. I am specialized in enterprise application development with technologies such as EJB (Enterprise Java Beans) and JPA (Java Persistence API). I am a Sun certified Java Programmer and have already followed courses for Oracle certified Web Component Developer and Oracle certified Business Component Developer exams at ICBT.', 'Project Pheonix - ICT Enabled Solution for Dynamic Resource Scheduling in Forest Fire Situations.\r\n', 'This project is mainly focused on improving the performance of resource scheduling during forest fire situations in Sri Lanka by managing and mapping available resources dynamically for requests (which will be generated from risk entities) in any given time and thereby reduce the damage which will happen to the environment.\r\n', 'Buddhi_De_Silva.pdf');
INSERT INTO `user_students` VALUES(7, 7, 2, 'Enthusiastic character to explore and to widen the knowledge in ICT, and willing to acquire a challenging position, with an opportunity to progress and provide leadership in a demanding and challenging work environment. Thorough subject knowledge together with the practical experience I am ready to take any\r\nchallenge in this dynamic field of ICT.', '‘Hasarel’ - ICT Based Solution to Improve Social Skills of Autistic Children', 'Autism is a complex developmental disorder distinguished by difficulties with social interaction, verbal and nonverbal communication, and behavioral problems, including repetitive behaviors and narrow focus of interest. There are significant number of Autistic children in Sri Lanka. Our research is to identify features of Autistic children and to provide them an ICT based solution to overcome the disease. \r\nHere we are concerning providing them a game based environment in an interactive manner to learn behavioral skills with social scenarios.', 'Chamali_Waduge.pdf');
INSERT INTO `user_students` VALUES(8, 8, 1, 'About Me : \r\nAbility to visualize a given problem.\r\nThink hard on a problem until a suitable solution is arrived.\r\nGood understanding on computer science concepts.\r\nDespite failures, ability to try out different methods in order to arrive at the optimal.\r\nFast learner , Team worker.\r\n\r\nObjectives :\r\nGather deeper knowledge on computer science theory.\r\nAchieve career success on computer science research.\r\nBe a Computer Scientist and work for a top research position in a world class company.', 'Topic Model Approach to Lyrics Based Song Classification\r\n', 'Topic Model is a statistical model for identifying latent topics in a\r\nlarge document collection.\r\nThe latest development is Latent Dirichlet Allocation(LDA).\r\nThe research will use LDA model to uncover the latent topics in song lyrics and ultimately will classify them according to a set of moods.', 'Chandima_Fernando.pdf');
INSERT INTO `user_students` VALUES(9, 9, 1, 'I may introduce myself as an innovative and hard working character. I am good at analysing things, learning, and providing innovative ideas. I am willing to achieve an opportunity which can enhance my challenging skills and provide a gateway for my career development in the field of Information Technology and Management while utilizing my skills to help such a reputed organization to achieve the best solution in business world.', 'Privacy Enhanced Data Sharing Model for Smart Phones in a Distributed environment.', 'This project proposes the smart phones to co-operate and share sensor data to form a distributed database.\r\nThis research will address the issues in peer-to-peer systems such as;\r\n• How smart phones can share sensed data with each other without incurring a high cost? In here the available methods for smart phone communication will be analyzed to identify the best solution.\r\n• The other issue is the accessibility what? What sensed data can be accessed by the requester. The receiver can be able to avoid the full or partial request if he is not willing to send them to the requester. More over the time for replying for the sensor query can also be controlled by the mobile owner.\r\n•This user can share his sensed data with only the requested party and access can be controlled for the users in the network according to the willingness of the user.\r\n• Finally their should be a proper authentication mechanism to identify the authenticated people in the network to share the sensed data.', 'Chathumi_Perera.pdf');
INSERT INTO `user_students` VALUES(10, 10, 2, 'Interested in achieving a suitable placement in an organization in order to utilize and improve my skills, knowledge and experiences.', 'Use of Information and Communication Technology (ICT) in preventing suicide ideation.', 'Suicide is a major problem not only in Sri Lanka, but also in the world. Suicide ideation is the first identified stage in the suicide process. Also there is a higher chance of eliminating suicidal risk at this stage. We research on current status of suicides in Sri Lanka, suicide process, where and how ICT can help.', 'Chathurika_Lakmali.pdf');
INSERT INTO `user_students` VALUES(11, 11, 2, 'To be a better IT professional and successful innovator contributing to achieve organizational goals and objectives while improving my knowledge.', 'Swaraloka', 'Adaptive Music Score Trainer for Visually Impaired in Sri Lanka', 'Dawpadee_Kiriella.pdf');
INSERT INTO `user_students` VALUES(12, 12, 2, 'To take a challenging role of a reputed organization to achieve its objectives by utilizing the maximum of myskills and competencies while expanding my knowledge and career achievements.', 'Non Invasive Human Stress Detection Using Key Stroke Dynamics and Key Stroke Pattern Variations', 'Currently we are working on this research to identify whether human stress can be detected through keystroke dynamics and keystroke pattern variations. As a solution we propose a personalized approach in detecting each individual''s level of stress by creating individual key stroke pattern profiles.', 'Dayan_Kulatunga.pdf');
INSERT INTO `user_students` VALUES(13, 13, 1, 'An enthusiastic self-starter with strong leadership and communication skills. Proven academic and curricular achievements, and possess the right technical and soft skills required to propel the organization achieving its goals and objectives.', 'Inertial Sensor based Indoor Navigation System', 'The aim of the research is to investigate possible ways of accurately model and identify a human position in an indoor environment. Position tracking is done using phone inertial sensors (accelerometer, gyroscope and magnetometer) and is based on the pedestrian dead reckoning approach where the displacement of the user from an initial position is considered in updating the user position. As the output, the path that the user went is displayed on a map. Data collection is done using Java (Android platform) and signal processing is done in Matlab.', 'Dilini_Madushika.pdf');
INSERT INTO `user_students` VALUES(14, 14, 1, 'Being highly passionate on Computer Science, I look forward for a challenging Software Engineer position, in a team, that will not only allow me to contribute my knowledge and skills, but also drive me to\r\nseek for new knowledge.', 'Optimizing Concurrent Queries in Wireless Sensor Networks', 'In a shared Wireless Sensor Network (WSN) users may pose concurrent queries to the network. However, unlike in traditional database context, concurrency seems to be advantageous in WSN\r\ncontext.\r\n\r\nOn the other hand, query optimization is vital in WSNs, due to the energy-constrained nature of those. Thus, the objective of this research is to reduce energy consumption of WSNs, through query optimization, by taking concurrency as an advantage.', 'Dilini_Muthumala.pdf');
INSERT INTO `user_students` VALUES(15, 15, 1, 'An enthusiastic, adaptive and fast-learning person with a broad and acute interest in the discovery of new innovative possibilities of research and out of box thinker, I particularly enjoy collaborating with researches from different disciplines to develop new skills and solve new challenges and a good team player.', 'Mathematical model for real-time radar in 3D maritime environment\r\n', 'This is a  mathematical model for radar simulation in 3D maritime environment with dynamic perceptions of the 3D environment. Proposed approach takes the 3D environment as the input and maps the objects via studying electromagnetic wave properties. It captures the surrounding and gives the 2D visualization of the 3D environment as the end result. In the dynamic environment perception radar hosted vessel is considered to be static while other vessels in the environment are considered to be moving. This approach uses efficient techniques to achieve a 2D visualization of the 3D environment by embedding optical phenomena namely reflection, refraction, polarization , attenuation and Doppler frequency shift in wave propagation.\r\n', 'Dinuni_Fernando.pdf');
INSERT INTO `user_students` VALUES(16, 16, 1, 'My objective is to work with an Organization which has the ability to utilize my talents and experience to its fullest, and has the capacity to help me grow, both professionally & personally, to the maximum\r\n', 'Automated Constructing an e-Profile from Web Contents for Academia\r\n', 'Constructing an profile from extracted web content for the persons in academia\r\n', 'Hashan_Silva.pdf');
INSERT INTO `user_students` VALUES(17, 17, 1, 'Fresh undergraduate with outstanding academic credentials\r\nGood team player and extremely fast learner\r\nSeek new challenges to further enhance my knowledge, technical skills and soft skills \r\nMore passionate towards the area of Artificial Intelligence \r\nAbility to meet deadlines while maintaining a high standard of work', 'Towards A Shallow Parser for Tamil (Partial Parsing: POS Tagging, Chunking, Dependency Parsing)', 'To provide some machine understanding of the syntactic structure of the natural language sentence without generating a complete parse tree. It is useful in Information extraction, Speech synthesis, and Machine translation.\r\nUsed Languages and Tools - Java, Maximum Entropy framework, Natural Language Toolkit', 'Ifancy_Ariaratnam.pdf');
INSERT INTO `user_students` VALUES(18, 18, 2, 'An Information and Communication Technology (ICT) undergraduate who is keen to find a position as a Business Analyst, Quality Assurance Engineer or Project Manager. Reliable, trustworthy, creative and meticulous. Worked for a private software company last year and gained a good understanding of what is required of an IT professional. Able to work on own initiative or as part of a team and can deal with administrative duties competently.\r\n', 'A Novel Approach to Optimize Crime Investigation Process Using Palmprint Recognition', 'Partial-to-full palmprint matching has attracted the attention of experts in print identification and researchers in palmprint matching. An efficient partial palmprint identification approach can increase the efficiency of the criminal investigation process in Sri Lanka as well as in other countries. \r\nAs the final year research project I and two other colleagues investigate the existing researches done so far in order to achieve the challenges and limitations in palmprint matching and suggest an efficient approach for partial palmprint identification. This research also proposes a novel partial palmprint segmentation and classification methodology after undertaking proper partial palmprint data analysis.', 'Janitha_Karunawallabha.pdf');
INSERT INTO `user_students` VALUES(19, 19, 1, 'A learning enthusiastic person who is willing to work in a challenging environment to research and develop, using the skills and knowledge for the betterment of the organization and the rest of the mankind.\r\n', 'Named Entity Recognition for Sinhala Language\r\n', 'When considering many of the Natural Language Processing(NLP) related areas, the recognition of Named Entities was discussed as one of the most common and important subtask. The goal of my research is to find out an improved solution for Named Entity Recognition for Sinhala using various data driven techniques and do evaluation among those techniques. It will be the initial stone for most of the NLP related tasks for Sinhala Language. \r\nData driven techniques using: Maximum Entropy, Conditional Random Fields, SVM, HMM', 'Jinadi_Dahanayaka.pdf');
INSERT INTO `user_students` VALUES(20, 20, 1, 'I am willing to solve challenging problems which will be beneficial to society using my knowledge in computer science while further improving my knowledge and skills.\r\n', 'Image reconstruction to identify license plate numbers in low resolution videos\r\n', 'Focused on finding a statistical model to improve the video frames of surveillance camera videos in order to visually identify license plate numbers. The targeted number plates are very small (10x20px) where the numbers are not identifiable visually.\r\n', 'Lakkhana_Mallikarachchi.pdf');
INSERT INTO `user_students` VALUES(21, 21, 1, 'My passion for Computer Science and long term experience in sports have given me the ability to push my capabilities beyond limits to solve problems and achieve targets in challenging environments as a self-motivated individual as well as a team player.\r\nI Intend to apply my experience, knowledge and skills in Scientific Research, Computer Science and Software Engineering to achieve organizational goals of the company I work for.', 'Investigation of Mixed Mode Programming on GPU Clusters for Matrix-Matrix Multiplication', 'Research objective is to investigate which mixed programming modes (e.g. MPI+CUDA, UPC+CUDA...etc)  give better results on a GPU cluster. Matrix multiplication is used as a case study.\r\n', 'Madhawa_Bandara.pdf');
INSERT INTO `user_students` VALUES(22, 22, 1, 'Joining a progressive firm, this will make use of my talents and experience as a Software Engineer. I believe that my technical, functional and communication skills will enable me in facing the challenging career ahead.\r\n', 'Investigating the Relationship Between Facial Images in Different Poses\r\n', 'The aim of this image processing research project is to develop a face recognition system in order to build a relationship between 2D face images of the same person with different poses. The ways in which a person''s facial feature points change according to his or her pose is considered in this investigation. \r\n\r\nTechnologies: Matlab/ openCV', 'Madhawa_Gunasekara.pdf');
INSERT INTO `user_students` VALUES(23, 23, 1, 'I''m Currently an undergraduate in University of Colombo School of Computing and I enjoy working in an esteemed organization where acquired education and skills will be utilized towards continuous growth and advancement.\r\n', 'Automated Drinking Action Recognition in videos. (Computer Vision)\r\n', 'Many of the human actions are combined with objects in semantic ways. To recognize such actions it is important to detect action, detect objects and identify the relationship with the object and the action. This research project explores how to identify the relationship between cylindrical object and human action to detect "drinking" action accurately.\r\n', 'Madhujith_Kariyapperuma.pdf');
INSERT INTO `user_students` VALUES(24, 24, 1, 'To become an asset to a software development company and work in a competitive environment where my knowledge and technical skills will be in greater use and thereby achieve company goals.\r\n', 'An Empirical Study of The Behaviour of Web Services on Enterprise Service Bus\r\n', 'There are two choices when connecting to an Enterprise Service Bus (ESB) with web services, which are SOAP and RESTful web services. The features of an ESB can be different for these web services in terms of CPU usage, memory usage, mean response time and throughput. In this research, the core features of an ESB are empirically studied and statistically analyzed with respect to web services.\r\n', 'Madusanka_Balasooriya.pdf');
INSERT INTO `user_students` VALUES(25, 25, 1, 'I intend to obtain a dynamic IT professional position allowing me to apply the IT skills and experience I have gained to a maximum extent. I have a passion for working with new technologies and applying my full potential to any work I undertake.\r\n', 'A Middleware for Energy Effective Hybrid Execution in Mobile Cloud Computing.\r\n', 'Investigated a methodology for mobile platforms to perform processing tasks energy effectively in hybrid manner by using shared amounts of mobile and cloud resources.\r\n', 'Malinga_Alwis.pdf');
INSERT INTO `user_students` VALUES(26, 26, 1, 'Dedicate my IT competence to a software engineering position that demands proficiency in modern development technologies and thorough understanding of design concepts.\r\n', 'Transactions on Shared Peer to Peer Dataspace\r\n', 'Model introduces middleware platform which enables the transactional operations in the shared p2p dataspace. Tuples are stored (located) in the local storage of the each node. Although tuples are in various places, peer to peer communication model helps to create abstract, virtual centralized storage to perform computation. To perform transaction tuple location has to be identified and that is done by using bloom filters. Transactions are implemented with basic transactional properties.\r\n', 'Mihan_Liyanage');
INSERT INTO `user_students` VALUES(27, 27, 1, 'Proficient in prioritizing and completing tasks in a timely manner, yet flexible to multitask when necessary. Enjoys learning new programs and technical stuffs. A team player who is attentive to detail and able to work in a fast paced environment. Self learner and capable of applied knowledge in practically any situation.\r\n', 'Automated Process of Identifying Tuberculosis in Ziehl Neelsen Stain\r\n', 'Develop an automated digital image analysis system for identification of the Mycobacterium Tuberculosis bacteria in a given smear after Ziehl–Neelsen stain by using direct light microscopy. Computer Vision technology based method is used in this research project.\r\n', 'Milani_Athapattu.pdf');
INSERT INTO `user_students` VALUES(28, 28, 1, 'Software engineer with a proven record of team work, system design, and development, with object-oriented software development using C++ and Java. Passionate about agile software development practices and willing to apply my full potential to work through the effective use of knowledge, information, and communication with the inclination to learn new technologies.\r\n', 'Autonomous Surrounding Ship Navigation In Virtual Maritime Environments\r\n', 'Intelligent navigation of surrounding vessels other than the trainee’s ship in a virtual maritme environment enriches the realism of marine simulations. By automating the navigation with sufficient intelligence, it is possible to create an effective environment for the training with less instructor involvement. \r\nThe autonomous navigation can be augmented by applying real AIS data gathered from real ships in real sea environment and a suitable collision avoidance mechanism need to be integrated with the system to obtain the intelligence.', '');
INSERT INTO `user_students` VALUES(29, 29, 1, 'A self-motivated and a committed character with excellent interpersonal skills which will enable to get along with work colleagues and the leadership skills, possessing excellent job knowledge through academic and professional qualifications with communication skills and having the ability to communicate project matters effectively, is currently seeking for career advancement as an Software Engineer.\r\n', 'Mitigation of Breast Cancer Deaths using Data Mining Techniques : In Sri Lankan Context', 'In mitigation of breast cancer deaths, in order to aid clinicians, recent research has looked into the development of computer aided tools. Currently there are available data mining solutions for mitigation of breast cancer deaths which have observed a highly acceptable accuracy for the analysis of various applied classification techniques on breast cancer data. Since Sri Lankan breast cancer data get differs from other countries especially from United States, the available solutions may not be suitable to be applied to Sri Lanka. Therefore the ultimate goal of this research is to come up with a breast cancer risk model that will be suitable to the Sri Lankan context.\r\n', 'Nayomi_Wickramasekara');
INSERT INTO `user_students` VALUES(30, 30, 1, 'I have the ability to visualize business problems and offer well designed maintainable solutions with deep understanding of core computer science concepts. I am a fast learner and have the capability to grasp new technologies and methodologies as required. I would like to dedicate my IT competence to a software engineering position that demands proficiency in modern development technologies and thorough understanding of design concepts.\r\n', 'Dynamic Access Control Mechanism for Shared Wireless Sensor Networks\r\n', 'An access controlling mechanism for shared wireless sensor networks which enables only authorized users to obtain data from the network only in accessible time durations for those data. It is implemented in C on ‘TikiriDB’ using ‘Contiki’ development environment and “Cooja” simulator.\r\n', 'Nelka_Perera.pdf');
INSERT INTO `user_students` VALUES(31, 31, 1, 'I can introduce myself as a honest, self motivated and hardworking character with the ability to handle responsibilities, having a can-do attitude with the ability to learn fast, providing innovative ideas and build positive relationships with work colleagues at all levels. I am also willing to work and adapt into a competitive environment that would help to effectively utilize my analytical, leadership, interpersonal and organizational skills to conceive and achieve the best solution which would in turn help the organization to grow allowing me to enhance my skills as an individual and to act as a key player in the organization''s development.\r\n', 'A Hybrid Approach for Medical Decision Support and Critical Alerts of Chronic Patients.\r\n', 'A computer based approach which has capable of identifying and alerting potentially dangerous trends developing which would enable the physician to intervene early to prevent complications and supporting the clinician to make the most appropriate clinical decision in keeping with current best clinical evidence and guidelines. Implementation is based on AI technologies.\r\n', 'Niluka_Thilakarathna.pdf');
INSERT INTO `user_students` VALUES(32, 32, 1, 'My aspiration is to gain entry and start a challenging career as a Software Developer that will allow me to expand my knowledge in IT field and contribute from the best of my ability for the good of the organization. Also, I enjoy taking up challenges which require good judgment, analytical skills, management skills and team work.\r\n', 'UCSC Learning Cloud: Technical and Pedagogical Validation of Cloud based Architecture for a Virtual Learning Environment\r\n', 'In this project a cloud hosted Software system is evaluated in order to find whether it’s possible get advantages over in house traditional non virtualized environment and evaluate private cloud scalability by using open source virtualization and cloud computing technologies. Xen is used as virtualization technology and OpenNebula is used as cloud computing software. The software system hosted in private cloud is Moodle CMS. It will be measured number of users that Moodle instance can cater in a cloud hosted system over a non-virtualized system and observe the scalability of the system in the cloud with concern to network bottle neck. If there will be technical benefits by using cloud based learning environment several eLearning applications will be implemented and pedagogical validation will be conducted.\r\n', 'Nipun_De_Silva.pdf');
INSERT INTO `user_students` VALUES(33, 33, 1, 'I may introduce myself as a person who is self-motivated individual and really passionate about Computer Science. I am mainly interested in web development and android development and have a great desire towards augmented reality. While exposing myself to new technologies and learning new theories and concepts in Computer Science, I like to use my potential to the fullest to serve the company I am working. I have always enjoyed working as a team and look forward to have a great working experience.\r\n', 'Tactile Routing Cues for Blind Outdoor Navigation\r\n', 'Focused on investigating the feasibility of using tactile cues to assist visually impaired individuals to navigate to a required destination in outdoor environments while giving obstacle avoidance capability along the moving path. An Android application is used to track the user''s current position, orientation and rotation. Google Maps and inertial sensors of the mobile device are used in this purpose.  Vibro-tactile feedback controlled through Arduino micro-controller is used to guide the blind user ahead and to inform the user about the obstacles.\r\n', 'Nisansala_Liyanage.pdf');
INSERT INTO `user_students` VALUES(34, 34, 1, 'I enjoy working in software firm, highly motivating position where I can assist others while challenging and expanding my knowledge and understanding of the task at hand. I am seeking a position that will utilize my skills and offer the chance for advancement as well as allow me the opportunity to gain additional skills and experience.\r\nI have three university project experience with 4th year research project, two project experience at eBeyonds Pvt Ltd and one Free Lancer Project.\r\n', 'Secure Routing for Mobile Ad Hoc Networks\r\n', 'Mobile Ad hoc Network (MANET) is a kind of wireless network which is formed by mobile nodes communicating with each other through wireless link without having fixed infrastructure. Each device in MANET is free to move independently in any direction and change its links to other devices frequency. Securing wireless ad hoc networks is a highly challenging issue. Understanding possible form of attacks is always the first step towards developing good security solutions. Security of communication in MANET is important for secure transmission of information. Absence of any central co-ordination mechanism and shared wireless medium makes MANET more vulnerable to digital/cyber-attacks than wired network there are a number of attacks that affect MANET. The main goal of this research project is to identify the malicious nodes in a MANET and provide a secure routing mechanism for the network to prevent routing attacks.\r\n', 'Nuwan_Chathuranga.pdf');
INSERT INTO `user_students` VALUES(35, 35, 1, 'Work passionately and efficiently with new technologies and new working environments as a team player providing the best within me while encouraging others as well and also to give commitment to the work that I am assigned while making it my priority.\r\n', 'Towards language independent semi-automated tool for software refactoring\r\n', 'Main objective of this project is to optimize the quality of source code to increase the maintainability of software independent of the implemented language and evaluate the impact of software refactoring on development life cycle. We are on the process of developing an extension for eclipse IDE using eclipse PDE, java, XML to automate the process of software refactoring.\r\n', 'Pabitha_Teldeniya.pdf');
INSERT INTO `user_students` VALUES(36, 36, 1, 'Self-motivated graduate to learn new technologies and solve novel problems. Quick learner and a good team player with the intention of sharing knowledge. Exposure in the industry and research disciplines with high degree of knowledge in various technologies. First class degree in Computer Science with mathematical background. Developed award winning applications and published research paper.\r\n', 'Towards a probability model for source code\r\n', 'Apply Document Modeling techniques from Natural Language Processing to source code to create data driven model that captures the quality of the source code.\r\n', 'Pankajan_Chanthirasegaran.pdf');
INSERT INTO `user_students` VALUES(37, 37, 2, 'I am a disciplined and highly-motivated fresh graduate from UCSC with a special degree in B.Sc. ICT, who is looking forward to complete his CIMA qualification this November. A fluent communicator with strong investigation, problem-solving and decision-making skills, combined with a pragmatic approach and sound business acumen that is passionately waiting to pursue a business analysis oriented career.\r\n', 'Non Invasive Human Stress Detection Using Keystroke Dynamics and Pattern Variations\r\n', 'Recent developments in keystroke dynamics based affective computing and biometrics research proves that keystroke variations is a very powerful source of input that provides a valuable insight about an individual''s psychological and emotional states.\r\n\r\nOur research suggests a personalized approach in detecting stress levels through keystroke variations. An application specific, individual keystroke pattern profile is created for an individual based on his normal typing patterns. This profile consists of trained average values for a set of typing features. Real time stress specific deviations of these features are analyzed and classification techniques are applied to arrive at the individual stress level.\r\n\r\nOur Research paper “Non Invasive Human Stress Detection Using Keystroke Dynamics and Pattern Variations” was accepted as a full paper in the conference “ICTer 2013”', 'Pasan_De_Silva.pdf');
INSERT INTO `user_students` VALUES(38, 38, 2, 'I am an impassioned fresh undergraduate of UCSC who is willing to take up challenges in fast growing Information Technology (IT) and Management industries. I have strong analytical and technical skills; therefore I am looking forward for an opportunity to dedicate my knowledge and skills for the continuous success of this reputed organization while serving to the IT industry and community.\r\n', 'A Model based Approach to Simulate Excess Water of Reservoirs in Sri Lanka.\r\n', 'The research is focused on the risk of floods due to spilling of reservoirs in Sri Lanka through a model based approach where operators can get in advance information of the reservoir water level while raining to the catchment and water releasing optimization decisions. Through this research we expect to prove the concept of how ICT can effectively address this issue and to create a number of significant avenues to continue researches to build a perfect system.\r\n', 'Pubudu_Sandaruwani.pdf');
INSERT INTO `user_students` VALUES(39, 39, 1, 'A self-motivated and goal-driven person with good analytical skills. I am a fast learner with good searching skills and ever ready to adapt to new technologies. I''m a hardworking and dedicated team player who can work well under pressure with minimal supervision. I am interested in computational biology, swarm intelligence, pattern recognition and search space optimization algorithms.\r\n', 'Species-Specific Primer Design for Unique Identification of Closely-Related Species.\r\n', 'Investigating on a computational method to uniquely identify closely-related biological organisms(e.g. sub types of viruses and tumors, species of a particular gene family).Here we are trying to provide a design of a possible tool to generate primers/probes for PCR based  experiments. We further try to use search space optimization algorithms based on the swarm intelligence such as Particle Swarm Optimization(PSO) to computationally validate PCR primers generated by a possible tool.\r\n', 'Ruwan_Wickramarachchi.pdf');
INSERT INTO `user_students` VALUES(40, 40, 2, 'Multi-faceted, efficient and reliable individual with more than 4 years of exposure in information technology with experience in all the phases of full SDLC lifecycle. Ability to work independently and organize workload with minimal direct supervision. Excellent communication, analytical, interpersonal, and presentation skills.\r\n', 'A Model based Approach to Simulate Excess Water of Reservoirs in Sri Lanka\r\n', 'This is an ongoing group research project consisting of three members. Our goal is to address the reservoir water overflow issue during heavy rain seasons, by building a mechanism to monitor water level in advance and identify optimum water release mechanisms. This conceptual model will be an effective communication mechanism for the users operating reservoirs, to take proper decisions in maintaining reservoir water levels and water releasing.\r\n', 'Sachith_Senevirathna.pdf');
INSERT INTO `user_students` VALUES(41, 41, 1, 'To be make best contribution to the IT proficiency through creativity and knowledge in order to achieve company objectives.\r\n', 'Facial Expression Generation in 3D Space\r\n', 'Image Processing and Computer graphic research which exploring the capability of generating facial expressions to a given neutral 3D face mesh model.\r\n', 'Sahan_Udana.pdf');
INSERT INTO `user_students` VALUES(42, 42, 2, 'I am an undergraduate of UCSC who is reading for the Bachelor of Science Information and Communication Technology. I am eagerly looking forward for an opportunity to improve my knowledge through facing challenges and exploring new technologies to serve the community and information technology industry.\r\n', '', 'Through this research we are exploring on possibilities of scheduling the resources dynamically at a forest fire situation which can also be generalized into other disaster situations as well. Therefore our objective is to develop an architecture which is consisted with three different modules for resource tracking, disaster spread estimation and dynamic resource allocation.\r\n', 'Sandunika_Wijerathne.pdf');
INSERT INTO `user_students` VALUES(43, 43, 1, 'A tech enthusiast whose objective is to be highly skilled in the software field while giving the best contribution to the team, the company and towards the betterment of the mankind.\r\n', 'Computer Vision Based Approach for Object Detection and Location Estimation in a Maritime Environment\r\n', 'In this research a computer vision based approach to detect surface objects in a maritime environment and estimate locations and extract physical features of the detected objects is explored. Here the location estimation is done using only the visual data taken from a video camera using a mathematics model.\r\n', 'Sanjaya_Amarasinghe.pdf');
INSERT INTO `user_students` VALUES(44, 44, 2, 'To be part of the organization to achieve its objectives by using the maximum of my skills and competencies while expanding my knowledge and achieving.\r\n', 'A Model Based Approach to Simulate Excess Water of Reservoirs in Sri Lanka\r\n', 'Main objective of this research is, mitigating the flood situations which is happen because of the inconsistent gate operations in reservoirs. This research is carried out finding an ICT based solution which can be addressed the above scenario.\r\n', 'Sashika_Rangoda.pdf');
INSERT INTO `user_students` VALUES(45, 45, 2, 'My objective is to work in a responsible and challenging position of an organization where I can utilize my skills, knowledge and personality for the betterment of the organization and thereby achieve self-satisfaction. \r\n\r\nEnterprise Resource Planning systems is one of my favorite area that I like to work.', 'Use of ICT in preventing suicidal ideation\r\n', 'The objective of this research is to provide an optimal method to prevent suicidal ideation by improving the emotional well-being and mental health of people by listening to their concerns and help in improving their internal strengths. This is the first effort to implement an online help forum in Sri Lanka.\r\n', 'Sashika_Wijesinghe.pdf');
INSERT INTO `user_students` VALUES(46, 46, 2, 'Bachelor of Science (ICT) graduate from University of Colombo School of Computing heading to be a Qualified Business Analyst with the objective to work as a business analyst in in an organization where I can maximize my quality of working and skills and to give my best effort and creativity to make my work to be value added and beneficial for the organization.\r\n', 'Swaraloka (Adaptive eastern music score trainer for visually impaired in Sri Lanka)\r\n', 'The research project is a study that tries to solve a problem in music industry, faced by visually impaired people in Sri Lanka. Further elaborating, to solve the problem they face in reading eastern music notation.  Through a literature survey and several questionnaires based surveys, audio format was identified as the most feasible and effective readable format to read music notations for visually impaired. The project presents a system to convert visual music notations (of Eastern music in Sri Lanka) into an audio output which gives visually impaired user the real feeling of reading the visual notation as it is, for the first time in Sri Lanka as well as in the world.\r\n', 'Shyama_Chandani.pdf');
INSERT INTO `user_students` VALUES(47, 47, 1, 'Contributing to achieve organizational goals with maximum effort and flexibility using my knowledge, skills and competencies while achieving a career growth\r\n', 'A dynamic model for human face aging\r\n', 'Research Question: “How is Human Face Aging affected by the wrinkling in the forehead region?”\r\n\r\nAim: Design and implement a wrinkling model for human face aging by only \r\nconsidering wrinkling in the forehead region.\r\n\r\nExpected Contribution:  propose and evaluate an enhanced model for wrinkles \r\nbased on aging.', 'Sumeda_Viduranga.pdf');
INSERT INTO `user_students` VALUES(48, 48, 2, 'My objective is to take a challenge and gain a good experience in any new field I work, while applying knowledge, skills and experiences which I have gained up to this stage, to contribute the achievement of goals of the organization which I work in\r\n', 'Non Invasive Human Stress Detection Using Key Stroke Dynamics & Key Stroke Variations\r\n', 'This is a group project conducted by three members. In this we consider about detecting human stress in a non invasive way with using interaction patterns of a computer user when he/she uses a computer keyboard. In this we use key logging techniques to gather keystroke data, macros for data analysis, classification networks. In addition to these things psychology is involved in this project as this is based on human stress. At the end of this research we hope to suggest a model which can be implemented as a software solution.\r\n', 'Suranga_Gunawardhana.pdf');
INSERT INTO `user_students` VALUES(49, 49, 1, 'Seeking a position to utilize my skills and abilities in the Information Technology Industry that offers professional growth while being resourceful, innovative and flexible to combine my theoretical knowledge, skills and practical experience in Computer Systems and Software Engineering with the organizational perspectives.\r\n', 'Collaborative Inference Detection\r\n', 'Database Inference detection when many users are accessing the database. The system considers on a specific schema. The system expects to detect inference based on a deductive approach where consider both deterministic and non-deterministic data.\r\n', 'Tharindu_Gunasekara.pdf');
INSERT INTO `user_students` VALUES(50, 50, 2, 'I am self motivated with good analytical and problem solving skills. I am focused, can work under minimum supervision and able to multitask when necessary. Human Computer Interaction, Data mining, System analysis and design and  Research methods are subject areas I am interested in.My interests and abilities are not limited to any specific technology but I am eager to learn new technologies.\r\n', 'A Novel Approach to Optimize Crime Investigation Process Using Palmprint Recognition\r\n', 'This project focuses on implementing a novel approach to palmprint matching through segmenting a human palm into pre-identified sectors. Real world data is being analyzed to identify the sectors and three matching algorithms will be evaluated against each other in order to identify the most efficient and effective algorithm.\r\n', 'Thilini_Wijesiriwardene.pdf');
INSERT INTO `user_students` VALUES(51, 51, 2, 'I am passionate, dedicated, hard worker who strive for perfection. I believe I have the ability to concentrate on any given task and work hard as an individual as well as a team to complete it on time. I am intend to establish as a System Consultant to use my skills, knowledge and experiences towards the great success of the organization which I am working for and in turn ensuring personal growth within the organization.\r\n', 'A Novel Approach to Optimize Crime Investigation Process Using Palmprint Recognition\r\n', 'Partial-to-full palmprint matching has attracted the attention of experts in print identification and researchers in palmprint matching. An efficient partial palmprint identification approach can increase the efficiency of the criminal investigation process in Sri Lanka as well as in other countries.\r\nAs the final year research project I and two other colleagues investigate the existing researches done so far in order to achieve the challenges and limitations in palmprint matching and suggest an efficient approach for partial palmprint identification. This research also proposes a novel partial palmprint segmentation and classification methodology after undertaking proper partial palmprint data analysis.', 'Vajisha_Wanniarachchi.pdf');
INSERT INTO `user_students` VALUES(52, 52, 1, 'A fresh graduate with sound education background, willing to accept challenges and work in variety of technologies. Resourceful team player and a leader with ability to deliver the best with research background. Strong understanding and practice of software development life-cycle and corporate environment with ability to generate effective solutions with good understanding of underlying technologies.\r\n', 'Ontology based Semantic enhancement of Web Services discovery\r\n', 'Since the number of Web Services available in  the web is growing rapidly, need for automatic service discovery methods is critical. \r\nHere I try to enhance the classical web services discovery method that uses UDDI by introducing a semantic layer using an ontology. Research areas included are Web Services, Semantic Web, Ontologies and Matchmaking.', 'Vinod_Kavinda.pdf');
INSERT INTO `user_students` VALUES(53, 53, 1, 'Seeking a career challenge in a challenging atmosphere where I will use my profound skills, knowledge and abilities to contribute towards the growth of the company I work, with and to attach value to myself professionally. Work as an excellent Team Player who will drive the team towards the intended goal by providing reliability and efficiency in whatever the workload that is given to me, while helping others in the team.\r\n', 'Obstacle Classification through Acoustic Echolocation\r\n', 'Main intention of this research is to investigate a methodology to detect and classify the obstacles in a navigational path of a visually impaired person using acoustic echolocation. A sensor and Microcontroller embedded wearable cloth is invented in the research to get the sensor readings and to classify obstacles according to patterns identified at different obstacle classes. After identifying the obstacle classes the system will feedback information via tactile feedback methodology implemented in the wearable cloth. \r\n\r\nTechnologies used -\r\nMicro Controller Programming, Sensor Networks, Data Fusion Techniques, Pattern Recognition, Windows Mobile development / Android App development, Arduino Programming', 'Yasasri_Sampath.pdf');
INSERT INTO `user_students` VALUES(54, 54, 1, 'A versatile and professional software graduate with a commitment \r\nto developing innovative software solutions. Possess a very good understanding of software development methodologies, design patterns and life-cycle.', 'Semantic Context-Aware Service Discovery with QoS Support in Opportunistic Mobile Networks', 'The goal of this project is to build an effective model for semantic capability discovery, resource utilization and service-request matchmaking in opportunistic networks. This project aims to identify how the concepts of QoS requirements, expressed through the means of the Semantic Web in the service delivery process, can fit into the opportunistic networks context.', 'Akila_Perera.pdf');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `obj_photos`
--
ALTER TABLE `obj_photos`
  ADD CONSTRAINT `obj_photos_ibfk_1` FOREIGN KEY (`related_object_type`) REFERENCES `object_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `obj_skills`
--
ALTER TABLE `obj_skills`
  ADD CONSTRAINT `obj_skills_ibfk_1` FOREIGN KEY (`skill_type`) REFERENCES `obj_skill_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `obj_students_edu_quals_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `user_students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obj_students_edu_quals_ibfk_2` FOREIGN KEY (`edu_qual_id`) REFERENCES `obj_edu_quals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obj_students_edu_quals_ibfk_3` FOREIGN KEY (`school_id`) REFERENCES `obj_schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `obj_students_papers`
--
ALTER TABLE `obj_students_papers`
  ADD CONSTRAINT `obj_students_papers_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `user_logins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obj_students_papers_ibfk_2` FOREIGN KEY (`paper_id`) REFERENCES `obj_papers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `obj_students_prof_quals`
--
ALTER TABLE `obj_students_prof_quals`
  ADD CONSTRAINT `obj_students_prof_quals_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `user_students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obj_students_prof_quals_ibfk_2` FOREIGN KEY (`prof_qual_id`) REFERENCES `obj_prof_quals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obj_students_prof_quals_ibfk_3` FOREIGN KEY (`prof_institution_id`) REFERENCES `obj_prof_institutions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `obj_students_skills_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `user_students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obj_students_skills_ibfk_2` FOREIGN KEY (`skill_id`) REFERENCES `obj_skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `user_students_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `user_logins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_students_ibfk_2` FOREIGN KEY (`degree_program_id`) REFERENCES `obj_degree_programs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
