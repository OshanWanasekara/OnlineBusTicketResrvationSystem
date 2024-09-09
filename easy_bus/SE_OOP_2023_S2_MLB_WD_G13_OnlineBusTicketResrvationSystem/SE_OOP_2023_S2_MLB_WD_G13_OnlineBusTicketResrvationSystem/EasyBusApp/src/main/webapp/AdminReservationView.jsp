<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Reservation Admin Page</title>
<link rel=stylesheet type=text/css href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel=stylesheet type=text/css href="adminpanel.css">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/bootstrap.js"></script> 
<script src="https://kit.fontawesome.com/a076d05399.js crossorigin="anonymous"" ></script>

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
          <li><a href="AdminReservationView.jsp"><i class="fas fa-book"></i>Manage Reservation</a></li>
          <li><a href="ScheduleList.jsp"><i class="fas fa-calendar"></i>Manage Bus Schedule</a></li>
          <li><a href="Busaccount.jsp"><i class="fas fa-bus"></i>Manage Bus Details</a></li>
          <li><a href="home.jsp"><i class="fas fa-home"></i>Back to Home</a></li>
          
         
       </ul>



  </div>

<br><br><br><hr>
<h2>Manage Reservation</h2><br>
<sql:setDataSource
     var="res"
      driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3309/easybus"
        user="root" password="BMrt00,."
       />
      <sql:query var="res" dataSource="${res}">
          select* from reservation_details;
      </sql:query>  
      
      <table class="table table-striped">
        <tr>
            <th>Reference Id</th>
            <th>User Name</th>
            <th>Travel Name</th>
            <th>Bus Type</th>
            <th>Model</th>
            <th>Bus No</th>
            <th>Date</th>
            <th>Departure Location</th>
            <th>Arrival Location</th>
            <th>Departure Time</th>
            <th>Arrival Time</th>
            <th>Seat Numbers</th>
        </tr> 
        
     <c:forEach var ="res" items="${res.rows}">  
     
     <c:url value="updateReservation.jsp" var="resupdate"> 
       <c:param name="reference_ID" value="${res.reference_ID}"></c:param>
       <c:param name="user_name" value="${res.user_name}"></c:param>
       <c:param name="travel_name" value="${res.travel_name}"></c:param>
       <c:param name="bus_type" value="${res.bus_type}"></c:param>
       <c:param name="model" value="${res.model}"></c:param>
       <c:param name="bus_no" value="${res.bus_no}"></c:param>
       <c:param name="date" value="${res.date}"></c:param>
       <c:param name="departure_location" value="${res.departure_location}"></c:param>
       <c:param name="arrival_location" value="${res.arrival_location}"></c:param>
       <c:param name="departure_time" value="${res.departure_time}"></c:param>
       <c:param name="arrival_time" value="${res.arrival_time}"></c:param>
       <c:param name="seat_no" value="${res.seat_no}"></c:param>    
     </c:url> 
     
     <c:url value="deleteReservation.jsp" var="resdelete">
       <c:param name="reference_ID" value="${res.reference_ID}"></c:param>
       <c:param name="user_name" value="${res.user_name}"></c:param>
       <c:param name="travel_name" value="${res.travel_name}"></c:param>
       <c:param name="bus_type" value="${res.bus_type}"></c:param>
       <c:param name="model" value="${res.model}"></c:param>
       <c:param name="bus_no" value="${res.bus_no}"></c:param>
       <c:param name="date" value="${res.date}"></c:param>
       <c:param name="departure_location" value="${res.departure_location}"></c:param>
       <c:param name="arrival_location" value="${res.arrival_location}"></c:param>
       <c:param name="departure_time" value="${res.departure_time}"></c:param>
       <c:param name="arrival_time" value="${res.arrival_time}"></c:param>
       <c:param name="seat_no" value="${res.seat_no}"></c:param>     
     </c:url> 
     

      <tr>
      
          <td><c:out value="${res.reference_ID}"/></td>
          <td><c:out value="${res.user_name}"/></td>
          <td><c:out value="${res.travel_name}"/></td>
          <td><c:out value="${res.bus_type}"/></td>
          <td><c:out value="${res.model}"/></td>
          <td><c:out value="${res.bus_no}"/></td>  
          <td><c:out value="${res.date}"/></td>
          <td><c:out value="${res.departure_location}"/></td>
          <td><c:out value="${res.arrival_location}"/></td>
          <td><c:out value="${res.departure_time}"/></td>
          <td><c:out value="${res.arrival_time}"/></td>
          <td><c:out value="${res.seat_no}"/></td>
          
           <td><a href="${resupdate}">
           <input type="button" name="update" value="Update" class="btn btn-success">
           </a> 
           </td>
           <td><a href="${resdelete}">
           <input type="button" name="delete" value="Delete" class="btn btn-danger"> 
            </a>
            </td>
       
       </tr>
            
       </c:forEach>
        	
       </table>  
       
        <div class="text-center">
              <a href="reservationInsert.jsp" class="btn btn-primary">Add New Reservation </a>
            
        </div>   
      <hr>                    
</body>
</html>