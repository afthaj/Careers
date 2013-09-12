<div class="navbar navbar-fixed-top navbar-invers">
  <div class="navbar-inner">
    <div class="container-fluid">
      
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-responsive-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <a class="brand" href="index.php"><?php echo WEB_APP_NAME;?></a>
      
      <div class="nav-collapse collapse navbar-responsive-collapse">
        <ul class="nav navbar-nav">
          <li<?php if (isset($page) && $page == 'index'){echo ' class="active"';}?>><a href="index.php">Home</a></li>
          
          <li class="dropdown">
          	<a href="#" class="dropdown-toggle" data-toggle="dropdown">Students &amp; Skills <b class="caret"></b></a>
          	<ul class="dropdown-menu">
          		<li><a href="admin_list_students.php">View All Students</a></li>
          		<?php if ($session->is_logged_in() && $session->object_type == 3) { ?>
          		<li><a href="admin_create_student.php">Add Student</a></li>
          		<?php } ?>
          		<li><a href="#">Search for Student</a></li>
          		<li class="divider"></li>
          		<li><a href="admin_list_skills.php">View Skills</a></li>
          		<?php if ($session->is_logged_in() && $session->object_type == 3) { ?>
          		<li><a href="admin_create_skill.php">Add Skill</a></li>
          		<?php } ?>
          		<li><a href="#">Search for Skill</a></li>
          	</ul>
          </li>
          
          <li<?php if (isset($page) && $page == 'test'){echo ' class="active"';}?>><a href="test.php">Test Page</a></li>

        </ul>
        <ul class="nav navbar-nav pull-right">
          
          <li><a href="<?php echo '..'.DS; ?>">Public Area</a></li>
          
          <?php if (isset($session->id) && ($session->object_type == 3 || $session->object_type == 2) ) { // object_type 3 is admin and 2 is student ?>
          	<li class="dropdown">
          	<a href="#" class="dropdown-toggle" data-toggle="dropdown">
          	<?php
          	
          	echo $user->full_name(); ?> <b class="caret"></b>
          	</a>
          	<ul class="dropdown-menu">
          		<li><a href="admin_view_profile.php">View Profile</a></li>
          		<li><a href="logout.php">Logout</a></li>
          		<?php if ($session->is_logged_in() && $session->object_type == 3) { ?>
          		<li class="divider"></li>
          		<li><a href="admin_list_admin_users.php">View All Admin Users</a></li>
          		<li><a href="admin_create_admin_user.php">Add Admin User</a></li>
          		<li><a href="#">Search for Admin User</a></li>
          		<?php } ?>
          	</ul>
          	</li>
          <?php } else { ?>
          	<li><a href="login.php">Login</a></li>
          <?php } ?>
          
        </ul>
      </div><!--/.nav-collapse -->
      
    </div>
  </div>
</div>