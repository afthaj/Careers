<?php
require_once("../includes/initialize.php");

//init code
$user_login_object = new UserLogin();
$student_object = new Student();
$admin_user_object = new AdminUser();
$company_user_object = new CompanyUser();

$month_object = new Month();
$photo_object = new Photo();
$degree_program_object = new DegreeProgram();

//for "work exerience"
$company_object = new Company();
$student_company_object = new StudentCompany();

//for "published material"
$paper_object = new Paper();
$student_paper_object = new StudentPaper();

//for "edu_quals"
$qualification_object = new EducationalQualification();
$student_edu_qual_object = new StudentEduQual();

//for "schools attended"
$school_object = new School();
$student_school_object = new StudentSchool();

//for "skills"
$skill_object = new Skill();
$skill_type_object = new SkillType();
$student_skill_object = new StudentSkill();

//for "prof_quals"
$student_prof_qual_object = new StudentProfQuals();
$prof_qual_object = new ProfessionalQualification();
$prof_institution_object = new ProfessionalInstitution();


//check login
if ($session->is_logged_in()){

	//check object_type
	if ($session->object_type == 3){
		//admin
		$user = $user_login_object->get_user($_SESSION['id']);
		$admin_user = $admin_user_object->get_user($user->id);

	} else if ($session->object_type == 2){
		//student
		$user = $user_login_object->get_user($_SESSION['id']);
		$student = $student_object->get_user($user->id);

	} else if ($session->object_type == 5){
		//company_user
		$user = $user_login_object->get_user($_SESSION['id']);
		$company_user = $company_user_object->get_user($user->id);

	}

}

