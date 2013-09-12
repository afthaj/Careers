<?php

require_once("database.php");

class Student extends DatabaseObject {
	
	protected static $table_name = "user_students";
	protected static $db_fields = array('id', 'username', 'password', 'first_name', 'last_name', 'degree_program_id', 'email_address', 'telephone_number');
	
	public $id;
	public $username;
	public $password;
	public $first_name;
	public $last_name;
	public $degree_program_id;
	public $email_address;
	public $telephone_number;
	
	public function full_name(){
		if (isset($this->first_name) && isset($this->last_name)){
			return $this->first_name . " " . $this->last_name;
		} else {
			return "";
		}
	}
	
	public static function authenticate($username="", $password=""){
		global $database;
	
		$username = $database->escape_value($username);
		$password = $database->escape_value($password);
	
		$sql  = "SELECT * FROM " . static::$table_name;
		$sql .= " WHERE username = '{$username}' AND password = '{$password}'";
		$sql .= " LIMIT 1";
	
		$result_array = self::find_by_sql($sql);
	
		return !empty($result_array) ? array_shift($result_array) : false;
	}
	
}


?>