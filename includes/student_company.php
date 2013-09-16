<?php

require_once("database.php");

class StudentCompany extends DatabaseObject {
	
	protected static $table_name = "obj_students_companies";
	protected static $db_fields = array('id', 'student_id', 'company_id', 'position', 'start_month', 'start_year', 'end_month', 'end_year');
	
	public $id;
	public $student_id;
	public $company_id;
	public $position;
	public $start_month;
	public $start_year;
	public $end_month;
	public $end_year;
	
	
	
	
}


?>