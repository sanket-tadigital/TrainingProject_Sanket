<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="If=edge">
<meta name="viewport" content="width-device-width,initial-scale=1">
<title>SignInSignUp</title>

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

<%
	//READ COOKIES FROM REQUEST
	Cookie[] allCookies = request.getCookies();
	if (allCookies != null) {
		//SEARCH YOUR WEBSITE COOKIE
		for (Cookie cookie : allCookies) {
			String cName = cookie.getName();
			if (cName.equals("stayin")) {
				String cValue = cookie.getValue();
				session.setAttribute("COOKIEVALUE", cValue);
				response.sendRedirect("loginnn");
				break;
			}
		}
	}
%>

<!-- BODY STARTS -->
<body>
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


	<br>


	<!-- ROW3 STARTS -->
	<div class="row row3"
		style="background-image: url(images/texture-bw.png)">
		<br>

		<!-- COL1 STARTS -->
		<div class="col-md-4 cc">
			<b class="lbl1">NEW ACCOUNT/ SIGN IN</b> <br>
		</div>
		<!-- COL1 ENDS -->


		<!-- COL2 STARTS -->
		<div class="col-md-4 ccrr">
			<h5>
				<a class="links">HOME</a> / NEW ACCOUNT / SIGN IN
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
		<div class="col-md-4 cc">
			<br> <br> <br>
			<hr width="100%">
			<h2>NEW ACCOUNT</h2>
			<p class="lbl3">
				Not our registered customer yet? <br> <br> With
				registration with us new world of fashion, fanstastic discounts and
				much more opens to you! The whole process will not take you more
				than a minute!
			</p>
			<br> <br>
			<form action="register" method="post">
				<p class="lbl4">If you have any questions, please feel free to
					contact us, our customer service center is working for you 24/7.
				<hr width="100%">
				Name<br> <br> <input type="text" name="f1"
					class="form-control" size="50"> <br> <br> Email<br>
				<br> <input type="textbox" name="f2" class="form-control"
					size="50"> <br> <br> Password<br> <br>
				<input type="password" name="f3" class="form-control" size="50">
				<br> <br>
				<button type="submit" class="sub40">
					<span class="glyphicon">&#xe008;</span>&nbsp;&nbsp;REGISTER
				</button>
				</p>

				<%
					if (!session.isNew()) {
						String c;
						c = (String) session.getAttribute("check");
						if (c != null) {
							if (c == "failregister") {
				%>
				<div class="alert alert-danger fade in">Registration Failed</div>
				<%
					}
							if (c == "successregister") {
				%>
				<div class="alert alert-success">Registration Successful</div>
				<%
					}

						}
					}
				%>

			</form>
			<hr width="100%">
		</div>
		<!-- COL1 ENDS -->

		<!-- COL2 STARTS -->
		<div class="col-md-4 row4">
			<br> <br> <br>
			<hr width="100%">
			<h2>SIGN IN</h2>
			<p class="lbl3">Already a customer?</p>
			<br> <br>
			<form action="loginnn" method="post">
				<p class="lbl4">
					Get access to your Order, Wishlist and Recommendation. <br> <br>
					Email<br> <br> <input type="textbox" class="form-control"
						size="50" name="f1"> <br> <br> Password<br>
					<br> <input type="password" class="form-control" size="50"
						name="f2"> <br> <input type="checkbox" name="f3"
						value="yes">Stay Signed In <br>
					<button type="submit" class="sub40">
						<span class="glyphicon">&#xe161;</span>&nbsp;&nbsp;LOG IN
					</button>
				</p>
				<%
					if (!session.isNew()) {
						String c;
						c = (String) session.getAttribute("check");
						if (c != null) {
							if (c == "faillogin") {
				%>
				<div class="alert alert-danger fade in">Invalid Credentials</div>
				<%
					}
						}
					}
				%>
			</form>
			<br>
			<hr width="100%">
		</div>
		<!-- COL2 ENDS -->

	</div>
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
