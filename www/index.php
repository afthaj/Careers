<?php
require_once("../includes/initialize.php");
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
<title><?php echo WEB_APP_NAME; ?></title>
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

.masthead h1 {
	font-size: 80px;
}
</style>

</head>

<body>

	<!-- Part 1: Wrap all page content here -->
	<div id="wrap">

		<!-- Fixed navbar -->
		<?php $page = 'index';?>
		<?php require_once('../includes/layouts/navbar.php');?>

		<div class="jumbotron masthead">
			<div class="container">
				<img src="img/logo.png" alt="UCSC Logo"
					style="width: 200px; height: 200px;" />
				<h1>
					<?php echo WEB_APP_NAME; ?>
				</h1>
				<h3>
					<?php echo WEB_APP_CATCH_PHRASE; ?>
				</h3>
				<p>
					<i class="icon-calendar icon-white"></i> 31st of October 2013
					&middot; <i class="icon-time icon-white"></i> 9AM onwards &middot;
					<i class="icon-map-marker icon-white"></i> Prof. V. K. Samaranayake
					Auditorium, UCSC
				</p>
			</div>
		</div>

		<!-- Begin page content -->
		<div class="container" style="margin-top: 60px;">

			<!-- Start Content -->

			<!-- Marketing messaging and featurettes
	    ================================================== -->
			<!-- Wrap the rest of the page in another container to center all the content. -->

			<div class="container marketing">

				<!-- Three columns of text below the carousel -->
				<div class="row">
					<div class="span4">
						<img class="img-rounded" src="img/career-fair-logo.png"
							style="width: 140px; height: 140px;" />
						<div class="well home-text-box">
							<h2>Career Fair 2013</h2>
							<p class="read-text-box">The inaugural Career Fair, organized by
								the University of Colombo School of Computing aims to strengthen
								the ties between the academic and the corporate worlds. It
								provides an opportunity for leading firms to recruit the best IT
								talent the UCSC has to offer in an organized, highly interactive
								environment. The undergraduates in turn get an opportunity to
								showcase their talent and meet with prospective employers in a
								familiar setting.</p>
							<p>
								<a class="btn btn-primary"
									href="http://careers.ucsc.lk/docs/UCSC_Career_Fair_2013.pdf"
									target="_blank">Read More &raquo;</a>
							</p>
						</div>
					</div>
					<!-- /.span4 -->
					<div class="span4">
						<img class="img-rounded" src="img/logo-no-border.png"
							style="width: 140px; height: 140px;">
						<div class="well home-text-box">
							<h2>UCSC</h2>
							<p class="read-text-box">The main objective of the UCSC is to
								provide high quality undergraduate degree programs to students
								in the fields of Computer Science and Information and
								Communication Technology. At present, 780 internal undergraduate
								students are enrolled at the institution. Over the years it has
								been able to establish itself as the Centre of Excellence in the
								streams of Computer Science and Information Communication
								Technology among all other universities in Sri Lanka.</p>
							<p>
								<a class="btn btn-primary" href="http://www.ucsc.lk"
									target="_blank">Visit Website &raquo;</a>
							</p>
						</div>
					</div>
					<!-- /.span4 -->
					<div class="span4">
						<img class="img-rounded" src="img/lab-photo-1.jpg"
							style="width: 140px; height: 140px;">
						<div class="well home-text-box">
							<h2>Research &amp; Innovation</h2>
							<p class="read-text-box">The talent available at the Career Fair
								focuses their efforts on research and innovation. The students
								are the best in their respective streams and have been chosen
								for their academic prowess. The quality of their work is
								unparalled and would be a major asset to any organisation
								willing to hire them.</p>
							<p>
								<a class="btn btn-primary"
									href="<?php echo HTTP_BASE . '/students'; ?>">View Students
									&raquo;</a>
							</p>
						</div>
					</div>
					<!-- /.span4 -->
				</div>
				<!-- /.row -->
				<!-- End Content -->

			</div>

			<div id="push"></div>
		</div>
	</div>
	<?php require_once('../includes/layouts/footer.php');?>
</body>
</html>
