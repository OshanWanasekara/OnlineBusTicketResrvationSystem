<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,user-scalable=yes,
 maximum-scale=1.0,minimum-scale=1.0">
 <meta http-equiv="X-UA-Compatible" content="ie=edge">
 <link rel=stylesheet type=text/css href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
 <link rel="stylesheet" href="home.css">
 <link rel="stylesheet"  href="css/bootstrap.css">
 <script src="js/bootstrap.js"></script>

 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<title>EasyBus</title>
</head>
<body>
<img src="IMAGES/tr.jpg" style="position: fixed; top: 0; left: 0; width: 100%; height: 100%; object-fit: cover; z-index: -1;">
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
      <form class="form-inline my-2 my-lg-0" justify-content-end>
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form>
  
  </nav>
<div class="container" id="container">
<h1>Choose Your Ideal Schedule</h1>
<br>
<br>

<table class="table table-sm table-striped table-responsive">
    <c:forEach var="scd" items="${scdDetails}">
    
    <thead class="thread-dark">
    
    <tr>
    <th scope="col">scheduleID</th>
    <th scope="col">departureLocation</th>
    <th scope="col">arrivalLocation</th>
    <th scope="col">departureDate</th>
    <th scope="col">departureTime</th>
    <th scope="col">arrivalDate</th>
    <th scope="col">arrivalTime</th>
    <th scope="col">busName</th>
    <th scope="col">busType</th>
    <th scope="col">routeNo</th>
    <th scope="col">route</th>
    <th scope="col">availableSeat</th>
    <th scope="col">totalSeat</th>
    <th scope="col">ticketPrice</th>
    </tr>
    
    </thead>
    
    
    <tbody>
    
    <tr>
    <th scope="row">${scd.scheduleID}</th>
    <td>${scd.departureLocation}</td>
    <td>${scd.arrivalLocation}</td>
    <td>${scd.departureDate}</td>
    <td>${scd.departureTime}</td>
    <td>${scd.arrivalDate}</td>
    <td>${scd.arrivalTime}</td>
    <td>${scd.busName}</td>
    <td>${scd.busType}</td>
    <td>${scd.routeNo}</td>
    <td>${scd.route}</td>
    <td>${scd.availableSeat}</td>
    <td>${scd.totalSeat}</td>
    <td>${scd.ticketPrice}</td>
    </tr>
    
    </tbody>
    
    
    
    </c:forEach>



</table>
<a href="seat.jsp">
<button class="btn btn-primary">view seats</button>
</a>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
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
         <li><a href="FAQ.jsp" >FAQ</a></li>
          <li><a href="T&C.jsp" >T & C</a></li>
       
      
       </ul>
    
     </div>
       
       <div class="footerBottom" style="text-align:center; ;">
          <p>Copyright &copy;2023;Designed by <span class="designer">KUMARAGE D.C.K.</span></p>
       
       </div>
     
     </div>
      </footer>
      
</body>
</html>