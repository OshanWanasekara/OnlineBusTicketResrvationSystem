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
 <link rel="stylesheet" href="home.css">
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
  
 
  <div class="carousel">
  
  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="IMAGES/bus8.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5 class=" font-weight-bold">Travel with Confidence</h5>
          <p class=" font-weight-bold">Travel with confidence knowing that our bus services are safe and reliable. We're committed to providing you with a comfortable journey</p>
        </div>
      </div>  
      <div class="carousel-item">
        <img src="IMAGES/bus10.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5 class=" font-weight-bold">Quick and Easy Booking</h5>
          <p class=" font-weight-bold">Experience the simplicity of online bus ticket reservation. With EasyBus, booking your bus tickets has never been this straightforward. Say goodbye to long queues and hello to convenience</p>
        </div>
      </div>
      
      <div class="carousel-item ">
        <img src="IMAGES/67.png" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5 class="font-weight-bold text-primary">24/7 Customer Support</h5>
          <p class=" font-weight-bold text-primary">Questions? Concerns? We're here for you 24/7. Our dedicated customer support team is ready to assist you at any time, ensuring you have a smooth and hassle-free journey.</p>
        </div>
      </div>  
      
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  </div>

 
   
  
 
 
<div class="container">
   <div class="center-form">
  
   <div class="card card-sm ">
   <div class="card-body">
    <form action="view" method="post" class="form-inline">
    
   
       <div class="form-group row">
         <label for="departureLocation" class="col-sm-2 col-form-label" ><h5 class=" font-weight-bold text-dark">From</h5></label>
         <div class="col-sm-2">
            <select class="form-select form-select-sm" name="departureLocation" required>
            <option ></option>
            <option value="Panadura">Panadura</option>
            <option value="Kottawa">Kottawa</option>
            <option value="Galle">Galle</option>
            <option value="Maharagama">Maharagama</option>
          
            </select>
            </div>
            </div>
       
       
       <div class="form-group row">
         <label for="arrivalLocation" class="col-sm-2 col-form-label"><h5 class=" font-weight-bold text-dark">To</h5></label>
         <div class="col-sm-2">
            <select class="form-select form-select-sm" name="arrivalLocation" required>
            <option ></option>
            <option value="Dehiwala">Dehiwala</option>
            <option value="Pannipitiya">Pannipitiya</option>
            <option value="Colombo">Colombo</option>
            <option value="Nugegoda">Nugegoda</option>
         
            </select>
            </div>
               </div>
       
       
       <div class="form-group row">
         <label for="departureDate" class="col-sm-3 col-form-label"><h5 class=" font-weight-bold text-dark">Date</h5></label>
         <div class="col-sm-3">
             <select class="form-select form-select-sm" name="departureDate" required>
             <option ></option>
             <option value="2022-10-01">2022-10-01</option>
             <option value="2022-10-02">2022-10-02</option>
             <option value="2022-10-03">2022-10-03</option>
             <option value="2022-10-04">2022-10-04</option>
           
             </select>
             </div>
             </div>
         
          
             <div class="form-group row">
             <div class="col-sm-12">
         <input class="btn btn-dark btn-block font-weight-bold fs-5" type="submit" name="view" value="view">
         </div>
           </div>
      
       </form>
       
      </div>
      
    </div>

   </div>
  
 
<div class="heading mt-0">
  <h1>About Us</h1>
  <p>EasyBus streamline the entire booking process, reduce the risk of overbooking, and enhance operational efficiency for bus companies, while providing passengers with the flexibility to plan their trips with ease</p>

</div>
 
 <section class="about">
        <div class="about-image">
           <img src="IMAGES/about.jpg">
           </div>
        <div class="about-content">
        <input id="ch" type="checkbox" checked>
           <h2>Discover EasyBus: Your Convenient Gateway to Hassle-Free Bus Ticket Reservations </h2>
           <p>At EasyBus, we're dedicated to providing you with a seamless and reliable bus ticket booking experience. Our mission is to make your journey as comfortable and stress-free as possible. With a commitment to safety and efficiency, we offer a wide range of destinations and routes to suit your travel needs.
              We understand that convenience is key, and that's why we've made online booking a breeze. Say goodbye to long queues and hello to quick and easy reservations. Our user-friendly platform allows you to select your departure and arrival locations, choose your travel date, and secure your seat in just a few clicks.
              Safety is our top priority. We ensure that our bus services are well-maintained, and our drivers are experienced and professional. You can travel with confidence, knowing that your well-being is our concern.......
              </p>
              <div class="content">
           <p> If you ever have questions or concerns, our dedicated customer support team is here for you 24/7. We believe in providing assistance at any time to ensure that your journey is smooth and hassle-free. Your satisfaction is our success.
              Easy Bus is not just a bus ticket reservation system; it's your travel companion. We're passionate about promoting sustainable and environmentally friendly travel. As we expand our services, we're committed to minimizing our impact on the environment and contributing to a greener, healthier future.
              Thank you for choosing Easy Bus as your travel partner. We look forward to serving you and making your journey a memorable one. </p>
           <label for="ch" class="read-more">Show less</label>
              </div>
          
           <label for="ch" class="read-more">Read More</label>
          
               
        </div>
    
     </section>
 <hr>   
     <div class="section">
        <div class="title">
            <h1>Why EasyBus: Your Ultimate Travel Companion</h1>
       </div>
       <div class="services">
      
          <div class="cas">
          
             <div class="icon">
               <i class="fa fa-ticket" style="font-size: 35px;"></i>
             </div>
            
              <h2>BookEasy</h2>
             
              <p>With just a few clicks, you can secure your tickets, streamlining your journey for ultimate convenience. We believe in hassle-free travel, making your trip memorable.</p>
           
             
             
              </div>  
         
         
        
          <div class="cas">
             <div class="icon">
               <i class="fa fa-shield" style="font-size: 35px;"></i>
             </div>
              <h2>SafeRide</h2>
              <p> SafeRide ensures your peace of mind. Prioritizing safety, our well-maintained buses and experienced drivers guarantee your well-being and a secure journey.</p>
              
          </div>
         
          
        
          <div class="cas">
             <div class="icon">
               <i class="fa fa-map" style="font-size: 35px;"></i>
             </div>
              <h2>GoWide</h2>
              <p>GoWide offers diverse routes. Whether you commute or explore leisurely, Easy Bus has you covered. Countless options make your journey choices abundant and exciting.</p>
             
          </div>
   
      
       </div>
     
     </div>
     <hr>
     <div class="client-wrap">
        <h1>Our Partners</h1>
        <hr/>
        <div class="client-in">
         <ul> 
            <li>
            <img src="IMAGES/12.png"  alt="" />
            </li>
            <li>
            <img src="IMAGES/13.png"  alt="" />
            </li>
             <li>
            <img src="IMAGES/17.png"  alt="" />
            </li>
             <li>
            <img src="IMAGES/15.png"  alt="" />
            </li>
            <li>
            <img src="IMAGES/14.png"  alt="" />
            </li>
             
         </ul>
       </div> 
     </div>
    </div>
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