<?php

require_once("database.php");

class CompanyUser extends DatabaseObject {
	
	protected static $table_name = "user_company_users";
	protected static $db_fields = array('id', 'login_id', 'company_id');
	
	public $id;
	public $login_id;
	public $company_id;
	
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