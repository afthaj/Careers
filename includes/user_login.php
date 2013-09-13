<?php

require_once("database.php");

class UserLogin extends DatabaseObject {
	
	protected static $table_name = "user_logins";
	protected static $db_fields = array('id', 'object_type', 'username', 'password', 'first_name', 'last_name', 'email_address', 'telephone_number');
	
	public $id;
	public $object_type;
	public $username;
	public $password;
	public $first_name;
	public $last_name;
	public $email_address;
	public $telephone_number;
	
	public function get_first_name($id){
		global $database;
		$user_login = new UserLogin();
	
		$sql  = "SELECT first_name FROM " . static::$table_name;
		$sql .= " WHERE id = " . $id;
		$sql .= " LIMIT 1";
		
		$result_array = self::find_by_sql($sql);
		
		return !empty($result_array) ? array_shift($result_array) : false;
	}
	
	public function get_last_name($id){
		global $database;
		$user_login = new UserLogin();
	
		$sql  = "SELECT last_name FROM " . static::$table_name;
		$sql .= " WHERE id = " . $id;
		$sql .= " LIMIT 1";
	
		$result_array = self::find_by_sql($sql);
	
		return !empty($result_array) ? array_shift($result_array) : false;
	}
	
	public function get_full_name($id){
		$fname = $this->get_first_name($id);
		$lname = $this->get_first_name($id);
		
		return $fname . " " . $lname;
	}
	
	public static function authenticate($username="", $password="", $object_type){
		global $database;
	
		$username = $database->escape_value($username);
		$password = $database->escape_value($password);
	
		$sql  = "SELECT * FROM " . static::$table_name;
		$sql .= " WHERE username = '{$username}' AND password = '{$password}' AND object_type = '{$object_type}'";
		$sql .= " LIMIT 1";
	
		$result_array = self::find_by_sql($sql);
	
		return !empty($result_array) ? array_shift($result_array) : false;
	}
	
}


?>