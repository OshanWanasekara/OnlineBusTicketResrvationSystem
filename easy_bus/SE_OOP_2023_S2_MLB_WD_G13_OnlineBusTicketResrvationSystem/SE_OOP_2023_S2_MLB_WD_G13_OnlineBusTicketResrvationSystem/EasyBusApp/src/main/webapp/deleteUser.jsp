<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/bootstrap.js"></script>  
<link rel=stylesheet type=text/css href="footerM.css">
 <link rel=stylesheet type=text/css href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>


	
	<style>
 .container{
      width:60%;
      opacity:0.95;
      margin-top:10px;
  }
  
  .background-image{
      background-repeat:no-repeat;
      background-size:cover;
      
 }
 
 
	</style>
	

</head>
<body background="imgM/img1.jpg" class="background-image">

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
<h1>Delete Account</h1>
</div>
   <%
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String city = request.getParameter("city");
        String district = request.getParameter("district");
        String username = request.getParameter("uname");
        String password = request.getParameter("pass");
    
    %>
    
    
 <form action="bin" method="post" class="container" id="container">

<div class="form-floating mb-2">
     <label for="floatingInput">Id</label>
   <input type="text" name="usid" class="form-control"  value="<%=id %>" readonly>
   </div>
   

    <div class="form-floating mb-2">
     <label for="floatingInput">Full Name</label>
   <input type="text" name="name" class="form-control" value="<%=name %>" readonly>
   </div>
   
      <div class="form-floating mb-2">
     <label for="floatingInput">Email Address</label>
   <input type="text" name="email" class="form-control" value="<%=email %>" readonly>
   </div>
   
      <div class="form-floating mb-2">
     <label for="floatingInput">Phone Number</label>
   <input type="text" name="phone" class="form-control" value="<%=phone %>" readonly>
   </div>
   
      <div class="form-floating mb-2">
     <label for="floatingInput">City</label>
   <input type="text" name="city" class="form-control"  value="<%=city %>" readonly>
   </div>
   
      <div class="form-floating mb-2">
     <label for="floatingInput">District</label>
   <input type="text" name="district" class="form-control"   value="<%=district %>" readonly>
   </div>
   
      <div class="form-floating mb-2">
     <label for="floatingInput">User Name</label>
   <input type="text" name="uname" class="form-control"  value="<%=username %>" readonly>
   </div>
   
   <div class="form-floating">
    <label for="password">Password</label>
   <input type="password" name="pass" class="form-control"  value="<%=password %>" readonly><br><br>
   </div>
  
   <input type="submit" name="submit" value="Delete" class="btn btn-danger" >
   
 </form>
</div>
</div></div>
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