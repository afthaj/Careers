<?php
require_once("../includes/initialize.php");

if ($session->is_logged_in() && $session->object_type == 5){
	
	$user = AdminUser::find_by_id($_SESSION['id']);
	$p = new Photo();
	$profile_picture = $p->get_profile_picture($session->object_type, $user->id);
	
	if (isset($_POST['submit'])) {
	
		$bus_personnel_to_create = new BusPersonnel();
		//$buses_bus_personnel_to_create = new BusBusPersonnel();
	
		$bus_personnel_to_create->role = $_POST['role'];
		$bus_personnel_to_create->username = $_POST['username'];
		$bus_personnel_to_create->password = $_POST['password'];
		$bus_personnel_to_create->first_name = $_POST['first_name'];
		$bus_personnel_to_create->last_name = $_POST['last_name'];
		$bus_personnel_to_create->nic_number = $_POST['nic_number'];
	
		//$buses_bus_personnel_to_create->bus_id = $_POST['bus_id'];
	
		if ($bus_personnel_to_create->create()){
	
			$msg_obj->add_confirmation("Success! The new Bus Personnel has been added. ");			
	
			/*
			 $all_bus_personnel = BusPersonnel::find_all();
	
			for ($i = 0; $i = count($all_bus_personnel)-1; $i++){
			$all_bus_personnel[$i]->id = $buses_bus_personnel_to_create->bus_personnel_id;
			}
	
			if ($buses_bus_personnel_to_create->create()){
			$msg_obj->add_confirmation("Success! The new Bus Personnel has been added. ");			
			} else {
			$msg_obj->add_error("Error! The new Bus Personnel could not be added to the given Bus Route. ");
			}
			*/
	
		} else {
			$msg_obj->add_error("Error! The new Bus Personnel could not be created. ");
		}
	}

} else {
	redirect_to("login.php");
}

// common init code

$roles = BusPersonnelRole::find_all();
$buses = Bus::find_all();

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Add New Skill &middot; <?php echo WEB_APP_NAME; ?></title>
    <?php require_once('../includes/layouts/header.php');?>
  </head>

  <body>


    <!-- Part 1: Wrap all page content here -->
    <div id="wrap">

      <!-- Fixed navbar -->
      <?php require_once('../includes/layouts/navbar.php');?>

      <!-- Begin page content -->
      
      <header class="jumbotron subhead">
        <div class="container-fluid">
          <h1>Add New Skill</h1>
        </div>
      </header>
      
      <div class="container-fluid">
      
      <div class="row-fluid">
      
        <!-- Start Content -->
        
        <div class="span3">
        	<div class="sidenav" data-spy="affix" data-offset-top="200">
        		<a href="list_skills.php" class="btn btn-primary"><i class="icon-arrow-left icon-white"></i> Back to List of Skills</a>
        	</div>
        </div>

        <div class="span9">
        
        <section>
        
        <?php $msg_obj->display_errors(); ?>
        
        <form class="form-horizontal" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
            
            <div class="control-group">
            <label for="role" class="control-label">Role of Person</label>
	            <div class="controls">
	            	<select name="role">
	            	<?php foreach($roles as $role){ ?>
	            		<option value="<?php echo $role->id; ?>"><?php echo $role->role_name; ?></option>
	            	<?php } ?>
					</select>
	            </div>
            </div>
            
            <div class="control-group">
        	<label for="username" class="control-label">Username</label>
	        	<div class="controls">
	        		<input type="text" name="username" />
	        	</div>
        	</div>
        	
        	<div class="control-group">
        	<label for="password" class="control-label">Password</label>
	        	<div class="controls">
	        		<input type="password" name="password" />
	        	</div>
        	</div>
            
            <div class="control-group">
        	<label for="first_name" class="control-label">First Name</label>
	        	<div class="controls">
	        		<input type="text" name="first_name" />
	        	</div>
        	</div>
            
            <div class="control-group">
            <label for="last_name" class="control-label">Last Name</label>
	            <div class="controls">
	            	<input type="text" value="" name="last_name" />
	            </div>
            </div>
            
            <div class="control-group">
            <label for="nic_number" class="control-label">NIC Number</label>
	            <div class="controls">
	            	<input type="text" value="" name="nic_number" />
	            </div>
            </div>
            
            <!-- 
            <div class="control-group">
            <label for="bus_id" class="control-label">Assigned Bus</label>
	            <div class="controls">
	            	<select name="bus_id">
	            	<?php foreach($buses as $bus){ ?>
	            		<option value="<?php echo $bus->id; ?>"><?php echo BusRoute::find_by_id($bus->route_id)->route_number; ?> &middot; <?php echo $bus->reg_number; ?><?php if(!empty($bus->name)){ echo ' &middot; ' . $bus->name;} ?></option>
	            	<?php } ?>
					</select>
	            </div>
            </div>
            -->
            
          	<div class="form-actions">
        	    <button class="btn btn-primary" name="submit">Submit</button>
        	</div>
        </form>
        
        </section>
        
	  	</div>

        <!-- End Content -->
        
        </div>
        
        </div>

      <div id="push"></div>
    </div>

    <?php require_once('../includes/layouts/footer.php');?>

    <?php require_once('../includes/layouts/scripts.php');?>

  </body>
</html>