<?php
require_once("../includes/initialize.php");

//init codde
$user_login_object = new UserLogin();

//check login
if ($session->is_logged_in()){
	
	if ($session->object_type == 3) {
		//admin_user
		$user = $user_login_object->get_user($_SESSION['id']);
		
	} else if ($session->object_type == 2){
		//student
		$user = $user_login_object->get_user($_SESSION['id']);
		
	} else if ($session->object_type == 5){
		//company_user
		$user = $user_login_object->get_user($_SESSION['id']);
		
	}
	
} else {
	redirect_to("login.php");
}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Test &middot; <?php echo WEB_APP_NAME; ?></title>
    <?php require_once('../includes/layouts/header.php');?>
  </head>

  <body>


    <!-- Part 1: Wrap all page content here -->
    <div id="wrap">

      <!-- Fixed navbar -->
      <?php $page = 'test';?>
      <?php require_once('../includes/layouts/navbar.php');?>

      <!-- Begin page content -->
      
      <header class="jumbotron subhead">
        <div class="container-fluid">
          <h1>Test Page</h1>
        </div>
      </header>
        
      <!-- Start Content -->
        
      <div class="container-fluid">
       	  
       	  <div class="row-fluid">
       	  	
	       	  <div class="span3">
	       	  	<div class="sidenav" data-spy="affix" data-offset-top="200">
		        	<a href="index.php" class="btn btn-primary btn-block"><i class="icon-arrow-left icon-white"></i> Back</a>
		        </div>
	       	  </div>
	       	  
	       	  <div class="span9">
	       	  <div class="row-fluid">
	       	  <section>
	       	  
       	  	  	<?php echo $session->message; ?>
       	  	  	
       	  	  	<?php 
       	  	  	
       	  	  	$time = time();
       	  	  	
       	  	  	echo $time;
       	  	  	
       	  	  	echo '<br /><br />';
       	  	  	
       	  	  	print_r(getdate($time));
       	  	  	
       	  	  	echo '<br /><br />';
       	  	  	
       	  	  	print date("r", $time);
       	  	  	
       	  	  	echo '<br /><br />';
       	  	  	
       	  	  	print date("d/m/y h:i:s a", $time);
       	  	  	
       	  	  	echo '<br /><br />';
       	  	  	
       	  	  	print date("d/m/Y h:i:s a", mktime(13, 29, 45, 11, 18, 1988));
       	  	  	
       	  	  	echo '<br /><br />';
       	  	  	
       	  	  	$datetime1 = new DateTime('2009-10-11');
       	  	  	$datetime2 = new DateTime('2009-10-13');
       	  	  	$interval = $datetime1->diff($datetime2);
       	  	  	echo $interval->format('%R%a days');
       	  	  	
       	  	  	echo '<br /><br />';
       	  	  	
       	  	  	echo PHP_OS;
       	  	  	
       	  	  	echo '<br /><br />';
       	  	  	
       	  	  	echo php_uname('s');
       	  	  	
       	  	  	
       	  	  	?>
       	  	  	
       	  	  </section>
       	  	  
       	  	  </div>
       	  	  
       	  	  <div class="row-fluid">
       	  	  <section>
       	  	  	<div id="chart_div" style="width: 100%;"></div>
       	  	  </section>
       	  	  </div>
       	  	  
       	  	  <div class="row-fluid">
       	  	  <section>
       	  	  	<div id="chart_2_div" style="width: 100%;"></div>
       	  	  </section>
       	  	  </div>
       	  	  
       	  	  <div class="row-fluid">
       	  	  <section>
       	  	  	<div id="chart_3_div" style="width: 100%;"></div>
       	  	  </section>
       	  	  </div>
	       	  
	       	  </div>
       	  
	      </div>
	      
      </div>

      <!-- End Content -->
        
      

      <div id="push"></div>
    </div>

    <?php require_once('../includes/layouts/footer.php');?>

    <?php require_once('../includes/layouts/scripts.php');?>

  </body>
</html>
