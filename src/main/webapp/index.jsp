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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="">
<title>Working App</title>

<%@include file="common_files/common.jsp"%>
<link rel="stylesheet" href="css/index.css">

</head>
<body>
	<%@include file="common_files/header.jsp"%>
	
	<!-- Slider -->

	<div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="5000">
				<img src="images/1.jpg" class="d-block w-100" alt="slider1" height="450px">
			</div>
			<div class="carousel-item" data-bs-interval="5000">
				<img src="images/1.jpg" class="d-block w-100" alt="slider2" height="450px">
			</div>
			<div class="carousel-item">
				<img src="images/1.jpg" class="d-block w-100" alt="slider3"	height="450px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExample" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExample" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

<!-- Samsung Phones -->

<section id="products">
	<div class="sproducts">
  		<div class="container">
			<h2 class="text-center">SAMSUNG PHONES</h2>
			<div class="row">		
			<%
			ProductsDAOImpl dao = new ProductsDAOImpl(DBConnect.getConn());
			List<Products> list =dao.getSamsung();
			for (Products p : list) {
			%> 
			<div class=col-md-3>
				<div class="card crd-ho">
  					<div class="card-body text-center">	
	  				  	<img src="images/<%=p.getPimage()%>" class="card-img" alt="..." Style="width: 200px; height:200px">
	 				 	<h6 class="card-title mt-2"><%=p.getPname()%></h6>
	 				 	<p class="card-text"><%=p.getPdetails()%></p>
	  				   	<p class="card-price">Rs. <%=p.getPrice()%></p>
	    			 	<a href="#" class="btn btn-primary btn-sm mb-2">Add to Cart</a>
	    			 	<a href="#" class="btn btn-success btn-sm mb-2">View Details</a>
  					</div>
				</div>
			</div>
			<%
			}
			%> 		
			</div>
 		</div>
	</div>	
	<div class="text-center mt-5">
	<a href="" class="btn btn-success btn-md text-white">View More</a>
	</div>
			
			
<!-- Apple Phones -->

	<div class="aproducts">
  		<div class="container">
			<h2 class="text-center">APPLE PHONES</h2>
			<div class="row">		
			<%
			ProductsDAOImpl dao2 = new ProductsDAOImpl(DBConnect.getConn());
			List<Products> list2 =dao2.getApple();
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
	    			 	<a href="#" class="btn btn-success btn-sm mb-2">View Details</a>
  					</div>
				</div>
			</div>
			<%
			}
			%> 		
			</div>
 		</div>
	</div>	
	<div class="text-center mt-5">
	<a href="" class="btn btn-success btn-md text-white">View More</a>
	</div>

<!-- Mobile Accessories -->

	<div class="accessories">
  		<div class="container">
			<h2 class="text-center">ACCESSORIES</h2>
			<div class="row">		
			<%
			ProductsDAOImpl dao3 = new ProductsDAOImpl(DBConnect.getConn());
			List<Products> list3 =dao3.getAccessories();
			for (Products p3 : list3) {
			%> 
			<div class=col-md-3>
				<div class="card crd-ho">
  					<div class="card-body text-center">	
	  				  	<img src="images/<%=p3.getPimage()%>" class="card-img" alt="..." Style="width: 200px; height:200px">
	 				 	<h6 class="card-title mt-2"><%=p3.getPname()%></h6>
	 				 	<p class="card-text"><%=p3.getPdetails()%></p>
	  				   	<p class="card-price">Rs. <%=p3.getPrice()%></p>
	    			 	<a href="#" class="btn btn-primary btn-sm mb-2">Add to Cart</a>
	    			 	<a href="#" class="btn btn-success btn-sm mb-2">View Details</a>
  					</div>
				</div>
			</div>
			<%
			}
			%> 		
			</div>
 		</div>
	</div>	
	<div class="text-center mt-5">
	<a href="" class="btn btn-success btn-md text-white">View More</a>
	</div>
</section>

<%@include file="common_files/footer.jsp"%>
</body>
</html>