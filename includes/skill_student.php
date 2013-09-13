<?php

require_once("database.php");

class SkillStudent extends DatabaseObject {
	
	protected static $table_name = "obj_skills_students";
	protected static $db_fields = array('id', 'skill_id', 'student_id');
	
	public $id;
	public $skill_id;
	public $student_id;
	
	public function get_skills_for_student($id=0){
		global $database;
	
		$sql  = "SELECT * FROM " . static::$table_name;
		$sql .= " WHERE student_id = " . $id;
	
		return static::find_by_sql($sql);
	}
	
	public function get_students_for_skills($id=0){
		global $database;
	
		$sql  = "SELECT * FROM " . static::$table_name;
		$sql .= " WHERE skill_id = " . $id;
	
		return static::find_by_sql($sql);
	}
	
	
}


?>