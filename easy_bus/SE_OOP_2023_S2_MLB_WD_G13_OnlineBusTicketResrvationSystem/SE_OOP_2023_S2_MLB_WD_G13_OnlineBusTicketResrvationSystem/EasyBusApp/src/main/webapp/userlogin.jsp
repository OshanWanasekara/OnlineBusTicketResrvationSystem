<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login here</title>

<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/bootstrap.js"></script> 

<link rel=stylesheet type=text/css href="footerM.css">
 <link rel=stylesheet type=text/css href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
 
<style>

  .container{
      width:40%;
      opacity:0.8;
      margin-top:100px;
  }

 .background-image{
      background-repeat:no-repeat;
      background-size:100%;
     
      
 }
 
  
</style>

</head>

<body background="imgM/imgbus5.jpg" class="background-image">

 <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  
  <a href="" class="navbar-brand"><img src="imgM/logo-modified.png"  class="img-fluid mr-2 custom-logo">EasyBus</a>
 
  <div class="collapse navbar-collapse justify-content-center">
  <ul class="navbar-nav">
  
      <li class="nav-item active"><a href="home.jsp" class="nav-link">Home</a> </li>
      <li class="nav-item"><a href="MyRes.jsp" class="nav-link">MyReservation</a> </li>
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


<div class="container" id="container">

<div class="card" >
<div class="card-body">

<form action="enter" method="post" class="formgroup">
    <div align="center">
          <h1 style="color:black;">Login Page</h1>
     </div>
    <div class="form-floating mb-2">
     <label for="floatingInput">User Name</label>
   <input type="text" name="uid" class="form-control"  placeholder="Enter Username" required>
   </div>
   <div class="form-floating">
    <label for="password">Password</label>
   <input type="password" name="pass" class="form-control"  placeholder="Enter Password" required><br><br>
   </div>
  
   <input type="submit" name="submit" value="login" class="btn btn-primary"> <br>
   <a href="insertUser.jsp">New Registration Here</a>  &gt;
   <a href="Adminlogin.jsp">Admin Login Here</a>
   
  

 </form>
 </div>
</div>
</div>


 
 
 <div style="margin-top:20%;">
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
  </div>


</body>
</html>