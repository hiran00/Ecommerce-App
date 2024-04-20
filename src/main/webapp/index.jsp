<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="">
<title>E-Commerce Home</title>
<%@include file="common_files/common.jsp"%>
<link rel="stylesheet" href="css/index.css">

</head>
<body>
	<%@include file="common_files/header.jsp"%>

	<!-- Slider -->

	<div id="carouselExample" class="carousel slide">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="images/1.jpg" class="d-block w-100" alt="slider1"
					height="450px">
			</div>
			<div class="carousel-item">
				<img src="images/1.jpg" class="d-block w-100" alt="slider2"
					height="450px">
			</div>
			<div class="carousel-item">
				<img src="images/1.jpg" class="d-block w-100" alt="slider3"
					height="450px">
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
	<h2 class="text-center">Samsung Phones</h2>
		<div class="row">
			<div class=col-md-3>
				<div class="card crd-ho">
  					<div class="card-body text-center">	
  				  		 <img src="images/Samsung Galaxy S24 plus.jpg" class="card-img" alt="..." Style="width: 200px; height:200px">
 				 		 <h5 class="card-title">Samsung Galaxy S24+</h5>
 				 		 <p class="card-text">((12GB RAM|256GB ROM))</p>
  				   		 <p class="card-price">Rs.266,990.00</p>
    			 		 <a href="#" class="btn btn-primary">Add to Cart</a>
  					</div>
				</div>
			</div>
			<div class=col-md-3>
				<div class="card crd-ho">
  					<div class="card-body text-center">	
  				  		 <img src="images/Samsung Galaxy S23.jpg" class="card-img" alt="..." Style="width: 200px; height:200px">
 				 		 <h5 class="card-title">Samsung Galaxy S23</h5>
  				   		 <p class="card-text">((8GB RAM|128GB ROM))</p>
  				   		 <p class="card-price">Rs.194,990.00</p>
    			 		 <a href="#" class="btn btn-primary">Add to Cart</a>
  					</div>
				</div>
			</div>
			<div class=col-md-3>
				<div class="card crd-ho">
  					<div class="card-body text-center">	
  				  		 <img src="images/Samsung Galaxy S22 5G.jpg" class="card-img" alt="..." Style="width: 200px; height:200px">
 				 		 <h5 class="card-title">Samsung Galaxy S22 5G </h5>
  				   		 <p class="card-text">(8GB RAM | 256GB ROM)</p>
  				   		 <p class="card-price">Rs.189,990.00</p>
    			 		 <a href="#" class="btn btn-primary">Add to Cart</a>
  					</div>
				</div>
			</div>
			<div class=col-md-3>
				<div class="card crd-ho">
  					<div class="card-body text-center">	
  				  		 <img src="images/Samsung Galaxy S21 FE 5G.jpg" class="card-img" alt="..." Style="width: 200px; height:200px">
 				 		 <h5 class="card-title">Samsung Galaxy S21 FE</h5>
  				   		 <p class="card-text">(8GB RAM | 256GB ROM)</p>
  				   		 <p class="card-price">Rs.116,990.00</p>
    			 		 <a href="#" class="btn btn-primary">Add to Cart</a>
  					</div>
				</div>
			</div>
		</div>
 </div>
</div>	
			<div class="text-center mt-5">
				<a href="" class="btn btn-danger btn-md text-white">View More</a>
			</div>
			
			
<!-- Apple Phones -->

