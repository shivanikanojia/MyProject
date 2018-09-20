<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!--

Referenced from:- http://nicesnippets.com/snippet/bootstrap-4-login-page-design-with-jquery-validation 

 -->


<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<link rel="stylesheet" type="text/css" href="CSS/Login.css">
<link href="https://fonts.googleapis.com/css?family=Saira+Condensed"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script src="JAVASCRIPT/Login.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="offset-lg-4 col-lg-4 login-part p-3 rounded">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-12 text-center">
						<img
							src="https://cdn1.iconfinder.com/data/icons/user-pictures/100/supportmale-512.png"
							class="w-25 border border-success rounded-circle">
					</div>
					<div class="col-lg-12 col-md-12 col-12">
						<h3 class="text-center text-white">Login</h3>
					</div>
					<div class="col-lg-12 col-md-12 col-12 form-part">
						<form class="needs-validation" novalidate action="Login" method="post">
							<div class="form-row">
								<div class="col-lg-12 col-md-12 col-12">
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text">
												<i class="fa fa-user"></i>
											</div>
										</div>
										<input type="text" id="textfield" class="form-control"
											placeholder="Username"
											aria-describedby="validationTooltipUsernamePrepend"
											autocomplete="off" name="username" required >
										<div class="invalid-tooltip">Please choose a unique and
											valid username.</div>
										<button type="button"
											class="btn btn-defualt txt-btn txt-remove-btn"
											onclick="ClearFields();">
											<i class="fa fa-times-circle"></i>
										</button>
									</div>
								</div>
								<div class="col-lg-12 col-md-12 col-12">
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text">
												<i class="fa fa-lock"></i>
											</div>
										</div>
										<input type="password" class="form-control pwd"
											placeholder="Password"
											aria-describedby="validationTooltipUsernamePrepend" name="password" required>
										<div class="invalid-tooltip">Please choose a unique and
											valid password.</div>
										<button class="btn btn-default txt-btn pwd-btn" type="button">
											<i class="fa fa-eye" aria-hidden="true"></i>
										</button>
									</div>
								</div>
								<div class="col-lg-12 col-md-12 col-12">
									<div class="form-check">
										 <a href="Registration.jsp" class="float-right">Register
											Now? </a>
									</div>
								</div>
								<div class="col-lg-12 col-md-12 col-12">
									<button type="submit"
										class="btn btn-success btn-block submit-btn">Submit</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>