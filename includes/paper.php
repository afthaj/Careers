<?php

require_once("database.php");

class Paper extends DatabaseObject {
	
	protected static $table_name = "obj_papers";
	protected static $db_fields = array('id', 'paper_name', 'year', 'authors', 'abstract', 'file_name');
	
	public $id;
	public $paper_name;
	public $year;
	public $authors;
	public $abstract;
	public $file_name;
		
}


?>