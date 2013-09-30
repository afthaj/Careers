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
    
    <style>
    
     /* MARKETING CONTENT
    -------------------------------------------------- */

    /* Center align the text within the three columns below the carousel */
    .marketing .span4 {
      text-align: center;
    }
    .marketing h2 {
      font-weight: normal;
    }
    .marketing .span4 p {
      margin-left: 10px;
      margin-right: 10px;
    }


    /* Featurettes
    ------------------------- */

    .featurette-divider {
      margin: 80px 0; /* Space out the Bootstrap <hr> more */
    }
    .featurette {
      padding-top: 120px; /* Vertically center images part 1: add padding above and below text. */
      overflow: hidden; /* Vertically center images part 2: clear their floats. */
    }
    .featurette-image {
      margin-top: -120px; /* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
    }

    /* Give some space on the sides of the floated elements so text doesn't run right into it. */
    .featurette-image.pull-left {
      margin-right: 40px;
    }
    .featurette-image.pull-right {
      margin-left: 40px;
    }

    /* Thin out the marketing headings */
    .featurette-heading {
      font-size: 50px;
      font-weight: 300;
      line-height: 1;
      letter-spacing: -1px;
    }
    
    </style>
    
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
        
        <!-- Marketing messaging and featurettes
	    ================================================== -->
	    <!-- Wrap the rest of the page in another container to center all the content. -->
	
	    <div class="container marketing">
	
	      <!-- Three columns of text below the carousel -->
	      <div class="row">
	        <div class="span4">
	          <img class="img-circle" data-src="holder.js/140x140">
	          <h2>Career Fair 2013</h2>
	          <p>The inaugural Career Fair, organized by the University of Colombo School of Computing aims to strengthen the ties between the academic and the corporate worlds. It provides an opportunity for leading firms to recruit the best IT talent the UCSC has to offer in an organized, highly interactive environment. The undergraduates in turn get an opportunity to showcase their talent and meet with prospective employers in a familiar setting.</p>
	        </div><!-- /.span4 -->
	        <div class="span4">
	          <img class="img-circle" data-src="holder.js/140x140">
	          <h2>UCSC</h2>
	          <p>The main objective of the UCSC is to provide high quality undergraduate degree programs to students in the fields of Computer Science and Information and Communication Technology. At present, 780 internal undergraduate students are enrolled at the institution. Over the years it has been able to establish itself as the Centre of Excellence in the streams of Computer Science and Information Communication Technology among all other universities in Sri Lanka.
	          </p>
	          <p><a class="btn" href="http://www.ucsc.lk" target="_blank">Visit Website &raquo;</a></p>
	        </div><!-- /.span4 -->
	        <div class="span4">
	          <img class="img-circle" data-src="holder.js/140x140">
	          <h2>Research & Innovation</h2>
	          <p>The talent available at the Career Fair focuses their efforts on research and innovation. The students are the best in their respective streams and have been chosen for their academic prowess. The quality of their work is unparalled and would be a major asset to any organisation willing to hire them.</p>
	          <p><a class="btn" href="list_students.php">View Students &raquo;</a></p>
	        </div><!-- /.span4 -->
	      </div><!-- /.row -->
	
	
	      <!-- START THE FEATURETTES -->
	      
	      <!-- 
	
	      <hr class="featurette-divider">
	
	      <div class="featurette">
	        <img class="featurette-image pull-right" src="img/logo-no-border.png">
	        <h2 class="featurette-heading">University of Colombo School of Computing <br /><span class="muted">Pioneers of IT Education in Sri Lanka!</span></h2>
	        <p class="lead">The University of Colombo School of Computing (UCSC) is the pioneer in ICT education in Sri Lanka. Formed in 2002, it is an integral part of the University of Colombo and has consistently produced graduates of the highest caliber that excel in all forms of industry.</p>
	      </div>
	
	      <hr class="featurette-divider">
	
	      <div class="featurette">
	        <img class="featurette-image pull-left img-rounded" src="img/ucsc-entrance.jpg">
	        <h2 class="featurette-heading">The best of the best! <br /><span class="muted">All in one place...</span></h2>
	        <p class="lead">The talent at the UCSC is second to none and many leading companies consistently headhunt our graduates. It is the one-stop shop to equip your organisation with the human resources needed to gain that competitive edge in any business area.</p>
	      </div>
	
	      <hr class="featurette-divider">
	
	      <div class="featurette">
	        <img class="featurette-image pull-right" src="img/browser-icon-firefox.png">
	        <h2 class="featurette-heading">Shaping the future! <br /><span class="muted">One research problem at a time...</span></h2>
	        <p class="lead">Focussing on problems ranging from public transportation to suicide prevention, the research efforts of the undergraduates are of the highest caliber. We at UCSC firmly believe in the concept that research students make the best employees as they have the expertise to think outside the box and come up with solutions.</p>
	      </div>
	
	      <hr class="featurette-divider">
	
		  -->
	
	      <!-- /END THE FEATURETTES -->
        
        <!-- End Content -->
        
      </div>

      <div id="push"></div>
    </div>

    <?php require_once('../includes/layouts/footer.php');?>

    <?php require_once('../includes/layouts/scripts.php');?>

  </body>
</html>
