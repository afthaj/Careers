<?php
require_once("../includes/initialize.php");

//init code

$students = Student::find_all();
$user_login_object = new UserLogin();

//check login

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
    <title>Students' List &middot; <?php echo WEB_APP_NAME; ?></title>
    <?php require_once('../includes/layouts/header.php'); ?>
  </head>

  <body>


    <!-- Part 1: Wrap all page content here -->
    <div id="wrap">

      <!-- Fixed navbar -->
      <?php require_once('../includes/layouts/navbar.php');?>

      <!-- Begin page content -->
      
      <header class="jumbotron subhead">
        <div class="container-fluid">
          <h1>List of Students</h1>
        </div>
      </header>
        
        <!-- Start Content -->
        <div class="container-fluid">
        
        <?php if ($session->is_logged_in() && $session->object_type == 3){ ?>
        <div class="row-fluid">
        	<br />
	        <a href="create_student.php" class="btn btn-primary"><i class="icon-plus icon-white"></i> Add New Student</a>
	        <br />
        </div>
        <?php } ?>
        
        <div class="row-fluid">
        
        <div class="span12">
        
        <section>
        
        <?php if (!empty($session->message)) {echo $session->message; echo "<br /><br />";} ?>
        
        <table class="table table-bordered table-hover">
	        <tr align="center">
	        	<td>Profile Picture</td>
		        <td>First Name</td>
		        <td>Last Name</td>
		        <?php if ($session->is_logged_in() && $session->object_type == 3) { ?>
		        <td>&nbsp;</td>
		        <td>&nbsp;</td>
		        <?php } else { ?>
		        <td>&nbsp;</td>
		        <?php } ?>
	        </tr>
        	
        	<?php for($i = 0; $i < count($students) ; $i++){
        		
        		$student = $user_login_object->get_user($students[$i]->login_id);
        		
        		?>
        		
        		<tr align="center">
        			<td>
        			<?php
	        		
	        		if (!empty($student_profile_picture->filename)) {
	        			echo '<img src="../' . $student_profile_picture->image_path() . '" width="100" class="img-rounded" />';
	        		} else {
	        			echo '<img src="img/default-prof-pic.jpg" width="100" class="img-rounded" alt="Please upload a profile picture" />';
	        		}
	        		
	        		?>
        			</td>
	        		<td><?php echo $student->first_name; ?></td>
	        		<td><?php echo $student->last_name; ?></td>
	        		<?php if ($session->is_logged_in() && $session->object_type == 3) { ?>
	        		<td><a href="read_update_student.php?studentid=<?php echo $students[$i]->id; ?>" class="btn btn-warning btn-block"><i class="icon-edit icon-white"></i> Edit</a></td>
	        		<td><a href="delete_student.php?studentid=<?php echo $students[$i]->id; ?>" class="btn btn-danger btn-block"><i class="icon-remove icon-white"></i> Delete</a></td>
	        		<?php } else { ?>
	        		<td><a href="view_student_cv.php?s=<?php echo $student->username; ?>" class="btn btn-info btn-block"><i class="icon-info-sign icon-white"></i> View CV</a></td>
	        		<?php } ?>
        		</tr>
        		
        	<?php  }?>
        	
        </table>
        
        </section>
        
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
