<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update here</title>

	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">

<link rel=stylesheet type=text/css href="adminpanel.css">
<link rel=stylesheet type=text/css href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<script src="js/bootstrap.js"></script>  
	<style>
	.container{
	      width:60%;
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
          <li><a href="AdminReservationView.jsp"><i class="fas fa-book"></i>Manage Reservation</a></li>
          <li><a href="ScheduleList.jsp"><i class="fas fa-calendar"></i>Manage Bus Schedule</a></li>
          <li><a href="Busaccount.jsp"><i class="fas fa-bus"></i>Manage Bus Details</a></li>
          <li><a href="home.jsp"><i class="fas fa-home"></i>Back to Home</a></li>
          
         
       </ul>

  </div>
  
<div class="container">
<div class="card">
<div class="card-body">
<div align="center">
<h1>Update Profile</h1>
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
    
<form action="parent" method="post" class="container" id="container">

<div class="form-floating mb-2">
     <label for="floatingInput">Id</label>
   <input type="text" name="id" class="form-control"  placeholder="Enter Fullname" value="<%=id %>" readonly>
   </div>
   

    <div class="form-floating mb-2">
     <label for="floatingInput">Full Name</label>
   <input type="text" name="name" class="form-control"  placeholder="Enter Fullname" value="<%=name %>" >
   </div>
   
      <div class="form-floating mb-2">
     <label for="floatingInput">Email Address</label>
   <input type="text" name="email" class="form-control"  placeholder="Enter Email" value="<%=email %>" >
   </div>
   
      <div class="form-floating mb-2">
     <label for="floatingInput">Phone Number</label>
   <input type="text" name="phone" class="form-control"  placeholder="Enter PhoneNumber" value="<%=phone %>" >
   </div>
   
      <div class="form-floating mb-2">
     <label for="floatingInput">City</label>
   <input type="text" name="city" class="form-control"  placeholder="Enter City" value="<%=city %>" >
   </div>
   
      <div class="form-floating mb-2">
     <label for="floatingInput">District</label>
   <input type="text" name="district" class="form-control"  placeholder="Enter District" value="<%=district %>" >
   </div>
   
      <div class="form-floating mb-2">
     <label for="floatingInput">User Name</label>
   <input type="text" name="uname" class="form-control"  placeholder="Enter Username" value="<%=username %>" >
   </div>
   
   <div class="form-floating">
    <label for="password">Password</label>
   <input type="password" name="pass" class="form-control"  placeholder="Enter Password" value="<%=password %>" ><br><br>
   </div>
  
   <input type="submit" name="submit" value="Update" class="btn btn-success" >
   
  

 </form>
</div>
</div>
</div>
</body>
</html>

    