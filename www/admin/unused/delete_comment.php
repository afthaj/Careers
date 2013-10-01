<?php
require_once("../../includes/initialize.php");

if (!$session->is_logged_in()){
	redirect_to("login.php");
} else {
	$user = User::find_by_id($_SESSION['user_id']);
}

if (empty($_GET['id'])){
	$msg_obj->add_error("Eror. No comment ID was provided. ");	
}

$comment = Comment::find_by_id($_GET['id']);

if ($comment && $comment->delete()){
	$msg_obj->add_confirmation("Success! The comment was deleted. ");
	
} else {
	$msg_obj->add_error("Error. The comment could not be deleted. ");	
}

?>
