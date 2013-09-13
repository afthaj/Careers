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
	
	public function get_user($id){
		global $database;
	
		$sql  = "SELECT * FROM " . static::$table_name;
		$sql .= " WHERE id = " . $id;
		$sql .= " LIMIT 1";
	
		$result_array = self::find_by_sql($sql);
	
		return !empty($result_array) ? array_shift($result_array) : false;
	}
	
	public function full_name(){
		if (isset($this->first_name) && isset($this->last_name)){
			return $this->first_name . " " . $this->last_name;
		} else {
			return "";
		}
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