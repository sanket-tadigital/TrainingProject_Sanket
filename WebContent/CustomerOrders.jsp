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
			<div class="row row3" style="background-image:url(images/texture-bw.png)">
				<br>
				
				<!-- COL1 STARTS -->
				<div class="col-md-4 cc">
					<b class="lbl1">MY ORDER</b>
					<br>
				</div>
				<!-- COL1 ENDS -->
				
				
				<!-- COL2 STARTS -->
				<div class="col-md-4 ccrr">
					<h5><a class="links">HOME</a> / MY ORDERS</h5>
					<br>
				</div>
				<!-- COL2 ENDS -->
				
			<br>
			<br>
			
			</div>
			<!-- ROW 3 ENDS -->
			
			<br><br>
			
			<!-- ROW4 STARTS -->
	 		<div class="row">
	 		
	 			<!-- COL1 STARTS -->
	 			<div class="col-md-7 cc">
	 				
	 				<h4 class="mrgrey">If you have any questions, please feel free to<a class="links"> contact us </a> our customer service is<br><br> working for 24/7.</h4>
					
	 				<hr class="mrgrey">
	 					
	 					
	 					<!-- INNER ROW1 STARTS -->
						<div class="row co_cc">
						
							<!-- INNER COL1 STARTS -->
	 						<div class="col-md-2">
	 							<h5><b>Order</b></h5>
	 						</div>
	 						<!-- INNER COL1 ENDS -->
	 						
	 						
							<!-- INNER COL2 STARTS -->
	 						<div class="col-md-2">
	 							<h5><b>Date</b></h5>
	 						</div>
	 						<!-- INNER COL2 ENDS -->
	 							
	 							
	 							
							<!-- INNER COL3 STARTS -->
	 						<div class="col-md-2">
	 							<h5><b>Total</b></h5>
	 						</div>
	 						<!-- INNER COL3 ENDS -->
	 							
	 							
	 							
							<!-- INNER COL4 STARTS -->
	 						<div class="col-md-4">
	 							<h5><b>Status</b></h5>
	 						</div>
	 						<!-- INNER COL4 ENDS -->
	 							
	 							
	 							
							<!-- INNER COL5 STARTS -->
	 						<div class="col-md-2">
	 							<h5><b>Action</b></h5>
	 						</div>
	 						<!-- INNER COL5 ENDS -->
	 						<br>
	 						
	 						<hr class="mrgrey">
	 				
	 					</div>
	 					<!-- INNER ROW1 ENDS -->
	 					
	 					
	 					<!-- INNER ROW2 STARTS -->
						<div class="row co_cc">
						
							<!-- INNER COL1 STARTS -->
	 						<div class="col-md-2">
	 							<h6><b>#1735</b></h6>
	 						</div>
	 						<!-- INNER COL1 ENDS -->
	 						
	 						
							<!-- INNER COL2 STARTS -->
	 						<div class="col-md-2">
	 							<h6>22/03/2016</h6>
	 						</div>
	 						<!-- INNER COL2 ENDS -->
	 							
	 							
	 							
							<!-- INNER COL3 STARTS -->
	 						<div class="col-md-2">
	 							<h6>Rs 150.00</h6>
	 						</div>
	 						<!-- INNER COL3 ENDS -->
	 							
	 							
	 							
							<!-- INNER COL4 STARTS -->
	 						<div class="col-md-4">
	 							 <span class="label label-primary">BEING PREPARED</span>
	 						</div>
	 						<!-- INNER COL4 ENDS -->
	 							
	 							
	 							
							<!-- INNER COL5 STARTS -->
	 						<div class="col-md-2">
	 							<form action="CustomerOrderDetails.jsp"><button type="submit" class="btn btn-default co_but btn-sm">VIEW</button></form>
	 						</div>
	 						<!-- INNER COL5 ENDS -->
	 						<br>
	 						
	 						<hr class="mrgrey">
	 				
	 					</div>
	 					<!-- INNER ROW2 ENDS -->
	 				
	 					<!-- INNER ROW2 STARTS -->
						<div class="row co_cc">
						
							<!-- INNER COL1 STARTS -->
	 						<div class="col-md-2">
	 							<h6><b>#1735</b></h6>
	 						</div>
	 						<!-- INNER COL1 ENDS -->
	 						
	 						
							<!-- INNER COL2 STARTS -->
	 						<div class="col-md-2">
	 							<h6>22/03/2016</h6>
	 						</div>
	 						<!-- INNER COL2 ENDS -->
	 							
	 							
	 							
							<!-- INNER COL3 STARTS -->
	 						<div class="col-md-2">
	 							<h6>₹150.00</h6>
	 						</div>
	 						<!-- INNER COL3 ENDS -->
	 							
	 							
	 							
							<!-- INNER COL4 STARTS -->
	 						<div class="col-md-4">
	 							 <span class="label label-primary">BEING PREPARED</span>
	 						</div>
	 						<!-- INNER COL4 ENDS -->
	 							
	 							
	 							
							<!-- INNER COL5 STARTS -->
	 						<div class="col-md-2">
	 							<form action="CustomerOrderDetails.jsp"><button type="submit" class="btn btn-default co_but btn-sm">VIEW</button></form>
	 						</div>
	 						<!-- INNER COL5 ENDS -->
	 						<br>
	 						
	 						<hr class="mrgrey">
	 				
	 					</div>
	 					<!-- INNER ROW2 ENDS -->
	 					
	 					
	 					
	 					<!-- INNER ROW3 STARTS -->
						<div class="row co_cc">
						
							<!-- INNER COL1 STARTS -->
	 						<div class="col-md-2">
	 							<h6><b>#1735</b></h6>
	 						</div>
	 						<!-- INNER COL1 ENDS -->
	 						
	 						
							<!-- INNER COL2 STARTS -->
	 						<div class="col-md-2">
	 							<h6>22/03/2016</h6>
	 						</div>
	 						<!-- INNER COL2 ENDS -->
	 							
	 							
	 							
							<!-- INNER COL3 STARTS -->
	 						<div class="col-md-2">
	 							<h6>₹150.00</h6>
	 						</div>
	 						<!-- INNER COL3 ENDS -->
	 							
	 							
	 							
							<!-- INNER COL4 STARTS -->
	 						<div class="col-md-4">
	 							 <span class="label label-success">RECIEVED</span>
	 						</div>
	 						<!-- INNER COL4 ENDS -->
	 							
	 							
	 							
							<!-- INNER COL5 STARTS -->
	 						<div class="col-md-2">
	 							<form action="CustomerOrderDetails.jsp"><button type="submit" class="btn btn-default co_but btn-sm">VIEW</button></form>
	 						</div>
	 						<!-- INNER COL5 ENDS -->
	 						<br>
	 						
	 						<hr class="mrgrey">
	 				
	 					</div>
	 					<!-- INNER ROW3 ENDS -->
	 					
	 					
	 					
	 					<!-- INNER ROW4 STARTS -->
						<div class="row co_cc">
						
							<!-- INNER COL1 STARTS -->
	 						<div class="col-md-2">
	 							<h6><b>#1735</b></h6>
	 						</div>
	 						<!-- INNER COL1 ENDS -->
	 						
	 						
							<!-- INNER COL2 STARTS -->
	 						<div class="col-md-2">
	 							<h6>22/03/2016</h6>
	 						</div>
	 						<!-- INNER COL2 ENDS -->
	 							
	 							
	 							
							<!-- INNER COL3 STARTS -->
	 						<div class="col-md-2">
	 							<h6>₹150.00</h6>
	 						</div>
	 						<!-- INNER COL3 ENDS -->
	 							
	 							
	 							
							<!-- INNER COL4 STARTS -->
	 						<div class="col-md-4">
	 							 <span class="label label-danger">CANCELLED</span>
	 						</div>
	 						<!-- INNER COL4 ENDS -->
	 							
	 							
	 							
							<!-- INNER COL5 STARTS -->
	 						<div class="col-md-2">
	 							<form action="CustomerOrderDetails.jsp"><button type="submit" class="btn btn-default co_but btn-sm">VIEW</button></form>
	 						</div>
	 						<!-- INNER COL5 ENDS -->
	 						<br>
	 						
	 						<hr class="mrgrey">
	 				
	 					</div>
	 					<!-- INNER ROW4 ENDS -->	 					
	 					
	 					
	 					
	 					
	 					<!-- INNER ROW5 STARTS -->
						<div class="row co_cc">
						
							<!-- INNER COL1 STARTS -->
	 						<div class="col-md-2">
	 							<h6><b>#1735</b></h6>
	 						</div>
	 						<!-- INNER COL1 ENDS -->
	 						
	 						
							<!-- INNER COL2 STARTS -->
	 						<div class="col-md-2">
	 							<h6>22/03/2016</h6>
	 						</div>
	 						<!-- INNER COL2 ENDS -->
	 							
	 							
	 							
							<!-- INNER COL3 STARTS -->
	 						<div class="col-md-2">
	 							<h6>₹150.00</h6>
	 						</div>
	 						<!-- INNER COL3 ENDS -->
	 							
	 							
	 							
							<!-- INNER COL4 STARTS -->
	 						<div class="col-md-4">
	 							 <span class="label label-warning">ON HOLD</span>
	 						</div>
	 						<!-- INNER COL4 ENDS -->
	 							
	 							
	 							
							<!-- INNER COL5 STARTS -->
	 						<div class="col-md-2">
	 							<form action="CustomerOrderDetails.jsp"><button type="submit" class="btn btn-default co_but btn-sm">VIEW</button></form>
	 						</div>
	 						<!-- INNER COL5 ENDS -->
	 						<br>
	 						
	 						<hr class="mrgrey">
	 				
	 					</div>
	 					<!-- INNER ROW5 ENDS -->	 	
	 					
	 							
	 							
	 					
	 				
	 				</div>
	 				<!-- COL1 ENDS -->
	 				
	 				<!-- COL2 STARTS -->	
	 				<div class="col-md-2 roww4">
	 						<br><br>
	 						
	 						<!-- INNER ROW1 STARTS -->
	 						<div class="row">
	 							<H4><b>CUSTOMER SECTION</b></H4>
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
  									<a href="CustomerOrders.jsp" class="active"><span class="glyphicon glyphicon-list"></span>&nbsp;My Order</a>
  									<a href="CustomerWishList.jsp"><span class="glyphicon glyphicon-heart"></span>&nbsp;My Wishlist</a>
  									<a href="CustomerAccount.jsp"><span class="glyphicon glyphicon-user"></span>&nbsp;My Account</a>
  									<a href="logout"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Logout</a>
  								</div>
 							</div>
 							<!-- INNER ROW3 STARTS -->
	 				
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
	
	<script src="js/jquery-3.3.1.js"></script> <!-- JQUERY JAVASCRIPT -->
	
	<script src="bootstrap/js/bootstrap.js"></script> <!-- BOOTSTRAP JAVASCRIPT  -->
	
	</body>
	<!-- BODY ENDS -->

</html>
