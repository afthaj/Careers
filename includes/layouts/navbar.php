<div class="navbar navbar-fixed-top navbar-invers">
	<div class="navbar-inner">
		<div class="container">

			<a class="btn btn-navbar" data-toggle="collapse"
				data-target=".navbar-responsive-collapse"> <span class="icon-bar"></span>
				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</a> <a class="brand" href="<?php echo HTTP_BASE; ?>"><?php echo WEB_APP_SHORT_NAME; ?>
			</a>

			<div class="nav-collapse collapse navbar-responsive-collapse">
				<ul class="nav navbar-nav">
					<li
					<?php if (!empty($page) && $page == 'index'){echo ' class="active"';}?>><a
						href="<?php echo HTTP_BASE; ?>"><i class="icon-home icon-white"></i>
					</a></li>
					<li
					<?php if (!empty($page) && $page == 'students'){echo ' class="active"';}?>><a
						href="<?php echo HTTP_BASE; ?>/students">Students</a></li>
					<li
					<?php if (!empty($page) && $page == 'companies'){echo ' class="active"';}?>><a
						href="<?php echo HTTP_BASE; ?>/companies">Companies</a></li>
					<?php if (!empty($session->id) && $session->object_type == 5 ) { // object_type 3 is admin, 2 is student, 5 is company_user ?>
					<li><a style="font-weight: 600; font-size: 16px;" target="_blank" href="<?php echo HTTP_BASE; ?>/download/ucsc_cv_bundle">Download CVs</a>
					</li>
					<?php }?>
					<li
					<?php if (!empty($page) && $page == 'contact'){echo ' class="active"';}?>><a
						href="<?php echo HTTP_BASE; ?>/contact">Contact Us</a></li>
				</ul>
				<ul class="nav navbar-nav pull-right">

					<?php if (!empty($session->id) && ($session->object_type == 3 || $session->object_type == 2 || $session->object_type == 5) ) { // object_type 3 is admin, 2 is student, 5 is company_user ?>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <i class="icon-user icon-white"></i> <?php if (!empty($user->id)) { 
							echo $user->full_name();
						} ?> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<!-- <li><a href="view_profile.php"><i class="icon-wrench"></i> View Profile</a></li> -->
							<li><a href="<?php echo HTTP_BASE; ?>/logout"><i class="icon-off"></i>
									Logout</a></li>
							<?php if ($session->is_logged_in() && $session->object_type == 3) { ?>
							<li class="divider"></li>
							<li><a href="students"><i class="icon-info-sign"></i> View All
									Students</a></li>
							<li><a href="create_student.php"><i class="icon-plus"></i> Add
									Student</a></li>
							<li><a href="#"><i class="icon-search"></i> Search for Student</a>
							</li>
							<li class="divider"></li>
							<li><a href="list_admin_users.php"><i class="icon-info-sign"></i>
									View All Admin Users</a></li>
							<li><a href="create_admin_user.php"><i class="icon-plus"></i> Add
									Admin User</a></li>
							<li><a href="#"><i class="icon-search"></i> Search for Admin User</a>
							</li>
							<?php } ?>
						</ul>
					</li>
					<?php } else { ?>
					<li
					<?php if (!empty($page) && $page == 'login'){echo ' class="active"';}?>><a
						href="<?php echo HTTP_BASE . '/login'; ?>">Login</a></li>
					<?php } ?>

				</ul>
			</div>
			<!--/.nav-collapse -->

		</div>
	</div>
</div>
