<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="admincommon.jsp"%>
<title>Admin: Orders</title>
</head>
<body>
<%@include file="adminheader.jsp"%>

<div class="container py-5">
	<div class="row">
		<div class="col">
			<div class="card">
				<div class="card-body">	
					<h4 class="text-center mb-4 mt-2">Recent Orders</h4>
					
					<table class="table table-striped" style="width:100%">
					  <thead class="table-dark">
					    <tr>
					      <th scope="col" style="width:5%">ID</th>
					      <th scope="col" style="width:15%">Name</th>
					      <th scope="col" style="width:15%">Email</th>
					      <th scope="col" style="width:20%">Address</th>
					      <th scope="col" style="width:10%">Phone No</th>
					      <th scope="col" style="width:20%">Product</th>
					      <th scope="col" style="width:10%">Price</th>
					      <th scope="col" style="width:5%">Payment</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <th scope="row">1</th>
					      <td>Hiran Ranasinghe</td>
					      <td>hiran@gmail.com</td>
					      <td>No.52, Miriswatta, Gampaha</td>
					      <td>0771234523</td>
					      <td>Samsung Galaxy S23</td>
					      <td>Rs.194,990</td>
					      <td>COD</td>
					    </tr>
					    
					    <tr>
					      <th scope="row">2</th>
					      <td>Hiran Ranasinghe</td>
					      <td>hiran@gmail.com</td>
					      <td>No.52, Miriswatta, Gampaha</td>
					      <td>0771234523</td>
					      <td>Samsung Galaxy S23</td>
					      <td>Rs.194,990</td>
					      <td>COD</td> 
					    </tr>
					    
					    <tr>
					      <th scope="row">3</th>
					      <td>Hiran Ranasinghe</td>
					      <td>hiran@gmail.com</td>
					      <td>No.52, Miriswatta, Gampaha</td>
					      <td>0771234523</td>
					      <td>Samsung Galaxy S23</td>
					      <td>Rs.194,990</td>
					      <td>COD</td>				      
					    </tr>
					    
					    <tr>
					      <th scope="row">4</th>
					      <td>Hiran Ranasinghe</td>
					      <td>hiran@gmail.com</td>
					      <td>No.52, Miriswatta, Gampaha</td>
					      <td>0771234523</td>
					      <td>Samsung Galaxy S23</td>
					      <td>Rs.194,990</td>
					      <td>COD</td>					      
					    </tr>
					    
					  </tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>


<%@include file="adminfooter.jsp"%>
</body>
</html>