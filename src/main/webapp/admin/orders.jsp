<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.DAO.ProductOrderImpl" %>
<%@ page import="com.DAO.ProductOrderDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.Product_Order" %>
<%@ page import="com.DB.DBConnect" %>    
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="admincommon.jsp"%>
<title>Admin: Orders</title>
</head>
<body>
<%@include file="adminheader.jsp"%>

	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp"/>
	</c:if>

<div class="container py-5">
	<div class="row">
		<div class="col">
			<div class="card">
				<div class="card-body">	
					<h4 class="text-center mb-4 mt-2">Recent Orders</h4>
					
					<table class="table table-striped" style="width:100%">
					  <thead class="table-dark">
					    <tr>
					      <th scope="col" style="width:5%">ID</th>
					      <th scope="col" style="width:15%">Name</th>
					      <th scope="col" style="width:15%">Email</th>
					      <th scope="col" style="width:20%">Address</th>
					      <th scope="col" style="width:10%">Phone No</th>
					      <th scope="col" style="width:20%">Product</th>
					      <th scope="col" style="width:10%">Price</th>
					      <th scope="col" style="width:5%">Payment</th>
					    </tr>
					  </thead>
					  <tbody>
					  
					  <%
					  ProductOrderImpl dao=new ProductOrderImpl(DBConnect.getConn());
					  List<Product_Order> plist = dao.getAllOrder();
					  for (Product_Order p:plist)
					  {%>
					  
					  <tr>
					      <th scope="row"><%=p.getOrderId() %></th>
					      <td><%=p.getName() %></td>
					      <td><%=p.getEmail() %></td>
					      <td><%=p.getFullAdd() %></td>
					      <td><%=p.getTel() %></td>
					      <td><%=p.getPname() %></td>
					      <td><%=p.getPrice() %></td>
					      <td><%=p.getPayment() %></td>
					    </tr>
					  
					  <%} 
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