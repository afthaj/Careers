<?php
require_once("../../includes/initialize.php");

//init code

$user_login_object = new UserLogin();
$student_object = new Student();

//check login

if ($session->is_logged_in()){
	
	if (isset($_GET['studentid'])){
		$student_to_read_update = $student_object->find_by_id($_GET['studentid']);
		$details_of_student_to_read_update = $user_login_object->get_user($student_to_read_update->login_id);
	
	} else {
		$session->message("No Student has been selected to view.");
		redirect_to("admin_list_students.php");
	}
	
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

if ($session->is_logged_in() && $session->object_type == 3){
	
	
	
	
	
	
	if (isset($_POST['submit'])){
		
		$student_to_read_update->username = $_POST['username'];
		$student_to_read_update->first_name = $_POST['first_name'];
		$student_to_read_update->last_name = $_POST['last_name'];
	
		if ($student_to_read_update->update()){
			$session->message("Success! The Student details were updated. ");
			redirect_to('admin_list_students.php');
		} else {
			$session->message("Error! The Student details could not be updated. ");
		}
	}
	
	if (isset($_POST['assign'])){
	
		$buses_bus_personnel_to_read_update = new BusBusPersonnel();
	
		$buses_bus_personnel_to_read_update->bus_id = $_POST['bus_id'];
		$buses_bus_personnel_to_read_update->bus_personnel_id = $student_to_read_update->id;
	
		if ($buses_bus_personnel_to_read_update->create()){
			$session->message("Success! The Bus Personnel was assigned to the given Bus. ");
			redirect_to('admin_list_bus_personnel.php');
		} else {
			$session->message("Error! The Bus Personnel was not assigned to the given Bus. ");
		}
	}
	
	if (isset($_POST['update'])){
		if ($_POST['old_password'] == $student_to_read_update->password) {
	
			$student_to_read_update->password = $_POST['new_password'];
	
			if ($student_to_read_update->update()){
				$session->message("Success! The user's password was updated. ");
				redirect_to('admin_list_bus_personnel.php');
			} else {
				$session->message("Error! The user's password could not be updated. ");
			}
	
		} else {
			$session->message("Error! The existing password did not match. ");
		}
	}
	
	if (isset($_POST['upload'])){
	
		$photo_to_upload = new Photo();
		
		$photo_to_upload->related_object_type = '2';
		$photo_to_upload->related_object_id = $_GET['studentid'];
	
		$photo_to_upload->attach_file_bus_personnel($_FILES['file_upload'], $student_to_read_update->id, $student_to_read_update->first_name, $student_to_read_update->last_name);
	
		if ($photo_to_upload->save()){
			$session->message("Success! The photo was uploaded successfully. ");
			redirect_to('admin_list_bus_personnel.php');
		} else {
			$message = join("<br />", $photo_to_upload->errors);
		}
	
	}
	
} else {
	//redirect_to("login.php");
}


$dp = new DegreeProgram();
$degree_program_of_student_to_read_update = $dp->find_by_id($student_to_read_update->degree_program_id);

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Student Profile &middot; <?php echo WEB_APP_NAME; ?></title>
    <?php require_once('../../includes/layouts/header_admin.php');?>
  </head>

  <body>


    <!-- Part 1: Wrap all page content here -->
    <div id="wrap">

      <!-- Fixed navbar -->
      <?php require_once('../../includes/layouts/navbar_admin.php');?>
      
      <header class="jumbotron subhead">
		 <div class="container-fluid">
		 
		 <div class="row-fluid">
		 
		 <div class="span3">
		 
		 <?php 
         if (!empty($profile_picture_of_bus_personnel->filename)) {
         	echo '<img src="../../' . $profile_picture_of_student->image_path() . '" width="200" class="img-rounded" />'; 
         } else {
         	echo '<img src="../img/default-prof-pic.jpg" width="200" class="img-rounded" alt="Please upload a profile picture" />';
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
	        	<a href="admin_list_students.php" class="btn btn-primary btn-block"> &larr; Back to Students' List</a><br />
	        	
	        	<div class="well">
	        		<h4>Student Details</h4><br />
	        		
	        		<h5>Name</h5>
	        		<p><?php echo $details_of_student_to_read_update->full_name();?></p>
	        		
	        		<h5>Degree Program</h5>
	        		<p><?php echo $degree_program_of_student_to_read_update->display_name; ?></p>
	        		
	        		<?php if ($session->is_logged_in() && $session->object_type == 3) {?>
	        		<h5>Email Address</h5>
	        		<p><?php echo $details_of_student_to_read_update->email_address;?></p>
	        		
	        		<h5>Tel. Number</h5>
	        		<p><?php echo $details_of_student_to_read_update->telephone_number;?></p>
	        		<br />
	        		<a href="#" class="btn btn-success" target="_blank">Download CV</a>
	        		
	        		<?php } ?>
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
      			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae lorem nec mollis. Nam a aliquam nunc. Quisque elit justo, sagittis vel orci in, tincidunt dapibus nunc. Proin et lacus molestie, porttitor ligula at, laoreet lorem. Nulla purus risus, ornare non pellentesque eu, sagittis ac turpis. Nunc interdum metus quam, eu consequat tellus aliquet sed. Nam risus felis, pulvinar vitae tincidunt in, accumsan quis neque. Integer fermentum magna risus, vitae aliquam quam fringilla nec.</p>
      		</div>
      		
      		<div class="well">
      			<h4>Skills &amp; Expertise</h4>
      			<br />
      			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae lorem nec mollis. Nam a aliquam nunc. Quisque elit justo, sagittis vel orci in, tincidunt dapibus nunc. Proin et lacus molestie, porttitor ligula at, laoreet lorem. Nulla purus risus, ornare non pellentesque eu, sagittis ac turpis. Nunc interdum metus quam, eu consequat tellus aliquet sed. Nam risus felis, pulvinar vitae tincidunt in, accumsan quis neque. Integer fermentum magna risus, vitae aliquam quam fringilla nec.</p>
      		</div>
      		
      		<div class="well">
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
      		</div>
	      
	      	</div>
	      
	      	<div class="tab-pane fade" id="research">
      		
      		<div class="well">
      			<h4>Research Project</h4>
      			<br />
      			<h5>Project Title</h5>
      			<p>Lorum ipsum dolor</p>
      			<h5>Project Description</h5>
      			<p>Aenean aliquam leo libero, ut tempor lorem cursus vitae. Donec porttitor diam orci, nec mollis diam pulvinar a. In tempus fermentum libero tempus mollis. Vestibulum volutpat nulla sed neque consequat, vel venenatis magna vestibulum. Duis placerat quam non pretium congue.</p>
      		</div>
	      	
	      	<div class="well">
      			<h4>Published Material</h4>
      			<br />
      		</div>
	      	
	   		</div>
	      	
	      	<div class="tab-pane fade" id="work_experience">
	   		
	    	<div class="well">
      			<h4>Work Experience</h4>
      			<br />
      		</div>
	    	
	      	</div>
	      	
	      	<div class="tab-pane fade" id="education">
	   		
	    	<div class="well">
      			<h4>Education</h4>
      			<br />
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

    <?php require_once('../../includes/layouts/footer_admin.php');?>

    <?php require_once('../../includes/layouts/scripts_admin.php');?>

  </body>
</html>