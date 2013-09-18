<?php

require_once("database.php");

class ProfessionalInstitution extends DatabaseObject {
	
	protected static $table_name = "obj_prof_institutions";
	protected static $db_fields = array('id', 'prof_institution_name', 'location');
	
	public $id;
	public $prof_institution_name;
	public $location;
		
}


?>