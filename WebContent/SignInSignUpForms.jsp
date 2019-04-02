<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="If=edge">
		<meta name="viewport" content="width-device-width,initial-scale=1">
		<title>SIGN IN/SIGN UP</title>
		<!-- STYLESHEET FOR ICONS -->
		<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
		
		<!-- STYLESHEET FOR ICONS &BUTTONS -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		
		<!-- STYLESHEET FOR BOOTSTRAP -->
		<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
		
		<!-- STYLESHEET FOR CUSTOM STYLE -->
		<link rel="stylesheet" href="css/custom.css">
		

 	
	</head>
	
	<!-- BODY STARTS -->
	<body>
		<!-- CONTAINER STARTS -->
		<div class="container-fluid">
		
			<!-- ROW1 STARTS -->
			<div class="row row1" id="">
			<br>
			
				
				<!-- COL1 STARTS -->
				<div class="col-md-7 cc">
					Contact Us on +91 40 6617777
					<br>
				</div>
				<!-- COL1 ENDS -->
				
				<!-- COL2 STARTS -->
				<div class="col-md-2">
					<span class="glyphicon">&#xe161;</span>
					SIGN IN&nbsp;
					<span class="glyphicon">&#xe008;</span>
		 			SIGN UP
		 		</div>
		 		<!-- COL2 ENDS -->
		 		
		 		<!-- COL3 STARTS -->
		 		<div class="col-md-1 mrsil">
		 			<i style="font-size:15px" class="fa">&#xf09a;</i>&nbsp;
		 			<i style="font-size:15px" class="fa">&#xf0d5;</i>&nbsp;
		 			<i style="font-size:15px" class="fa">&#xf099;</i>&nbsp;
		 			<i style='font-size:15px' class='fas'>&#xf0e0;</i>&nbsp;
		 			
		 		</div>
		 		<!-- COL3 ENDS -->
		 	
		 	<br><br>	
		 	
		 	</div>
		 	<!-- ROW 1 ENDS -->
		 	
		 	
		 	
		 	<!-- ROW 2 STARTS -->
	 		<div class="row row2">
	 			
	 			<!-- COL 1 STARTS -->
	 			<div class="col-md-3 cc">
	 				<br>
					<img src="images/logo.png">
					<br>
				</div>
				<!-- COL 1 ENDS -->
				
				
				<!-- COL2 STARTS -->
				<div class="col-md-7 cccc">
					<br>
  					<div class="dropdown">
  						<button class="btn btn-default dropdown-toggle menu" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    						ELECTRONICS
    						<span class="caret"></span>
  						</button>
  						<button class="btn btn-default dropdown-toggle menu" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    						MEN
    						<span class="caret"></span>
  						</button>
  						<button class="btn btn-default dropdown-toggle menu" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    						WOMEN
    						<span class="caret"></span>
  						</button>
  						<button class="btn btn-default dropdown-toggle menu" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    						BABY & KIDS
    						<span class="caret"></span>
  						</button>
  						<button class="btn btn-default dropdown-toggle menu" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    						HOME & FURNITURE
    						<span class="caret"></span>
  						</button>
  						<br>
  						<br>
					</div>
				</div>
				<!-- COL2 ENDS -->
			
			</div>
			<!-- ROW2 ENDS -->
			
			
			
			<!-- ROW3 STARTS -->
			<div class="row row3" style="background-image:url(images/texture-bw.png)">
				<br>
				
				<!-- COL1 STARTS -->
				<div class="col-md-4 cc">
					<b class="lbl1">NEW ACCOUNT/ SIGN IN</b>
					<br>
				</div>
				<!-- COL1 ENDS -->
				
				
				<!-- COL2 STARTS -->
				<div class="col-md-4 ccrr">
					<h5><a class="links">HOME</a> / NEW ACCOUNT / SIGN IN</h5>
					<br>
				</div>
				<!-- COL2 ENDS -->
				
			<br>
			<br>
			
			</div>
			<!-- ROW 3 ENDS -->
			
			
			
			<!-- ROW4 STARTS -->
	 		<div class="row">
	 		
	 			<!-- COL1 STARTS -->
	 			<div class="col-md-4 cc">
	 				<br><br><br>
	 				<hr width="100%">
	 				<h2>NEW ACCOUNT</h2>
	 				<p class="lbl3">
	 					Not our registered customer yet?
	 					<br>
	 					<br>
	 					With registration with us new world of fashion, fanstastic discounts and much more opens to you! The whole process will not take you more than a minute!
	 				</p>
	 				<br>
	 				<br>
	 				<form action="register" method="post">
	 					<p class="lbl4">
	 						If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.
	 						<hr width="100%">
	 						Name<br><br>
	 						<input type="text" name="f1" class="form-control" size="50">
	 						<br><br>
	 						Email<br><br>
	 						<input type="textbox" name="f2" class="form-control" size="50">
	 						<br><br>
							Password<br><br>
	 						<input type="password" name="f3" class="form-control" size="50">
	 						<br><br>
	 						<button type="submit" class="btn btn-default sub"><span class="glyphicon">&#xe008;</span>&nbsp;&nbsp;REGISTER</button>
	 				</p>
	 				
	 				<%
						 if(!session.isNew())
		 					{
			 					int  c=(int)session.getAttribute("check");
			
			 					if(c==-1)
								{
			 					%>	
								<div class="alert alert-danger fade in">Registration Failed</div>
								<%
								}
			 					if(c==1)
								{
			 					%>	
								<div class="alert alert-success">Registration Successful</div>
								<%
								}
			
							 }
					%>
	 				
	 				</form>
					<hr width="100%">
			 	</div>
			 	<!-- COL1 ENDS -->
			 	
			<!-- COL2 STARTS -->
		 	<div class="col-md-4 row4">
		 		<br><br><br>
				<hr width="100%">
	 			<h2>SIGN IN</h2>
	 			<p class="lbl3">
	 				Already a customer?
	 			</p>
	 			<br><br>
	 			<form action="loginnn" method="post">
	 			<p class="lbl4">Get access to your Order, Wishlist and Recommendation.
	 				<br><br>
	 				Email<br><br>
	 				<input type="textbox" class="form-control" size="50" name="f1">
	 				<br><br>
					Password<br><br>
	 				<input type="password" class="form-control" size="50" name="f2">
					<br><br>
					<button type="submit" class="btn btn-default sub"><span class="glyphicon">&#xe161;</span>&nbsp;&nbsp;LOG IN</button>
				</p>
				<%
						 if(!session.isNew())
		 					{
			 					int  c=(int)session.getAttribute("check");
			
			 					if(c==0)
								{
			 					%>	
								<div class="alert alert-danger fade in">Invalid Credentials</div>
								<%
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
	 	
	 	
	 	
 	<!-- ROW6 STARTS -->
	 	<div class="row row1">
	 		<br><br>
	 		
	 		<!-- COL1 STARTS -->
			<div class="col-md-3 cc">
	 			<b>About Us</b>
	 			<p class="mrsil">sjjjndjsjkds dsjdksbhbsd ndsjdksbbdskbs sjjjndjsjkds dsjdksbhbsd ndsjdksbbdskbs sjjjndjsjkds dsjdksbhbsd ndsjdksbbdskbs</p>
	 			<hr width="100%">
				<b>Join Our Monthly Newsletter</b><br>
	 			<input type ="text" size="30"><button class="button2 send"><span class="glyphicon glyphicon-send"></span></button>
	 			<br><br>
	 		</div>
	 		<!-- COL1 ENDS -->
	 		
	 		<!-- COL2 STARTS -->
	 		<div class="col-md-3">
				<b>BLOG<br><br>
				<img src="images/detailsquare1.jpg" height="40" width="40">&nbsp;&nbsp;  BLOG POST NAME<br><br>
				<img src="images/detailsquare2.jpg" height="40" width="40">&nbsp;&nbsp;  BLOG POST NAME<br><br>
				<img src="images/detailsquare3.jpg" height="40" width="40">&nbsp;&nbsp;  VERY VERY LONG BLOG POST NAME<br><br></b>
			</div>
			<!-- COL2 ENDS -->
			
			<!-- COL3 STARTS -->
			<div class="col-md-2">
				<b>Contact</b>
				<br>
				<p class="mrsil">TechAspect Solutions Pvt Ltd<br>3rd floor, N Heights, Plot no 38, Hitech City Phase II,<br> Madhapur, Hyderabad, Telangana<br>India, Tel : +91 40 66217777</p>
				<br>
				<button class="button2 butt">GO TO CONTACT PAGE</button>
			</div>
			<!-- COL3 ENDS -->
			
			<!-- COL4 STARTS -->
			<div class="col-md-3">
				<img src="images/detailsquare1.jpg" height="75" width="75"> &nbsp;
				<img src="images/detailsquare2.jpg" height="75" width="75">&nbsp;
				<img src="images/detailsquare3.jpg" height="75" width="75"> &nbsp;
				<br><br>
				<img src="images/detailsquare1.jpg" height="75" width="75"> &nbsp;
				<img src="images/detailsquare2.jpg" height="75" width="75">&nbsp;
				<img src="images/detailsquare3.jpg" height="75" width="75"> &nbsp;
			</div>
			<!-- COL4 ENDS -->
		
		</div>
		<!-- ROW6 ENDS -->
		
		
		
		<!-- ROW7 STARTS -->
		<div class="row last">
		
	
			

			
			<!-- COL1 STARTS -->
			<div div class="col-md-3 cc">
				<br>
				<p style="color: white;"><span class="glyphicon glyphicon-copyright-mark"> 2018</span>
				TechAspect Solutions Private Limited
			</div>
			<!-- COL1 ENDS -->
			
		
		</div>
		<!-- ROW6 ENDS -->
	
	
	</div>
	<!-- CONTAINER CLASS ENDS -->
	
	<script src="js/jquery-3.3.1.js"></script> <!-- JQUERY JAVASCRIPT -->
	
	<script src="bootstrap/js/bootstrap.js"></script> <!-- BOOTSTRAP JAVASCRIPT  -->
	
	</body>
	<!-- BODY ENDS -->

</html>
