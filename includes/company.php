<?php

require_once("database.php");

class Company extends DatabaseObject {

	protected static $table_name = "obj_companies";
	protected static $db_fields = array('id', 'name', 'verified_flag', 'token', 'reg_code' , 'description', 'logo_filename', 'email', 'additional_resources', 'technologies', 'pref_cv_link','cv_bundle');

	public $id;
	public $name;
	public $verified_flag;
	public $description;
	public $logo_filename;
	public $token;
	public $reg_code;
	public $email;
	public $additional_resources;
	public $technologies;
	public $pref_cv_link;
	public $cv_bundle;

	public function get_company($id){
		global $database;
		if (!isset($id) || $id===''){
			return false;
		}

		$sql  = "SELECT * FROM " . static::$table_name;
		$sql .= " WHERE id = " . mysql_real_escape_string($id);
		$sql .= " LIMIT 1";

		$result_array = self::find_by_sql($sql);

		return !empty($result_array) ? array_shift($result_array) : false;
	}

	public function get_company_by_reg_code($reg_code){
		global $database;
		if (!isset($reg_code) || $reg_code===''){
			return false;
		}

		$sql  = "SELECT * FROM " . static::$table_name;
		$sql .= " WHERE reg_code = '" . mysql_real_escape_string($reg_code) . "'";
		$sql .= " AND verified_flag = 0";
		$sql .= " LIMIT 1";

		$result_array = self::find_by_sql($sql);

		return !empty($result_array) ? array_shift($result_array) : false;
	}

	public function create_company_account($company_id, $firstname, $lastname, $password){
		global $database;
		if (!isset($company_id) || $company_id===''){
			return false;
		}
		if (!isset($firstname) || $firstname==='' || !isset($lastname) || $lastname===''){
			return false;
		}
		if (!isset($password) || $password===''){
			return false;
		}

		$company = $this->get_company($company_id);
		if ($company === false) return false;

		$user_login = new UserLogin();
		$user_login->id = 0;
		$user_login->first_name = $firstname;
		$user_login->last_name = $lastname;
		$user_login->object_type = 5;
		$user_login->username = $company->email;
		$user_login->email_address = $company->email;

		$hash = password_hash($password, PASSWORD_BCRYPT);
		$user_login->password = $hash;

		$status = $user_login->create();
		if ($status === false) return false;

		$user_login_id = $user_login->id;

		$company_user = new CompanyUser();
		$company_user->login_id = $user_login_id;
		$company_user->company_id = $company_id;
		$status = $company_user->create();

		if ($status === false) return false;

		$company->verified_flag = 1;
		$company->update();

		return true;
	}

	public function validateToken($token){
		global $database;
		if (!isset($token) || $token === ''){
			return false;
		}

		$sql  = "SELECT * FROM " . static::$table_name;
		$sql .= " WHERE token = '" . mysql_real_escape_string($token) . "'";
		$sql .= " AND verified_flag = 0";
		$sql .= " LIMIT 1";

		$result_array = self::find_by_sql($sql);

		return !empty($result_array) ? array_shift($result_array) : false;
	}

	public static function get_sorted_list(){
		return static::find_by_sql("SELECT * FROM " . static::$table_name . ' ORDER BY name');
	}
}


?>