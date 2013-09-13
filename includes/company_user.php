<?php

require_once("database.php");

class CompanyUser extends DatabaseObject {
	
	protected static $table_name = "user_company_users";
	protected static $db_fields = array('id', 'login_id', 'company_id');
	
	public $id;
	public $login_id;
	public $company_id;
	
}


?>