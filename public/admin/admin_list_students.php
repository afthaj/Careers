<?php
require_once("../../includes/initialize.php");

if ($session->is_logged_in() && $session->object_type == 3){
	
	$user = AdminUser::find_by_id($_SESSION['id']);
	$p = new Photo();
	$profile_picture = $p->get_profile_picture($session->object_type, $user->id);
	
} else if ($session->is_logged_in() && $session->object_type == 2){
	
	$user = Student::find_by_id($_SESSION['id']);
	$p = new Photo();
	$profile_picture = $p->get_profile_picture($session->object_type, $user->id);
	
} else {
	redirect_to("login.php");
}

$students = Student::find_all();

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Buses List &middot; <?php echo WEB_APP_NAME; ?></title>
    <?php require_once('../../includes/layouts/header_admin.php');?>
  </head>

  <body>


    <!-- Part 1: Wrap all page content here -->
    <div id="wrap">

      <!-- Fixed navbar -->
      <?php require_once('../../includes/layouts/navbar_admin.php');?>

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
	        <a href="admin_create_bus_personnel.php" class="btn btn-primary">Add New Student</a>
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
		        <?php } ?>
	        </tr>
        	
        	<?php for($i = 0; $i < count($students) ; $i++){ 
        	
        		 ?>
        		
        		<tr align="center">
        			<td>
        			<?php
	        		
	        		$pic = new Photo();
	        		
	        		$bus_personnel_profile_picture = $pic->get_profile_picture('4', $students[$i]->id);
	        		
	        		if (!empty($bus_personnel_profile_picture->filename)) {
	        			echo '<img src="../../' . $bus_personnel_profile_picture->image_path() . '" width="100" class="img-rounded" />';
	        		} else {
	        			echo '<img src="../img/default-prof-pic.jpg" width="100" class="img-rounded" alt="Please upload a profile picture" />';
	        		}
	        		
	        		?>
        			</td>
	        		<td><?php echo $students[$i]->first_name; ?></td>
	        		<td><?php echo $students[$i]->last_name; ?></td>
	        		<?php if ($session->is_logged_in() && $session->object_type == 3) { ?>
	        		<td><a href="admin_read_update_student.php?studentid=<?php echo $students[$i]->id; ?>" class="btn btn-warning btn-block">Edit</a></td>
	        		<td><a href="admin_delete_student.php?studentid=<?php echo $students[$i]->id; ?>" class="btn btn-danger btn-block">Delete</a></td>
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

    <?php require_once('../../includes/layouts/footer_admin.php');?>

    <?php require_once('../../includes/layouts/scripts_admin.php');?>

  </body>
</html>