<div class="aproducts">
 <div class="container">
	<h2 class="text-center">Apple Phones</h2>
		<div class="row">
			<div class=col-md-3>
				<div class="card crd-ho">
  					<div class="card-body text-center">	
  				  		 <img src="images/Apple iPhone 15 Pro.jpg" class="card-img" alt="..." Style="width: 200px; height:200px">
 				 		 <h5 class="card-title">Apple iPhone 15 Pro</h5>
 				 		 <p class="card-text"> (512GB-DIRECT IMPORT)</p>
  				   		 <p class="card-price">Rs.379,990.00</p>
    			 		 <a href="#" class="btn btn-primary">Add to Cart</a>
  					</div>
				</div>
			</div>
			<div class=col-md-3>
				<div class="card crd-ho">
  					<div class="card-body text-center">	
  				  		 <img src="images/Apple iPhone 14 Pro.jpg" class="card-img" alt="..." Style="width: 200px; height:200px">
 				 		 <h5 class="card-title">Apple iPhone 14 Pro</h5>
  				   		 <p class="card-text">(256GB-DIRECT IMPORT)</p>
  				   		 <p class="card-price">Rs.339,990.00</p>
    			 		 <a href="#" class="btn btn-primary">Add to Cart</a>
  					</div>
				</div>
			</div>
			<div class=col-md-3>
				<div class="card crd-ho">
  					<div class="card-body text-center">	
  				  		 <img src="images/Apple iPhone 15.jpg" class="card-img" alt="..." Style="width: 200px; height:200px">
 				 		 <h5 class="card-title">Apple iPhone 15 </h5>
  				   		 <p class="card-text">(128GB-DIRECT IMPORT)</p>
  				   		 <p class="card-price">Rs.231,990.00</p>
    			 		 <a href="#" class="btn btn-primary">Add to Cart</a>
  					</div>
				</div>
			</div>
			<div class=col-md-3>
				<div class="card crd-ho">
  					<div class="card-body text-center">	
  				  		 <img src="images/apple-iphone 12.jpg" class="card-img" alt="..." Style="width: 200px; height:200px">
 				 		 <h5 class="card-title">Apple iPhone 12 </h5>
  				   		 <p class="card-text">(128GB-DIRECT IMPORT)</p>
  				   		 <p class="card-price">Rs.162,990.00</p>
    			 		 <a href="#" class="btn btn-primary">Add to Cart</a>
  					</div>
				</div>
			</div>
		</div>
 </div>
</div>	
			<div class="text-center mt-5">
				<a href="" class="btn btn-danger btn-md text-white">View More</a>
			</div>

<!-- Mobile Accessories -->

<div class="xproducts">
 <div class="container">
	<h2 class="text-center">Mobile Accessories</h2>
		<div class="row">
			<div class=col-md-3>
				<div class="card crd-ho">
  					<div class="card-body text-center">	
  				  		 <img src="images/Samsung Power Adapter.jpg" class="card-img" alt="..." Style="width: 200px; height:200px">
 				 		 <h5 class="card-title">Samsung Power Adapter </h5>
  				   		 <p class="card-text">(15W USB PD Type-C Port)</p>
  				   		 <p class="card-price">Rs.266,990.00</p>
    			 		 <a href="#" class="btn btn-primary">Add to Cart</a>
  					</div>
				</div>
			</div>
			<div class=col-md-3>
				<div class="card crd-ho">
  					<div class="card-body text-center">	
  				  		 <img src="images/Baseus Lens Film For iPhone 14.jpg" class="card-img" alt="..." Style="width: 200px; height:200px">
 				 		 <h5 class="card-title">Baseus Lens Film</h5>
  				   		 <p class="card-text">(For iPhone 14 & 14 pro)</p>
  				   		 <p class="card-price">Rs.266,990.00</p>
    			 		 <a href="#" class="btn btn-primary">Add to Cart</a>
  					</div>
				</div>
			</div>
			<div class=col-md-3>
				<div class="card crd-ho">
  					<div class="card-body text-center">	
  				  		 <img src="images/Joyroom Wall Charger.jpg" class="card-img" alt="..." Style="width: 200px; height:200px">
 				 		 <h5 class="card-title">Joyroom Wall Charger</h5>
  				   		 <p class="card-text">(20W PD Fast Charging)</p>
  				   		 <p class="card-price">Rs.266,990.00</p>
    			 		 <a href="#" class="btn btn-primary">Add to Cart</a>
  					</div>
				</div>
			</div>
			<div class=col-md-3>
				<div class="card crd-ho">
  					<div class="card-body text-center">	
  				  		 <img src="images/Headset Protective Case.jpg" class="card-img" alt="..." Style="width: 200px; height:200px">
 				 		 <h5 class="card-title">Headset Protective Case</h5>
 				 		 <p class="card-text">(for Galaxy Buds Live)</p>
  				   		 <p class="card-price">Rs.87,500.00</p>
    			 		 <a href="#" class="btn btn-primary">Add to Cart</a>
  					</div>
				</div>
			</div>
		</div>
 </div>
</div>	
			<div class="text-center mt-5">
				<a href="" class="btn btn-danger btn-md text-white">View More</a>
			</div>
</section>

<%@include file="common_files/footer.jsp"%>
</body>
</html>