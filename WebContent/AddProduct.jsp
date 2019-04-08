<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="If=edge">
<meta name="viewport" content="width-device-width,initial-scale=1">
<title>AddProduct</title>

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
			session.setAttribute("filenames", "Home-DashBoard");
		%>
		<%@ include file="navbar1.jsp"%>
		<!-- ROW 1 ENDS -->



		<!-- ROW 2 STARTS -->
		<%@ include file="navbar2.jsp"%>
		<!-- ROW2 ENDS -->


		<br>


		<!-- ROW3 STARTS -->
		<div class="row row3"
			style="background-image: url(images/texture-bw.png)">
			<br>

			<!-- COL1 STARTS -->
			<div class="col-md-4 cc">
				<b class="lbl1">ADD PRODUCT</b> <br>
			</div>
			<!-- COL1 ENDS -->


			<!-- COL2 STARTS -->
			<div class="col-md-4 ccrr">
				<h5>
					<a class="links">HOME</a> / DASHBOARD / ADD PRODUCT
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
			<div class="col-md-10 cc">
				<br> <br> <br>
				<hr width="100%">
				<h2>ADD NEW PRODUCT</h2>
				<p class="lbl3">Fill up all the details</p>
				<br>
				<div class="row">
					<form action="addProduct" method="post">
						<p class="lbl4">
							If you have any questions, please feel free to <a
								href="Contact.jsp" class="links">contact us</a>, our customer
							service center is working for you 24/7.
						<hr width="100%">
						<div class="row">

							<div class="row">
								<div class="col-md-5">Category:</div>
								<div class="col-md-5">Sub Category:</div>

							</div>
							<div class="row">
								<div class="col-md-5">
									<select class="form-control" name="f1">
										<option>Electronics</option>
										<option>Mens</option>
										<option>Women</option>
										<option>Baby & Kids</option>
										<option>Home & Furniture</option>
									</select>
								</div>
								<div class="col-md-5">

									<input type="text" name="f2" class="form-control">
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-5">Name:</div>
								<div class="col-md-5">Price:</div>
							</div>
							<div class="row">
								<div class="col-md-5">
									<input type="text" name="f3" class="form-control">
								</div>
								<div class="col-md-5">
									<input type="number" name="f5" class="form-control">
								</div>
								<br>
							</div>
							<br>
								<div class="row">
									<div class="col-md-10">
										Description<br>
									</div>
								</div>
								<div class="row">
									<div class="col-md-10">
										<textarea name="f4" class="form-control" rows="3" cols="30"></textarea>
									</div>
								</div>
							<br>
							<div class="row">
								<div class="col-md-2">
									Picture 1<br> <input type="file" name="f6"
										class="form-control">
								</div>
								<div class="col-md-2">
									Picture 2<br> <input type="file" name="f6"
										class="form-control">
								</div>
								<div class="col-md-2">
									Picture 3<br> <input type="file" name="f6"
										class="form-control">
								</div>
								<div class="col-md-2">
									Picture 4<br> <input type="file" name="f6"
										class="form-control">
								</div>
								<div class="col-md-2">
									Picture 5<br> <input type="file" name="f6"
										class="form-control">
								</div>

							</div>
							<br>
							<button type="submit" class="sub40">
								<span class="glyphicon">&#xe008;</span>&nbsp;&nbsp;ADD PRODUCT
							</button>


							<%
								if (!session.isNew()) {
									String c;
									c = (String) session.getAttribute("check");
									if (c != null) {
										if (c == "failaddproduct") {
							%>
							<div class="alert alert-danger fade in">Product Cannot be
								Added</div>
							<%
								}
										if (c == "successaddproduct") {
							%>
							<div class="alert alert-success">Product Added Successfully</div>
							<%
					}

						}
					}
				%>
						
					</form>
					<hr width="100%">
				</div>
			</div>
			<!-- COL1 ENDS -->
</body>
</html>