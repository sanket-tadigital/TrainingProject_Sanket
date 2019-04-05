<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.tadigital.ecommerce.customer.entity.Customer"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="If=edge">
<meta name="viewport" content="width-device-width,initial-scale=1">
<title>ACCOUNT</title>
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
	<%
		String c = (String) session.getAttribute("check");
		if (c != null) {
			if (c == "successlogin" && session.isNew()) {
				out.print("<script language='javascript'>window.alert('Welcome Back')</script>");
			}
		}
	%>
	<!-- CONTAINER STARTS -->
	<div class="container-fluid">

		<!-- ROW1 STARTS -->
			<%
			session.setAttribute("filenames","Home-My Orders");
			%>
			<%@ include file="navbar1.jsp" %>
		<!-- ROW 1 ENDS -->



		<!-- ROW 2 STARTS -->
			<%@ include file="navbar2.jsp" %>
		<!-- ROW2 ENDS -->



		<!-- ROW3 STARTS -->
		<div class="row row3"
			style="background-image: url(images/texture-bw.png)">
			<br>

			<!-- COL1 STARTS -->
			<div class="col-md-4 cc">
				<b class="lbl1">MY ACCOUNT</b> <br>
			</div>
			<!-- COL1 ENDS -->


			<!-- COL2 STARTS -->
			<div class="col-md-4 ccrr">
				<h5>
					<a class="links">HOME</a> / ACCOUNT
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
				<div class="row">
					<form name="passwordchange" action="passwordchange" method="post">
						<br>
						<h3 class="mrgrey">
							Change your personal details or your password here.
							</h2>
							<br> <br>
							<p class="lbl4">Pefenjnde fejnidewf ejfnjewfwef enfewieine
								jenjdiweod.
							<hr></hr>
							<h3>CHANGE PASSWORD</h3>
							<hr class="hrrule">
							<br> <br> <br>

							<!-- INNER ROW1 STARTS -->
							<div class="row">

								<!-- INNER COL1 STARTS -->
								<div class="col-md-6 mrgrey">
									Old Password<br> <input type="text" name="t1"
										class="form-control" size="100">
								</div>
								<!-- INNER COL1 ENDS -->

								<!-- INNER COL2 STARTS -->
								<div class="col-md-6 mrgrey">
									<p></p>
								</div>
								<br> <br>
								<!-- INNER COL2 ENDS -->
								<br> <br>
							</div>
							<!-- INNER ROW1 ENDS -->

							<!-- INNER ROW2 STARTS -->
							<div class="row">

								<!-- INNER COL1 STARTS -->
								<div class="col-md-6 mrgrey">
									New Password<br> <input type="text" name="t2"
										class="form-control" size="100">
								</div>
								<!-- INNER COL1 ENDS -->

								<!-- INNER COL2 STARTS -->
								<div class="col-md-6 mrgrey">
									Retype New Password<br> <input type="text" name="t3"
										class="form-control" size="100">

								</div>
								<!-- INNER COL2 ENDS -->

								<br> <br>
							</div>
							<!-- INNER ROW2 ENDS -->

							<!-- INNER ROW3 STARTS -->
							<div class="row">

								<!-- INNER COL1 STARTS -->
								<div class="col-md-12 cc">
									<br>
									<button type="submit" class="sub40">
										<span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;&nbsp;SAVE
										MY PASSWORD
									</button>
									<br>
									<hr>
								</div>


								<!-- INNER COL1 ENDS -->

							</div>
							<!-- INNER ROW3 ENDS -->
					</form>
				</div>
				<%
					String d = (String) session.getAttribute("check");
					if (d != null) {
						if (d == "changesuccess") {
				%>
				<div class="alert alert-success">Update Successful</div>
				<%
					}
						if (d == "changefail") {
				%>
				<div class="alert alert-danger fade in">Update Failed</div>
				<%
					}

					}
				%>
				<br> <br>

				<div class="row">
					<form name="accdetail" action="updateprofile" method="post">
						<h3>PERSONAL DETAILS</h3>
						<hr class="hrrule"></hr>
						<br> <br> <br>

						<!-- INNER ROW1 STARTS -->
						<div class="row mrgrey">

							<!-- INNER COL1 STARTS -->
							<div class="col-md-6">
								First Name<br> <input type="text" name="f1"
									value="<%Customer customer = (Customer) session.getAttribute("CUSTOMERDATA");
			out.println(customer.getfname());%>"
									readonly="readonly" class="form-control" size="100">
							</div>
							<!-- INNER COL1 ENDS -->

							<!-- INNER COL2 STARTS -->
							<div class="col-md-6">
								Last Name<br> <input type="text" name="f2"
									value="<%=customer.getlname()%>" readonly="readonly"
									class="form-control" size="100">
							</div>
							<!-- INNER COL2 ENDS -->
							<br> <br>
						</div>
						<!-- INNER ROW 1 ENDS -->

						<br>

						<!-- INNER ROW2 STARTS -->
						<div class="row mrgrey">

							<!-- INNER COL1 STARTS -->
							<div class="col-md-6">
								Gender<br>
								<div class="radio">
									<label><input type="radio" name="f3" value="male">Male</label>
								</div>
								<div class="radio">
									<label><input type="radio" name="f3" value="female">Female</label>
								</div>
								<div class="radio disabled">
									<label><input type="radio" name="f3"
										value="transgender">Transgender</label>
								</div>
							</div>
							<!-- INNER COL1 ENDS -->
						</div>
						<!-- INNER ROW2 ENDS -->

						<br>

						<!-- INNER ROW3 STARTS -->
						<div class="row mrgrey">

							<!-- INNER COL1 STARTS -->
							<div class="col-md-12">
								Address<br>
								<textarea class="form-control" name="f4" size="100"></textarea>
								<br>
							</div>
							<!-- INNER COL1 ENDS -->


						</div>
						<!-- INNER ROW3 ENDS -->

						<br>

						<!-- INNER ROW4 STARTS -->
						<div class="row mrgrey">

							<!-- INNER COL1 STARTS -->
							<div class="col-md-3">
								CITY<br> <input type="text" class="form-control" name="f5"
									size="100">
							</div>
							<!-- INNER COL1 ENDS -->

							<!-- INNER COL2 STARTS -->
							<div class="col-md-3">
								ZIP<br> <input type="text" class="form-control" name="f6"
									size="100">
							</div>
							<!-- INNER COL2 ENDS -->


							<!-- INNER COL3 STARTS -->
							<div class="col-md-3">
								State<br>
								<div class="dropdown">
									<select name="f7">
										<option>Telangana</option>
										<option>Delhi</option>
										<option>Detroit</option>
										<option>others</option>
									</select>
								</div>
							</div>
							<!-- INNER COL3 ENDS -->

							<!-- INNER COL4 STARTS -->
							<div class="col-md-3">
								Country<br>
								<div class="dropdown">

									<select name="f8">
										<option>India</option>
										<option>USA</option>
										<option>UK</option>
									</select>
								</div>
							</div>
							<!-- INNER COL4 ENDS -->
							<br> <br> <br>
						</div>
						<!-- INNER ROW 4 ENDS -->

						<br>

						<!-- INNER ROW5 STARTS -->
						<div class="row mrgrey">

							<!-- INNER COL1 STARTS -->
							<div class="col-md-6">
								Contact Number<br> <input type="text" name="f9"
									class="form-control" size="100">
							</div>
							<!-- INNER COL1 ENDS -->

							<!-- INNER COL2 STARTS -->
							<div class="col-md-6">
								Email<br> <input type="text" name="f10"
									value="<%=customer.getemail()%>" readonly="readonly"
									class="form-control" size="100">
							</div>
							<!-- INNER COL2 ENDS -->
							<br> <br>
						</div>
						<!-- INNER ROW 5 ENDS -->

						<!-- INNER ROW6 STARTS -->
						<div class="row">

							<!-- INNER COL1 STARTS -->
							<div class="col-md-12 cc">
								<br>
								<button type="submit" class="sub40">
									<span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;&nbsp;SAVE
									CHANGES
								</button>
								<br>
								<hr>
							</div>

							<!-- INNER COL1 ENDS -->

						</div>
						<div class="row">
							<%
								String da = (String) session.getAttribute("check");
								if (da != null) {
									if (da == "successupdate") {
							%>
							<div class="alert alert-success">Update Successful</div>
							<%
								}
									if (da == "failupdate") {
							%>
							<div class="alert alert-danger fade in">Update Failed</div>
							<%
								}

								}
							%>
						</div>
						<!-- INNER ROW6 ENDS -->
					</form>
				</div>
			</div>
			<!-- COL1 ENDS -->

			<!-- COL2 STARTS -->
			<div class="col-md-2 row4">
				<br> <br>

				<!-- INNER ROW1 STARTS -->
				<div class="row">
					<H4>
						<b>CUSTOMER SECTION</b>
					</H4>
				</div>
				<!-- INNER ROW1 STARTS -->

				<!-- INNER ROW2 STARTS -->
				<div class="row">
					<hr class="hrrule2">
				</div>
				<!-- INNER ROW2 ENDS -->

				<!-- INNER ROW3 STARTS -->
				<div class="row">
					<div class="vertical-menu">
						<a href="CustomerOrders.jsp"><span
							class="glyphicon glyphicon-list"></span>&nbsp;My Order</a> <a
							href="CustomerWishList.jsp"><span class="glyphicon glyphicon-heart"></span>&nbsp;My
							Wishlist</a> <a href="CustomerAccount.jsp" class="active"><span class="glyphicon glyphicon-user"></span>&nbsp;My
							Account</a> <a href="logout"><span
							class="glyphicon glyphicon-log-out"></span>&nbsp;Logout</a>
					</div>
				</div>
				<!-- INNER ROW3 STARTS -->

			</div>
			<!-- COL2 ENDS -->

		</div>
		<!-- ROW4 ENDS -->

			<!-- ROW4 ENDS -->
	
	<!-- ROW5 STARTS -->
	<%@ include file="footer1.jsp" %>
	<!-- ROW5 ENDS -->
	
	<!-- ROW5 STARTS -->
	<%@ include file="footer2.jsp" %>
	<!-- ROW5 ENDS -->


	</div>
	<!-- CONTAINER CLASS ENDS -->

	<script src="js/jquery-3.3.1.js"></script>
	<!-- JQUERY JAVASCRIPT -->

	<script src="bootstrap/js/bootstrap.js"></script>
	<!-- BOOTSTRAP JAVASCRIPT  -->

</body>
<!-- BODY ENDS -->

</html>
