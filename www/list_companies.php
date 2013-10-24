<?php
require_once("../includes/initialize.php");
$companies = Company::get_sorted_list();
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
	font-size: 24px;
	font-weight: 300;
	padding: 20px;
}

.featurette-heading a {
	text-decoration: none;
}

.featurette-heading:HOVER a,accordion-toggle a:HOVER {
	color: #2D42DD;
}

.featurette-heading:HOVER {
	cursor: pointer;
}

.intro-text {
	margin-bottom: 20px;
	font-size: 14px;
	font-weight: 100;
	line-height: 25px;
	text-align: justify;
}

span.clear {
	clear: left;
	display: block;
}
</style>
</head>
<body>
	<!-- Part 1: Wrap all page content here -->
	<div id="wrap">

		<!-- Fixed navbar -->
		<?php $page = 'companies';?>
		<?php require_once('../includes/layouts/navbar.php');?>

		<div class="jumbotron subhead">
			<div class="container">
				<h1 style="display: inline;">Participating Companies</h1>
			</div>
		</div>

		<!-- Begin page content -->
		<div class="container">

			<!-- Start Content -->
			<div class="accordion" id="accordion2"
				style="max-width: 700px; margin: 50px auto;">
				<?php for($i = 0; $i < count($companies) ; $i++) { ?>
				
				<!-- START THE FEATURETTES -->				
				
				<div class="accordion-group">
					<div class="accordion-heading">
						<div class="featurette-heading accordion-toggle"
							id="#collapse_<?php echo $i;?>" data-toggle="collapse"
							data-parent="#accordion2" href="#collapse_<?php echo $i;?>"
							style="min-height: 100px;">
							<div style="float: left;">
								<img src="img/drop_down.png" style="width: 12px; height: 12px;" />
								<a id="#collapse_<?php echo $i;?>" class="accordion-toggle"
									data-toggle="collapse"
									style="display: inline; line-height: 100px;"
									data-parent="#accordion2" href="#collapse_<?php echo $i;?>"><?php echo $companies[$i]->name;?>
								</a>
							</div>
							<?php if ($companies[$i]->logo_filename !== NULL || count($companies[$i]->logo_filename) > 0 ) { ?>
							<div style="height: 100px; display: table; float: right; margin-right: 20px;">
								<div style="display: table-cell; vertical-align: middle;">
									<img id="#logo_<?php echo $i;?>"
										src="img/logos/<?php echo $companies[$i]->logo_filename;?>"
										style="display: inline; float: right; line-height: 80px;" />
								</div>
							</div>
							<?php } ?>
						</div>
					</div>
					<div id="collapse_<?php echo $i;?>" class="accordion-body collapse">
						<div class="accordion-inner">
							<p class="intro-text">
								<?php echo $companies[$i]->description;?>
							</p>
							<?php if ($companies[$i]->additional_resources !== NULL && $companies[$i]->additional_resources !== '') { ?>
							<h3>Additional Resources</h3>
							<p class="intro-text">
								<?php echo $companies[$i]->additional_resources;?>
							</p>
							<?php } ?>

							<?php if ($companies[$i]->technologies !== NULL && $companies[$i]->technologies !== '' ) { ?>
							<br />
							<h3>Technologies Used</h3>
							<p class="intro-text">
								<?php echo $companies[$i]->technologies;?>
							</p>
							<?php } ?>
						</div>
					</div>
				</div>

				<hr class="featurette-divider">

				<!-- /END THE FEATURETTES -->

				<?php } ?>
			</div>
			<!-- End Content -->

		</div>

		<div id="push"></div>
	</div>
	<?php require_once('../includes/layouts/footer.php');?>

</body>
</html>
