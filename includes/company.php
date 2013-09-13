<?php

require_once("database.php");

class Company extends DatabaseObject {
	
	protected static $table_name = "obj_companies";
	protected static $db_fields = array('id', 'name', 'verified_flag');
	
	public $id;
	public $name;
	public $verified_flag;
		
}


?>