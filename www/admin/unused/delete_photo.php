<?php
require_once("../../includes/initialize.php");

if (!$session->is_logged_in()){
	redirect_to("login.php");
} else {
	$user = User::find_by_id($_SESSION['user_id']);
}

if (empty($_GET['id'])){
	$msg_obj->add_error("Eror. No photograph ID was provided. ");	
}

$photo = Photograph::find_by_id($_GET['id']);

if ($photo && $photo->destroy()){
	$msg_obj->add_confirmation("Success! The {$photo->filename} was deleted. ");	
} else {
	$msg_obj->add_error("Error. The photo could not be deleted. ");	
}

?>
