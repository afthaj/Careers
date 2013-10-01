<?php

require_once("database.php");

class StudentProfQuals extends DatabaseObject {
	
	protected static $table_name = "obj_students_prof_quals";
	protected static $db_fields = array('id', 'student_id', 'prof_qual_id', 'prof_institution_id', 'year');
	
	public $id;
	public $student_id;
	public $prof_qual_id;
	public $prof_institution_id;
	public $year;
	
	public function get_prof_quals_of_student($studentid){
		global $database;
		
		$sql  = "SELECT * FROM " . static::$table_name;
		$sql .= " WHERE student_id = " . mysql_real_escape_string($studentid);
		$sql .= " ORDER BY year DESC";
		
		return self::find_by_sql($sql);
	}
	
}


?>