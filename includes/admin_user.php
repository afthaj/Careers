<?php

require_once("database.php");
require_once("user_login.php");

class AdminUser extends DatabaseObject {
	
	protected static $table_name = "user_admins";
	protected static $db_fields = array('id', 'login_id', 'admin_level');
	
	public $id;
	public $login_id;
	public $admin_level;
	
	public function get_user($id){
		global $database;
	
		$sql  = "SELECT * FROM " . static::$table_name;
		$sql .= " WHERE login_id = " . $id;
		$sql .= " LIMIT 1";
	
		$result_array = self::find_by_sql($sql);
	
		return !empty($result_array) ? array_shift($result_array) : false;
	}
	
}


?>