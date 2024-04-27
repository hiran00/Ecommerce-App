<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="admincommon.jsp"%>
<title>Admin: All Products</title>
</head>
<body>
<%@include file="adminheader.jsp"%>

<div class="container py-5">
	<div class="row">
		<div class="col mx-auto">
			<div class="card">
				<div class="card-body">	
					<h4 class="text-center mb-4 mt-2">All Products</h4>
					
					<table class="table table-striped">
					  <thead class="table-dark">
					    <tr>
					      <th scope="col">ID</th>
					      <th scope="col">Name</th>
					      <th scope="col">Details</th>
					      <th scope="col">Price</th>
					      <th scope="col">Category</th>
					      <th scope="col">Action</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <th scope="row">1</th>
					      <td>Samsung Galaxy S23</td>
					      <td>(8GB RAM | 128GB ROM)</td>
					      <td>Rs.194,990</td>
					      <td>Samsung</td>
					      <td>
						  <a href="#" class="btn btn-sm btn-primary">Edit</a>
						  <a href="#" class="btn btn-sm btn-danger">Delete</a>
						  </td>
					    </tr>
					    <tr>
					      <th scope="row">2</th>
					      <td>Samsung Galaxy S23</td>
					      <td>(8GB RAM | 128GB ROM)</td>
					      <td>Rs.194,990</td>
					      <td>Samsung</td>
					      <td>
						  <a href="#" class="btn btn-sm btn-primary">Edit</a>
						  <a href="#" class="btn btn-sm btn-danger">Delete</a>
						  </td>
					    </tr>
					    <tr>
					      <th scope="row">3</th>
					      <td>Samsung Galaxy S23</td>
					      <td>(8GB RAM | 128GB ROM)</td>
					      <td>Rs.194,990</td>
					      <td>Samsung</td>
					      <td>
						  <a href="#" class="btn btn-sm btn-primary">Edit</a>
						  <a href="#" class="btn btn-sm btn-danger">Delete</a>
						  </td>
					    </tr>
					    <tr>
					      <th scope="row">4</th>
					      <td>Samsung Galaxy S23</td>
					      <td>(8GB RAM | 128GB ROM)</td>
					      <td>Rs.194,990</td>
					      <td>Samsung</td>
					      <td>
						  <a href="#" class="btn btn-sm btn-primary">Edit</a>
						  <a href="#" class="btn btn-sm btn-danger">Delete</a>
						  </td>
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