//GET request stuff
if (!empty($_GET['s'])){
	$details_of_student_to_read_update = $user_login_object->get_user_by_username($_GET['s']);

	if ($details_of_student_to_read_update === false){
		$msg_obj->add_error("Student does not exist.");		
	}else{
		$student_to_read_update = $student_object->get_user($details_of_student_to_read_update->id);

		//for student's degree program
		$degree_program_of_student_to_read_update = $degree_program_object->find_by_id($student_to_read_update->degree_program_id);

		//get the student's papers
		$papers_of_student = $student_paper_object->get_papers_of_student($student_to_read_update->id);

		//get the student's work experience
		$employers = $student_company_object->get_companies_of_student($student_to_read_update->id);

		//get the student's educational qualifications
		$edu_quals = $student_edu_qual_object->get_edu_quals_of_student($student_to_read_update->id);

		//get the student's professional qualifications
		$prof_quals = $student_prof_qual_object->get_prof_quals_of_student($student_to_read_update->id);

		//get the student's schools attended
		$schools = $student_school_object->get_schools_of_student($student_to_read_update->id);

		//get the student's skills
		$skills = $student_skill_object->get_skills_for_student($student_to_read_update->id);

		//get the student's profile picture
		$profile_picture_of_student = $photo_object->get_profile_picture(2, $student_to_read_update->id);
	}
} else {
	$msg_obj->add_error("No Student has been selected to view.");
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Student Profile &middot; <?php echo WEB_APP_NAME; ?>
</title>
<?php require_once('../includes/layouts/header.php');?>
</head>

<body>


	<!-- Part 1: Wrap all page content here -->
	<div id="wrap">

		<!-- Fixed navbar -->
		<?php require_once('../includes/layouts/navbar.php');?>
		<?php $msg_obj->display_errors(); ?>
		<?php if ($details_of_student_to_read_update !== false):?>

		<header class="jumbotron subhead">
			<div class="container">

				<div class="row">

					<div class="span3">

						<?php 
						if (!empty($profile_picture_of_student->filename)) {
         	echo '<img src="' . $profile_picture_of_student->image_path() . '" style="width: 200px; height: 200px;" class="img-rounded"/>';
         } else {
         	echo '<img src="img/default-prof-pic.jpg" style="width: 200px; height: 200px;" class="img-rounded" alt="Default profile picture" />';
         }
         ?>

					</div>

					<div class="span9">
						<h1>
							<?php echo $details_of_student_to_read_update->full_name();?>
						</h1>
						<h3>
							<?php echo $degree_program_of_student_to_read_update->display_name; ?>
						</h3>
					</div>

				</div>

			</div>
		</header>

		<!-- Begin page content -->

		<div class="container" style="margin-top: 25px;">
			
			<div class="row">

				<div class="span3 sidebar">
					<div class="sidenav" data-spy="affix" data-offset-top="275">
						<a href="<?php echo HTTP_BASE .'/students';?>" class="btn btn-primary btn-block"><i
							class="icon-arrow-left icon-white"></i> Back to List of Students</a><br />
						<div class="well">
							<h4>Student Details</h4>
							<br />

							<h5>Name</h5>
							<p>
								<?php echo $details_of_student_to_read_update->full_name();?>
							</p>

							<h5>Degree Program</h5>
							<p>
								<?php echo $degree_program_of_student_to_read_update->display_name; ?>
							</p>

							<?php if ($session->is_logged_in()) { 

								if ($session->object_type == 5 && $company_object->find_by_id($company_user->company_id)->verified_flag != 1) {

	        			 } else { ?>

							<h5>Email Address</h5>
							<p>
								<?php echo $details_of_student_to_read_update->email_address;?>
							</p>

							<h5>Tel. Number</h5>
							<p>
								<?php echo $details_of_student_to_read_update->telephone_number;?>
							</p>
							<br /> <a
								href="<?php echo HTTP_BASE . '/students/' . $details_of_student_to_read_update->username; ?>/cv"
								class="btn btn-success" target="_blank">Download CV</a>

							<?php //echo $details_of_student_to_read_update->username; ?>

							<?php //if (!empty($student_to_read_update->cv_file_name)){ echo $student_to_read_update->cv_file_path(); } else { echo '#'; } ?>

							<?php } 
} ?>
						</div>

					</div>

				</div>

				<!-- Start Content -->

				<div class="span9">
				
				<?php if (!$session->is_logged_in()) :?>
				<div class="info-block">Please login to view more details.</div>
				<?php endif ?>

					<section>

						<?php $msg_obj->display_errors(); ?>

						<ul class="nav nav-tabs">
							<li class="active"><a href="#overview" data-toggle="tab">Overview</a>
							</li>
							<li><a href="#research" data-toggle="tab">Research</a></li>
							<!-- 
	      <li><a href="#work_experience" data-toggle="tab">Work Experience</a></li>
	      <li><a href="#education" data-toggle="tab">Education</a></li>
	       -->
						</ul>

						<div id="tab_content" class="tab-content">

							<div class="tab-pane active in" id="overview">

								<div class="well">
									<h3>Executive Summary</h3>
									<br />
									<p class="read-text-box">
										<?php echo $student_to_read_update->executive_summary; ?>
									</p>
								</div>


								<?php if ($session->is_logged_in()) { 

									if ($session->object_type == 5 && $company_object->find_by_id($company_user->company_id)->verified_flag != 1) {

        			 } else {

        			 	if ($skills) { ?>

								<div class="well">
									<h3>Skills &amp; Expertise</h3>

									<table class="table table-bordered table-hover">

										<thead>
											<tr align="center">
												<td><h5>Programming Languages</h5></td>
												<td><h5>Technologies</h5></td>
												<td><h5>Subject Areas</h5></td>
												<td><h5>Concepts</h5></td>
											</tr>
										</thead>

										<tbody>
											<tr valign="top">
												<td>
													<ul>
														<?php foreach($skills as $skill){ 

			      						if ($skill_object->find_by_id($skill->skill_id)->skill_type == 1){

			      						?>
														<li><?php echo $skill_object->find_by_id($skill->skill_id)->skill_name; ?>
														</li>
														<?php } 
} ?>
													</ul>
												</td>
												<td>
													<ul>
														<?php foreach($skills as $skill){ 

			      						if ($skill_object->find_by_id($skill->skill_id)->skill_type == 2){

			      						?>
														<li><?php echo $skill_object->find_by_id($skill->skill_id)->skill_name; ?>
														</li>
														<?php } 
} ?>
													</ul>
												</td>
												<td>
													<ul>
														<?php foreach($skills as $skill){ 

			      						if ($skill_object->find_by_id($skill->skill_id)->skill_type == 3){

			      						?>
														<li><?php echo $skill_object->find_by_id($skill->skill_id)->skill_name; ?>
														</li>
														<?php } 
} ?>
													</ul>
												</td>
												<td>
													<ul>
														<?php foreach($skills as $skill){ 

			      						if ($skill_object->find_by_id($skill->skill_id)->skill_type == 4){

			      						?>
														<li><?php echo $skill_object->find_by_id($skill->skill_id)->skill_name; ?>
														</li>
														<?php } 
} ?>
													</ul>
												</td>
											</tr>
										</tbody>

									</table>

								</div>

								<?php } 
}
} ?>

							</div>

							<div class="tab-pane fade" id="research">

								<div class="well">
									<h3>Research Project</h3>

									<h4>Project Title</h4>
									<p style="font-weight: bold;">
										<?php echo $student_to_read_update->research_project_title; ?>
									</p>
									<br/>
									<h4>Project Description</h4>
									<p class="read-text-box">
										<?php echo $student_to_read_update->research_project_desc; ?>
									</p>
								</div>


								<?php if ($session->is_logged_in()) { 

									if ($session->object_type == 5 && $company_object->find_by_id($company_user->company_id)->verified_flag != 1) {

        			 } else {

        			 	if ($papers_of_student) { ?>

								<div class="well">
									<h4>Published Material</h4>

									<ul>
										<?php foreach($papers_of_student as $paper_of_student){

											$paper = $paper_object->find_by_id($paper_of_student->paper_id)

											?>
										<li><?php if (!empty($paper->file_name)) { ?> <a
											href="<?php echo '' . $paper->paper_file_path(); ?>"
											target="_blank"><?php echo $paper->title; ?> <?php echo '(' . $paper->year . ')'; ?>
										</a> <?php } else { 
											echo $paper->title; ?> <?php echo '(' . $paper->year . ')';
				      			} ?>
											<ul>

												<li><b>Authors:</b> <?php echo $paper->authors; ?></li>
												<?php if (!empty($paper->abstract)) { ?>
												<li><b>Abstract:</b> <?php echo $paper->abstract; ?></li>
												<?php } ?>
											</ul>
										</li>
										<?php } ?>
									</ul>

								</div>

								<?php } 
}
} ?>

							</div>

							<div class="tab-pane fade" id="work_experience">

								<?php if($employers) { ?>
								<div class="well">
									<h3>Work Experience</h3>

									<table class="table table-bordered table-hover">

										<thead>
											<tr>
												<td><h5>Employer</h5></td>
												<td><h5>Post</h5></td>
												<td align="center"><h5>From</h5></td>
												<td align="center"><h5>To</h5></td>

											</tr>
										</thead>

										<tbody>
											<?php foreach($employers as $e){ 
													
												$employer = $company_object->find_by_id($e->company_id);

												?>
											<tr>
												<td><?php echo $employer->name; ?></td>
												<td><?php echo $e->position; ?></td>
												<td align="center"><?php echo $month_object->find_by_id($e->start_month)->name . ' ' . $e->start_year; ?>
												</td>
												<td align="center"><?php echo $month_object->find_by_id($e->end_month)->name . ' ' . $e->end_year; ?>
												</td>
											</tr>
											<?php } ?>
										</tbody>

									</table>

								</div>
								<?php } ?>

							</div>

							<div class="tab-pane fade" id="education">

								<?php if($edu_quals) { ?>
								<div class="well">
									<h3>Educational Qualifications</h3>

									<table class="table table-bordered table-hover">

										<thead>
											<tr>
												<td><h5>Qualification</h5></td>
												<td><h5>Awarding Institution</h5></td>
												<td align="center"><h5>Year</h5></td>
											</tr>
										</thead>

										<tbody>
											<?php foreach($edu_quals as $edu_qual){ 
													
												$edu_qualification = $qualification_object->find_by_id($edu_qual->edu_qual_id);

												?>
											<tr>
												<td><?php echo $edu_qualification->name; ?></td>
												<td><?php echo $school_object->find_by_id($edu_qual->school_id)->school_name; ?>
												</td>
												<td align="center"><?php echo $edu_qual->year; ?></td>
											</tr>
											<?php } ?>
										</tbody>

									</table>

								</div>
								<?php } ?>

								<?php if ($prof_quals) { ?>
								<div class="well">
									<h4>Professional Qualifications</h4>

									<table class="table table-bordered table-hover">

										<thead>
											<tr>
												<td><h5>Qualification</h5></td>
												<td><h5>Awarding Institution</h5></td>
												<td align="center"><h5>Year</h5></td>
											</tr>
										</thead>

										<tbody>
											<?php foreach ($prof_quals as $prof_qual) { ?>
											<tr>
												<td><?php echo $prof_qual_object->find_by_id($prof_qual->prof_qual_id)->name; ?>
												</td>
												<td><?php echo $prof_institution_object->find_by_id($prof_qual->prof_institution_id)->prof_institution_name; ?>
												</td>
												<td align="center"><?php echo $prof_qual->year; ?></td>
											</tr>
											<?php } ?>
										</tbody>

									</table>

								</div>
								<?php } ?>

								<?php if($schools) { ?>
								<div class="well">
									<h4>Educational Institutions Attended</h4>

									<table class="table table-bordered table-hover">

										<thead>
											<tr>
												<td><h5>Institution</h5></td>
												<td align="center"><h5>From</h5></td>
												<td align="center"><h5>To</h5></td>
											</tr>
										</thead>

										<tbody>
											<?php foreach($schools as $school){ 
													
												$students_school = $school_object->find_by_id($school->school_id);

												?>
											<tr>
												<td><?php echo $students_school->school_name; ?></td>
												<td align="center"><?php echo $school->start_year; ?></td>
												<td align="center"><?php echo $school->end_year; ?></td>
											</tr>
											<?php } ?>
										</tbody>

									</table>

								</div>
								<?php } ?>

							</div>

						</div>

					</section>

				</div>

			</div>

			<!-- End Content -->

		</div>

		<div class="clearfix">&nbsp;</div>

		<div id="push"></div>
		<?php endif ?>
	</div>

	<?php require_once('../includes/layouts/footer.php');?>

	<?php require_once('../includes/layouts/scripts.php');?>

</body>
</html>
