<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Cancellation</title>
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="css1/cancellationRes.css">
<link rel="stylesheet" type="text/css" href="css1/footer.css">
<link rel="stylesheet" type="text/css" href="css1/nav.css">
<link rel=stylesheet type=text/css href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<style >
.hero{
	width: 100%;
	height: 100vh;
	background-image:url('mg/cancellationForm.jpg');
	background-position: center;
	background-size: cover;
	display: flex;
	align-items: center;
	justify-content: center;
}
.hero::after {
  content: "Send Your Cancellation Request"; 
  position: absolute;
  top: 10%; 
  text-align:center;
  transform: 
  color: white; 
  font-size: 36px; 
  font-weight: bold; 
}
</style>

</head>
<body>

   <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  
  <a href="" class="navbar-brand"><img src="mg/logo-modified.png"  class="img-fluid mr-2 custom-logo">EasyBus</a>
 
  <div class="collapse navbar-collapse justify-content-center">
  <ul class="navbar-nav">
  
      <li class="nav-item active"><a href="" class="nav-link">Home</a> </li>
      <li class="nav-item"><a href="MyRes.jsp" class="nav-link">MyReservation</a> </li>
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

   
   <div class="hero">
   
   <form action="avoid" method="post">
     <div class="row">
       
       <div class="input-group">
          <input type="text" name="user_name" required>
          <label for="user_name">User Name</label>
       </div>
       
        
       <div class="input-group">
          <input type="text" name="ref_id" pattern="^EB-\d{5}" title="Please enter a valid ID type" required>
          <label for="ref_id">Reference Id</label>
       </div>
       
     </div>
           
       <div class="input-group">
          <input type="text" name="email" placeholder="abc@gmail.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}">
          <label for="email">E-mail</label>
       </div>
       
        
       <div class="input-group">
          <textarea id="reason" rows="3" name="reason" required></textarea>
          <label for="reason">Reason</label>
       </div>
       
       <div class="input-group">
          <textarea id="details" rows="8" name="details" required></textarea>
          <label for="details">Bank Details</label>
       </div>
       
       <input type="submit" value="SEND" name="submit">
   </form>   
   
   </div>
   
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