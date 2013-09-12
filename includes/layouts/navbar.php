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
          	<a href="#" class="dropdown-toggle" data-toggle="dropdown">Bus Routes &amp; Stops <b class="caret"></b></a>
          	<ul class="dropdown-menu">
          		<li><a href="public_list_stops.php">View All Stops</a></li>
          		<li><a href="#">Search for Bus Stop</a></li>
          		<li class="divider"></li>
          		<li><a href="public_list_routes.php">View All Bus Routes</a></li>
          		<li><a href="#">Search for Bus Route</a></li>
          	</ul>
          </li>
          
          <li<?php if (isset($page) && $page == 'test'){echo ' class="active"';}?>><a href="test.php">Test Page</a></li>
          
        </ul>
        <ul class="nav navbar-nav pull-right">
          
          <li><a href="./admin">Admin Area</a></li>
          
          <?php 
          
          if (isset($session->id) && $session->object_type == 6) { // object_type 6 commuter
          	
          	?>
          	<li class="dropdown">
          	<a href="#" class="dropdown-toggle" data-toggle="dropdown">
          	<?php
          	
          	echo $user->full_name(); ?> <b class="caret"></b></a>
          	<ul class="dropdown-menu">
          		<li><a href="public_view_profile.php">View Profile</a></li>
          		<li><a href="logout.php">Logout</a></li>
          	</ul>
          	</li>
          <?php	} else { ?>
          	<li><a href="login.php">Login</a></li>
          <?php } ?>
          
        </ul>
      </div><!--/.nav-collapse -->
      
    </div>
  </div>
</div>