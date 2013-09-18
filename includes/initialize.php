<?php

defined('DS') ? null : define('DS', DIRECTORY_SEPARATOR);

defined('SITE_ROOT') ? null : define('SITE_ROOT', DS.'Users'.DS.'aftha'.DS.'Sites'.DS.'2. Eclipse Workspace'.DS.'Careers'.DS.'public');
//defined('SITE_ROOT') ? null : define('SITE_ROOT', 'C:'.DS.'xampp'.DS.'htdocs'.DS.'webdev'.DS.'Careers');

require_once("config_mac.php");
//require_once("config_windows.php");

require_once("functions.php");

require_once("session.php");
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


?>