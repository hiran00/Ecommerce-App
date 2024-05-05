<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Success</title>

<%@include file="common_files/common.jsp"%>
</head>
<body>
<%@include file="common_files/header.jsp"%>


<div class="container text-center p-5">
	<div class="row">
		<div class="col-md-6 mx-auto">
			<div class="card py-3">
				<div class="card-body">	
				
					<i class="fas fa-check-circle fa-5x text-success"></i>
					<h2 class="fw-bold mt-3">Thank You!</h2>
					<h4 class="fw-bold">Your Order is successfully placed.</h4>
					<p>Within the next 7 days, your product will be delivered to your doorstep.</p>
					<a href="index.jsp" class="btn btn-success mt-4">Continue Shopping</a>
										
				</div>	
			</div>
		</div>
	</div>			
</div>


<%@include file="common_files/footer.jsp"%>
</body>
</html>