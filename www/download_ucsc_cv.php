<?php 
require_once("../includes/initialize.php");

redirect_to_ssl();

//init code
$user_login_object = new UserLogin();
$student_object = new Student();
$admin_user_object = new AdminUser();
$company_user_object = new CompanyUser();
$company_object = new Company();

//check login
if ($session->is_logged_in()){

	//check object_type
	if ($session->object_type == 3){
		//admin
		$user = $user_login_object->get_user($_SESSION['id']);
		$admin_user = $admin_user_object->get_user($user->id);

	} else if ($session->object_type == 2){
		//student
		$user = $user_login_object->get_user($_SESSION['id']);
		$student = $student_object->get_user($user->id);

	} else if ($session->object_type == 5){
		//company_user
		$user = $user_login_object->get_user($_SESSION['id']);
		$company_user = $company_user_object->get_user($user->id);
		
		$filename = $company_object->find_by_id($company_user->company_id)->cv_bundle;
		
		$file = SITE_ROOT . DS . 'cv' . DS . $filename;
		if ($file === null || $file === '' || !file_exists($file)){
			header('HTTP/1.0 404 Not Found');
			require_once(SITE_ROOT . DS . 'www' . DS . 'not-found.php');
			exit;
		}
		session_write_close();
		header('Content-Description: File Transfer');
		header('Content-Type: application/zip');
		header('Content-Disposition: attachment; filename="'.basename($file).'"');
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

	

} else {
	$msg_obj->add_error("You are not logged in. Please login to view this document. ");
	include_once 'login.php';
}



?>