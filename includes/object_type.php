<?php

require_once("database.php");

class ObjectType extends DatabaseObject {
	
	protected static $table_name = "object_types";
	protected static $db_fields = array('id', 'object_type_name', 'display_name', 'user_flag');
	
	public $id;
	public $object_type_name;
	public $display_name;
	public $user_flag;
	
	public function get_object_type_by_name($object_type_name){
		global $database;
		
		$sql  = "SELECT * FROM " . static::$table_name;
		$sql .= " WHERE object_type_name = '" . $object_type_name . "'";
		$sql .= " LIMIT 1";
		
		$result_array = self::find_by_sql($sql);
		
		return !empty($result_array) ? array_shift($result_array) : false;
		
	}
	
	public function get_user_objects(){
		global $database;
	
		$sql  = "SELECT * FROM " . static::$table_name;
		$sql .= " WHERE user_flag = '1'";
		$sql .= " ORDER BY object_type_name";
	
		return self::find_by_sql($sql); 
	
	}
	
}


?>