<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<title>DashBoard</title>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.js"></script>



<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html, body, h1, h2, h3, h4, h5, h6 {
	font-family: "Roboto", sans-serif
}
</style>
<body class="w3-light-grey">

 
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");// for http 1.1 or greater
		response.setHeader("Pragma", "no-cache");//for http 1.0
		response.setHeader("Expires", "0");//for proxies		

		if (session.getAttribute("username") == null) {

			response.sendRedirect("index.jsp");
		}
	%> 


	<!-- Page Container -->
	<div class="w3-content w3-margin-top" style="max-width: 1400px;">

		<!-- The Grid -->
		<div class="w3-row-padding">

			<!-- Left Column -->
			<div class="w3-third">

				<div class="w3-white w3-text-grey w3-card-4">
					<div class="w3-display-container">
						<img
							src="http://purepng.com/public/uploads/large/purepng.com-mariomariofictional-charactervideo-gamefranchisenintendodesigner-1701528634653vywuz.png"
							style="width: 100%" alt="Display Picture">
						<div class="w3-display-bottomleft w3-container w3-text-black">
							${FirstName} ${LastName}
						</div>
					</div>
					<div class="w3-container">

						<form class="frorm-group" method="post" action="Logout">
							<input class="form-control" type="submit" value="Logout">
						</form>
						<form class="form-group" method="post" action="Registration.jsp">
							<input class="form-control" type="submit" value="Settings">
						</form>
						<p>
							<i
								class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>${Email}
						</p>
						<p>
							<i
								class="fa fa-calender fa-fw w3-margin-right w3-large w3-text-teal"></i>${DOB}
						</p>
						<p>
							<i class="fa fa-user fa-fw w3-margin-right w3-large w3-text-teal"></i>${Gender}
						</p>
						<p>
							<i
								class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>${Contact}
						</p>
						<hr>

						<p class="w3-large">
							<b><i class="fa fa-home fa-fw w3-margin-right w3-text-teal"></i>
								<button style="background-color: 39BAA5">Residential
									Details</button></b>
						</p>


						<p class="w3-large w3-text-theme">
							<b><i class="fa fa-user fa-fw w3-margin-right w3-text-teal"></i>
								<button>Display Picture</button></b>
						</p>
					</div>
				</div>
				<br>

				<!-- End Left Column -->
			</div>

			<!-- Right Column -->
			<div class="w3-twothird">

				<div class="w3-container w3-card w3-white w3-margin-bottom">
					<h2 class="w3-text-grey w3-padding-16">
						<i
							class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Work
						Experience
					</h2>
					<div class="w3-container">
						<h5 class="w3-opacity">
							<b>Front End Developer / w3schools.com</b>
						</h5>
						<h6 class="w3-text-teal">
							<i class="fa fa-calendar fa-fw w3-margin-right"></i>Jan 2015 - <span
								class="w3-tag w3-teal w3-round">Current</span>
						</h6>
						<p>Lorem ipsum dolor sit amet. Praesentium magnam consectetur
							vel in deserunt aspernatur est reprehenderit sunt hic. Nulla
							tempora soluta ea et odio, unde doloremque repellendus iure,
							iste.</p>
						<hr>
					</div>
					<div class="w3-container">
						<h5 class="w3-opacity">
							<b>Web Developer / something.com</b>
						</h5>
						<h6 class="w3-text-teal">
							<i class="fa fa-calendar fa-fw w3-margin-right"></i>Mar 2012 -
							Dec 2014
						</h6>
						<p>Consectetur adipisicing elit. Praesentium magnam
							consectetur vel in deserunt aspernatur est reprehenderit sunt
							hic. Nulla tempora soluta ea et odio, unde doloremque repellendus
							iure, iste.</p>
						<hr>
					</div>
					<div class="w3-container">
						<h5 class="w3-opacity">
							<b>Graphic Designer / designsomething.com</b>
						</h5>
						<h6 class="w3-text-teal">
							<i class="fa fa-calendar fa-fw w3-margin-right"></i>Jun 2010 -
							Mar 2012
						</h6>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
						<br>
					</div>
				</div>

				<div class="w3-container w3-card w3-white">
					<h2 class="w3-text-grey w3-padding-16">
						<i
							class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Education
					</h2>
					<div class="w3-container">
						<h5 class="w3-opacity">
							<b>W3Schools.com</b>
						</h5>
						<h6 class="w3-text-teal">
							<i class="fa fa-calendar fa-fw w3-margin-right"></i>Forever
						</h6>
						<p>Web Development! All I need to know in one place</p>
						<hr>
					</div>
					<div class="w3-container">
						<h5 class="w3-opacity">
							<b>London Business School</b>
						</h5>
						<h6 class="w3-text-teal">
							<i class="fa fa-calendar fa-fw w3-margin-right"></i>2013 - 2015
						</h6>
						<p>Master Degree</p>
						<hr>
					</div>
					<div class="w3-container">
						<h5 class="w3-opacity">
							<b>School of Coding</b>
						</h5>
						<h6 class="w3-text-teal">
							<i class="fa fa-calendar fa-fw w3-margin-right"></i>2010 - 2013
						</h6>
						<p>Bachelor Degree</p>
						<br>
					</div>
				</div>

				<!-- End Right Column -->
			</div>

			<!-- End Grid -->
		</div>

		<!-- End Page Container -->
	</div>

	<footer class="w3-container w3-teal w3-center w3-margin-top">
		<p>Find me on social media.</p>
		<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
			class="fa fa-instagram w3-hover-opacity"></i> <i
			class="fa fa-snapchat w3-hover-opacity"></i> <i
			class="fa fa-pinterest-p w3-hover-opacity"></i> <i
			class="fa fa-twitter w3-hover-opacity"></i> <i
			class="fa fa-linkedin w3-hover-opacity"></i>
		<p>
			Powered by <a href="https://www.w3schools.com/w3css/default.asp"
				target="_blank">w3.css</a>
		</p>
	</footer>

</body>
</html>
