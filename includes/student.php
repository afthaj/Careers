<?php

require_once("database.php");

class Student extends DatabaseObject {
	
	protected static $table_name = "user_students";
	protected static $db_fields = array('id', 'login_id', 'degree_program_id', 'executive_summary', 'research_project_title', 'research_project_desc', 'cv_file_name');
	
	public $id;
	public $login_id;
	public $degree_program_id;
	public $executive_summary;
	public $research_project_title;
	public $research_project_desc;
	public $cv_file_name;
	
	// change $upload_dir when changing between Mac and PC	
	//protected $doc_dir;				// for mac 
	//protected $doc_dir = 'public/docs/uploads';			// for PC
	
	public function get_user($id){
		global $database;
	
		$sql  = "SELECT * FROM " . static::$table_name;
		$sql .= " WHERE login_id = " . $id;
		$sql .= " LIMIT 1";
	
		$result_array = self::find_by_sql($sql);
	
		return !empty($result_array) ? array_shift($result_array) : false;
	}
	
	public function cv_file_path(){
		return $this->doc_dir.DS.$this->cv_file_name;
	}
	
	public function get_cv_pdf(){
		global $database;
		$doc_dir = realpath(dirname(__FILE__)) . '/../cv/';
		$file = $doc_dir . $this->cv_file_name;
		
		header('Content-Description: File Transfer');
		header('Content-Type: application/pdf');
		header('Content-Disposition: inline; filename='.basename($file));
		header('Content-Transfer-Encoding: binary');
		header('Expires: 0');
		header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
		header('Pragma: public');
		header('Content-Length: ' . filesize($file));
		ob_clean();
		flush();
		
		readfile($file);
		
		exit;
	}
	
}


?>