<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>View Records</title>
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
<br>

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

<div align="center">
<h2>Manage Users</h2>
</div>
<sql:setDataSource
     var="us"
     driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3309/easybus"
        user="root" password="BMrt00,."
       />
       
<sql:query var="us" dataSource="${us}">
          select* from customer;
      </sql:query>
      
     &nbsp; <a href="addUsers.jsp">
	<input type="button" name="add" value="Add Users" class="btn btn-primary">
	</a><br><br>
      
    <table class="table table-striped">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>City</th>
            <th>District</th>
            <th>User name</th>
            <th>Password</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>

<c:forEach var ="us" items="${us.rows}">

<c:url value="viewupdate.jsp" var="usupdate">
	<c:param name="id" value="${us.id}"/>
	<c:param name="name" value="${us.name}"/>
	<c:param name="email" value="${us.email}"/>
	<c:param name="phone" value="${us.phone}"/>
	<c:param name="city" value="${us.city}"/>
	<c:param name="district" value="${us.district}"/>
	<c:param name="uname" value="${us.userName}"/>
	<c:param name="pass" value="${us.password}"/>
	</c:url>
	
	<c:url value="viewDelete.jsp" var="usdelete">
	<c:param name="id" value="${us.id}"/>
	<c:param name="name" value="${us.name}"/>
	<c:param name="email" value="${us.email}"/>
	<c:param name="phone" value="${us.phone}"/>
	<c:param name="city" value="${us.city}"/>
	<c:param name="district" value="${us.district}"/>
	<c:param name="uname" value="${us.username}"/>
	<c:param name="pass" value="${us.password}"/>
	</c:url>



      <tr>
          <td><c:out value="${us.id}"/></td>
          <td><c:out value="${us.name}"/></td>
          <td><c:out value="${us.email}"/></td>
          <td><c:out value="${us.phone}"/></td>
          <td><c:out value="${us.city}"/></td>
          <td><c:out value="${us.district}"/></td>
          <td><c:out value="${us.userName}"/></td>
          <td><c:out value="${us.password}"/></td>
          <td><a href="${usupdate}">
	<input type="button" name="update" value="Update" class="btn btn-success">
	</a>
          </td>
          <td><a href="${usdelete}">
	<input type="button" name="delete" value="Delete" class="btn btn-danger" >
	</a>
	
	</td>
      </tr>
      
     
        </c:forEach>
        
        
   
	
    </table>
</body>
</html>
 
