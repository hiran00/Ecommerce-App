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
<title>Apple Phones</title>

<%@include file="common_files/common.jsp"%>
</head>
<body>
<%@include file="common_files/header.jsp"%>

<div class="container py-2">
<h2 class="text-center pt-5 fw-bold">APPLE PHONES</h2>
<p class="text-center pb-5">Latest Apple Mobile Phones Prices in Sri Lanka</p>
	<div class="row">		
			
			<%
			ProductsDAOImpl dao = new ProductsDAOImpl(DBConnect.getConn());
			List<Products> list =dao.getAllApple();
			for (Products p : list) {
			%> 
			
			<div class=col-md-3>
				<div class="card crd-ho mb-4">
  					<div class="card-body text-center">	
	  				  	<img src="images/<%=p.getPimage()%>" class="card-img" alt="..." Style="width: 200px; height:200px">
	 				 	<h6 class="card-title mt-2"><%=p.getPname()%></h6>
	 				 	<p class="card-text"><%=p.getPdetails()%></p>
	  				   	<p class="card-price">Rs. <%=p.getPrice()%></p>
	    			 	<a href="#" class="btn btn-primary btn-sm mb-2">Add to Cart</a>
	    			 	<a href="apple_details.jsp?pid=<%=p.getpId() %>" class="btn btn-success btn-sm mb-2">View Details</a>
  					</div>
				</div>
			</div>
			<%
			}
			%> 		
	</div>
</div>
	

<%@include file="common_files/footer.jsp"%>
</body>
</html>