<?php

require_once("database.php");

class Paper extends DatabaseObject {
	
	protected static $table_name = "obj_papers";
	protected static $db_fields = array('id', 'title', 'year', 'authors', 'abstract', 'file_name');
	
	public $id;
	public $title;
	public $year;
	public $authors;
	public $abstract;
	public $file_name;
	
	
}


?>