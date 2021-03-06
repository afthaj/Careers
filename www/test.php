<?php
require_once("../includes/initialize.php");
require_once("../includes/password.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Test &middot; <?php echo WEB_APP_NAME; ?>
</title>
<?php require_once('../includes/layouts/header.php');?>
</head>

<body>


	<!-- Part 1: Wrap all page content here -->
	<div id="wrap">

		<!-- Fixed navbar -->
		<?php $page = 'test';?>
		<?php require_once('../includes/layouts/navbar.php');?>

		<!-- Begin page content -->

		<header class="jumbotron subhead">
			<div class="container-fluid">
				<h1>Test Page</h1>
				<h2></h2>
			</div>
		</header>

		<!-- Start Content -->

		<div class="container-fluid">

			<div class="row-fluid">

				<div class="span3">
					<div class="sidenav" data-spy="affix" data-offset-top="200">
						<a href="index.php" class="btn btn-primary btn-block"><i
							class="icon-arrow-left icon-white"></i> Back</a>
					</div>
				</div>

				<div class="span9">
					<div class="row-fluid">
						<section>

							<?php $msg_obj->display_errors(); ?>

							<?php $hash = password_hash("test", PASSWORD_BCRYPT); echo '<br/>' . $hash . '<br/>';?>

							<?php 
							function crypto_rand_secure($min, $max) {
						        $range = $max - $min;
						        if ($range < 0) return $min; // not so random...
						        $log = log($range, 2);
						        $bytes = (int) ($log / 8) + 1; // length in bytes
						        $bits = (int) $log + 1; // length in bits
						        $filter = (int) (1 << $bits) - 1; // set all lower bits to 1
						        do {
						            $rnd = hexdec(bin2hex(openssl_random_pseudo_bytes($bytes)));
						            $rnd = $rnd & $filter; // discard irrelevant bits
						        } while ($rnd >= $range);
						        return $min + $rnd;
							}

							function getToken($length){
							    $token = "";
							    $codeAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
							    $codeAlphabet.= "abcdefghijklmnopqrstuvwxyz";
							    $codeAlphabet.= "0123456789";
							    for($i=0;$i<$length;$i++){
							        $token .= $codeAlphabet[crypto_rand_secure(0,strlen($codeAlphabet))];
							    }
							    return $token;
							}
							
							echo 'Token: ' . getToken(60) . '<br/>';
							echo 'Reg Code: ' . getToken(10) . '<br/>';
							?>

							<?php 



							$time = time();

							echo $time;

							echo '<br /><br />';

							print_r(getdate($time));

							echo '<br /><br />';

							print date("r", $time);

							echo '<br /><br />';

							print date("d/m/y h:i:s a", $time);

							echo '<br /><br />';

							print date("d/m/Y h:i:s a", mktime(13, 29, 45, 11, 18, 1988));

							echo '<br /><br />';

							$datetime1 = new DateTime('2009-10-11');
							$datetime2 = new DateTime('2009-10-13');
							$interval = $datetime1->diff($datetime2);
							echo $interval->format('%R%a days');

							echo '<br /><br />';

							echo PHP_OS;

							echo '<br /><br />';

							echo php_uname('s');


							?>

						</section>

					</div>

					<div class="row-fluid">
						<section>
							<div id="chart_div" style="width: 100%;"></div>
						</section>
					</div>

					<div class="row-fluid">
						<section>
							<div id="chart_2_div" style="width: 100%;"></div>
						</section>
					</div>

					<div class="row-fluid">
						<section>
							<div id="chart_3_div" style="width: 100%;"></div>
						</section>
					</div>

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
