<?php

require_once("database.php");

class Skill extends DatabaseObject {
	
	protected static $table_name = "obj_skills";
	protected static $db_fields = array('id', 'skill_name', 'skill_type');
	
	public $id;
	public $skill_name;
	public $skill_type;
	
}


?>