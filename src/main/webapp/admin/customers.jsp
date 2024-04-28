<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.DAO.UserDAOImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.User" %>
<%@ page import="com.DB.DBConnect" %>	

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="admincommon.jsp"%>
<title>Admin: Customers</title>
</head>
<body>
<%@include file="adminheader.jsp"%>

<div class="container py-5">
	<div class="row">
		<div class="col mx-auto">
			<div class="card">
				<div class="card-body">	
					<h4 class="text-center mb-4 mt-2">Registered Users</h4>
					
					
					<c:if test="${not empty succMsg }">
						<h6 class="text-center text-success mb-4">${succMsg}</h6>
						<c:remove var="succMsg" scope="session" />
					</c:if>
					<c:if test="${not empty failedMsg }">
						<h6 class="text-center text-danger mb-4">${failedMsg}</h6>
						<c:remove var="failedMsg" scope="session" />
					</c:if>
					
					
					<table class="table table-striped">
					  <thead class="table-dark">
					    <tr>
					      <th scope="col">ID</th>
					      <th scope="col">Name</th>
					      <th scope="col">E-mail</th>
					      <th scope="col">Phone</th>
					      <th scope="col">Action</th>
					    </tr>
					  </thead>
					  <tbody>
					  
					  <%
					  UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
					  List<User> list =dao.getAllUsers();
					  for (User u:list) {
					  %> 
					  
					  <tr>
					      <td><%=u.getId() %></td>
					      <td><%=u.getName() %></td>
					      <td><%=u.getEmail() %></td>
					      <td><%=u.getTel() %></td>
					      <td>
						  <a href="../userdelete?id=<%=u.getId()%>" class="btn btn-sm btn-danger">Delete</a>
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