<?php

require_once("database.php");

class StudentEduQual extends DatabaseObject {
	
	protected static $table_name = "obj_students_edu_quals";
	protected static $db_fields = array('id', 'student_id', 'edu_qual_id', 'school_id', 'year');
	
	public $id;
	public $student_id;
	public $edu_qual_id;
	public $school_id;
	public $year;
	
	public function get_edu_quals_of_student($studentid){
		global $database;
		
		$sql  = "SELECT * FROM " . static::$table_name;
		$sql .= " WHERE student_id = " . $studentid;
		$sql .= " ORDER BY year DESC";
		
		return self::find_by_sql($sql);
	}
	
	
}


?>