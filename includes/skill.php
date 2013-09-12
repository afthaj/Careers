<?php

require_once("database.php");

class Skill extends DatabaseObject {
	
	protected static $table_name = "skills";
	protected static $db_fields = array('id', 'skill_name');
	
	public $id;
	public $skill_name;
	
	public function full_name(){
		if (isset($this->first_name) && isset($this->last_name)){
			return $this->first_name . " " . $this->last_name;
		} else {
			return "";
		}
	}
	
}


?>