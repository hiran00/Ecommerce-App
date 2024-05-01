<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.DAO.CartDAOImpl" %>
<%@ page import="com.DAO.UserDAOImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.Cart" %>
<%@ page import="com.entity.User" %>
<%@ page import="com.DB.DBConnect" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart Page</title>

<%@include file="common_files/common.jsp"%>
</head>
<body>
<%@include file="common_files/header.jsp"%>

<c:if test="${empty userobj}">
	<c:redirect url="login.jsp"></c:redirect>
</c:if>


<c:if test="${not empty succMsg }">
	<div class="alert alert-success" role="alert">${succMsg }</div>
	<c:remove var="succMsg" scope="session"/>
</c:if>

<c:if test="${not empty failedMsg }">
	<div class="alert alert-danger" role="alert">${failedMsg }</div>
	<c:remove var="failedMsg" scope="session"/>
</c:if>


<div class="container">
	<div class="row py-4">
		<div class="col-md-6">
				<div class="card">
					<div class="card-body">		
					<h3 class="text-center fw-bold mb-4">SHOPPING CART</h3>		
						<table class="table table-striped">
						  <thead>
						    <tr>
						      <th scope="col">Product Name</th>
						      <th scope="col">Category</th>
						      <th scope="col">Price</th>
						      <th scope="col">Action</th>
						    </tr>
						  </thead>
						  <tbody>
						  
							<%
							User u = (User) session.getAttribute("userobj");
							
							CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
							List<Cart> cart = dao.getProductByUser(u.getId());
							Double totalPrice=0.00;
							for(Cart c : cart) {
								totalPrice = c.getTotal_price();
							%>
								<tr>
							      <th scope="row"><%=c.getPname() %></th>
							      <td><%=c.getPcategory() %></td>
							      <td><%=c.getPrice() %></td>
							      <td>
							      <a href="remove_book?pid=<%=c.getPid()%>&&uid=<%=c.getUid()%>" class="btn btn-sm btn-danger">Remove</a>
							      </td>
						   		</tr>
							<%
							}		
							%>
							
							<tr>
							<td>Total Price </td>
							<td></td>
							<td></td>
							<td><%=totalPrice %></td>
						    </tr>
						  
						  </tbody>
						</table>
					</div>
				</div>		
			</div>
		
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
					<h3 class="text-center fw-bold mb-4">BILLING DETAILS</h3>
						<form class="row g-3">
						  <div class="col-md-6">
						    <label for="inputEmail4" class="form-label">Name</label>
						    <input type="text" class="form-control" id="inputEmail4" value="<%=u.getName()%>" readonly="readonly">
						  </div>
						  
						  <div class="col-md-6">
						    <label for="inputPassword4" class="form-label">Email</label>
						    <input type="email" class="form-control" id="inputPassword4" value="<%=u.getEmail()%>" readonly="readonly">
						  </div>
						  
						  <div class="col-md-6">
						    <label for="inputEmail4" class="form-label">Phone Number</label>
						    <input type="number" class="form-control" id="inputEmail4" value="<%=u.getTel()%>" readonly="readonly">
						  </div>
						  
						  <div class="col-md-6">
						    <label for="inputPassword4" class="form-label">Address</label>
						    <input type="text" class="form-control" id="inputPassword4">
						  </div>
						  
						  <div class="col-md-6">
						    <label for="inputEmail4" class="form-label">Landmark</label>
						    <input type="text" class="form-control" id="inputEmail4">
						  </div>
						  
						  <div class="col-md-6">
						    <label for="inputPassword4" class="form-label">City</label>
						    <input type="text" class="form-control" id="inputPassword4">
						  </div>
						  
						  <div class="col-md-6">
						    <label for="inputEmail4" class="form-label">State</label>
						    <input type="text" class="form-control" id="inputEmail4">
						  </div>
						  
						  <div class="col-md-6">
						    <label for="inputPassword4" class="form-label">Pin Code</label>
						    <input type="text" class="form-control" id="inputPassword4">
						  </div>
						  
						  <div class="form-group">
						    <label for="inputState" class="form-label">Payment Method</label>
						    <select class="form-select">
						      <option selected>--- Choose ---</option>
						      <option>Cash On Delivery</option>
						    </select>
						  </div>
						  
						  <div class="text-center">
						  <button class="btn btn-primary">Place Order</button>
						  <a href="index.jsp" class="btn btn-success">Continue Shopping</a>
						  </div>
						</form>
					</div>
				</div>
			</div>
	</div>
</div>




<%@include file="common_files/footer.jsp"%>
</body>
</html>