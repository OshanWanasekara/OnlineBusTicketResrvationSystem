<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Check My Reservation</title>
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="css1/ReservationCheck.css">
<link rel="stylesheet" type="text/css" href="css1/footer.css">
<link rel="stylesheet" type="text/css" href="css1/nav.css">
<link rel=stylesheet type=text/css href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  
  <a href="" class="navbar-brand"><img src="mg/logo-modified.png"  class="img-fluid mr-2 custom-logo">EasyBus</a>
 
  <div class="collapse navbar-collapse justify-content-center">
  <ul class="navbar-nav">
  
      <li class="nav-item "><a href="home.jsp" class="nav-link">Home</a> </li>
      <li class="nav-item active"><a href="MyRes.jsp" class="nav-link">MyReservation</a> </li>
      <li class="nav-item"><a href="" class="nav-link">Contact</a> </li>
      <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Account
      </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
      
          <a class="dropdown-item" href="#">SignUp</a>
          <a class="dropdown-item" href="#">Login</a>
         
      
      
      
        </div>
      </li>
  
  </ul>
  </div>
      <form class="form-inline my-2 my-lg-0" justify-content-end>
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form>
  
  </nav>

   <section class="Form my-4 mx-5">
     <div class="container">
        <div class="row no-gutters">
             <div class="col-lg-5">
                <img alt=""  class="img-fluid" src="mg/resCheck.jpg">
             </div>
             <div class="col-lg-7 px-5 pt-5">
               <h3>Check your reservation details</h3>
                <form action="nice" method="post">
                    <div class="form-row">
                        <div class="col-lg-7">
                            Reference Id<br>
                            <input type="text" class="form-control my-3 p-4" name="ref_id" placeholder="Enter your Reference Id">
                        </div>
                    </div>
                    
                     <div class="form-row">
                        <div class="col-lg-7">
                            UserName<br>
                            <input type="text" class="form-control  my-3 p-4" name="uname" placeholder="Enter user name">
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="col-lg-7">             
                            <input type="submit" class="btn1 mt-3 mb-5" name="submit" value="Find Reservation Details">
                        </div>
                    </div>
                </form>
             </div>
        </div>
   
     </div>
   </section>

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
         <li><a href="FAQ.jsp" >FAQ</a></li>
          <li><a href="T&C.jsp" >T & C</a></li>
       
      
       </ul>
    
     </div>
       
       <div class="footerBottom" style="text-align: center;">
          <p>Copyright &copy;2023;Designed by <span class="designer">KUMARAGE D.C.K.</span></p>
       
       </div>
     
     </div>
      </footer>

</body>
</html>