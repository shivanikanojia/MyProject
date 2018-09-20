<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

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


<link rel="stylesheet" type="tex/css" href="CSS/style.css">
<link rel="stylesheet" type="text/css" href="CSS/ImageUpload.css">
<link rel="stylesheet" type="text/css" href="CSS/Address.css">

<script src="JAVASCRIPT/style.js"></script>
<script src="JAVASCRIPT/ImageUpload.js"></script>
<script src="JAVASCRIPT/Address.js"></script>

<title>Registration</title>

</head>

<body>

	<div class="container">
		<div class="row">
			<section>
				<div class="wizard">
					<div class="wizard-inner">
						<div class="connecting-line"></div>
						<ul class="nav nav-tabs" role="tablist">

							<li role="presentation" class="active"><a href="#step1"
								data-toggle="tab" aria-controls="step1" role="tab"
								title="Step 1"> <span class="round-tab"> <i
										class="glyphicon glyphicon-folder-open"></i>

								</span>
							</a></li>

							<li role="presentation" class="disabled"><a href="#step2"
								data-toggle="tab" aria-controls="step2" role="tab"
								title="Step 2"> <span class="round-tab"> <i
										class="glyphicon glyphicon-pencil"></i>
								</span>
							</a></li>
							<li role="presentation" class="disabled"><a href="#step3"
								data-toggle="tab" aria-controls="step3" role="tab"
								title="Step 3"> <span class="round-tab"> <i
										class="glyphicon glyphicon-picture"></i>
								</span>
							</a></li>

							<li role="presentation" class="disabled"><a href="#complete"
								data-toggle="tab" aria-controls="complete" role="tab"
								title="Complete"> <span class="round-tab"> <i
										class="glyphicon glyphicon-ok"></i>
								</span>
							</a></li>
						</ul>
					</div>


					<div role="form">
						<div class="tab-content">
							<form class="tab-pane active" role="tabpanel" id="step1"
								method="post" action="DataController">
								<h3>Step 1</h3>

								<p>Personal Details</p>

								<div class="form-group">
									<div class="pull-left">
										<span style="color: red">*</span> <label for="firstname">First
											Name:</label> <input type="text" class="form-control"
											name="firstname" required> <span style="color: red">*</span>
										<label for="lastname">Last Name:</label> <input type="text"
											class="form-control" name="lastname" required> <span
											style="color: red">*</span> <label for="username">User
											Name:</label> <input type="text" class="form-control" name="username"
											required> <span style="color: red">*</span> <label
											for="password">Password:</label> <input type="password"
											class="form-control" name="password" required> <span
											style="color: red">*</span> <label for="email">Email:</label>
										<input type="email" class="form-control" name="email" required>

										<span style="color: red">*</span> <label for="contact">Contact
											Number:</label> <input type="number" class="form-control"
											name="contact" required> <span style="color: red">*</span>
										<label for="gender">Gender:</label> <span class="radio-inline">
											<input type="radio" name="gender" value="Male">Male
										</span> <span class="radio-inline"> <input type="radio"
											name="gender" value="Female">Female
										</span><br /> <span style="color: red">*</span> <label for="Date">DOB:</label>
										<input type="text" class="form-control" name="date" id="date"
											required>

									</div>
								</div>


								<ul class="list-inline pull-right">
									<li><input type="submit" class="btn btn-primary"
										value="Save"></li>
									<li><button type="button"
											class="btn btn-primary next-step">Continue</button></li>
								</ul>
							</form>

							<form method="post" action="AddressController" class="tab-pane"
								role="tabpanel" id="step2">
								<h3>Step 2</h3>

								<p>Residential Detail</p>

								<div class="form-group">
									<p id="addMore">

										<label for="Flat Number">Flat Number:</label> <input
											type="text" placeholder="Enter Flat number" name="flatno"
											class="form-control input"><br> <label
											for="Flat Name">Flat Name:</label> <input type="text"
											placeholder="Enter Flat Name" name="flatname"
											class="form-control input"><br> <label
											for="Area">Area:</label> <input type="text"
											placeholder="Enter Area" name="area"
											class="form-control input"><br> <label
											for="Landmark">Landmark:</label> <input type="text"
											placeholder="Enter Landmark" name="landmark"
											class="form-control input"><br> <label
											for="City">City:</label> <input type="text"
											placeholder="Enter City" name="city"
											class="form-control input"><br> <label
											for="State">State:</label> <input type="text"
											placeholder="Enter State" name="state"
											class="form-control input"><br> <label
											for="Country">Country:</label> <input type="text"
											placeholder="Enter Country" name="country"
											class="form-control input"><br> <label
											for="Pin Code">Pin Code:</label> <input type="text"
											placeholder="Enter Pin Code" class="form-control input"
											name="pincode" class="from-control"> <br>
									</p>

								</div>

								<ul class="list-inline pull-right">

									<li><button type="button"
											class="btn btn-default prev-step">Previous</button></li>
									<li><input type="submit" class="btn btn-primary"
										value="Save"></li>
									<li><button type="button"
											class="btn btn-primary next-step">Continue</button></li>

								</ul>
							</form>


							<form class="tab-pane" role="tabpanel" id="step3" method="post"
								action="ImageController" enctype="multipart/form-data">
								<h3>Step 3</h3>

								<p>Display Picture</p>

								<div class="field" align="left">
									<h3>Upload your images</h3>
									<input type="file" id="files" name="files" multiple />
								</div>

								<ul class="list-inline pull-right">
									<li><button type="button"
											class="btn btn-default prev-step">Previous</button></li>
									<li><input type="submit" class="btn btn-primary"
										value="Save"></li>
									<li><button type="button"
											class="btn btn-primary btn-info-full next-step">Continue</button></li>
								</ul>
							</form>

							<div class="tab-pane" role="tabpanel" id="complete">
								<h3>Step 4</h3>
								<p>Confirmation</p>
							</div>

							<div class="clearfix"></div>

						</div>

					</div>

				</div>

			</section>
		</div>
	</div>


	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-36251023-1' ]);
		_gaq.push([ '_setDomainName', 'jqueryscript.net' ]);
		_gaq.push([ '_trackPageview' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'http://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();

		$(function() {
			$("#date").datepicker({
				format : 'mm-dd-yyyy'
			});
		});
	</script>
</body>
</html>