<?php
require_once("../includes/initialize.php");

$user_login_object = new UserLogin();

if ($session->is_logged_in()){
	
	if ($session->object_type == 3){
		//admin
		$user = $user_login_object->get_user($_SESSION['id']);
		
		
	} else if ($session->object_type == 2){
		//student
		$user = $user_login_object->get_user($_SESSION['id']);
		
		
	} else if ($session->object_type == 5){
		//company_user
		$user = $user_login_object->get_user($_SESSION['id']);
		
		
	} 
	
} 

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Home &middot; <?php echo WEB_APP_NAME; ?></title>
    <?php require_once('../includes/layouts/header.php');?>
    
  </head>

  <body>
  
    <!-- Part 1: Wrap all page content here -->
    <div id="wrap">

      <!-- Fixed navbar -->
      <?php $page = 'index';?>
      <?php require_once('../includes/layouts/navbar.php');?>

      	<div class="jumbotron masthead">
		  <div class="container">
		  	<img src="img/logo.png" alt="UCSC Logo" width="200"/>
		    <h1><?php echo INSTITUTE_SHORT_NAME . " " . WEB_APP_NAME; ?></h1>
		    <h3><?php echo WEB_APP_CATCH_PHRASE; ?></h3>
		    <p><i class="icon-calendar icon-white"></i> 31st of October 2013 &middot; <i class="icon-time icon-white"></i> 9AM onwards &middot; <i class="icon-map-marker icon-white"></i> Prof. V. K. Samaranayake Auditorium, UCSC</p>
		  </div>
		</div>
      
      <!-- Begin page content -->      
      <div class="container">

        <!-- Start Content -->
        
        <?php echo $session->message; ?>
        
        <div class="marketing">
        
        <div class="row">
        
        <div class="span4">
        <h2>Subheading 1</h2>
        <p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin rhoncus consectetur lectus, sit amet semper nisi lacinia varius. Etiam a tempus eros, ac dictum nisl. Quisque eu dignissim metus. Fusce id pretium risus. Phasellus adipiscing elit in mi semper tincidunt. Nullam lorem tortor, dapibus et nisl ac, fringilla scelerisque sem. Praesent commodo ipsum ut congue elementum.</p>
        </div>
        
        <div class="span4">
        <h2>Subheading 2</h2>
        <p class="lead">Aenean aliquam leo libero, ut tempor lorem cursus vitae. Donec porttitor diam orci, nec mollis diam pulvinar a. In tempus fermentum libero tempus mollis. Vestibulum volutpat nulla sed neque consequat, vel venenatis magna vestibulum. Duis placerat quam non pretium congue.</p>
        </div>
        
        <div class="span4">
        <h2>Subheading 3</h2>
        <p class="lead">Aenean pharetra nisi a lorem tincidunt mattis. Quisque arcu eros, varius eu sapien sit amet, luctus volutpat neque. Maecenas turpis massa, ornare at ipsum ut, elementum cursus sem. Nunc ac lacus faucibus, lacinia nisl vel, venenatis metus. Curabitur luctus enim sapien, et euismod nisl mollis eu.</p>
        </div>
        
        </div>
        
        </div>
        
        <div class="marketing">
        
        <div class="row">
        
        <div class="span4">
        <h2>Subheading 4</h2>
        <p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin rhoncus consectetur lectus, sit amet semper nisi lacinia varius. Etiam a tempus eros, ac dictum nisl. Quisque eu dignissim metus. Fusce id pretium risus. Phasellus adipiscing elit in mi semper tincidunt. Nullam lorem tortor, dapibus et nisl ac, fringilla scelerisque sem. Praesent commodo ipsum ut congue elementum.</p>
        </div>
        
        <div class="span4">
        <h2>Subheading 5</h2>
        <p class="lead">Aenean aliquam leo libero, ut tempor lorem cursus vitae. Donec porttitor diam orci, nec mollis diam pulvinar a. In tempus fermentum libero tempus mollis. Vestibulum volutpat nulla sed neque consequat, vel venenatis magna vestibulum. Duis placerat quam non pretium congue.</p>
        </div>
        
        <div class="span4">
        <h2>Subheading 6</h2>
        <p class="lead">Aenean pharetra nisi a lorem tincidunt mattis. Quisque arcu eros, varius eu sapien sit amet, luctus volutpat neque. Maecenas turpis massa, ornare at ipsum ut, elementum cursus sem. Nunc ac lacus faucibus, lacinia nisl vel, venenatis metus. Curabitur luctus enim sapien, et euismod nisl mollis eu.</p>
        </div>
        
        </div>
        
        </div>
        
        <!-- End Content -->
        
      </div>

      <div id="push"></div>
    </div>

    <?php require_once('../includes/layouts/footer.php');?>

    <?php require_once('../includes/layouts/scripts.php');?>

  </body>
</html>
