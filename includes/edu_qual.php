<?php

require_once("database.php");

class EducationalQualification extends DatabaseObject {
	
	protected static $table_name = "obj_edu_quals";
	protected static $db_fields = array('id', 'name');
	
	public $id;
	public $name;
	
}


?>