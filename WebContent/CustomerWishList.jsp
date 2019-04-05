<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="If=edge">
<meta name="viewport" content="width-device-width,initial-scale=1">
<title>CustomerWishList</title>
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
					<b class="lbl1">MY WISHLISH</b>
					<br>
				</div>
				<!-- COL1 ENDS -->
				
				
				<!-- COL2 STARTS -->
				<div class="col-md-4 ccrr">
					<h5><a class="links">HOME</a> / MY WISHLIST</h5>
					<br>
				</div>
				<!-- COL2 ENDS -->
				
			<br>
			<br>
			
			</div>
			<!-- ROW 3 ENDS -->
			
			
			
			<!-- ROW4 STARTS -->
	 		<div class="row cc">
	 		
	 			<!-- COL1 STARTS -->
	 			<div class="col-md-8">
	 			<!-- Row 4 Starts -->
		
				<div class="row mw_r4">
				<!-- Row 4 Column 1 starts -->
				<div class="col-md-12">
			<br><br><p class="mrgrey san">Pellentesque habitant morbi tristique
			senectus et netus malesuada fames
			ac turpis egestas.</p>
			<!-- Sub Row 1 Starts-->
			<div class="row">
				<!-- Sub Row 1 Coulumn 1 -->
				<div class="col-md-3">
					<img src="images/product1.jpg" class="mw_r4_c1_sr_img"><br><br>
					<p class="mw_r4_c1_sr_p">FUR COAT WITH <br>VERY BUT VERY<br>LONG NAME<br><span class="mw_r4_c1_sr_s">₹143</span></p><hr class="mw_r4_c1_sr_hr">
				</div>
				
				<div class="col-md-3">
					<img src="images/product2.jpg" class="mw_r4_c1_sr_img"><br><br>
					<p class="mw_r4_c1_sr_p">WHITE BLOUSE <br>ARMANI<br><br><span id="mw_r4_c1_sr_s1">₹280</span><span class="mw_r4_c1_sr_s">₹143</span></p><hr class="mw_r4_c1_sr_hr">
				</div>
				
				<div class="col-md-3" >
					<img src="images/product3.jpg" class="mw_r4_c1_sr_img"><br><br>
					<p class="mw_r4_c1_sr_p">BLACK BLOUSE<br>VERSACE<br><br><span class="mw_r4_c1_sr_s">₹143</span></p><hr class="mw_r4_c1_sr_hr">
				</div>
				
				<div class="col-md-3">
					<img src="images/product4.jpg" class="mw_r4_c1_sr_img"><br><br>
					<p class="mw_r4_c1_sr_p">BLACK BLOUSE <br>VERSACE<br><br><span class="mw_r4_c1_sr_s">₹143</span></p><hr class="mw_r4_c1_sr_hr">
				</div>
			</div>
			<!-- Sub Row 1 Ends-->
			
			<!-- Sub Row 2 Starts-->
			<div class="row">
				<!-- Sub Row 1 Coulumn 1 -->
				<div class="col-md-3">
					<img src="images/product3.jpg" class="mw_r4_c1_sr_img"><br><br>
					<p class="mw_r4_c1_sr_p">BLACK BLOUSE<br>VERSACE<br><br><span id="mw_r4_c1_sr_s1">₹280</span><span class="mw_r4_c1_sr_s">₹143</span></p><hr class="mw_r4_c1_sr_hr">
				</div>
				
				<div class="col-md-3">
					<img src="images/product4.jpg" class="mw_r4_c1_sr_img"><br><br>
					<p class="mw_r4_c1_sr_p">BLACK BLOUSE <br>VERSACE<br><br><span class="mw_r4_c1_sr_s">₹143</span></p><hr class="mw_r4_c1_sr_hr">
				</div>
				
				<div class="col-md-3">
					<img src="images/product2.jpg" class="mw_r4_c1_sr_img"><br><br>
					<p class="mw_r4_c1_sr_p">WHITE BLOUSE <br>ARMANI<br><br><span class="mw_r4_c1_sr_s">₹143</span></p><hr class="mw_r4_c1_sr_hr">
				</div>
				
				<div class="col-md-3">
					<img src="images/product1.jpg" class="mw_r4_c1_sr_img"><br><br>
					<p class="mw_r4_c1_sr_p">FUR COAT <br><br><br><span class="mw_r4_c1_sr_s">₹143</span></p><hr class="mw_r4_c1_sr_hr">
				</div>
			</div>
			<!-- Sub Row 2 Ends -->
		</div>
	 				
	 				</div>
	 				<!-- COL1 ENDS -->
	 				</div>
	 				
	 				<!-- COL2 STARTS -->	
	 				<div class="col-md-2">
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
  									<a href="CustomerOrders.jsp"><span class="glyphicon glyphicon-list"></span>&nbsp;My Order</a>
  									<a href="CustomerWishList.jsp"  class="active"><span class="glyphicon glyphicon-heart"></span>&nbsp;My Wishlist</a>
  									<a href="CustomerAccount.jsp"><span class="glyphicon glyphicon-user"></span>&nbsp;My Account</a>
  									<a href="logout"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Logout</a>
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
	
	<script src="js/jquery-3.3.1.js"></script> <!-- JQUERY JAVASCRIPT -->
	
	<script src="bootstrap/js/bootstrap.js"></script> <!-- BOOTSTRAP JAVASCRIPT  -->
	
	</body>
	<!-- BODY ENDS -->

</html>
