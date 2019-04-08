<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.tadigital.ecommerce.product.entity.Product"%>
<%@ page import="com.tadigital.ecommerce.customer.entity.Customer"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="If=edge">
<meta name="viewport" content="width-device-width,initial-scale=1">
<title>MY PRODUCTS</title>
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
			session.setAttribute("filenames","Home-DashBoard");
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
				<b class="lbl1">MY PRODUCTS</b> <br>
			</div>
			<!-- COL1 ENDS -->


			<!-- COL2 STARTS -->
			<div class="col-md-4 ccrr">
				<h5>
					<a class="links">HOME</a> / PRODUCTS
				</h5>
				<br>
			</div>
			<!-- COL2 ENDS -->

			<br> <br>

		</div>
		<!-- ROW 3 ENDS -->
		
		<br><br>
		<%
			ArrayList<Product> productList = (ArrayList<Product>)session.getAttribute("PRODUCTLIST");
		%>		
		
		<table class="hover" border="1" width="100%">
			<tr>
				<th>Product ID</th>
				<th>Category</th>
				<th>Sub Category</th>
				<th>Product Name</th>
				<th>Description</th>
				<th>Price</th>
				<th>Pictures</th>
			</tr>
			<%
				for(Product product : productList) {
						
			%>
			<tr>
				<td><%= product.getId() %></td>
				<td><%= product.getCategory() %></td>
				<td><%= product.getSubCategory()%></td>
				<td><%= product.getName() %></td>
				<td><%= product.getDescription() %></td>
				<td><%= product.getPrice() %></td>
				<td><%= product.getPicture1()+" "+product.getPicture2()+" "+product.getPicture3()+" "+product.getPicture4()+" "+product.getPicture5() %>

			</tr>
			<% 
				}
			%>
		</table>
		<br><br>
	
	<!-- ROW5 STARTS -->
	<%@ include file="footer1.jsp" %>
	<!-- ROW5 ENDS -->
	
	<!-- ROW5 STARTS -->
	<%@ include file="footer2.jsp" %>
	<!-- ROW5 ENDS -->
	
	</div>


</body>
</html>