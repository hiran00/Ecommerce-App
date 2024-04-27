<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="admincommon.jsp"%>
<title>Admin: Add products</title>
</head>
<body>
<%@include file="adminheader.jsp"%>

<div class="container p-5">
	<div class="row">
		<div class="col-md-6 mx-auto">
			<div class="card">
				<div class="card-body">	
					<h4 class="text-center mt-3">Add Products</h4>
							
					<form class="p-4" action="#" method="post">
					
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
					       <select class="form-select text-center mt-2" aria-label="Default select example">
							  <option selected >--Select a Category--</option>
							  <option value="apple">Apple Phones</option>
							  <option value="samsung">Samsung Phones</option>
							  <option value="accessories">Mobile Accessories</option>
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