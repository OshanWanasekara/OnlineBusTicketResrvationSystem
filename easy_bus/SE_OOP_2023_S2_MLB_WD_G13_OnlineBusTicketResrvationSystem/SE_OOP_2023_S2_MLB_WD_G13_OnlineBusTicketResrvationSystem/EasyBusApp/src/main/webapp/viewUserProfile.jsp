<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Profile data here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/bootstrap.js"></script>  

<link rel=stylesheet type=text/css href="footerM.css">
 <link rel=stylesheet type=text/css href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

	<style>
	.container{
	      width:50%;
	      opacity:0.9;
          margin-top:40px;
	}
	
	.background-image{
	
      background-repeat:no-repeat;
      background-size:100%;
      
 }

 
	</style>
	
</head>


<body background="imgM/imgbus3.jpg" class="background-image">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  
  <a href="" class="navbar-brand"><img src="imgM/logo-modified.png"  class="img-fluid mr-2 custom-logo">EasyBus</a>
 
  <div class="collapse navbar-collapse justify-content-center">
  <ul class="navbar-nav">
  
      <li class="nav-item active"><a href="" class="nav-link">Home</a> </li>
      <li class="nav-item"><a href="" class="nav-link">MyReservation</a> </li>
      <li class="nav-item"><a href="" class="nav-link">Contact</a> </li>
      <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Account
      </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
      
          <a class="dropdown-item" href="insertUser.jsp">SignUp</a>
          <a class="dropdown-item" href="userlogin.jsp">Login</a>
      
        </div>
      </li>
  
  </ul>
  </div>
      <form class="form-inline my-2 my-lg-0" justify-content-end>
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form>
  
  </nav>



<div class="container">
<div class="card">
<div class="card-body">
<div align="center">

<h1>User Profile</h1>

<table class="table table-striped">
	<c:forEach var="us" items="${usDetails}">
	<c:set var= "id" value="${us.id}"/>
	<c:set var= "name" value="${us.name}"/>
	<c:set var= "email" value="${us.email}"/>
	<c:set var= "phone" value="${us.phone}"/>
	<c:set var= "city" value="${us.city}"/>
	<c:set var= "district" value="${us.district}"/>
	<c:set var= "username" value="${us.username}"/>
	<c:set var= "password" value="${us.password}"/>
	
	
	
	<tr>
		<td>ID</td>
		<td>${us.id}</td>
	</tr>
	<tr>
		<td>Name</td>
		<td>${us.name}</td>
	</tr>
	<tr>
		<td>Email Address</td>
		<td>${us.email}</td>
	</tr>
	<tr>
		<td>Phone Number</td>
		<td>${us.phone}</td>
	</tr>
	
	<tr>
		<td>City</td>
		<td>${us.city}</td>
	</tr>
	
	<tr>
		<td>District</td>
		<td>${us.district}</td>
	</tr>
	<tr>
		<td>User Name</td>
		<td>${us.username}</td>
	</tr>
	
	
	</c:forEach>
</table>	
	<c:url value="updateUser.jsp" var="usupdate">
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="phone" value="${phone}"/>
	<c:param name="city" value="${city}"/>
	<c:param name="district" value="${district}"/>
	<c:param name="uname" value="${username}"/>
	<c:param name="pass" value="${password}"/>
	</c:url>

	<a href="${usupdate}">
	<input type="button" name="update" value="Update profile" class="btn btn-success"><br>
	</a>
	<br>
	<c:url value="deleteUser.jsp" var="usdelete">
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="phone" value="${phone}"/>
	<c:param name="city" value="${city}"/>
	<c:param name="district" value="${district}"/>
	<c:param name="uname" value="${username}"/>
	<c:param name="pass" value="${password}"/>
	</c:url>
	
	<a href="${usdelete}">
	<input type="button" name="delete" value="Delete" class="btn btn-danger">
	</a>
	</div>
	</div>
	</div>
</div>



 <br>
<footer style="background-color: #000;">
     <div class="footerContainer">
       <div class="socialIcons">
         <a href="#"><i class="fa-brands fa-facebook"></i></a>
         <a href="#"><i class="fa-brands  fa-twitter"></i></a>
         <a href="#"><i class="fa-brands  fa-instagram"></i></a>
        <a href="#"><i class="fa-brands  fa-youtube"></i></a>
        <a href="#"><i class="fa-brands  fa-google-plus"></i></a>
        <a href="#"><i class="fab fa-cc-visa"></i></a>
        <a href="#"><i class="fab fa-cc-mastercard"></i></a>
        <a href="#"><i class="fab fa-cc-paypal"></i></a>
        </div>
     <div class="footerNav">
       <ul>
         <li><a href="" >FAQ</a></li>
          <li><a href="" >T & C</a></li>
       
      
       </ul>
    
     </div>
       
       <div class="footerBottom" style="text-align: center;">
          <p>Copyright &copy;2023;Designed by <span class="designer">KUMARAGE D.C.K.</span></p>
       
       </div>
     
     </div>
      </footer>
  
		
</body>

</html>
