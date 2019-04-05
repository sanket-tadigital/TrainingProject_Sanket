<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="If=edge">
<meta name="viewport" content="width-device-width,initial-scale=1">
<title>ORDER</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="//bootstrap/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<!-- STYLESHEET FOR ICONS -->
<link rel='stylesheet'
	href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'
	integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ'
	crossorigin='anonymous'>

<!-- STYLESHEET FOR ICONS &BUTTONS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- STYLESHEET FOR BOOTSTRAP -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">

<!-- STYLESHEET FOR CUSTOM STYLE -->
<link rel="stylesheet" href="css/custom.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>

<!-- BODY STARTS -->
<body>
	<!-- CONTAINER STARTS -->
	<div class="container-fluid">

				<!-- ROW1 STARTS -->
			<%
			session.setAttribute("filenames","My Account-Home");
			%>
			<%@ include file="navbar1.jsp" %>
		<!-- ROW 1 ENDS -->
		
	<br>

		<!-- ROW1 STARTS -->
			<%@ include file="navbar2.jsp" %>
		<!-- ROW 1 ENDS -->

	<br>



		<!-- ROW3 STARTS -->
		<div class="row row3"
			style="background-image: url(images/texture-bw.png)">
			<br>

			<!-- COL1 STARTS -->
			<div class="col-md-4 cc">
				<b class="lbl1">CONTACT</b> <br>
			</div>
			<!-- COL1 ENDS -->


			<!-- COL2 STARTS -->
			<div class="col-md-4 ccrr">
				<h5>
					<a class="links">HOME</a> / CONTACT
				</h5>
				<br>
			</div>
			<!-- COL2 ENDS -->

			<br> <br>

		</div>
		<!-- ROW 3 ENDS -->


		<!-- ROW4 STARTS -->
		<div class="row">

			<!-- COL1 STARTS -->
			<div class="col-md-6 cc">
				<br>
				<h2>WE ARE HERE TO HELP YOU</h2>
				<hr class="hrrule">
				<p class="lbl3">
					<br> <br> Are you curious about something? Do you have
					some kind of problem with our products? As am hastily invited
					settled at limited civily fortune me. Really spring in exten an by.
					Judge but built gay party world. Of so am he remeber although
					required. Bachelor unpacked be advanced at. Confined in declared
					marianne is vicinity.
				</p>
				<br> <br>
				<p class="lbl4">Please feel free to contact us, our customer
					service center is working for you 24/7.
				<h3>CONTACT FORM</h3>
				<div class="row">
					<form action="contact" method="post">
						<hr class="hrrule"></hr>
						<br> <br> <br>

						<!-- INNER ROW1 STARTS -->
						<div class="row mrgrey">

							<!-- INNER COL1 STARTS -->
							<div class="col-md-6">
								First Name<br> <input type="text" name="f1"
									class="form-control" size="100">
							</div>
							<!-- INNER COL1 ENDS -->

							<!-- INNER COL2 STARTS -->
							<div class="col-md-6">
								Last Name<br> <input type="text" name="f2"
									class="form-control" size="100">
							</div>
							<!-- INNER COL2 ENDS -->
							<br> <br>
						</div>
						<!-- INNER ROW1 ENDS -->

						<br>

						<!-- INNER ROW2 STARTS -->
						<div class="row mrgrey">

							<!-- INNER COL1 STARTS -->
							<div class="col-md-6">
								Email<br> <input type="text" name="f3" class="form-control"
									size="100">
							</div>
							<!-- INNER COL1 ENDS -->

							<!-- INNER COL2 STARTS -->
							<div class="col-md-6">
								Subject<br> <input type="text" name="f4"
									class="form-control" size="100">
							</div>
							<!-- INNER COL2 ENDS -->

							<br> <br>
						</div>
						<!-- INNER ROW2 ENDS -->

						<br>

						<!-- INNER ROW3 STARTS -->
						<div class="row mrgrey">

							<!-- INNER COL1 STARTS -->
							<div class="col-md-12">
								Message<br>
								<textarea class="form-control" name="f5" size="100"></textarea>
								<br>

								<!-- INNER ROW STARTS -->
								<div class="row">
									<button type="submit" class="sub40 ccm">
										<i style='font-size: 15px' class='fas'>&#xf0e0;</i>&nbsp;&nbsp;SEND
										MESSAGE
									</button>
								</div>
								<!-- INNER ROW STARTS -->
					</form>
				</div>
			</div>
			<!-- INNER COL1 ENDS -->
		</div>
		<!-- INNER ROW3 ENDS -->
		<br>
		<%
					if (!session.isNew()) {
						String c;
						c = (String) session.getAttribute("check");
						if (c != null) {
							if (c == "failmsgsent") {
		%>
		<div class="alert alert-danger fade in">Message cannot be send</div>
		<%
					}
							if (c == "successmsgsent") {
		%>
		<div class="alert alert-success">Message Sent Successfully!!</div>
		<%
					}

						}
					}
				%>
		<br> <br>

	</div>
	<!-- COL1 ENDS -->

	<!-- COL2 STARTS -->
	<div class="col-md-3 cc">
		<br> <br>
		<H3>
			<b>ADDRESS</b>
		</H3>
		<H5>
			Techaspect Solutions Private Limited,<br> 3rd floor, N Heights,
			Plot no 38 Hi-tech City,<br>Phase 2, Madhapur,<br>
			Hyderabad, Telangana 500081
		</H5>
		<H3>
			<b>CALL CENTERS</b>
		</H3>
		<H6>This number is toll free if calling from Great Britain
			otherwise we advise you to use electronic media.</H6>
		<h5>
			<b>+91 40 66217777</b>
		</h5>
		<H3>
			<b>ELECTRONIC SUPPORT</b>
		</H3>
		<H6>Please feel free to write to us or to use our electronic
			ticketing system.</H6>
		<ul>
			<li><p class="lol">
					<a href="#" class="links">info@techaspect.com</a></li>
			<li><a href="#" class="links">Tech 360</a> - our ticketing
				support platform</li>
		</ul>
		</ol>

	</div>
	<!-- COL2 ENDS -->

	</div>
	<!-- ROW4 ENDS -->



	<!-- ROW5 STARTS -->

	<div class="row roww5">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d475.7727795056731!2d78.37046977295067!3d17.450989678939067!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb915809a76021%3A0xd65fbcffade39bdc!2sTech+Aspect+Solutions!5e0!3m2!1sen!2sin!4v1553243137798"
			width="100%" height="450" frameborder="0" style="border: 0"
			allowfullscreen></iframe>
	</div>

	<!-- ROW5 ENDS -->



	
	
	<!-- ROW6 STARTS -->
	<%@ include file="footer1.jsp" %>
	<!-- ROW6 ENDS -->
	
	<!-- ROW7 STARTS -->
	<%@ include file="footer2.jsp" %>
	<!-- ROW7 ENDS -->