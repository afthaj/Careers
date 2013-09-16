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
	
	
	
	
}


?>