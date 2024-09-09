<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <table>
    
  <c:forEach var="adresDetails" items="${myresDetails}">
  
  <c:set var="reference_ID" value="${adresDetails.reference_ID}"/> 
  <c:set var="user_name" value="${adresDetails.user_name}"/>
  <c:set var="travel_name" value="${adresDetails.travel_name}"/>
  <c:set var="bus_type" value="${adresDetails.bus_type}"/>
  <c:set var="model" value="${adresDetails.model}"/>
  <c:set var="bus_no" value="${adresDetails.bus_no}"/>
  <c:set var="date" value="${adresDetails.date}"/>
  <c:set var="departure_location" value="${adresDetails.departure_location}"/>
  <c:set var="arrival_location" value="${adresDetails.arrival_location}"/>
  <c:set var="departure_time" value="${adresDetails.departure_time}"/>
  <c:set var="arrival_time" value="${adresDetails.arrival_time}"/>
  <c:set var="seat_no" value="${adresDetails.seat_no}"/>
  
  <tr>
  <td>Reference ID</td>
  <td>${adresDetails.reference_ID}</td>
  </tr>
  
  <tr>
  <td>User name</td> 
  <td>${adresDetails.user_name}</td>
  </tr>
  
  <tr>
  <td>Travel name</td>
  <td>${adresDetails.travel_name}</td>
  <tr>
  
  <tr>
  <td>Bus type</td>
  <td>${adresDetails.bus_type}</td>
  </tr>
  
  <tr>
  <td>Model</td>
  <td>${adresDetails.model}</td>
  </tr>
  
  <tr>
  <td>Bus no</td>
  <td>${adresDetails.bus_no}</td>
  </tr>
  
  <tr>
  <td>Date</td>
  <td>${adresDetails.date}</td>
  </tr>
  
  <tr>
  <td>Departure location</td>
  <td>${adresDetails.departure_location}</td>
  </tr>
  
  <tr>
  <td>Arrival location</td>
  <td>${adresDetails.arrival_location}</td>
  </tr>
  
  <tr>
  <td>Departure time</td>
  <td>${adresDetails.departure_time}</td>
  </tr>
  
  <tr>
  <td>Arrival time</td>
  <td>${adresDetails.arrival_time}</td>
  </tr>
  
  <tr>
  <td>Seat no</td>
  <td>${adresDetails.seat_no}</td>
  </tr>
  
  </c:forEach>
  </table>
  
  <c:url value="updateReservation.jsp" var="resupdate">
     <c:param name="reference_ID" value="${reference_ID}"></c:param>
     <c:param name="user_name" value="${user_name}"></c:param>
     <c:param name="travel_name" value="${travel_name}"></c:param>
     <c:param name="bus_type" value="${bus_type}"></c:param>
     <c:param name="model" value="${model}"></c:param>
     <c:param name="bus_no" value="${bus_no}"></c:param>
     <c:param name="date" value="${date}"></c:param>
     <c:param name="departure_location" value="${departure_location}"></c:param>
     <c:param name="arrival_location" value="${arrival_location}"></c:param>
     <c:param name="departure_time" value="${departure_time}"></c:param>
     <c:param name="arrival_time" value="${arrival_time}"></c:param>
     <c:param name="seat_no" value="${seat_no}"></c:param>    
  </c:url>
 
  
  <br>
  <c:url value="deleteReservation.jsp" var="resdelete">
     <c:param name="reference_ID" value="${reference_ID}"></c:param>
     <c:param name="user_name" value="${user_name}"></c:param>
     <c:param name="travel_name" value="${travel_name}"></c:param>
     <c:param name="bus_type" value="${bus_type}"></c:param>
     <c:param name="model" value="${model}"></c:param>
     <c:param name="bus_no" value="${bus_no}"></c:param>
     <c:param name="date" value="${date}"></c:param>
     <c:param name="departure_location" value="${departure_location}"></c:param>
     <c:param name="arrival_location" value="${arrival_location}"></c:param>
     <c:param name="departure_time" value="${departure_time}"></c:param>
     <c:param name="arrival_time" value="${arrival_time}"></c:param>
     <c:param name="seat_no" value="${seat_no}"></c:param>     
  </c:url>
  
</body>
</html>