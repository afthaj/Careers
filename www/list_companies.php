<?php
require_once("../includes/initialize.php");
$companies = Company::find_all();
$user_login_object = new UserLogin();

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
<title>Companies | <?php echo WEB_APP_NAME; ?>
</title>
<?php require_once('../includes/layouts/header.php');?>

<style>

/* MARKETING CONTENT
    -------------------------------------------------- */

/* Center align the text within the three columns below the carousel */
.marketing .span4 {
	text-align: center;
}

.marketing h2 {
	font-weight: normal;
}

.marketing .span4 p {
	margin-left: 10px;
	margin-right: 10px;
}

/* Featurettes
    ------------------------- */
.featurette-divider {
	margin: 20px 0; /* Space out the Bootstrap <hr> more */
}

.featurette {
	padding-top: 10px;
	/* Vertically center images part 1: add padding above and below text. */
	overflow: hidden;
	/* Vertically center images part 2: clear their floats. */
}

.featurette-image {
	margin-top: 0px;
	/* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
}

/* Give some space on the sides of the floated elements so text doesn't run right into it. */
.featurette-image.pull-left {
	margin-right: 40px;
}

.featurette-image.pull-right {
	margin-left: 40px;
}

/* Thin out the marketing headings */
.featurette-heading {
	font-size: 50px;
	font-weight: 300;
	line-height: 1;
	letter-spacing: -1px;
}

.intro-text {
	margin-bottom: 20px;
	font-size: 14px;
	font-weight: 100;
	line-height: 25px;
}
</style>

</head>

<body>

	<!-- Part 1: Wrap all page content here -->
	<div id="wrap">

		<!-- Fixed navbar -->
		<?php $page = 'companies';?>
		<?php require_once('../includes/layouts/navbar.php');?>

		<div class="jumbotron masthead">
			<div class="container">
				<h3>Participating Companies</h3>
			</div>
		</div>

		<!-- Begin page content -->
		<div class="container">

			<!-- Start Content -->

			<?php for($i = 0; $i < count($companies) ; $i++){ 
				$orientation = ($i % 2 === 0) ? 'featurette-image pull-right' : 'featurette-image pull-left';
				?>
			<!-- START THE FEATURETTES -->

			<div class="featurette">
				<div class="<?php echo $orientation;?>"					
					style="width: 250px; height: 250px; background: url('<?php echo HTTP_BASE . '/img/uploads/' .  $companies[$i]->logo_filename; ?>') no-repeat center center;">
				</div>
				<h2 class="featurette-heading">
					<?php echo $companies[$i]->name;?>
					<span class="muted"></span>
				</h2>
				<p class="intro-text" style="text-align: justify">
					<?php echo $companies[$i]->description;?>
				</p>
			</div>

			<hr class="featurette-divider">

			<!-- /END THE FEATURETTES -->

			<?php } ?>

			<!-- End Content -->

		</div>

		<div id="push"></div>
	</div>

	<?php require_once('../includes/layouts/footer.php');?>

	<?php require_once('../includes/layouts/scripts.php');?>

</body>
</html>
