<?php

require_once("database.php");

class DegreeProgram extends DatabaseObject {
	
	protected static $table_name = "degree_programs";
	protected static $db_fields = array('id', 'name', 'display_name', 'duration');
	
	public $id;
	public $name;
	public $display_name;
	public $duration;
	
	public function get_degree_program_by_name($name){
		global $database;
		
		$sql  = 'SELECT * FROM ' . static::$table_name;
		$sql .= ' WHERE name = "' . $name . '"';
		$sql .= ' LIMIT 1';
		
		$result_array = self::find_by_sql($sql);
		
		return !empty($result_array) ? array_shift($result_array) : false;

	}
	
}


?>