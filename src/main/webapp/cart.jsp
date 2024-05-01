<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>         
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart Page</title>

<%@include file="common_files/common.jsp"%>
</head>
<body>
<%@include file="common_files/header.jsp"%>

<div class="container">
	<div class="row p-3">
		<div class="col-md-6">
				<div class="card">
					<div class="card-body">		
					<h3 class="text-center fw-bold mb-4">SHOPPING CART</h3>		
						<table class="table">
						  <thead>
						    <tr>
						      <th scope="col">#</th>
						      <th scope="col">First</th>
						      <th scope="col">Last</th>
						      <th scope="col">Handle</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <th scope="row">1</th>
						      <td>Mark</td>
						      <td>Otto</td>
						      <td>@mdo</td>
						    </tr>
						    <tr>
						      <th scope="row">2</th>
						      <td>Jacob</td>
						      <td>Thornton</td>
						      <td>@fat</td>
						    </tr>
						    <tr>
						      <th scope="row">3</th>
						      <td colspan="2">Larry the Bird</td>
						      <td>@twitter</td>
						    </tr>
						  </tbody>
						</table>
					</div>
				</div>		
			</div>
		
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
					<h3 class="text-center fw-bold mb-4">BILLING DETAILS</h3>
						<form class="row g-3">
						  <div class="col-md-6">
						    <label for="inputEmail4" class="form-label">Name</label>
						    <input type="text" class="form-control" id="inputEmail4" value="">
						  </div>
						  
						  <div class="col-md-6">
						    <label for="inputPassword4" class="form-label">Email</label>
						    <input type="email" class="form-control" id="inputPassword4">
						  </div>
						  
						  <div class="col-md-6">
						    <label for="inputEmail4" class="form-label">Phone Number</label>
						    <input type="number" class="form-control" id="inputEmail4">
						  </div>
						  
						  <div class="col-md-6">
						    <label for="inputPassword4" class="form-label">Address</label>
						    <input type="text" class="form-control" id="inputPassword4">
						  </div>
						  
						  <div class="col-md-6">
						    <label for="inputEmail4" class="form-label">Landmark</label>
						    <input type="text" class="form-control" id="inputEmail4">
						  </div>
						  
						  <div class="col-md-6">
						    <label for="inputPassword4" class="form-label">City</label>
						    <input type="text" class="form-control" id="inputPassword4">
						  </div>
						  
						  <div class="col-md-6">
						    <label for="inputEmail4" class="form-label">State</label>
						    <input type="text" class="form-control" id="inputEmail4">
						  </div>
						  
						  <div class="col-md-6">
						    <label for="inputPassword4" class="form-label">Pin Code</label>
						    <input type="text" class="form-control" id="inputPassword4">
						  </div>
						  
						  <div class="form-group">
						    <label for="inputState" class="form-label">Payment Method</label>
						    <select class="form-select">
						      <option selected>--- Choose ---</option>
						      <option>Cash On Delivery</option>
						    </select>
						  </div>
						  
						  <div class="text-center">
						  <button class="btn btn-primary">Place Order</button>
						  <a href="index.jsp" class="btn btn-success">Continue Shopping</a>
						  </div>
						</form>
					</div>
				</div>
			</div>
	</div>
</div>




<%@include file="common_files/footer.jsp"%>
</body>
</html>