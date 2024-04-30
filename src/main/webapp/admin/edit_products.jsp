<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    

<%@ page import="com.DAO.ProductsDAOImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.Products" %>
<%@ page import="com.DB.DBConnect" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="admincommon.jsp"%>
<title>Admin: Edit products</title>
</head>
<body>
<%@include file="adminheader.jsp"%>

<div class="container p-5">
	<div class="row">
		<div class="col-md-6 mx-auto">
			<div class="card">
				<div class="card-body">	
					<h4 class="text-center mt-3">Edit Products</h4>
					
	
					
					<%		
					int id=Integer.parseInt(request.getParameter("id"));
					ProductsDAOImpl dao = new ProductsDAOImpl(DBConnect.getConn());
					Products p = dao.getProductsbyId(id);
					%>
					
					
			
					<form class="p-4" action="../edit_products" method="post">
					
						<input type="hidden" name="id" value="<%=p.getpId()%>">		
					
						<div class="form-group py-2">
						  <label for="pname" class="form-label">Product Name</label>
						  <input type="text" class="form-control" id="InputName" name="pname" value="<%=p.getPname()%>">
						</div>
						
						<div class="form-group py-2">
					       <label for="pdetails" class="form-label">Product Details</label>
					       <input type="text" class="form-control" id="InputEmail1" aria-describedby="emailHelp" name="pdetails" value="<%=p.getPdetails() %>">
					  	</div>
					  	
						<div class="form-group py-2">
					       <label for="price" class="form-label">Product Price</label>
					       <input type="number" class="form-control" id="InputPhonenumber" name="price" value="<%=p.getPrice() %>">
					  	</div>
					  	
					  	<div class="form-group py-3">
					       <label for="availability" >Availability</label>
					       <select class="form-select text-center mt-2" name="availability"  aria-label="Default select example">
							
							<% if ("instock".equals(p.getAvailability())){%>
								<option value="instock">In Stock</option>
								<option value="outofstock">Out of Stock</option>
							<%
							} else {%>
								<option value="instock">In Stock</option>
								<option value="outofstock">Out of Stock</option>
							<%}
							%>
						</select>
					  	</div>		
					  			
						<div class="row align-items-center mt-3 p-2">
						    <button type="submit" class="btn btn-primary">Update Product</button>
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