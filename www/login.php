<?php
require_once("../includes/initialize.php");


if ($session->is_logged_in()){
	redirect_to(".");
}

redirect_to_ssl();
$user_login_object = new UserLogin();

if (isset($_POST['submit'])){
	$username = trim($_POST['username']);
	$password = trim($_POST['password']);
	$obj_type = $user_login_object->get_object_type_by_username($username);
	if ($obj_type !== false){
		$obj_type_val = (int) $obj_type->object_type;
		$found_user = $user_login_object->authenticate($username, $password, $obj_type_val);
		if ($found_user){
			$session->login($found_user, $obj_type_val);
			redirect_to(".");
		} else {
			$msg_obj->add_error("Username or password is incorrect. ");
		}
	}else{
		$msg_obj->add_error("Username or password is incorrect. ");
	}



}

?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login | <?php echo WEB_APP_NAME; ?>
</title>
<?php require_once('../includes/layouts/header.php');?>

<style type="text/css">
body {
	background-color: #f5f5f5;
}

#wrap {
	min-height: 100%;
}

.form-signin {
	max-width: 400px;
	padding: 19px 29px 29px;
	margin: 100px auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .form-signin-heading,.form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin input[type="text"],.form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}

.form-signin .control-label {
	font-size: 20px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 0px;
}
</style>

</head>

<body>

	<div id="wrap">

		<!-- Fixed navbar -->
		<?php $page = 'login';?>
		<?php require_once('../includes/layouts/navbar.php');?>

		<div class="container">
			<?php $msg_obj->display_errors(); ?>
			<form class="form-signin"
				action="<?php echo HTTP_BASE . '/login'; ?>" method="post">

				<div class="control-group">
					<h2 class="form-signin-heading">Please sign in</h2>
				</div>



				<div class="control-group">
					<div class="controls">
						<input type="text" name="username" class="form-control"
							placeholder="User Name" value="">
					</div>
				</div>

				<div class="control-group">
					<div class="controls">
						<input type="password" name="password" class="form-control"
							placeholder="Password" value="">
					</div>
				</div>

				<div class="form-actions">
					<button class="btn btn-large btn-primary" type="submit"
						name="submit">Sign in</button>
				</div>

				<div class="well">Contact the <a href="mailto:webmaster@careers.ucsc.lk">webmaster</a> if you are having difficulty.</div>
			</form>

		</div>
		<!-- /container -->

	</div>
	<?php require_once('../includes/layouts/footer.php');?>
	<?php require_once('../includes/layouts/scripts.php');?>

</body>
</html>
