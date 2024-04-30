<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.DAO.ProductsDAOImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.Products" %>
<%@ page import="com.DB.DBConnect" %>	
  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="admincommon.jsp"%>
<title>Admin: All Products</title>
</head>
<body>
<%@include file="adminheader.jsp"%>

	<c:if test="${empty userobj}">		
		<c:redirect url="../login.jsp"/>
	</c:if>

<div class="container py-5">
	<div class="row">
		<div class="col mx-auto">
			<div class="card">
				<div class="card-body">	
					<h4 class="text-center mb-4 mt-2">All Products</h4>
					
					
					<c:if test="${not empty succMsg }">
						<h6 class="text-center text-success mb-4">${succMsg}</h6>
						<c:remove var="succMsg" scope="session" />
					</c:if>
					<c:if test="${not empty failedMsg }">
						<h6 class="text-center text-danger mb-4">${failedMsg}</h6>
						<c:remove var="failedMsg" scope="session" />
					</c:if>
					
					
					<table class="table">
					  <thead class="table-dark">
					    <tr>
					      <th scope="col">ID</th>
						  <th scope="col">Image</th>
					      <th scope="col">Name</th>
					      <th scope="col">Details</th>
					      <th scope="col">Price</th>
					      <th scope="col">Category</th>
					      <th scope="col">Availability</th>
					      <th scope="col">Action</th>
					    </tr>
					  </thead>
					  <tbody>
					  
					  <%
					  ProductsDAOImpl dao = new ProductsDAOImpl(DBConnect.getConn());
					  List<Products> list =dao.getAllProduct();
					  for (Products p:list) {
					  %> 
					  
					  <tr>
					      <td><%=p.getpId() %></td>
					      <td><img src="../images/<%=p.getPimage()%>" style="width: 50px; height: 50px;"></td>
					      <td><%=p.getPname() %></td>
					      <td><%=p.getPdetails() %></td>
					      <td><%=p.getPrice() %></td>
					      <td><%=p.getPcategory() %></td>
					      <td><%=p.getAvailability() %></td>
					      <td>
						  <a href="edit_products.jsp?id=<%=p.getpId()%>" class="btn btn-sm btn-primary"><i class="fa-solid fa-pen-to-square"></i> Edit</a>
						  <a href="../delete?id=<%=p.getpId()%>" class="btn btn-sm btn-danger"><i class="fa-solid fa-trash-can"></i> Delete</a>
						  </td>
					   </tr>
					  <%  
					  	}
					  %>
	
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