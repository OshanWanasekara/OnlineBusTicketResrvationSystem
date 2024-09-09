<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>

<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/bootstrap.js"></script>  
<style>

  .container{
      width:40%;
      opacity:0.6;
      margin-top:100px;
  }
  
  .background-image{
      background-repeat:no-repeat;
      background-size:cover;
      
 }
 
</style>

</head>
<body background="imgM/adminlog.jpg" class="background-image">

<div class="container" id="container">

<div class="card">
<div class="card-body">

<form action="loginA.jsp" method="post" >
       
       <div align="center">
         <h1>Admin Login</h1>
     </div>
    <div class="form-floating mb-2">
     <label for="floatingInput">Admin ID</label>
   <input type="text" name="Aid" class="form-control"  placeholder="Enter AdminID" required>
   </div>
   <div class="form-floating">
    <label for="password">Password</label>
   <input type="password" name="password_A" class="form-control"  placeholder="Enter Password" required><br><br>
   </div>
  
   <input type="submit" name="submit" value="login" class="btn btn-primary"> <br>
   <a href="userlogin.jsp">Back to the web site</a>
   
 </form>
 </div>
</div>
</div>

</body>
</html>