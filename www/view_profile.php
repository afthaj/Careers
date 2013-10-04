<?php
require_once("../includes/initialize.php");

//init code
$user_login_object = new UserLogin();
$student_object = new Student();
$admin_user_object = new AdminUser();
$company_user_object = new CompanyUser();

$month_object = new Month();
$photo_object = new Photo();

//for "work exerience"
$company_object = new Company();
$student_company_object = new StudentCompany();

//for "published material"
$paper_object = new Paper();
$student_paper_object = new StudentPaper();

//for "edu_quals"
$qualification_object = new EducationalQualification();
$student_edu_qual_object = new StudentEduQual();


//for "schools attended"
$school_object = new School();
$student_school_object = new StudentSchool();

//for "skills"
$skill_object = new Skill();
$skill_type_object = new SkillType();
$student_skill_object = new StudentSkill();

//for "prof_quals"
$student_prof_qual_object = new StudentProfQuals();
$prof_qual_object = new ProfessionalQualification();
$prof_institution_object = new ProfessionalInstitution();

//check login
if ($session->is_logged_in()){

	if ($session->object_type == 3){
		//admin
		$user = $user_login_object->get_user($_SESSION['id']);
		$admin_user = $admin_user_object->get_user($user->id);
		
		$admin_levels = AdminLevel::find_all();
		
		if (isset($_POST['submit'])){
			$user->username = $_POST['username'];
			$user->first_name = $_POST['first_name'];
			$user->last_name = $_POST['last_name'];
			$user->email_address = $_POST['email_address'];
			$user->admin_level = $_POST['admin_level'];
		
			if ($user->update()){
				$msg_obj->add_confirmation("Success! Your details were updated. ");				
			} else {
				$msg_obj->add_error("Error! Your details could not be updated. ");
			}
		}
		
		if (isset($_POST['update'])){
		
			if ($_POST['old_password'] == $user->password){
		
				$user->password = $_POST['new_password'];
		
				if ($user->update()){
					$msg_obj->add_confirmation("Success! Your password was updated. ");					
				} else {
					$msg_obj->add_error("Error! Your password could not be updated. ");
				}
			} else {
				$msg_obj->add_error("Error! The existing password did not match. ");
			}
		
		}
		
		if (isset($_POST['upload'])){
		
			$photo = new Photo();
		
			$photo->related_object_type = '3';
			$photo->related_object_id = $user->id;
			$photo->photo_type = 9; // photo_type 9 is "User Profile"
			$photo->attach_file_admin_user($_FILES['file_upload'], $user->id, $user->first_name, $user->last_name);
		
			if ($photo->save()){
				$msg_obj->add_confirmation("Success! The photo was uploaded successfully. ");				
			} else {
				$message = join("<br />", $photo->errors);
			}
		
		}


	} else if ($session->object_type == 2){
		//student
		$user = $user_login_object->get_user($_SESSION['id']);
		$student = $student_object->get_user($user->id);
		
		//get the student's papers
		$papers_of_student = $student_paper_object->get_papers_of_student($student->id);
		
		//get the student's work experience
		$employers = $student_company_object->get_companies_of_student($student->id);
		
		//get the student's educational qualifications
		$edu_quals = $student_edu_qual_object->get_edu_quals_of_student($student->id);
		
		//get the student's professional qualifications
		$prof_quals = $student_prof_qual_object->get_prof_quals_of_student($student->id);
		
		//get the student's schools attended
		$schools = $student_school_object->get_schools_of_student($student->id);
			
		//get the student's skills
		$skills = $student_skill_object->get_skills_for_student($student->id);
		
		//get the student's profile picture
		$profile_picture_of_student = $photo_object->get_profile_picture(2, $student->id);
		
		if (isset($_POST['submit'])){
			$user->username = $_POST['username'];
			$user->first_name = $_POST['first_name'];
			$user->last_name = $_POST['last_name'];
			$user->nic_number = $_POST['nic_number'];
			$user->telephone_number = $_POST['telephone_number'];
		
			if ($user->update()){
				$msg_obj->add_confirmation("Success! Your details were updated. ");				
			} else {
				$msg_obj->add_error("Error! Your details could not be updated. ");
			}
		}
		
		if (isset($_POST['update'])){
		
			if ($_POST['old_password'] == $user->password){
		
				$user->password = $_POST['new_password'];
		
				if ($user->update()){
					$msg_obj->add_confirmation("Success! Your password was updated. ");					
				} else {
					$msg_obj->add_error("Error! Your password could not be updated. ");
				}
			} else {
				$msg_obj->add_error("Error! The existing password did not match. ");
			}
		
		}
		
		if (isset($_POST['upload'])){
		
			$photo = new Photo();
		
			$photo->related_object_type = '2';
			$photo->related_object_id = $user->id;
			$photo->photo_type = 9; // photo_type 9 is "User Profile"
			$photo->attach_file_student($_FILES['file_upload'], $user->id, $user->first_name);
		
			if ($photo->save()){
				$msg_obj->add_confirmation("Success! The photo was uploaded successfully. ");				
			} else {
				$message = join("<br />", $photo->errors);
			}
		
		}


	} else if ($session->object_type == 5){
		//company_user
		$user = $user_login_object->get_user($_SESSION['id']);
		$company_user = $company_user_object->get_user($user->id);
		
	}

}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>User Profile &middot; <?php echo WEB_APP_NAME; ?></title>
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
         if (!empty($profile_picture_of_student->filename)) {
         	echo '<img src="../' . $profile_picture_of_student->image_path() . '" style="width: 200px; height: 200px;" class="img-rounded" />'; 
         } else {
         	echo '<img src="img/default-prof-pic.jpg" style="width: 200px; height: 200px;" class="img-rounded" alt="Please upload a profile picture" />';
         }
         ?>
		 
		 </div>
		 
		 <div class="span9">
		 	<h1>User Profile</h1>
		 	<h3><?php echo $user->full_name();?></h3>
		 	<h4><?php echo $degree_program_of_student_to_read_update->display_name; ?></h4>
		 </div>
		 
		 </div>
		 
		 </div>
	  </header>

      <!-- Begin page content -->
      
      <div class="container-fluid">
        
        <!-- Start Content -->
        
        <div class="row-fluid">
        
        <div class="span3">
	        <div class="sidenav" data-spy="affix" data-offset-top="275">
	        	<a href="list_students.php" class="btn btn-primary btn-block"><i class="icon-arrow-left icon-white"></i> Back to List of Students</a><br />
	        	<?php if ($session->object_type == 2) { ?>
	        	<a href="view_student_cv.php?s=<?php echo $user->username; ?>" class="btn btn-success btn-block"><i class="icon-info-sign icon-white"></i> View CV</a><br />
	        	<?php } ?>
	        </div>
        </div>
        
        <div class="span9">
	    
	    <section>
	    
	    <ul class="nav nav-tabs">
	      <?php if ($session->object_type == 2) { ?>
	      <li class="active"><a href="#overview" data-toggle="tab">Overview</a></li>
	      <li><a href="#research" data-toggle="tab">Research</a></li>
	      <li><a href="#work_experience" data-toggle="tab">Work Experience</a></li>
	      <li><a href="#education" data-toggle="tab">Education</a></li>
	      <?php } ?>
	      <li<?php if ($session->object_type != 2){echo ' class="active"';}?>><a href="#user_details" data-toggle="tab">Profile</a></li>
	      <li><a href="#password_update" data-toggle="tab">Password</a></li>
	      <li><a href="#profile_picture" data-toggle="tab">Profile Picture</a></li>
	    </ul>
	    
	    <div id="myTabContent" class="tab-content">
	    <?php if ($session->object_type == 2) { ?>
	    <div class="tab-pane <?php if ($session->object_type == 2) {echo 'active in';} else {echo 'fade';} ?>" id="overview">
	      	
	      	<div class="well">
      			<h3>Executive Summary</h3>
      			<br />
      			<textarea rows="10" class="span12"><?php echo $student->executive_summary; ?></textarea>
      		</div>
      		
      		<div class="well">
      			<h4>Skills &amp; Expertise</h4>
      			
      			<table class="table table-bordered table-hover">
      			
      			<thead>
	      			<tr align="center">
	      				<td><h5>Programming/Scripting Languages</h5></td>
	      				<td><h5>Technologies</h5></td>
	      				<td><h5>Subject Areas</h5></td>
	      				<td><h5>Concepts</h5></td>
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
      			<textarea rows="10" class="span12"><?php echo $student->research_project_title; ?></textarea>
      			
      			<h4>Project Description</h4>
      			<textarea rows="10" class="span12"><?php echo $student->research_project_desc; ?></textarea>
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
	    <?php } ?>
	    
	    <div class="tab-pane <?php if ($session->object_type == 2) {echo 'fade';} else {echo 'active in';} ?>" id="user_details">
	      
	      <?php echo $message; ?>
	      	      
	        <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" id="tab" class="form-horizontal">
	            
	            <div class="control-group">
	            	<label for="username" class="control-label">Username</label>
	            
		            <div class="controls">
		            	<input type="text" name="username" value="<?php echo $user->username; ?>" />
		            </div>
	            </div>
	            
	            <?php if ($session->is_logged_in() && $session->object_type == 5) { ?>
	            <div class="control-group">
	            	<label for="admin_level" class="control-label">Admin Level</label>
	            
		            <div class="controls">
			            <select name="admin_level">
			            <?php for ($i = 0; $i < count($admin_levels); $i++) {?>
			            	<option value="<?php echo $admin_levels[$i]->id; ?>"<?php if (!empty($user->admin_level) && $user->admin_level == $admin_levels[$i]->id) echo ' selected = "selected"'; ?>><?php echo $admin_levels[$i]->admin_level_name; ?></option>
			            <?php } ?>
						</select>
		            </div>
	            </div>
	            <?php } else if ($session->is_logged_in() && $session->object_type == 4) {?>
	            <div class="control-group">
	            <label for="role" class="control-label">Role</label>
		            <div class="controls">
		            	<select name="role"<?php if (!($session->is_logged_in() && $session->object_type == 5)){ echo ' disabled';}?>>
		            	<?php foreach($roles as $role){ ?>
		            		<option value="<?php echo $role->id; ?>"<?php if($user->role==$role->id){echo ' selected="selected"';}?>><?php echo $role->role_name; ?></option>
		            	<?php } ?>
						</select>
		            </div>
	            </div>
	            <?php } ?>
	            
	            <div class="control-group">
	            	<label for="first_name" class="control-label">First Name</label>
	            
		            <div class="controls">
		            	<input type="text" name="first_name" value="<?php echo $user->first_name; ?>" />
		            </div>
	            </div>
	            
	            <div class="control-group">
	            	<label for="last_name" class="control-label">Last Name</label>
	            
		            <div class="controls">
		            	<input type="text" name="last_name" value="<?php echo $user->last_name; ?>" />
		            </div>
	            </div>
	            
	            <?php if ($session->is_logged_in() && $session->object_type == 5) { ?>
	            <div class="control-group">
	            	<label for="email_address" class="control-label">Email Address</label>
		            <div class="controls">
		            	<input type="text" name="email_address" value="<?php echo $user->email_address; ?>" />
		            </div>
	           </div>
	           <?php } else if ($session->is_logged_in() && $session->object_type == 4) {?>
	           <div class="control-group">
	            	<label for="nic_number" class="control-label">NIC Number</label>
		            <div class="controls">
		            	<input type="text" name="nic_number" value="<?php echo $user->nic_number; ?>" />
		            </div>
	           </div>
	           
	           <div class="control-group">
	            	<label for="telephone_number" class="control-label">Telephone Number</label>
		            <div class="controls">
		            	<input type="text" name="telephone_number" value="<?php echo $user->telephone_number; ?>" />
		            </div>
	           </div>
	            <?php } ?> 
	            
	           <div class="form-actions">
	           		<button class="btn btn-primary" name="submit">Submit</button>
	           </div>
	        </form>
	        
	     </div>
	      
	     <div class="tab-pane fade" id="password_update">
	    	
	    	<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" id="tab" class="form-horizontal">
	    		<div class="control-group">
	        		<label for="old_password" class="control-label">Old Password</label>
	        	
		        	<div class="controls">
		        		<input type="password" name="old_password">
		        	</div>
	        	</div>
	    		
	    		<div class="control-group">
	        		<label for="new_password" class="control-label">New Password</label>
	        	
		        	<div class="controls">
		        		<input type="password" name="new_password">
		        	</div>
	        	</div>
	        	
	        	<div class="form-actions">
	        	    <button class="btn btn-primary" name="update">Update</button>
	        	</div>
	        	
	    	</form>
	     </div>
	      
	     <div class="tab-pane fade" id="profile_picture">
	      
		  <?php 
          if (!empty($profile_picture->filename)) {
          	echo '<h5>You have already uploaded a Profile Picture</h5>';
          	echo '<a href="#" class="btn btn-danger"/>Delete and Reupload</a>';
          } else { 
          ?>
		  <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" enctype="multipart/form-data">
		      <input type="hidden" name="MAX_FILE_SIZE" value="1000000"/>
		        	
		      <div class="control-group">
		      	<input type="file" name="file_upload" />
		      </div>
		        	
		      <div class="form-actions">
		      	<button type="submit" class="btn btn-primary" name="upload">Upload</button>
		      </div>	        	
	      </form>
	      <?php } ?>
	    	
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