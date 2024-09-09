<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
 
<div class="container" id="container" >

<div class="text-center">
<h1>Bus Schedule List</h1>
</div>
<br>
<br>
<sql:setDataSource
        var="scd"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3309/easybus"
        user="root" password="BMrt00,."
    />
     
    <sql:query var="scd"   dataSource="${scd}">
        SELECT * FROM scheduledetails;
    </sql:query>


    
    <button class="btn btn-primary" onclick="location.href='ScheduleCreation.jsp'">Add Schedule</button>
    <br>
    <br>
    

<table class="table table-sm table-striped table-responsive" >


    
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
    <th scope="col">Edit</th>
    <th scope="col">Delete</th>
    
    </tr>
    
   
    
    <c:forEach var="scd"  items="${scd.rows}">
    
    
    
    
    
    <c:url value="updateschedule.jsp" var="scdupdate">

    <c:param name="scheduleID" value="${scd.scheduleID}"/>
    <c:param name="departureLocation" value="${scd.departureLocation}"/>
    <c:param name="arrivalLocation" value="${scd.arrivalLocation}"/>
    <c:param name="departureDate" value="${scd.departureDate}"/>
    <c:param name="departureTime" value="${scd.departureTime}"/>
    <c:param name="arrivalDate" value="${scd.arrivalDate}"/>
    <c:param name="arrivalTime" value="${scd.arrivalTime}"/>
    <c:param name="busName" value="${scd.busName}"/>
    <c:param name="busType" value="${scd.busType}"/>
    <c:param name="routeNo" value="${scd.routeNo}"/>
    <c:param name="route" value="${scd.route}"/>
    <c:param name="availableSeat" value="${scd.availableSeat}"/>
    <c:param name="totalSeat" value="${scd.totalSeat}"/>
    <c:param name="ticketPrice" value="${scd.ticketPrice}"/>
    
    

</c:url>

 <c:url value="deleteschedule.jsp" var="scddelete">

    <c:param name="scheduleID" value="${scd.scheduleID}"/>
    <c:param name="departureLocation" value="${scd.departureLocation}"/>
    <c:param name="arrivalLocation" value="${scd.arrivalLocation}"/>
    <c:param name="departureDate" value="${scd.departureDate}"/>
    <c:param name="departureTime" value="${scd.departureTime}"/>
    <c:param name="arrivalDate" value="${scd.arrivalDate}"/>
    <c:param name="arrivalTime" value="${scd.arrivalTime}"/>
    <c:param name="busName" value="${scd.busName}"/>
    <c:param name="busType" value="${scd.busType}"/>
    <c:param name="routeNo" value="${scd.routeNo}"/>
    <c:param name="route" value="${scd.route}"/>
    <c:param name="availableSeat" value="${scd.availableSeat}"/>
    <c:param name="totalSeat" value="${scd.totalSeat}"/>
    <c:param name="ticketPrice" value="${scd.ticketPrice}"/>
    
    

</c:url>
    
    
    <tr>
    <th scope="row"><c:out   value="${scd.scheduleID}"/></th>
    <td><c:out   value="${scd.departureLocation}"/></td>
    <td><c:out   value="${scd.arrivalLocation}"/></td>
    <td><c:out   value="${scd.departureDate}"/></td>
    <td><c:out   value="${scd.departureTime}"/></td>
    <td><c:out   value="${scd.arrivalDate}"/></td>
    <td><c:out   value="${scd.arrivalTime}"/></td>
    <td><c:out   value="${scd.busName}"/></td>
    <td><c:out   value="${scd.busType}"/></td>
    <td><c:out   value="${scd.routeNo}"/></td>
    <td><c:out   value="${scd.route}"/></td>
    <td><c:out   value="${scd.availableSeat}"/></td>
    <td><c:out   value="${scd.totalSeat}"/></td>
    <td><c:out   value="${scd.ticketPrice}"/></td>
    <td><a href="${scdupdate }">
       <input type="button" class="btn btn-success name="update" value="Update">
        </a>
    </td>
    
    <td><a href="${scddelete }">
       <input type="button" class="btn btn-danger name="delete" value="Delete">
        </a>
    </td>
    </tr>
    
    
   
    
    
    
    
    
    
    </c:forEach>



</table>

</div>


<script src="js/bootstrap.js"></script>
</body>
</html>