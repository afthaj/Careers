<?php

require_once("database.php");

class Student extends DatabaseObject {
	
	protected static $table_name = "user_students";
	protected static $db_fields = array('id', 'login_id', 'degree_program_id');
	
	public $id;
	public $login_id;
	public $degree_program_id;
	
	
}


?>