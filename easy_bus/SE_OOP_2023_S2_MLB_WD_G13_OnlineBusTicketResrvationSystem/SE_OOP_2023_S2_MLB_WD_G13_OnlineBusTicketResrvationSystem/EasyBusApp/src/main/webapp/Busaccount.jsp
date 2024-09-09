<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
    
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bus Details</title>
 <link rel=stylesheet type=text/css href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel=stylesheet type=text/css href="adminpanel.css">
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
 <link rel="stylesheet"  href="css/bootstrap.css">
<script src="js/bootstrap.js"></script>
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
<div class="text-center">
<h1>Bus Details List</h1>
<br>
</div>

    <sql:setDataSource
        var="bus"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3309/easybus"
        user="root" password="BMrt00,."
    />

    <sql:query var="bus" dataSource="${bus}">
        SELECT * FROM bus;
    </sql:query>
    
<button class="btn btn-primary" onclick="location.href='BusdetailsInsert.jsp'">Add Bus</button>


    <br>
    <br>
    
    <div align="center">
        <table border="1" cellpadding="5">
        
            <caption><h3>Bus Details</h3></caption>
            
            <tr>
                <th scope="col">Bus Number</th>
                <th scope="col">Bus Type</th>
                <th scope="col">Bus Name</th>
                <th scope="col">Bus Model</th>
                <th scope="col">Driver Name</th>
                <th scope="col">Company</th>
                <th scope="col">Owner Name</th>
            </tr>
            <c:forEach var="bus" items="${bus.rows}">
            
            
              <c:url value="Updatebusdetails.jsp" var="busupdate">
              
          <c:param name="busNum" value="${bus.busNum}"/>   
          <c:param name="bustype" value="${bus.bustype}"/> 
          <c:param name="busname" value="${bus.busname}"/> 
          <c:param name="busmodel" value="${bus.busmodel}"/> 
          <c:param name="drivername" value="${bus.drivername}"/> 
          <c:param name="company" value="${bus.company}"/>  
          <c:param name="ownername" value="${bus.ownername}"/>
          
                   
               </c:url>
                <tr>
                    <td><c:out value="${bus.busNum}" /></td>
                    <td><c:out value="${bus.bustype}" /></td>
                    <td><c:out value="${bus.busname}" /></td>
                    <td><c:out value="${bus.busmodel}" /></td>
                    <td><c:out value="${bus.drivername}" /></td>
                    <td><c:out value="${bus.company}" /></td>
                    <td><c:out value="${bus.ownername}" /></td>
                    <td>
    <a href="${busupdate}">
        <button class="btn btn-primary" style="background-color: green; color: white;">Update Bus Account</button>
    </a>
</td>
<td>
       <c:url value="Deletebusdetails.jsp" var="busdelete">
              
          <c:param name="busNum" value="${bus.busNum}"/>   
          <c:param name="bustype" value="${bus.bustype}"/> 
          <c:param name="busname" value="${bus.busname}"/> 
          <c:param name="busmodel" value="${bus.busmodel}"/> 
          <c:param name="drivername" value="${bus.drivername}"/> 
          <c:param name="company" value="${bus.company}"/>  
          <c:param name="ownername" value="${bus.ownername}"/>
          
                   
               </c:url>
    <a href="${busdelete}">
        <button class="btn btn-primary" style="background-color: Red; color: white;">Delete Bus Account</button>
    </a>
</td>
     
               
                
                
            </c:forEach>
        </table>
   
     
    </div>
    </div>
</body>
</html>
