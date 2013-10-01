<?php

require_once("database.php");

class StudentSchool extends DatabaseObject {
	
	protected static $table_name = "obj_students_schools";
	protected static $db_fields = array('id', 'student_id', 'school_id', 'start_year', 'end_year');
	
	public $id;
	public $student_id;
	public $school_id;
	public $start_year;
	public $end_year;
	
	public function get_schools_of_student($studentid){
		global $database;
		
		$sql  = "SELECT * FROM " . static::$table_name;
		$sql .= " WHERE student_id = " . mysql_real_escape_string($studentid);
		$sql .= " ORDER BY end_year DESC";
		
		return self::find_by_sql($sql);
	}
	
}


?>