<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Details</title>
<link rel="stylesheet" type="text/css" href="css1/showResDetails.css">

</head>
<body>
  
  <c:forEach var="myresDetails" items="${myresDetails}">
  
  <h2>Reservation Details of reference id:${myresDetails.reference_ID}</h2>
  <hr>
  
  <div class="container">
      <div class="bus-details">
        <h2>Bus Details</h2>
  
        Travel Name: ${myresDetails.travel_name}<br><br><br><br>
        Bus Type: ${myresDetails.bus_type}&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;   
        Model: ${myresDetails.model}<br><br><br><br>
        Bus No: ${myresDetails.model}<br><br><br>
        
      </div>
        
      <div class="ticket-details">
       <h2>Ticket Details</h2>
       
       Date:${myresDetails.date}<br><br><br>
       Departure Location:${myresDetails.departure_location}&nbsp; &nbsp; &nbsp;
       Arrival Location:${myresDetails.arrival_location}<br><br><br>
       Departure Time:${myresDetails.departure_time} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       Arrival Time:${myresDetails.arrival_time}<br><br><br>
       Seat Numbers: ${myresDetails.seat_no}<br><br><br>
       </div>
     </div>  
 
  
  </c:forEach>
  
      <div style="text-align: center;font-size: 20px;">
         <h2> <a href="CancellationRes.jsp" > Cancel Reservation Request </a></h2>
      </div>
      
  <hr>    
  
</body>
</html>