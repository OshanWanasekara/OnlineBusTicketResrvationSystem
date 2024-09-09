<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"  href="css/bootstrap.css">
<style>
.container{
width:40%;
}
h1{
font-size:50;
text-align:center;
}
</style>

<title>ScheduleCreation</title>
<link rel=stylesheet type=text/css href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<link rel="stylesheet"  href="css/bootstrap.css">
<link rel=stylesheet type=text/css href="adminpanel.css">
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
  
  <div class="container" id="container">
  <h1>Create Bus Schedule</h1>
  
        <form action="insert" method="post"  class="bg-light" class="border border-dark  rounded" style="border: 1px solid black;" >
          <div class="form-group" >
            <label  for="scheduleID" class="alert a px-1 py-1" >Schedule ID</label>
            <input class="form-control" type="text" name="scheduleID" pattern="SCH-\d{3}" title="Please enter a valid schedule ID (e.g., SCH-123)" required>
          </div> 

          <div class="form-group">
            <label for="departureLocation" class="alert a px-1 py-1">Departure Location</label>
            <input class="form-control" type="text" name="departureLocation" required>
          </div>

          <div class="form-group">
            <label for="arrivalLocation" class="alert a px-1 py-1">Arrival Location</label>
            <input class="form-control" type="text" name="arrivalLocation" required>
          </div>

          <div class="form-group">
            <label for="departureDate" class="alert a px-1 py-1">Departure Date</label>
            <input class="form-control" type="date" name="departureDate" pattern="\d{4}-\d{2}-\d{2}" title="Please enter a valid date in yyyy-mm-dd format" required>
          </div>

          <div class="form-group">
            <label for="departureTime" class="alert a px-1 py-1">Departure Time</label>
            <input class="form-control" type="time" name="departureTime" pattern="\d{2}:\d{2}" title="Please enter a valid time in hh:mm format" required>
          </div>

          <div class="form-group">
            <label for="arrivalDate" class="alert a px-1 py-1">Arrival Date</label>
            <input class="form-control" type="date" name="arrivalDate" pattern="\d{4}-\d{2}-\d{2}" title="Please enter a valid date in yyyy-mm-dd format" required>
          </div>

          <div class="form-group">
            <label for="arrivalTime" class="alert a px-1 py-1">Arrival Time</label>
            <input class="form-control" type="time" name="arrivalTime" pattern="\d{2}:\d{2}" title="Please enter a valid time in hh:mm format" required>
          </div>

          <div class="form-group">
            <label for="busName" class="alert a px-1 py-1">Bus Name</label>
            <input class="form-control" type="text" name="busName" pattern="[A-Z]{2}-\d{3}" title="Please enter a valid bus name (e.g., AB-123)" required>
          </div>

          <div class="form-group">
            <label for="busType" class="alert a px-1 py-1">Bus Type</label>
            <input class="form-control" type="text" name="busType" required>
          </div>

          <div class="form-group">
            <label for="routeNo" class="alert a px-1 py-1">Route No</label>
            <input class="form-control" type="text" name="routeNo" id="routeNo" pattern="[A-Z]\d{3}" title="please enter according to this format(e.g. A101)"required>
          </div>

          <div class="form-group">
            <label for="route" class="alert a px-1 py-1">Route</label>
            <input class="form-control" type="text" name="route" required>
          </div>

          <div class="form-group">
            <label for="availableSeat" class="alert a px-1 py-1">Available Seat</label>
            <input class="form-control" type="number" name="availableSeat" id="availableSeat" max="59" title="less than 60" required>
          </div>

          <div class="form-group">
            <label for="totalSeat" class="alert a px-1 py-1">Total Seat</label>
            <input class="form-control" type="number" name="totalSeat" id="totalSeat" max="59" title="less than 60" required>
          </div>

          <div class="form-group">
            <label for="ticketPrice" class="alert a px-1 py-1">Ticket Price</label>
            <input class="form-control" type="text" name="ticketPrice" id="ticketPrice" pattern="^Rs\.\d+\.\d{2}$" title="(e.g., Rs.100.00)" required>
          </div>

          <div class="form-group">
            <input  class="btn btn-primary" class="alert a px-3 py-2" type="submit" name="submit" value="Submit Schedule">
          </div>
        </form>
      </div>
   

    
    
   <script src="js/bootstrap.js"></script>
</body>
</html>