<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="admincommon.jsp"%>
<title>Admin: Add products</title>
</head>
<body>
<%@include file="adminheader.jsp"%>

	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp"/>
	</c:if>

<div class="container p-5">
	<div class="row">
		<div class="col-md-6 mx-auto">
			<div class="card">
				<div class="card-body">	
					<h4 class="text-center mt-3">Add Products</h4>
					
					
					
					<c:if test="${not empty succMsg }">
						<h6 class="text-center text-success">${succMsg}</h6>
						<c:remove var="succMsg" scope="session" />
					</c:if>
					<c:if test="${not empty failedMsg }">
						<h6 class="text-center text-danger">${failedMsg}</h6>
						<c:remove var="failedMsg" scope="session" />
					</c:if>	
					
					
							
					<form class="p-4" action="../add_products" method="post" enctype="multipart/form-data">
					
						<div class="form-group py-2">
						  <label for="pname" class="form-label">Product Name</label>
						  <input type="text" class="form-control" id="InputName" name="pname">
						</div>
						
						<div class="form-group py-2">
					       <label for="pdetails" class="form-label">Product Details</label>
					       <input type="text" class="form-control" id="InputEmail1" aria-describedby="emailHelp" name="pdetails">
					  	</div>
					  	
						<div class="form-group py-2">
					       <label for="price" class="form-label">Product Price</label>
					       <input type="number" class="form-control" id="InputPhonenumber" name="price">
					  	</div>	
					  					  	
					  	<div class="form-group py-3">
					       <label for="pcategory" >Product Category</label>
					       <select class="form-select text-center mt-2" name="pcategory"  aria-label="Default select example">
							  <option selected >--Select a Category--</option>
							  <option value="apple">Apple Phones</option>
							  <option value="samsung">Samsung Phones</option>
							  <option value="accessories">Mobile Accessories</option>
							</select>
					  	</div>
					  	
					  	<div class="form-group py-3">
					       <label for="availability" >Availability</label>
					       <select class="form-select text-center mt-2" name="availability"  aria-label="Default select example">
							  <option selected >--Select Availability--</option>
							  <option value="instock">In Stock</option>
							  <option value="outofstock">Out of Stock</option>
							</select>
					  	</div>	
					  	
					  	<div class="form-group py-3">
							  <label for="pimage" class="form-label">Upload Product Image</label>
							  <input class="form-control" type="file" name="pimage" id="formFile">
						</div>
					  			
						<div class="row align-items-center mt-3 p-2">
						    <button type="submit" class="btn btn-primary">Add Product</button>
						</div>
									  					  	   
					</form>	
										
				</div>	
			</div>
		</div>
	</div>			
</div>


<%@include file="adminfooter.jsp"%>
</body>
</html>