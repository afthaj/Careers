<?php

require_once("database.php");

class ProfessionalQualification extends DatabaseObject {
	
	protected static $table_name = "obj_prof_quals";
	protected static $db_fields = array('id', 'name');
	
	public $id;
	public $name;
	
}


?>