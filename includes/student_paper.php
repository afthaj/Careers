<?php

require_once("database.php");

class StudentPaper extends DatabaseObject {
	
	protected static $table_name = "obj_students_papers";
	protected static $db_fields = array('id', 'student_id', 'paper_id');
	
	public $id;
	public $student_id;
	public $paper_id;
	
	public function get_papers_of_student($studentid){
		global $database;
	
		$sql  = "SELECT * FROM " . static::$table_name;
		$sql .= " WHERE student_id = " . mysql_real_escape_string($studentid);
	
		return self::find_by_sql($sql);
	
	}
	
}


?>