<?php 
require_once("../includes/initialize.php");

redirect_to_ssl();

//init code
$user_login_object = new UserLogin();
$student_object = new Student();
$admin_user_object = new AdminUser();
$company_user_object = new CompanyUser();


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

	}

	//GET request stuff
	if (!empty($_GET['s'])){
		$details_of_student_to_read_update = $user_login_object->get_user_by_username($_GET['s']);
		if ($details_of_student_to_read_update !== false){
			$student_to_read_update = $student_object->get_user($details_of_student_to_read_update->id);
			$student_to_read_update->get_cv_pdf();
		}else{
			$msg_obj->add_error("Student does not exist.");
			include_once 'list_students.php';
		}
	} else {
		$msg_obj->add_error("No Student has been selected to view.");
		include_once 'list_students.php';
	}

} else {
	$msg_obj->add_error("You are not logged in. Please login to view this document. ");
	include_once 'login.php';
}



?>