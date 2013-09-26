<?php
require_once("../includes/initialize.php");

global $database;

//$skills_array = array("54" => array(4, 7, 8, 1, 2, 5, 10, 51, 40, 46, 47, 34, 19, 54, 38, 29, 35, 27, 18, 22, 21, 25, 37, 31, 24, 55, 52, 49, 39, 41, 43, 16, 30, 102, 60, 86, 96, 84, 90, 101, 99, 68, 103, 76, 64, 98, 71, 97, 61, 66, 93, 106, 110, 104, 108, 107, 109) );

/*
$papers_array = array(
					"2" => array(4), 
					"6" => array(5), 
					"8" => array(6), 
					"14" => array(6), 
					"15" => array(7, 6, 8, 9, 10), 
					"18" => array(11, 12), 
					"28" => array(2, 3, 4), 
					"36" => array(6), 
					"37" => array(13), 
					"38" => array(14), 
					"39" => array(2, 3, 4), 
					"41" => array(6), 
					"44" => array(14), 
					"50" => array(12), 
					"51" => array(12)
					);
*/

//$database->open_connection();

for ($i = 51; $i <= 51; $i++){
	
	//echo 'student = ' . $i . ' | skills = ';
	
	for ($j = 0; $j < count($papers_array[$i]); $j++){
	
		//echo $skills_array[$i][$j] . ', ' ;
		/*
		$sql  = "INSERT INTO obj_students_skills";
		$sql .= " (student_id, skill_id)";
		$sql .= " VALUES ('". $i ."', '" . $skills_array[$i][$j] . "')";
		*/
		/*
		$sql  = "INSERT INTO obj_students_papers";
		$sql .= " (student_id, paper_id)";
		$sql .= " VALUES ('". $i ."', '" . $papers_array[$i][$j] . "')";
		
		$database->query($sql);
		*/
	}
	
	//echo '<br />';
	
}

//$database->close_connection();

/*
foreach ($students_skills as $student_skill){
	echo $student_skill;
	echo '<br />';
}
*/
/*
$database->open_connection();

foreach ($student_id as $student){
	
	foreach($skills as $skill){
	
		$sql  = "INSERT INTO obj_students_skills";
		$sql .= " (student_id, skill_id)";
		$sql .= " VALUES ('". $student ."', '" . $skill . "')";
	
		$database->query($sql);
	
	}
}


$database->close_connection();
*/
?>