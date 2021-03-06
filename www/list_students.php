<?php
require_once("../includes/initialize.php");

//init code
$students = Student::find_all();
$user_login_object = new UserLogin();
$photo_object = new Photo();
$company_object = new Company();
$company_user_object = new CompanyUser();

//check login
if ($session->is_logged_in()){

	if ($session->object_type == 3){
		//admin
		$user = $user_login_object->get_user($_SESSION['id']);
		//$user_photo = $photo_object->get_profile_picture(3, $user->id);

	} else if ($session->object_type == 2){
		//student
		$user = $user_login_object->get_user($_SESSION['id']);
		//$user_photo = $photo_object->get_profile_picture(2, $user->id);

	} else if ($session->object_type == 5){
		//company_user
		$user = $user_login_object->get_user($_SESSION['id']);
		$company_user = $company_user_object->get_user($user->id);
		//$user_photo = $photo_object->get_profile_picture(5, $user->id);

	}

}

?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Students | <?php echo WEB_APP_NAME; ?>
</title>
<?php require_once('../includes/layouts/header.php'); ?>
</head>

<body>


	<!-- Part 1: Wrap all page content here -->
	<div id="wrap">

		<!-- Fixed navbar -->
		<?php $page = 'students';?>
		<?php require_once('../includes/layouts/navbar.php');?>

		<!-- Begin page content -->

		<header class="jumbotron subhead">
			<div class="container">
				<h1 style="display: inline;">List of Students</h1>

				<?php if ($session->is_logged_in() && $session->object_type === 5 && $company_object->find_by_id($company_user->company_id)->verified_flag === '1') : ?>
				<div style="float: right; height: 75px;">
					<a style="color: #fff; display: block;"
						href="<?php echo HTTP_BASE . '/download/cv_bundle'; ?>"
						class="btn btn-success" target="_blank">Download CV Bundle</a> <a
						style="color: #fff; display: block; margin-top: 5px;"
						href="<?php echo $company_object->find_by_id($company_user->company_id)->pref_cv_link; ?>"
						class="btn btn-success" target="_blank">View Preferred Student
						List</a>
						<a
						style="color: #fff; display: block; margin-top: 5px;"
						href="https://docs.google.com/spreadsheet/ccc?key=0Atq-iA3K3wmhdFRPTTZQakpUOFRJNXQzcmtZUTliaEE&usp=sharing"
						class="btn btn-success" target="_blank">View Job Preferences</a>
				</div>
				<?php endif ?>
			</div>
		</header>

		<!-- Start Content -->
		<div class="container">

			<?php if ($session->is_logged_in() && $session->object_type == 3){ ?>
			<div class="row">
				<br /> <a href="create_student.php" class="btn btn-primary"><i
					class="icon-plus icon-white"></i> Add New Student</a> <br />
			</div>
			<?php } ?>

			<div class="row">

				<div class="">

					<section>

						<?php $msg_obj->display_errors(); ?>

						<ul class="thumbnails">

							<?php for($i = 0; $i < count($students) ; $i++){

								//instantiate the user_students object
								$student = $user_login_object->get_user($students[$i]->login_id);

								//get the student's profile picture
								$profile_picture_of_student = $photo_object->get_profile_picture(2, $student->id);

								?>

							<li class="">
								<div class="thumbnail">
									<a href="students/<?php echo $student->username; ?>"> <?php 
									if (!empty($profile_picture_of_student->filename)) {
			         	echo '<img src="' . $profile_picture_of_student->image_path() . '" style="width: 200px; height: 200px;" data-src="js/holder.js/200x200" class="img-rounded" />';
			         } else {
			         	echo '<img src="img/default-prof-pic.jpg" style="width: 200px; height: 200px;" data-src="js/holder.js/200x200" alt="Default profile picture" />';
			         }
			         ?>



									</a>
									<h3 align="center">
										<a href="students/<?php echo $student->username; ?>"
											class="btn btn-primary btn-block"><?php echo $student->full_name(); ?>
										</a>
									</h3>
								</div>
							</li>
							<?php  } ?>

						</ul>

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
