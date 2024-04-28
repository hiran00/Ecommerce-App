<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@include file="admincommon.jsp"%>
<title>Admin home</title>

<style>
a {
	text-decoration: none;
	color: black;
}

a :hover{
	text-decoration: none;
	color: black;
}
</style>

</head>
<body>
<%@include file="adminheader.jsp"%>

<div class="col mx-auto  pt-5">
<div class="card-body">
		<h3 class="text-center mt-3">Admin Dashboard</h3>
		<p class="text-center">You can manage your product catalog and registered users.</p>
	</div>
	</div>
<div class="container pb-5 ">
	<div class="row p-5">
		<div class="col-md-3">
		
				<a href="all_products.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-store fa-3x p-3" style="color: #2962ff;"></i>
							<h4>All Products</h4>
							<p> Remove or Edit Products</p>
						</div>					
					</div>
				</a>		  					  	   
				</div>	
				
				<div class="col-md-3">
				<a href="add_products.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-square-plus fa-3x p-3" style="color:#d50000;"></i>
							<h4>Add Products</h4>
							<p> Add New Products</p>
						</div>	
					</div>
				</a>											  					  	   
				</div>
				
				<div class="col-md-3">
				<a href="orders.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-box-open fa-3x p-3" style="color:#2e7d32;"></i>
							<h4>Orders</h4>
							<p>History of recent orders</p>
						</div>					
					</div>
				</a>
				</div>	
				<div class="col-md-3">
				<a href="#">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-user-group fa-3x p-3" style="color:#FFD43B;"></i>
							<h4>Customers</h4>
							<p> Details of Registered Users</p>
						</div>					
					</div>
				</a>		  					  	   
				</div>
							
				</div>	
			</div>

<%@include file="adminfooter.jsp"%>
</body>
</html>