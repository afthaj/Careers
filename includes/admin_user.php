<?php

require_once("database.php");
require_once("user_login.php");

class AdminUser extends DatabaseObject {
	
	protected static $table_name = "user_admins";
	protected static $db_fields = array('id', 'login_id', 'admin_level');
	
	public $id;
	public $login_id;
	public $admin_level;
	
}


?>