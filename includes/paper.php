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
	
	// change $upload_dir when changing between Mac and PC
	
	protected $doc_dir = 'docs/uploads'; 				// for mac
	//protected $doc_dir = 'public/docs/uploads';			// for PC
	
	public function paper_file_path(){
		return $this->doc_dir.DS.$this->file_name;
	}
	
}


?>