<?php
require_once("../includes/initialize.php");

//init code
$user_login_object = new UserLogin();
$student_object = new Student();
$admin_user_object = new AdminUser();
$company_user_object = new CompanyUser();
$company_object = new Company();

//check login
if ($session->is_logged_in()){
	
	//GET request stuff
	if (isset($_GET['s'])){
		$details_of_student_to_read_update = $user_login_object->get_user_by_username($_GET['s']);
		$student_to_read_update = $student_object->get_user($details_of_student_to_read_update->id);
	
	} else {
		$session->message("No Student has been selected to view.");
		redirect_to("list_students.php");
	}
	
	//check object_type
	if ($session->object_type == 3){
		//admin
		$user = $user_login_object->get_user($_SESSION['id']);
		$admin_user = $admin_user_object->get_user($user->id);

	} else if ($session->object_type == 2){
		//student
		$user = $user_login_object->get_user($_SESSION['id']);
		$student = $student_object->get_user($user->id);
		
	} else if ($session->object_type == 5){
		//company_user
		$user = $user_login_object->get_user($_SESSION['id']);
		$company_user = $company_user_object->get_user($user->id);
		
	}

} else {
	redirect_to("login.php");
}


$dp = new DegreeProgram();
$degree_program_of_student_to_read_update = $dp->find_by_id($student_to_read_update->degree_program_id);

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Student Profile &middot; <?php echo WEB_APP_NAME; ?></title>
    <?php require_once('../includes/layouts/header.php');?>
  </head>

  <body>


    <!-- Part 1: Wrap all page content here -->
    <div id="wrap">

      <!-- Fixed navbar -->
      <?php require_once('../includes/layouts/navbar.php');?>
      
      <header class="jumbotron subhead">
		 <div class="container-fluid">
		 
		 <div class="row-fluid">
		 
		 <div class="span3">
		 
		 <?php 
         if (!empty($profile_picture_of_bus_personnel->filename)) {
         	echo '<img src="../' . $profile_picture_of_student->image_path() . '" width="200" class="img-rounded" />'; 
         } else {
         	echo '<img src="img/default-prof-pic.jpg" width="200" class="img-rounded" alt="Please upload a profile picture" />';
         } 
         ?>
		 
		 </div>
		 
		 <div class="span9">
		   <h1><?php echo $details_of_student_to_read_update->full_name();?></h1>
		   <h3><?php echo $degree_program_of_student_to_read_update->display_name; ?></h3>
		 </div>
		 
		 </div>
		 
		 </div>
	  </header>
      
      <!-- Begin page content -->
      
      <div class="container-fluid">
      
      <div class="row-fluid">
      
        <div class="span3 sidebar">
	        <div class="sidenav" data-spy="affix" data-offset-top="275">
	        	<a href="list_students.php" class="btn btn-primary btn-block"><i class="icon-arrow-left icon-white"></i> Back to List of Students</a><br />
	        	<?php if ($session->object_type == 2 && $user->username == $_GET['s']) { ?>
	        	<a href="view_profile.php" class="btn btn-success btn-block"><i class="icon-edit icon-white"></i> Edit Details</a><br />
	        	<?php } ?>
	        	<div class="well">
	        		<h4>Student Details</h4><br />
	        		
	        		<h5>Name</h5>
	        		<p><?php echo $details_of_student_to_read_update->full_name();?></p>
	        		
	        		<h5>Degree Program</h5>
	        		<p><?php echo $degree_program_of_student_to_read_update->display_name; ?></p>
	        		
	        		<?php if ($session->is_logged_in()) { 
	        			
	        			if ($session->object_type == 5 && $company_object->find_by_id($company_user->company_id)->verified_flag != 1) { 
	        			
	        			 } else { ?>
	        		
		        		<h5>Email Address</h5>
		        		<p><?php echo $details_of_student_to_read_update->email_address;?></p>
		        		
		        		<h5>Tel. Number</h5>
		        		<p><?php echo $details_of_student_to_read_update->telephone_number;?></p>
		        		<br />
		        		<a href="#" class="btn btn-success" target="_blank">Download CV</a>
	        		
	        		<?php } } ?>
	        	</div>
	        	
	        </div>
	        
        </div>
        
        <!-- Start Content -->

        <div class="span9">
        
        <section>
        
        <?php echo $session->message; ?>
        
        <ul class="nav nav-tabs">
	      <li class="active"><a href="#overview" data-toggle="tab">Overview</a></li>
	      <li><a href="#research" data-toggle="tab">Research</a></li>
	      <li><a href="#work_experience" data-toggle="tab">Work Experience</a></li>
	      <li><a href="#education" data-toggle="tab">Education</a></li>
	    </ul>
	    
	    <div id="tab_content" class="tab-content">
	      	
	      	<div class="tab-pane active in" id="overview">
	      	
	      	<div class="well">
      			<h3>Executive Summary</h3>
      			<br />
      			<p><?php echo $student_to_read_update->executive_summary; ?></p>
      		</div>
      		
      		<div class="well">
      			<h3>Skills &amp; Expertise</h3>
      			
      			<table class="table table-bordered table-hover">
      			
      			<thead>
	      			<tr>
	      				<td>Programming/Scripting Languages</td>
	      				<td>Technologies</td>
	      				<td>Subject Areas</td>
	      				<td>Concepts</td>
	      			</tr>
      			</thead>
      			
      			<tbody>
      				<tr valign="top">
      					<td>
      					<ul>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
		      			</ul>
      					</td>
      					<td>
      					<ul>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
		      			</ul>
      					</td>
      					<td>
      					<ul>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
		      			</ul>
      					</td>
      					<td>
      					<ul>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
			      			<li>Lorem ipsum dolor sit amet</li>
		      			</ul>
      					</td>
      				</tr>
      			</tbody>
      			
      			</table>
      			
      		</div>
	      
	      	</div>
	      
	      	<div class="tab-pane fade" id="research">
      		
      		<div class="well">
      			<h3>Research Project</h3>
      			
      			<h4>Project Title</h4>
      			<p><?php echo $student_to_read_update->research_project_title; ?></p>
      			
      			<h4>Project Description</h4>
      			<p><?php echo $student_to_read_update->research_project_desc; ?></p>
      		</div>
	      	
	      	<div class="well">
      			<h4>Published Material</h4>
      			
      			<ul>
	      			<li>Lorem ipsum dolor sit amet</li>
	      			<li>Lorem ipsum dolor sit amet</li>
	      			<li>Lorem ipsum dolor sit amet</li>
	      			<li>Lorem ipsum dolor sit amet</li>
	      			<li>Lorem ipsum dolor sit amet</li>
	      			<li>Lorem ipsum dolor sit amet</li>
	      			<li>Lorem ipsum dolor sit amet</li>
	      			<li>Lorem ipsum dolor sit amet</li>
	      			<li>Lorem ipsum dolor sit amet</li>
      			</ul>
      			
      		</div>
	      	
	   		</div>
	      	
	      	<div class="tab-pane fade" id="work_experience">
	   		
	    	<div class="well">
      			<h3>Work Experience</h3>
      			
      			<table class="table table-bordered table-hover">
      			
      			<thead>
	      			<tr>
	      				<td>Employer</td>
	      				<td>Post</td>
	      				<td>Duration</td>
	      				<td>From</td>
	      				<td>To</td>
	      				
	      			</tr>
      			</thead>
      			
      			<tbody>
      				<tr>
      					<td>Employer 1</td>
      					<td>BA</td>
      					<td>3 Years</td>
      					<td>January 2011</td>
      					<td>December 2013</td>
      					
      				</tr>
      			</tbody>
      			
      			</table>
      			
      		</div>
	    	
	      	</div>
	      	
	      	<div class="tab-pane fade" id="education">
	   		
	    	<div class="well">
      			<h3>Educational Qualifications</h3>
      			
      			<table class="table table-bordered table-hover">
      			
      			<thead>
	      			<tr>
	      				<td>Qualification</td>
	      				<td>Institution</td>
	      				<td>Year</td>
	      			</tr>
      			</thead>
      			
      			<tbody>
      				<tr>
      					<td>Bachelor of Science (ICT)</td>
      					<td>University of Colombo School of Computing</td>
      					<td>2014</td>
      				</tr>
      				<tr>
      					<td>G. C. E. Advanced Level</td>
      					<td>Wesley College, Colombo</td>
      					<td>2008</td>
      				</tr>
      				<tr>
      					<td>G. C. E. Ordinary Level</td>
      					<td>Wesley College, Colombo</td>
      					<td>2004</td>
      				</tr>
      			</tbody>
      			
      			</table>
      			
      		</div>
      		
      		<div class="well">
      			<h4>Educational Institutions Attended</h4>
      			
      			<table class="table table-bordered table-hover">
      			
      			<thead>
	      			<tr>
	      				<td>Institution</td>
	      				<td>From</td>
	      				<td>To</td>
	      			</tr>
      			</thead>
      			
      			<tbody>
      				<tr>
      					<td>University of Colombo School of Computing</td>
      					<td>2009</td>
      					<td>2014</td>
      				</tr>
      				<tr>
      					<td>Wesley College, Colombo</td>
      					<td>1994</td>
      					<td>2008</td>
      				</tr>
      			</tbody>
      			
      			</table>
      			
      		</div>
	    	
	      	</div>
	      
	    </div>
	    
	    </section>
	    
	  	</div>
        
        </div>
        
        <!-- End Content -->
        
      </div>
      
      <div class="clearfix">&nbsp;</div>

      <div id="push"></div>
    </div>

    <?php require_once('../includes/layouts/footer.php');?>

    <?php require_once('../includes/layouts/scripts.php');?>

  </body>
</html>