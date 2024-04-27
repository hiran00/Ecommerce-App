<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@include file="common_files/common.jsp"%>
</head>
<body>
<%@include file="common_files/header.jsp"%>

<div class="container p-5">
	<div class="row">
		<div class="col-md-6 mx-auto">
			<div class="card">
				<div class="card-body">	
					<h4 class="text-center mt-3">User Login</h4>
					<p class="text-center">Hello there! Sign in to your customer account.</p>
					
					
					<c:if test="${not empty failedMsg }">
					<h6 class="text-center text-danger">${failedMsg}</h6>
					<c:remove var="failedMsg" scope="session" />
					</c:if>
					
									
					<form class="p-4" action="login" method="post">
						<div class="form-group">
					       <label for="email" class="form-label">Email address</label>
					       <input type="email" class="form-control" id="InputEmail1" aria-describedby="emailHelp" required="required" name="email">
					  	</div>					  	
					  	<div class="form-group">
					       <label for="password" class="form-label">Password</label>
					       <input type="password" class="form-control" id="InputPassword1" required="required" name="password">
					  	</div>
					  	<div class="col align-items-center mt-3">
						<div>
						    <div class="form-check">						      
						      <label class="form-check-label" for="inlineFormCheck">Remember Me</label>
						      <input class="form-check-input" type="checkbox" id="inlineFormCheck">  						      
						    </div>
						</div>						
						<div class="row align-items-center mt-3 p-2">
						    <button type="submit" class="btn btn-primary">Sign In</button>
						    <p class="text-center mt-2">No account yet? <a class="text-decoration-none" href="register.jsp">Create an account</a></p>
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