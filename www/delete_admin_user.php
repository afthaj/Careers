<?php
require_once("../includes/initialize.php");

if (!$session->is_logged_in()){
	redirect_to("login.php");
} else {
	$admin_user = AdminUser::find_by_id($_SESSION['id']);
	
}

if (empty($_GET['adminid'])){
	$msg_obj->add_error("Error. No user ID was provided. ");	
}

$user_to_delete = AdminUser::find_by_id($_GET['adminid']);

if ($user_to_delete && $user_to_delete->delete()){
	$msg_obj->add_confirmation("Success! The user has been deleted. ");	
} else {
	$msg_obj->add_error("Error. The user could not be deleted. ");	
}

?>
