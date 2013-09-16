<?php

require_once("database.php");

class StudentPaper extends DatabaseObject {
	
	protected static $table_name = "obj_students_papers";
	protected static $db_fields = array('id', 'student_id', 'paper_id');
	
	public $id;
	public $student_id;
	public $paper_id;
	
}


?>