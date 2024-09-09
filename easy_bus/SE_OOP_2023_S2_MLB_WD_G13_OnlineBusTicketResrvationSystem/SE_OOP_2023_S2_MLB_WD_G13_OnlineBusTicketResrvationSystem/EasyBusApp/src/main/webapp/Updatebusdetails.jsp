<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel=stylesheet type=text/css href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel=stylesheet type=text/css href="adminpanel.css">
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
   <style>
        table {
            border: 1px solid #000;
            margin: 0 auto;
            width: 1000px;
            length: 1000px;
        }

        caption {
            text-align: center;
            font-size: 40px;
            font-weight: bold;
        }

        td {
            padding: 30px;
        }

        input[type="text"] {
            width: 50%;
            padding: 5px;
        }

        .form-border {
            border: 1px solid #007BFF;
            padding: 10px;
            margin: 0 auto;
            width: 1200px; /* Adjust the width as needed */
            length: 1200px;
        }

        button {
            display: block;
            margin: 0 auto;
            padding: 10px 20px;
            background-color: #007BFF;
            color: #fff;
            border: none;
        }
    </style>
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
 
   
   
      <%
            String busNum =request.getParameter("busNum");
            String bustype =request.getParameter("bustype");
            String busname =request.getParameter("busname");
            String busmodel =request.getParameter("busmodel");
            String drivername =request.getParameter("drivername");
            String company =request.getParameter("company");
            String ownername =request.getParameter("ownername");
      %>

 
 
 <div class="form-border">
      <table>
            <h1>Bus Information Upadte </h1>
            
           <form action ="go"  method="post"> 
                 <tr>
                    <td>BusNum</td>
                    <td><input type="text" name="busNum" value="<%= busNum %>" readonly></td>
                </tr>
                <tr>
                    <td>Bustype</td>
                    <td><input type="text" name="bustype" value="<%= bustype %>"></td>
                </tr>
                <tr>
                    <td>Busname</td>
                    <td><input type="text" name="busname" value="<%= busname %>"></td>
                </tr>
                <tr>
                    <td>Busmodel</td>
                    <td><input type="text" name="busmodel" value="<%= busmodel %>"></td>
                </tr>
                <tr>
                    <td>Drivername</td>
                    <td><input type="text" name="drivername" value ="<%= drivername %>"></td>
                </tr>
                <tr>
                    <td>Company</td>
                    <td><input type="text" name="company"   value="<%= company %>"></td>
                </tr>
                <tr>
                    <td>OwnerName</td>
                    <td><input type="text" name="ownername" value="<%= ownername %>"></td>
                </tr>
                <tr>
                    <td colspan="2">
                                       <td>
          <input class="btn btn-primary" type="submit" name="submit" value="Update">
                    </td>
                </tr>
            </form>
        </table>
        </div>

</body>
</html>