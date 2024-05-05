<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.DAO.ProductsDAOImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.Products" %>
<%@ page import="com.entity.User" %>
<%@ page import="com.DB.DBConnect" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accessories Details</title>
<%@include file="common_files/common.jsp"%>
</head>
<body>
<%@include file="common_files/header.jsp"%>

	<%
	User u=(User)session.getAttribute("userobj");
	%>
	

	<%
	int pid = Integer.parseInt(request.getParameter("pid"));
	ProductsDAOImpl dao = new ProductsDAOImpl(DBConnect.getConn());
	Products p = dao.getProductsbyId(pid);
	%>

	<div>
		<div class="container">
			<div class="row">
				<div class="col-md-6 py-4">
					<img src="images/<%=p.getPimage()%>" style="height: 500px; width: 500px;">					
				</div>
				<div class="col-md-6 pt-5">
				<h2><%=p.getPname()%></h2>
				<p>
				Brand: <a href="all_accessories.jsp" style="text-decoration: none; " >Accessories</a><br>
				Specifications : <%=p.getPdetails()%>
				</p>
				
				<% if ("instock".equals(p.getAvailability())){%>
						<p class="badge text-bg-success">Availability : In Stock</p>		
				<%
				} else {%>
						<p class="badge text-bg-danger">Availability : Out of Stock</p>		
				<%}
				%>
				
				<h3>Rs.<%=p.getPrice()%></h3><br>
				
				<h6>WARRANTY :</h6>
				<p>06 MONTHS WARRANTY / DIRECT IMPORT / BRAND NEW / ORIGINAL<br>
				(Warranty claims are not applicable for physical damages)
				<br><br> 
				
				<p>
				<i class="fa-solid fa-store fa-sm"></i> Store Pickup: Between 10AM to 5PM Mon to Sat<br>
				<i class="fa-solid fa-truck fa-sm"></i> Island wide Delivery: (5-7 Working Days)
				</p>
				
						<%
	  				   	if (u == null) {
	  				   	%>
	  				   	<a href="login.jsp" class="btn btn-primary btn-sm mb-2">Add to Cart</a>
	  				   	<%
	  				   	} else {
	  				   	%>
	    			 	<a href="cart?pid=<%=p.getpId()%>&&uid=<%=u.getId()%>" class="btn btn-primary btn-sm mb-2">Add to Cart</a>
	    			 	<% 
	  				   	}
	    			 	%>
				
				</div>
			</div>
		</div>
	</div>

	<div>
  		<div class="container py-5">
			<h2 class="fw-bold mb-4">Related Products</h2>
			<div class="row">		
			<%
			ProductsDAOImpl dao2 = new ProductsDAOImpl(DBConnect.getConn());
			List<Products> list2 =dao2.getAccessories();
			for (Products p2 : list2) {
			%> 
			<div class=col-md-3>
				<div class="card crd-ho">
  					<div class="card-body text-center">	
	  				  	<img src="images/<%=p2.getPimage()%>" class="card-img" alt="..." Style="width: 200px; height:200px">
	 				 	<h6 class="card-title mt-2"><%=p2.getPname()%></h6>
	 				 	<p class="card-text"><%=p2.getPdetails()%></p>
	  				   	<p class="card-price">Rs. <%=p2.getPrice()%></p>
	    			 	<a href="#" class="btn btn-primary btn-sm mb-2">Add to Cart</a>
	    			 	<a href="accessories_details.jsp?pid=<%=p2.getpId() %>" class="btn btn-success btn-sm mb-2">View Details</a>
  					</div>
				</div>
			</div>
			<%
			}
			%> 
			</div>		
 		</div>
	</div>

<%@include file="common_files/footer.jsp"%>
</body>
</html>