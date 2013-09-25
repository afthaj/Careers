<?php
require_once("../includes/initialize.php");

global $database;

/*
//dawpadee
$student_id = 11;

$skills1 = array('4', '7', '10');
$skills2 = array('46', '47', '19', '38', '35', '27', '55', '41', '43', '16', '17', '15');
$skills3 = array('59', '84', '101', '99', '73', '94', '77', '68', '91', '56', '70', '92', '88', '67', '89', '82', '97', '78', '93', '72', '83', '95', '65', '74', '81');
$skills4 = array('106', '104', '108', '109');
*/
/*
foreach ($students_skills as $student_skill){
	echo $student_skill;
	echo '<br />';
}
*/
/*
$database->open_connection();

foreach($skills1 as $skill1){
	
	$sql  = "INSERT INTO obj_students_skills";
	$sql .= " (student_id, skill_id)";
	$sql .= " VALUES ('". $student_id ."', '" . $skill1 . "')";
	
	$database->query($sql);
	
}

foreach($skills2 as $skill2){

	$sql  = "INSERT INTO obj_students_skills";
	$sql .= " (student_id, skill_id)";
	$sql .= " VALUES ('". $student_id ."', '" . $skill2 . "')";

	$database->query($sql);

}

foreach($skills3 as $skill3){

	$sql  = "INSERT INTO obj_students_skills";
	$sql .= " (student_id, skill_id)";
	$sql .= " VALUES ('". $student_id ."', '" . $skill3 . "')";

	$database->query($sql);

}

foreach($skills4 as $skill4){

	$sql  = "INSERT INTO obj_students_skills";
	$sql .= " (student_id, skill_id)";
	$sql .= " VALUES ('". $student_id ."', '" . $skill4 . "')";

	$database->query($sql);

}

$database->close_connection();
*/
?>