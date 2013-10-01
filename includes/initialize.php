<?php
require_once("session.php");

defined('DS') ? null : define('DS', DIRECTORY_SEPARATOR);
defined('SITE_ROOT') ? null : define('SITE_ROOT', realpath(dirname(__FILE__) . '/../'));

if ($session->is_logged_in() && empty($_SERVER['HTTPS'])){
	
	$redirect = "https://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
	header("Location: $redirect");
	exit;
	
}

$protocol = (empty($_SERVER['HTTPS'])) ? "http://" : "https://";

if (PHP_OS == 'WINNT' || PHP_OS == 'WIN32' || PHP_OS == 'Windows'){
	
	//defined('HTTP_BASE') ? null : define('HTTP_BASE', $protocol . 'localhost/webdev/Careers/public');
	defined('HTTP_BASE') ? null : define('HTTP_BASE', $protocol . 'career-fair.lk');
	require_once("config_windows.php");
	
} else if (PHP_OS == "Darwin") {
	
	defined('HTTP_BASE') ? null : define('HTTP_BASE', $protocol . 'careers-ucsc.lk');
	require_once("config_mac.php");
	
} else if (PHP_OS == "Linux"){
	
	defined('HTTP_BASE') ? null : define('HTTP_BASE', $protocol . 'careers.ucsc.lk');
	require_once("config_server.php");
	
}

require_once("message.php");
require_once("functions.php");
require_once("database.php");
require_once("pagination.php");
require_once("database_object.php");
require_once("admin_level.php");
require_once("admin_user.php");
require_once("company_user.php");
require_once("company.php");
require_once("degree_program.php");
require_once("edu_qual.php");
require_once("month.php");
require_once("object_type.php");
require_once("paper.php");
require_once("photo.php");
require_once("prof_institution.php");
require_once("prof_qual.php");
require_once("school.php");
require_once("skill_type.php");
require_once("skill.php");
require_once("student_company.php");
require_once("student_edu_qual.php");
require_once("student_paper.php");
require_once("student_prof_qual.php");
require_once("student_school.php");
require_once("student_skill.php");
require_once("student.php");
require_once("user_login.php");

clean_getpost();


?>