<?php
require_once("../../includes/initialize.php");

if ($session->is_logged_in() && $session->object_type == 3){
	
	$user = AdminUser::find_by_id($_SESSION['id']);
	$p = new Photo();
	$profile_picture = $p->get_profile_picture($session->object_type, $user->id);
	
	if (isset($_GET['studentid'])){
		$student_to_read_update = Student::find_by_id($_GET['studentid']);
	
		$pic = new Photo();
		$profile_picture_of_student = $pic->get_profile_picture('2', $student_to_read_update->id);
	
	} else {
		$session->message("No Student has been selected to view.");
		redirect_to("admin_list_students.php");
	}
	
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
	redirect_to("login.php");
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
		   <h1><?php echo $student_to_read_update->full_name();?></h1>
		   <h3><?php echo $degree_program_of_student_to_read_update->display_name; ?></h3>
		 </div>
		 
		 </div>
		 
		 </div>
	  </header>
      
      <!-- Begin page content -->
      
      <div class="container-fluid">
      
      <div class="row-fluid">
      
        <div class="span3">
	        <div class="sidenav" data-spy="affix" data-offset-top="200">
	        	<a href="admin_list_students.php" class="btn btn-primary"> &larr; Back to Students' List</a>
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
	      <li><a href="#personal_details" data-toggle="tab">Personal Details</a></li>
	    </ul>
	    
	    <div id="tab_content" class="tab-content">
	      	
	      	<div class="tab-pane active in" id="overview">
	      	
	      	<div class="row-fluid">
      			<h3>Executive Summary</h3>
      			<br />
      		</div>
      		
      		<div class="row-fluid">
      			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae lorem nec mollis. Nam a aliquam nunc. Quisque elit justo, sagittis vel orci in, tincidunt dapibus nunc. Proin et lacus molestie, porttitor ligula at, laoreet lorem. Nulla purus risus, ornare non pellentesque eu, sagittis ac turpis. Nunc interdum metus quam, eu consequat tellus aliquet sed. Nam risus felis, pulvinar vitae tincidunt in, accumsan quis neque. Integer fermentum magna risus, vitae aliquam quam fringilla nec.</p>
      		</div>
      		
      		<div class="row-fluid">
      			<h4>Skills &amp; Expertise</h4>
      			<br />
      		</div>
      		
      		<div class="row-fluid">
      			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tincidunt risus. Pellentesque aliquet, mi ut fermentum molestie, leo lorem facilisis risus, a feugiat urna ipsum sed neque. Aenean lobortis ante a lobortis sodales. Integer pretium vitae lorem nec mollis. Nam a aliquam nunc. Quisque elit justo, sagittis vel orci in, tincidunt dapibus nunc. Proin et lacus molestie, porttitor ligula at, laoreet lorem. Nulla purus risus, ornare non pellentesque eu, sagittis ac turpis. Nunc interdum metus quam, eu consequat tellus aliquet sed. Nam risus felis, pulvinar vitae tincidunt in, accumsan quis neque. Integer fermentum magna risus, vitae aliquam quam fringilla nec.</p>
      		</div>
	      
	      	</div>
	      
	      	<div class="tab-pane fade" id="research">
	      		
      		<div class="row-fluid">
      			<h3>Research</h3>
      			<br />
      		</div>
      		
      		<div class="row-fluid">
      			<h4>Research Project</h4>
      			<br />
      		</div>
	      	
	      	<div class="row-fluid">
      			<h4>Published Material</h4>
      			<br />
      		</div>
	      	
	   		</div>
	      	
	      	<div class="tab-pane fade" id="work_experience">
	   		
	    	<div class="row-fluid">
      			<h4>Work Experience</h4>
      			<br />
      		</div>
	    	
	      	</div>
	      	
	      	<div class="tab-pane fade" id="education">
	   		
	    	<div class="row-fluid">
      			<h4>Education</h4>
      			<br />
      		</div>
	    	
	      	</div>
	      	
	      	<div class="tab-pane fade" id="personal_details">
	      	
	      	<div class="row-fluid">
      			<h4>Personal Details</h4>
      			<br />
      		</div>
      		
      		<form class="form-horizontal" action="<?php echo $_SERVER['PHP_SELF']; ?>?studentid=<?php echo $_GET['studentid']; ?>" method="POST">
            
            <div class="control-group">
        	<label for="username" class="control-label">Username</label>
	        	<div class="controls">
	        		<input type="text" name="username" value="<?php echo $student_to_read_update->username; ?>" />
	        	</div>
        	</div>
            
            <div class="control-group">
        	<label for="first_name" class="control-label">First Name</label>
	        	<div class="controls">
	        		<input type="text" name="first_name" value="<?php echo $student_to_read_update->first_name; ?>" />
	        	</div>
        	</div>
            
            <div class="control-group">
            <label for="last_name" class="control-label">Last Name</label>
	            <div class="controls">
	            	<input type="text" name="last_name" value="<?php echo $student_to_read_update->last_name; ?>" />
	            </div>
            </div>
	            
          	<div class="form-actions">
        	    <button class="btn btn-primary" name="submit">Submit</button>
        	</div>
	        </form>
	      	
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