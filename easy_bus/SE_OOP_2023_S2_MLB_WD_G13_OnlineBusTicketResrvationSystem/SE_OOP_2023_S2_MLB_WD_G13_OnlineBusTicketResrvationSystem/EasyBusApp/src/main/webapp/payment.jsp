<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,user-scalable=yes,
 maximum-scale=1.0,minimum-scale=1.0">
 <meta http-equiv="X-UA-Compatible" content="ie=edge">
 <link rel=stylesheet type=text/css href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
 <link rel="stylesheet" href="payment.css">
 <link rel="stylesheet" href="nav.css">
 <link rel="stylesheet" href="footer.css">
 <link rel="stylesheet"  href="css/bootstrap.css">
 <script src="js/bootstrap.js"></script>

 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<title>EasyBus</title>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  
  <a href="" class="navbar-brand"><img src="IMAGES/logo-modified.png"  class="img-fluid mr-2 custom-logo">EasyBus</a>
 
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
      
          <a class="dropdown-item" href="#">SignUp</a>
          <a class="dropdown-item" href="#">Login</a>
         
      
      
      
        </div>
      </li>
  
  </ul>
  </div>
      <form class="form-inline my-2 my-lg-0" style="justify-content-end">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form>
  
  </nav>


<div class="background-image">
<div class="container">

    <form action="Success.jsp">

        <div class="row">

            

            <div class="col">

                <h3 class="title">payment</h3>

                <div class="inputBox">
                    <span>cards accepted :</span>
                    <img src="IMAGES/card_img.png" alt="">
                </div>
                <div class="inputBox">
                    <span>name on card :</span>
                    <input type="text" placeholder="mr.dineth chamupathi">
                </div>
                <div class="inputBox">
                    <span>credit card number :</span>
                    <input type="number" placeholder="1111-2222-3333-4444">
                </div>
                <div class="inputBox">
                    <span>exp month :</span>
                    <input type="text" placeholder="january">
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>exp year :</span>
                        <input type="number" placeholder="2023">
                    </div>
                    <div class="inputBox">
                        <span>CVV :</span>
                        <input type="text" placeholder="123">
                    </div>
                </div>

            </div>
    
        </div>
        
        <input type="submit" value="Pay" class="submit-btn">
        
    </form>

</div> 


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