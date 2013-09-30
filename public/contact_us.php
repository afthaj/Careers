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
	
}


?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Contat Us &middot; <?php echo WEB_APP_NAME; ?></title>
    <?php require_once('../includes/layouts/header.php');?>
    
    <style>
    
    .featurette-divider {
      margin: 80px 0; /* Space out the Bootstrap <hr> more */
    }
    
    </style>
    
  </head>

  <body>


    <!-- Part 1: Wrap all page content here -->
    <div id="wrap">

      <!-- Fixed navbar -->
      <?php $page = 'contact_us';?>
      <?php require_once('../includes/layouts/navbar.php');?>

      <!-- Begin page content -->
      
      <header class="jumbotron subhead">
        <div class="container">
          <h1>Contact Us</h1>
        </div>
      </header>
        
      <!-- Start Content -->
        
      <div class="container">
       	  
       	  <div class="row">
       	  	
	       	  <div class="span3">
	       	  	<div class="sidenav" data-spy="affix" data-offset-top="200">
		        	<a href="index.php" class="btn btn-primary btn-block"><i class="icon-arrow-left icon-white"></i> Back to Home Page</a>
		        </div>
	       	  </div>
	       	  
	       	  <div class="span9">
	       	  
	       	  	<div class="row">
	       	  	
	       	  	<iframe class="span9" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps?sll=6.902667099999889,79.86018117667125&amp;sspn=0.007275702762157191,0.013692041328119983&amp;t=m&amp;q=UCSC,+Colombo,+Western+Province,+Sri+Lanka&amp;ie=UTF8&amp;hq=UCSC,+Colombo,+Western+Province,+Sri+Lanka&amp;cid=3292907077763147875&amp;hnear=&amp;ll=6.905424,79.861293&amp;spn=0.007456,0.018668&amp;z=16&amp;iwloc=A&amp;output=embed"></iframe>
	       	  	
	       	  	</div>
	       	  	
	       	  	<br />
	       	  	<hr class="featurette-divide">
	       	  	
	       	  	<div class="row">
		       	  	<div class="span9">
			       	  	<h3>University of Colombo School of Computing</h3>
			       	  	<p><i class="icon-home"></i> <br />No. 35, <br />Reid Avenue, <br />Colombo 07.</p>
			       	  	<p><i class="icon-envelope"></i> <br />info@careers.ucsc.lk</p>
		       	  	</div>
	       	  	</div>
	       	  <!-- 
	       	  <hr class="featurette-divide">
	       	  <!-- 
	       	  <div class="row">
	       	  
		       	  <section>
		       	  	
		       	  	<div class="span9">
					  <form>
					      <div class="controls controls-row">
					          <input id="name" name="name" type="text" class="span4" placeholder="Name"> 
					          <input id="email" name="email" type="email" class="span5" placeholder="Email address">
					      </div>
					      <div class="controls">
					          <textarea id="message" name="message" class="span9" placeholder="Your Message" rows="5"></textarea>
					      </div>
					      
					      <div class="controls">
					          <button id="submit" name="submit" type="submit" class="btn btn-primary input-medium pull-right">Send</button>
					      </div>
					  </form>
					</div>
		       	  	
	       	  	  </section>
       	  	  
       	  	  </div>
	       	  -->
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
