<?php

require_once("database.php");

class StudentSkill extends DatabaseObject {
	
	protected static $table_name = "obj_students_skills";
	protected static $db_fields = array('id', 'skill_id', 'student_id');
	
	public $id;
	public $student_id;
	public $skill_id;
	
	public function get_skills_for_student($id=0){
		global $database;
	
		$sql  = "SELECT * FROM " . static::$table_name;
		$sql .= " WHERE student_id = " . mysql_real_escape_string($id);
	
		return static::find_by_sql($sql);
	}
	
	public function get_students_for_skills($id=0){
		global $database;
	
		$sql  = "SELECT * FROM " . static::$table_name;
		$sql .= " WHERE skill_id = " . mysql_real_escape_string($id);
	
		return static::find_by_sql($sql);
	}
	
	
}


?>