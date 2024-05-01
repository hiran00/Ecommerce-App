<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>


<%@ page import="com.DAO.ProductsDAOImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.Products" %>
<%@ page import="com.entity.User" %>

    
<%@ page import="com.DAO.ProductsDAOImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.Products" %>

<%@ page import="com.DB.DBConnect" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Samsung Phones</title>


<link rel="stylesheet" href="css/toast.css">
<%@include file="common_files/common.jsp"%>
</head>
<body>

<%
User u=(User)session.getAttribute("userobj");
%>

<c:if test="${not empty addCart }">

<div id="toast">${addCart}</div>
<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>
<c:remove var="addCart" scope="session"/>
</c:if>


<%@include file="common_files/common.jsp"%>
</head>
<body>

<%@include file="common_files/header.jsp"%>

<div class="container py-2">
<h2 class="text-center pt-5 fw-bold">SAMSUNG PHONES</h2>
<p class="text-center pb-5">Latest Samsung Mobile Phones Prices in Sri Lanka</p>
	<div class="row">		
			
			<%
			ProductsDAOImpl dao = new ProductsDAOImpl(DBConnect.getConn());
			List<Products> list =dao.getAllSamsung();
			for (Products p : list) {
			%> 
			
			<div class=col-md-3>
				<div class="card crd-ho mb-4">
  					<div class="card-body text-center">	
	  				  	<img src="images/<%=p.getPimage()%>" class="card-img" alt="..." Style="width: 200px; height:200px">
	 				 	<h6 class="card-title mt-2"><%=p.getPname()%></h6>
	 				 	<p class="card-text"><%=p.getPdetails()%></p>
	  				   	<p class="card-price">Rs. <%=p.getPrice()%></p>			   	
				   	
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
	    			 	
	    	 	<a href="samsung_details.jsp?pid=<%=p.getpId() %>" class="btn btn-success btn-sm mb-2">View Details</a>

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