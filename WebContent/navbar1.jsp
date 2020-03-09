<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.tadigital.ecommerce.customer.entity.Customer"%>
<%@ page import="com.tadigital.ecommerce.vendor.entity.Vendor"%>

<!-- ROW1 STARTS -->
<div class="row row1">
	<br>


	<!-- COL1 STARTS -->
	<div class="col-md-7 cc">
		Contact Us on +91 40 6617777 <br>
	</div>
	<!-- COL1 ENDS -->

	<%
					String login=(String)session.getAttribute("login");
					if(login!=null) {
					if(login.equals("Yes"))
					{
						Customer customer=(Customer)session.getAttribute("CUSTOMERDATA");
						String name=customer.getfname()+" "+customer.getlname();
						String filename=(String)session.getAttribute("filenames");
						String names[]= new String[2];
						names=filename.split("-");
						String fn1=names[0];
						String fn2=names[1];
						if(names[0].equals("My Account"))
						{
							names[0]="CustomerAccount";
						}
						if(names[1].equals("My Account"))
						{
							names[1]="CustomerAccount";
						}
						if(names[0].equals("My Order"))
						{
							names[0]="CustomerOrders";
						}
						if(names[1].equals("My Orders"))
						{
							names[1]="CustomerOrders";
						}
						if(names[0].equals("Home"))
						{
							names[0]="HomePage";
						}
						if(names[1].equals("Home"))
						{
							names[1]="HomePage";
						}
						
						
						String file1=names[0]+".jsp";
						String file2=names[1]+".jsp";


						
						
					%>
	<!-- COL2 STARTS -->
	<div class="col-md-2">
		<div class='tops'>
			<div class="dropdowntop">
				<button class="dropbtntop aas"><%="Hi "+name %>
					<i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-contenttop">
					<a href="<%= file1 %>"><%= fn1 %></a> <a href="<%= file2 %>"><%= fn2 %></a>
					<a href="logout">Logout</a>
				</div>
			</div>
		</div>
	</div>
	<!-- COL2 ENDS -->
	<%
					
					} else if(login.equals("VYes")) {
						
						Vendor vendor=(Vendor)session.getAttribute("VENDORDATA");
						String name=vendor.getname();
						String filename=(String)session.getAttribute("filenames");
						String names[]= new String[2];
						names=filename.split("-");
						String fn1=names[0];
						String fn2=names[1];
						if(names[0].equals("My Products"))
						{
							names[0]="VendorProducts";
						}
						if(names[1].equals("My Products"))
						{
							names[1]="VendorProducts";
						}
						if(names[0].equals("Home"))
						{
							names[0]="HomePage";
						}
						if(names[1].equals("Home"))
						{
							names[1]="HomePage";
						}
						
						
						String file1=names[0]+".jsp";
						String file2=names[1]+".jsp";
					%>
	<!-- COL2 STARTS -->
	<div class="col-md-2">
		<div class='tops'>
			<div class="dropdowntop">
				<button class="dropbtntop aas"><%="Hi "+name %>
					<i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-contenttop">
					<a href="<%= file1 %>"><%= fn1 %></a> <a href="<%= file2 %>"><%= fn2 %></a>
					<a href="vlogout">Logout</a>
				</div>
			</div>
		</div>
	</div>
	<!-- COL2 ENDS -->
	<%
					}
				} else {
						%>

	<!-- COL2 STARTS -->
	<div class="col-md-3">
		<a class="tops" href="SignInSignUpForms.jsp"> <span
			class="glyphicon">&#xe161;</span> SIGN IN&nbsp; <span
			class="glyphicon">&#xe008;</span> SIGN UP
		</a> <a class="tops" href="Vlogin.jsp"><i class="fas fa-store"></i>Vendor
			Login</a>
	</div>
	<!-- COL2 ENDS -->
	<%
				}
			%>

	<!-- COL3 STARTS -->
	<div class="col-md-1 mrsil">
		<i style="font-size: 15px" class="fa">&#xf09a;</i>&nbsp; <i
			style="font-size: 15px" class="fa">&#xf0d5;</i>&nbsp; <i
			style="font-size: 15px" class="fa">&#xf099;</i>&nbsp; <i
			style='font-size: 15px' class='fas'>&#xf0e0;</i>&nbsp;

	</div>
	<!-- COL3 ENDS -->


	<br> <br>
</div>
<!-- ROW 1 ENDS -->
