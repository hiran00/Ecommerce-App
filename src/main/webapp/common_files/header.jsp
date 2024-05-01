<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>


<div class="container-fluid p-3">
	<div class="row">
		<div class="col d-flex align-items-center">
			<a class="navbar-brand" href="#">
                  <img src="images/Vyxo Website Logo tp.png" alt="website logo" Style="width: 60px; height:20px">
            </a>
		</div>
		<div class="col-6" >
			<form class="d-flex" role="search">
        		<input class="form-control me-2" type="search" placeholder="Search for products" aria-label="Search">
       			<button class="btn btn-outline-success" type="submit">Search </button>
       		</form>
		</div>	
		
		
		<c:if test="${not empty userobj}">
		
		<div class="col d flex align-items-center">
		<a data-bs-toggle="modal" data-bs-target="#exampleModal"><button class="accountbtn">Logout <i class="fa-solid fa-right-to-bracket fa-sm"></i></button></a>
		<a href="cart.jsp"><button class="accountbtn"><i class="fa-solid fa-cart-shopping fa-xs"></i> Cart</button></a>
		</div>
		
		</c:if>
		
		<c:if test="${empty userobj}">
		
		<div class="col d flex align-items-center">
		<a href="login.jsp"><button class="accountbtn"><i class="fa-solid fa-right-to-bracket fa-sm"></i> Login</button></a>
		<a href="register.jsp"><button class="accountbtn"><i class="fa-solid fa-user-plus fa-sm"></i> Register</button></a>
		</div>
		</c:if>
	</div>
</div>

<!-- Logout Modal -->

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    	<div class="modal-header">
        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      	</div>
      <div class="modal-body">
      	<div class="text-center mb-3">     			
      			<h5>Confirm Logout</h5>
      			<p>Are you sure you want to logout ?     			
      		  <div>
        		<a href="logout" type="button" class="btn btn-primary">Yes, Logout</a>
        		<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>	
     		  </div>
      	</div>
      </div>
    </div>
  </div>
</div>

<!-- Navbar -->

<nav class="navbar navbar-expand-lg bg-custom sticky-top">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Smart Phones
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="all_samsung.jsp">Samsung Phones</a></li>
            <li><a class="dropdown-item" href="all_apple.jsp">Apple Phones</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="all_accessories.jsp">Accessories</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Contact</a>
        </li>
      </ul>
      
      <span class="hotline"><i class="fa-solid fa-phone fa-sm"></i> Hotline : 011 2345678</span>           
            
    </div>
  </div>
</nav>
