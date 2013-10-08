<?php
require_once("../includes/initialize.php");
redirect_to_ssl();
$company_obj = new Company();
$registered = false;
$isTokenValid = false;

// validate token
if (isset($_GET['token']) && $_GET['token'] !== ''){
	$token = $_GET['token'];
	$token_status = $company_obj->validateToken($token);
	if ($token_status === false){
		$msg_obj->add_error("Invalid token.");
	}else{
		$isTokenValid = true;
	}
}else{
	$msg_obj->add_error("Invalid token.");
}


if ($isTokenValid && isset($_POST['submit'])){
	$reg_code = isset($_POST['reg_code']) ? trim($_POST['reg_code']) : false;
	$firstname = isset($_POST['firstname']) ? trim($_POST['firstname']) : false;
	$lastname = isset($_POST['lastname']) ? trim($_POST['lastname']) : false;
	$email = isset($_POST['email']) ? trim($_POST['email']) : false;
	$phone = isset($_POST['phone']) ? trim($_POST['phone']) : false;
	$username = isset($_POST['username']) ? trim($_POST['username']) : false;
	$password = isset($_POST['password']) ? trim($_POST['password']) : false;
	$password_confirmation = isset($_POST['password_confirmation']) ? trim($_POST['password_confirmation']) : false;

	$validation_passed = true;

	// validate registration code
	if ($reg_code === false || $reg_code === ''){
		$validation_passed = false;
		$msg_obj->add_error("Registration code cannot be empty");
	}

	// validate firstname
	if ($firstname === false || $firstname === ''){
		$validation_passed = false;
		$msg_obj->add_error("Firstname cannot be empty");
	}else{
		if (preg_match('/[^A-Za-z\-\.\s]/', $firstname) ){
			$validation_passed = false;
			$msg_obj->add_error("Firstname is invalid.");
		}
	}

	// validate lastname
	if ($lastname === false || $lastname === ''){
		$validation_passed = false;
		$msg_obj->add_error("Lastname cannot be empty");
	}else{
		if (preg_match('/[^A-Za-z\-\.\s]/', $lastname) ){
			$validation_passed = false;
			$msg_obj->add_error("Lastname is invalid.");
		}
	}

	// validate password
	if ($password === false || $password_confirmation === false || $password === '' || $password_confirmation === ''){
		$validation_passed = false;
		$msg_obj->add_error("Password cannot be empty");
	}else{
		if (strlen($password) < 6 ){
			$validation_passed = false;
			$msg_obj->add_error("Password must be at least 6 characters long.");
		}
		if (!preg_match('/[\'\/~`\!@#\$%\^&\*\(\)_\-\+=\{\}\[\]\|;:"\<\>,\.\?\\\]/', $password)){
			$validation_passed = false;
			$msg_obj->add_error("Password must contain at least one special character.");
		}

		if ($password !== $password_confirmation){
			$validation_passed = false;
			$msg_obj->add_error("The password does not match the password verification field.");
		}
	}

	if ($validation_passed === true){
		$company = $company_obj->get_company_by_reg_code($reg_code);

		if ($company === false){
			$msg_obj->add_error("Invalid registration code. Please try again.");
		}else{
			$company_id = $company->id;
			$status = $company_obj->create_company_account($company_id, $firstname, $lastname, $password);
			if ($status === false){
				$msg_obj->add_error("Error! Failed to create the account. Please try again.");
			}else{
				$registered = true;
			}
		}
	}else{
		$msg_obj->add_error("Could not complete the registration. Please fix the issues and try again.");
	}
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Register | <?php echo WEB_APP_NAME; ?>
</title>
<?php require_once('../includes/layouts/header.php'); ?>
<style type="text/css">
body {
	background-color: #f5f5f5;
}

#wrap {
	min-height: 100%;
}

.form-register {
	max-width: 500px;
	padding: 19px 29px 29px;
	margin: 20px auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-register .form-register-heading,.form-signin .checkbox {
	margin-bottom: 10px;
}

.form-register input[type="text"],.form-register input[type="password"]
	{
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}

.form-register .control-label {
	font-size: 20px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 0px;
}

.reg_complete {
	max-width: 600px;
	padding: 19px 29px 29px;
	margin: 20px auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}
</style>
</head>

<body>
	<!-- Part 1: Wrap all page content here -->
	<div id="wrap">

		<!-- Fixed navbar -->
		<?php $page = '';?>
		<?php require_once('../includes/layouts/navbar.php');?>
		<?php $msg_obj->display_errors(); ?>

		<?php if ($isTokenValid): ?>

		<!-- Begin page content -->
		<header class="jumbotron subhead">
			<div class="container">
				<h1>Company Registration</h1>
			</div>
		</header>

		<!-- Start Content -->
		<div class="container">
			<?php if (!$registered) :?>
			<form class="form-register"
				action="<?php echo HTTP_BASE . '/register?token=' . $token; ?>"
				method="post">

				<div class="control-group">
					<h2 class="form-signin-heading">Create Web Account</h2>
				</div>

				<div class="well">
					<h4>Company Name</h4>
					<p style="font-weight: bold;"><?php echo $token_status->name; ?></p>
					<br />
					<h4>Given Email Address</h4>
					<p style="font-weight: bold;"><?php echo $token_status->email; ?></p>
					<h5 style="font-weight: 100; color: blue;">This email address will
						be your username for the web account.</h5>
				</div>

				<div>
					<h5>Please fill the following form to create your web account</h5>
				</div>
				<div class="control-group">
					<div class="controls">
						<input type="text" name="reg_code" class="form-control"
							placeholder="Registration Code" value="" autocomplete="off">
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<input type="text" name="firstname" class="form-control"
							placeholder="First Name" value="" autocomplete="off">
					</div>
				</div>

				<div class="control-group">
					<div class="controls">
						<input type="text" name="lastname" class="form-control"
							placeholder="Last Name" value="" autocomplete="off">
					</div>
				</div>

				<div class="control-group">
					<div class="controls">
						<input type="password" name="password" class="form-control"
							placeholder="Password" value="" autocomplete="off">
					</div>
				</div>

				<div class="control-group">
					<div class="controls">
						<input type="password" name="password_confirmation"
							class="form-control" placeholder="Re-enter Password" value=""
							autocomplete="off">
					</div>
				</div>

				<div class="form-actions">
					<button class="btn btn-large btn-primary" type="submit"
						name="submit">Register</button>
				</div>

			</form>
			<?php else: ?>
			<div class="well reg_complete">
				<h4>Registration Complete!</h4>
				<br />
				<p style="font-weight: bold;">
					Please <a href="<?php echo HTTP_BASE . '/login'?>">sign in</a> to
					your web account using your given email address and password.
				</p>
			</div>
			<?php endif ?>

		</div>
		<!-- End Content -->
		<?php endif ?>

		<div id="push"></div>
	</div>

	<?php require_once('../includes/layouts/footer.php');?>

	<?php require_once('../includes/layouts/scripts.php');?>

</body>
</html>
