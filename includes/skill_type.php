<?php

require_once("database.php");

class SkillType extends DatabaseObject {
	
	protected static $table_name = "obj_skill_types";
	protected static $db_fields = array('id', 'skill_type_name');
	
	public $id;
	public $skill_type_name;
	
}


?>