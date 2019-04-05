<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isErrorPage="true"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="If=edge">
<meta name="viewport" content="width-device-width,initial-scale=1">
<title>Exception Page</title>
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

		<!-- ROW2 STARTS -->
			<%@ include file="navbar2.jsp" %>
		<!-- ROW 2 ENDS -->

	<br>
		



		<!-- ROW3 STARTS -->
		<div class="row row3"
			style="background-image: url(images/texture-bw.png)">
			<br>

			<!-- COL1 STARTS -->
			<div class="col-md-4 cc">
				<b class="lbl1">ERROR PAGE</b> <br>
			</div>
			<!-- COL1 ENDS -->


			<!-- COL2 STARTS -->
			<div class="col-md-4 ccrr">
				<h5>
					<a class="links">HOME</a> / ERROR PAGE
				</h5>
				<br>
			</div>
			<!-- COL2 ENDS -->

			<br> <br>

		</div>
		<!-- ROW 3 ENDS -->




		<br> <br>

		<!-- ROW 4 STARTS -->
		<div class="row">
			<div class="md-col-10 ccrm">
				<br /> <br />
				<hr>
				<span class="top_text"><strong>Sorry for the
						inconvenience - The Page you are looking for have a Technical
						Error </strong></span> <br /> <span class="normal_text">Kindly proceed to
					the Home page or Report this issue to Website Administrator with
					the Description mentioned below:</span> <br /> <br />

				<div class="row cccrr">
					<center>
						<div class="col-md-4 cc">
							<form action="HomePage.jsp" method="get">
								<button type="submit" class="sub40">
									<span class="glyphicon glyphicon-home"></span> Home
								</button>
							</form>
						</div>
						<div class="col-md-1">
							<form action="report" method="post">
								<button type="submit" class="sub42">
									<span class="glyphicon glyphicon-eye-close"></span>Report
								</button>
							</form>
						</div>
					</center>
				</div>
				<hr>
			</div>
			<br>
			<div class="row">
				<div class="col-md-8 ccrm">
					<%
							StringWriter sw = new StringWriter();
 							PrintWriter pw = new PrintWriter(sw);
 							exception.printStackTrace(pw);
 							String report = sw.toString(); // stack trace as a string
 							//System.out.println(excep); 
 							session.setAttribute("report",report);
 				%>

					<div class="alert alert-danger" role="alert">
						<%= session.getAttribute("report")%>
					</div>
					<%
					if(!session.isNew())
						 					{
									 	String c;
					 					 c=(String)session.getAttribute("check");
										if(c!=null)
										{
					 		if (c =="failreport") {
				%>
					<div class="alert alert-danger fade in">Cannot Send Report</div>
					<%
					}
							if (c == "successreport") {
				%>
					<div class="alert alert-success">Reported Bug Successfully</div>
					<%
					}

						}
					session.setAttribute("check",null);
					}
				%>
				</div>
			</div>

		</div>

		<!-- ROW 4 ENDS -->

		<!-- ROW6 STARTS -->
		<div class="row row1">
			<br> <br>

			<!-- COL1 STARTS -->
			<div class="col-md-3 cc">
				<b>About Us</b>
				<p class="mrsil">sjjjndjsjkds dsjdksbhbsd ndsjdksbbdskbs
					sjjjndjsjkds dsjdksbhbsd ndsjdksbbdskbs sjjjndjsjkds dsjdksbhbsd
					ndsjdksbbdskbs</p>
				<hr width="100%">
				<b>Join Our Monthly Newsletter</b><br> <input type="text"
					size="30">
				<button class="button2 send">
					<span class="glyphicon glyphicon-send"></span>
				</button>
				<br> <br>
			</div>
			<!-- COL1 ENDS -->

			<!-- COL2 STARTS -->
			<div class="col-md-3">
				<b>BLOG<br> <br> <img src="images/detailsquare1.jpg"
					height="40" width="40">&nbsp;&nbsp; BLOG POST NAME<br> <br>
					<img src="images/detailsquare2.jpg" height="40" width="40">&nbsp;&nbsp;
					BLOG POST NAME<br> <br> <img
					src="images/detailsquare3.jpg" height="40" width="40">&nbsp;&nbsp;
					VERY VERY LONG BLOG POST NAME<br> <br></b>
			</div>
			<!-- COL2 ENDS -->

			<!-- COL3 STARTS -->
			<div class="col-md-2">
				<b>Contact</b> <br>
				<p class="mrsil">
					TechAspect Solutions Pvt Ltd<br>3rd floor, N Heights, Plot no
					38, Hitech City Phase II,<br> Madhapur, Hyderabad, Telangana<br>India,
					Tel : +91 40 66217777
				</p>
				<br>
				<button class="button2 butt">GO TO CONTACT PAGE</button>
			</div>
			<!-- COL3 ENDS -->

			<!-- COL4 STARTS -->
			<div class="col-md-3">
				<img src="images/detailsquare1.jpg" height="75" width="75">
				&nbsp; <img src="images/detailsquare2.jpg" height="75" width="75">&nbsp;
				<img src="images/detailsquare3.jpg" height="75" width="75">
				&nbsp; <br> <br> <img src="images/detailsquare1.jpg"
					height="75" width="75"> &nbsp; <img
					src="images/detailsquare2.jpg" height="75" width="75">&nbsp;
				<img src="images/detailsquare3.jpg" height="75" width="75">
				&nbsp;
			</div>
			<!-- COL4 ENDS -->

		</div>
		<!-- ROW6 ENDS -->



		<!-- ROW7 STARTS -->
		<div class="row last">





			<!-- COL1 STARTS -->
			<div div class="col-md-3 cc">
				<br>
				<p style="color: white;">
					<span class="glyphicon glyphicon-copyright-mark"> 2018</span>
					TechAspect Solutions Private Limited
			</div>
			<!-- COL1 ENDS -->


		</div>
		<!-- ROW6 ENDS -->


	</div>
	<!-- CONTAINER CLASS ENDS -->

	<script src="js/jquery-3.3.1.js"></script>
	<!-- JQUERY JAVASCRIPT -->

	<script src="bootstrap/js/bootstrap.js"></script>
	<!-- BOOTSTRAP JAVASCRIPT  -->

</body>
<!-- BODY ENDS -->

</html>
