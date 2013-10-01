<?php

function strip_zeros_from_date($marked_string="") {
	$no_zeros = str_replace('*0', '', $marked_string);
	$cleaned_string = str_replace('*', '', $no_zeros);
	return $cleaned_string;
}

function redirect_to( $location = NULL ){
	if ( $location != NULL ){
		header("Location: " . HTTP_BASE . "/{$location}");
		exit;
	}
}

function redirect_to_ssl(){
	if (empty($_SERVER['HTTPS'])){
		$redirect = "https://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
		header("Location: $redirect");
		exit;
	}
}

function output_message($message = ""){
	if (!empty($message)){
		return '<div class="alert"><button type="button" class="close" data-dismiss="alert">&times;</button>{$message}</div>';
		return $message;
	} else {
		return "";
	}
}


function datetime_to_text($datetime=""){
	$unixdatetime = strtotime($datetime);
	return strftime("%B %d, %Y at %I:%M %p", $unixdatetime);
}

function clean_getpost(){
	require_once(SITE_ROOT.'/includes/htmlpurifier/library/HTMLPurifier.auto.php');
	$config = HTMLPurifier_Config::createDefault();

	// configuration goes here:
	$config->set('Core.Encoding', 'UTF-8');
	$config->set('HTML.Doctype', 'XHTML 1.0 Transitional');

	$purifier = new HTMLPurifier($config);

	foreach($_POST as $key=>$val) {
		if(!is_array($_POST[$key])) {
			$val = $purifier->purify($val);
			$_POST[$key] = $val;
		}
	}
	foreach($_GET as $key=>$val) {
		if(!is_array($_GET[$key])) {
			$val = $purifier->purify($val);
			$_GET[$key] = $val;
		}
	}
}
?>