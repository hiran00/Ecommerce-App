<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<%@include file="common_files/common.jsp"%>
</head>
<body>
<%@include file="common_files/header.jsp"%>

<div class="container p-5">
	<div class="row">
		<div class="col-md-6 mx-auto">
			<div class="card">
				<div class="card-body">	
					<h4 class="text-center mt-3">Register Account</h4>
					<p class="text-center">If you already have an account, please login at the <a class="text-decoration-none" href="login.jsp">login page.</a></p>
					
					
					<c:if test="${not empty succMsg }">
						<h6 class="text-center text-success">${succMsg}</h6>
						<c:remove var="succMsg" scope="session" />
					</c:if>
					<c:if test="${not empty failedMsg }">
						<h6 class="text-center text-danger">${failedMsg}</h6>
						<c:remove var="failedMsg" scope="session" />
					</c:if>	
					
					
					<form class="p-4" action="register" method="post">
						<div class="form-group">
						  <label for="name" class="form-label">Full Name</label>
						  <input type="text" class="form-control" id="InputName" required="required" name="fname">
						</div>
						<div class="form-group">
					       <label for="email" class="form-label">Email address</label>
					       <input type="email" class="form-control" id="InputEmail1" aria-describedby="emailHelp" required="required" name="email">
					  	</div>
						<div class="form-group">
					       <label for="phonenumber" class="form-label">Phone Number</label>
					       <input type="tel" class="form-control" id="InputPhonenumber" required="required" maxlength="10" name="tel">
					  	</div>					  	
					  	<div class="form-group">
					       <label for="password" class="form-label">Password</label>
					       <input type="password" class="form-control" id="InputPassword1" required="required" name="password">
					  	</div>
					  	<div class="col align-items-center mt-3">
						<div>
						    <div class="form-check">						      
						      <label class="form-check-label" for="inlineFormCheck">I have read and agree to the Privacy Policy</label>
						      <input class="form-check-input" type="checkbox" id="inlineFormCheck" name="check">  						      
						    </div>
						</div>						
						<div class="row align-items-center mt-3 p-2">
						    <button type="submit" class="btn btn-primary">Register</button>
						</div>
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