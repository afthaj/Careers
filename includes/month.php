<?php

require_once("database.php");

class Month extends DatabaseObject {
	
	protected static $table_name = "obj_months";
	protected static $db_fields = array('id', 'name');
	
	public $id;
	public $name;
	
}


?>