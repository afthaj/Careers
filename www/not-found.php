<?php require_once("../includes/initialize.php"); ?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home &middot; <?php echo WEB_APP_NAME; ?>
</title>
<?php require_once('../includes/layouts/header.php');?>
<link href="css/404.css" rel="stylesheet">
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
	margin: 80px 0; /* Space out the Bootstrap <hr> more */
}

.featurette {
	padding-top: 120px;
	/* Vertically center images part 1: add padding above and below text. */
	overflow: hidden;
	/* Vertically center images part 2: clear their floats. */
}

.featurette-image {
	margin-top: -120px;
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

#wrap {
	background: #dfdfdf url(/img/404_bg.jpg) repeat;
}
</style>

</head>

<body>

	<!-- Part 1: Wrap all page content here -->
	<div id="wrap">

		<!-- Fixed navbar -->
		<?php $page = 'not-found';?>
		<?php require_once('../includes/layouts/navbar.php');?>

		<div id="container" style="padding-top: 100px;">
			<div id="content_out">

				<div id="wrapper_404">

					<div id="main">
						<div id="header_404">
							<h1>
								<img class="icon" src="<?php echo HTTP_BASE;?>/img/404_icon.png"
									alt="Warning, 404">404
							</h1>
						</div>
						<div id="content">
							<h2>The page you were looking for could not be found.</h2>

							<div class="utilities">
								<div class="button-container">
									<a class="btn btn-primary" href="<?php echo HTTP_BASE;?>">Home</a>
									<a class="btn btn-primary" style="margin-left: 10px;"
										href="<?php echo HTTP_BASE;?>/contact">Contact Us</a>
								</div>
								<div style="clear: both"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<?php require_once('../includes/layouts/footer.php');?>

	<?php require_once('../includes/layouts/scripts.php');?>

</body>
</html>
