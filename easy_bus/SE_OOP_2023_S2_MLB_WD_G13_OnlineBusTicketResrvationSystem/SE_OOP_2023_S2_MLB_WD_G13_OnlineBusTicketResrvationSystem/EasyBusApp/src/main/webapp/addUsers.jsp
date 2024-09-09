<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/bootstrap.js"></script>  

<link rel=stylesheet type=text/css href="adminpanel.css">
<link rel=stylesheet type=text/css href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<style>
    .container{
         width:40%;
    }
</style>
</head>
<body>

 <input type="checkbox" id="check">
<label for="check">
  <i class="fas fa-bars" id="btn"></i>
  <i class="fas fa-times" id="cancel"></i>
</label>
  <div class="sidebar">
      <header>EasyBus</header>
       <ul>
          <li><a href="adminpanel.jsp"><i class="fas fa-qrcode"></i>Dashboard</a></li>
          <li><a href="viewrecords.jsp"><i class="fas fa-users"></i>Manage Users</a></li>
          <li><a href=""><i class="fas fa-book"></i>Manage Reservation</a></li>
          <li><a href="ScheduleList.jsp"><i class="fas fa-calendar"></i>Manage Bus Schedule</a></li>
          <li><a href=""><i class="fas fa-bus"></i>Manage Bus Details</a></li>
          
         
       </ul>



  </div>

<div class="container">

<div class="card">
<div class="card-body">

<form action="fast" method="post" >
         <div align="center">
            <h1>Add Users</h1>
       </div>
    <div class="form-floating mb-2">
     <label for="floatingInput">Full Name</label>
   <input type="text" name="name" class="form-control" placeholder="Enter Fullname" required>
   </div>
   
      <div class="form-floating mb-2">
     <label for="floatingInput">Email Address</label>
   <input type="text" name="email" class="form-control"  placeholder="Enter Email" required>
   </div>
   
      <div class="form-floating mb-2">
     <label for="floatingInput">Phone Number</label>
   <input type="text" name="phone" class="form-control"  placeholder="Enter PhoneNumber"  required>
   </div>
   
      <div class="form-floating mb-2">
     <label for="floatingInput">City</label>
   <input type="text" name="city" class="form-control"  placeholder="Enter City" required>
   </div>
   
      <div class="form-floating mb-2">
     <label for="floatingInput">District</label>
   <input type="text" name="district" class="form-control"  placeholder="Enter District" required>
   </div>
   
      <div class="form-floating mb-2">
     <label for="floatingInput">User Name</label>
   <input type="text" name="uid" class="form-control"  placeholder="Enter Username" required>
   </div>
   
   <div class="form-floating">
    <label for="password">Password</label>
   <input type="password" name="psw" class="form-control"  placeholder="Enter Password" required><br><br>
   </div>
 
   <input type="submit" name="submit" value="Add User" class="btn btn-primary" ><br><br>
   
 
 </form>
 </div>
</div>
</div>




</body>
</html>