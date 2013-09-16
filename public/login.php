<?php
require_once("../includes/initialize.php");


if ($session->is_logged_in()){
	redirect_to("index.php");
}
 
$ot_object = new ObjectType();
$object_type_admin = $ot_object->get_object_type_by_name("admin");
 
$ot_object2 = new ObjectType();
$object_type_student = $ot_object2->get_object_type_by_name("student");
 
$ot_object3 = new ObjectType();
$object_type_company_user = $ot_object3->get_object_type_by_name("company_user");
 
$user_login_object = new UserLogin();
 
$ot = new ObjectType();
$user_objects = $ot->get_user_objects();

if (isset($_POST['submit'])){
	
	$object_type = trim($_POST['object_type']);
	
	if ($object_type == $object_type_admin->id) {
		
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);

		$found_user_admin = $user_login_object->authenticate($username, $password, $object_type_admin->id);
		
		if ($found_user_admin){
			$session->login($found_user_admin, $object_type_admin->id);
			redirect_to("index.php");
		} else {
			$session->message("username/password combination is incorrect. ");
		}
		
	} else if ($object_type == $object_type_student->id) {
		
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		
		$found_user_student = $user_login_object->authenticate($username, $password, $object_type_student->id);
		
		if ($found_user_student){
			$session->login($found_user_student, $object_type_bus_personnel->id);
			redirect_to("index.php");
		} else {
			$session->message("username/password combination is incorrect. ");
		}
		
	} else if ($object_type == $object_type_company_user->id) {
		
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		
		$found_user_company_user = $user_login_object->authenticate($username, $password, $object_type_company_user->id);
		
		if ($found_user_company_user){
			$session->login($found_user_company_user, $object_type_company_user->id);
			redirect_to("index.php");
		} else {
			$session->message("username/password combination is incorrect. ");
		}
		
	}
	
} else {
	$username = "";
	$password = "";
}


?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Login &middot; <?php echo WEB_APP_NAME; ?></title>
    <?php require_once('../includes/layouts/header.php');?>
    
    <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
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

    <div class="container">

      <form class="form-signin" action="<?php $_SERVER['PHP_SELF']; ?>" method="post">
        
        <div class="control-group">
        	<h2 class="form-signin-heading">Please sign in</h2>
        </div>
        
        <?php echo $session->message; ?>
        
        <div class="control-group">
        	<div class="controls">
        		<input type="text" name="username" class="form-control" placeholder="User Name" value="<?php echo htmlentities($username); ?>">
        	</div>
        </div>
        
        <div class="control-group">
        	<div class="controls">
        		<input type="password" name="password" class="form-control" placeholder="Password" value="<?php echo htmlentities($password); ?>">
        	</div>
        </div>
        
        <div class="control-group">
        	<div class="controls">
        	<label class="control-label">Login as:</label>
        		<select name="object_type">
        		<?php for ($i = 0; $i < count($user_objects); $i++) { ?>
        			<option value="<?php echo $user_objects[$i]->id; ?>"><?php echo $user_objects[$i]->display_name; ?></option>
        		<?php } ?>
        		</select>
        	</div>
        </div>
        
        <div class="form-actions">
        	<button class="btn btn-large btn-primary" type="submit" name="submit">Sign in</button>
        </div>
      
      </form>

    </div> <!-- /container -->

    <?php require_once('../includes/layouts/scripts.php');?>

  </body>
</html>
