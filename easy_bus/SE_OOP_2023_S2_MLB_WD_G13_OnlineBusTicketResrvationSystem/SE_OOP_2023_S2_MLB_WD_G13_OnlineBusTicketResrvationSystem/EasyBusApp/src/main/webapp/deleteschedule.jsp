<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel=stylesheet type=text/css href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<link rel="stylesheet"  href="css/bootstrap.css">
<link rel=stylesheet type=text/css href="adminpanel.css">

<style>
.container{
width:40%;
}
h1{
font-size:50;
text-align:center;
}
</style>
<script src="js/bootstrap.js"></script>
<title></title>
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

<%

  String scheduleID=request.getParameter("scheduleID");
  String departureLocation=request.getParameter("departureLocation");
  String arrivalLocation=request.getParameter("arrivalLocation");
  String departureDate=request.getParameter("departureDate");
  String departureTime=request.getParameter("departureTime");
  String arrivalDate=request.getParameter("arrivalDate");
  String arrivalTime=request.getParameter("arrivalTime");
  String busName=request.getParameter("busName");
  String busType=request.getParameter("busType");
  String routeNo=request.getParameter("routeNo");
  String route=request.getParameter("route");
  String availableSeat=request.getParameter("availableSeat");
  String totalSeat=request.getParameter("totalSeat");
  String ticketPrice=request.getParameter("ticketPrice");



%>

   <div class="container" id="container">
   <h1>Delete Bus Schedule</h1>
   <div class="card border-primary">
   <div class="card-body">
    <form action="delete" method="post">
    <table>
    <tr>
       <div class="form-group">
         <th>Schedule ID</th>
         <td>  <input class="form-control" type="text" name="scheduleID" value="<%= scheduleID %>" readonly></td>
            </div>
      </tr>
       
      <tr>
       <div class="form-group">
         <td>Departure location</td>
         <td>  <input class="form-control" type="text" name="departureLocation" value="<%= departureLocation %>" readonly></td>
               </div>
       </tr>
       
       <tr>
       <div class="form-group">
         <td><label>Arrival location</label></td>
         <td>    <input class="form-control" type="text" name="arrivalLocation" value="<%= arrivalLocation %>" readonly></td>
             </div>
       </tr>
       
       <tr>
       <div class="form-group">
         <td>Departure Date</td>
         <td>   <input class="form-control" type="date" name="departureDate" value="<%= departureDate %>" readonly></td>
             </div>
       </tr>
       
       <tr>
       <div class="form-group">
         <td> Departure Time</td>
         <td>    <input class="form-control" type="time" name="departureTime" value="<%= departureTime %>" readonly></td>
             </div>
         
        </tr>
       
       <tr>
       <div class="form-group">
         <td>Arrival Date</td>
         <td> <input class="form-control" type="date" name="arrivalDate" value="<%= arrivalDate %>" readonly></td>
            </div>
       </tr>
       
       <tr>
       <div class="form-group">
         <td>Arrival Time</td>
         <td>  <input class="form-control" type="time" name="arrivalTime" value="<%= arrivalTime %>" readonly></td>
            </div>
       </tr>
       
       
       <tr>
       <div class="form-group">
         <td>Bus Name</td>
         <td>   <input class="form-control" type="text"  name="busName" value="<%= busName %>" readonly></td>
              </div>
       </tr>
       
       <tr>
       <div class="form-group">
         <td>Bus Type</td>
         <td>   <input class="form-control" type="text" name="busType" value="<%= busType %>" readonly></td>
              </div>
       </tr>
       
       <tr>
       <div class="form-group">
         <td>Route No</td>
         <td>  <input class="form-control" type="text" name="routeNo" value="<%= routeNo %>" readonly></td>
             </div>
       </tr>
       
       <tr>
       <div class="form-group">
         <td>Route</td>
         <td>  <input class="form-control" type="text" name="route" value="<%= route %>" readonly></td>
             </div>
       </tr>
       
       <tr>
       <div class="form-group">
         <td>Available Seat</td>
         <td> <input class="form-control" type="number" name="availableSeat" value="<%= availableSeat %>" readonly></td>
             </div>
       </tr>
       
       <tr>
       <div class="form-group">
         <td>Total Seat</td>
         <td>  <input class="form-control" type="number" name="totalSeat" value="<%= totalSeat %>" readonly></td>
             </div>
       </tr>
       
       <tr>
       <div class="form-group">
         <td>Ticket Price</td>
         <td>  <input class="form-control" type="text" name="ticketPrice" value="<%= ticketPrice %>" readonly></td>
             </div>
       </tr>
      
      <tr>
      <td>
       <div class="form-group">
       <br>
       <br>
       <br>
       <td>  <input class="btn btn-primary" type="submit" name="delete" value="Delete Schedule"></td>
           </div>
       </td>
       </tr>
    </table>
    
    
    </form>
    </div>
    </div>
   </div>
</body>
</html>