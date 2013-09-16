<?php

require_once("database.php");

class School extends DatabaseObject {
	
	protected static $table_name = "obj_schools";
	protected static $db_fields = array('id', 'school_name', 'location');
	
	public $id;
	public $school_name;
	public $location;
		
}


?>