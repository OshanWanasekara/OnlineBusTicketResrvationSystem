<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Add Reservation</title>
<link rel=stylesheet type=text/css href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel=stylesheet type=text/css href="adminpanel.css">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/bootstrap.js"></script> 
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

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
  
   <div class="container my-5">
   <h2>Add new reservation</h2><br>  
   
   <form action="add" method="post" onsubmit="return validateSeatNumbers()">
      
       <div class="row mb-3">
      <label class="col-sm-3 col-form-label">Reference ID</label>
        <div class="col-sm-6"> 
           <input type="text" class="form-control" name="ref_id" pattern="^EB-\d{5}" title="Please enter a valid ID type(e.g EB-XXXXX)"> <br>
        </div>
      </div>  
      
      <div class="row mb-3">
      <label class="col-sm-3 col-form-label">User Name</label>
         <div class="col-sm-6">
           <input type="text" class="form-control" name="uname"> <br>
         </div> 
      </div>    
      
      <div class="row mb-3">
      <label class="col-sm-3 col-form-label">Travel Name</label>
          <div class="col-sm-6"> 
            <input type="text" class="form-control" name="tname"> <br>
          </div>
      </div>      
      
      <div class="row mb-3">     
      <label class="col-sm-3 col-form-label">Bus Type</label>
        <div class="col-sm-6"> 
           <input type="text" class="form-control" name="btype"> <br>
        </div>
      </div>  
      
      <div class="row mb-3">
      <label class="col-sm-3 col-form-label">Model</label>
          <div class="col-sm-6">   
            <input type="text" class="form-control" name="model" > <br>
          </div>
      </div>      
           
      <div class="row mb-3">         
      <label class="col-sm-3 col-form-label">Bus No</label>
           <div class="col-sm-6">
              <input type="text" class="form-control" name="bno" pattern="[A-Z]{2}-\d{4}" title="please enter a valid Bus no(e.g AB-1111)"> <br>
           </div>
      </div>
      
      <div class="row mb-3">     
      <label class="col-sm-3 col-form-label">Date</label> 
           <div class="col-sm-6">
              <input type="date" class="form-control" name="date"> <br>
           </div>
      </div>     
      
      <div class="row mb-3">
      <label class="col-sm-3 col-form-label">Departure Location</label>
            <div class="col-sm-6">
               <input type="text" class="form-control" name="dloc"> <br>
            </div>
      </div>
      
      <div class="row mb-3">
      <label class="col-sm-3 col-form-label">Arrival Location</label>
             <div class="col-sm-6">
                <input type="text" class="form-control" name="aloc"> <br>
             </div>
      </div>
      
      <div class="row mb-3">
      <label class="col-sm-3 col-form-label">Departure Time</label>
             <div class="col-sm-6"> 
                <input type="time" class="form-control" name="dtime"><br>
             </div>   
      </div>
      
      <div class="row mb-3">
      <label class="col-sm-3 col-form-label">Arrival Time</label>
             <div class="col-sm-6"> 
                <input type="time" class="form-control" name="atime"> <br>
             </div>
      </div>       
      
      <div class="row mb-3">
      <label class="col-sm-3 col-form-label">Seat Numbers</label>
             <div class="col-sm-6">
                <input type="text" class="form-control" name="sno" id="seatNumbers"> <br>
             </div>
      </div>
      
      <div class="row mt-4">
           <div class="col-sm-6 offset-sm-3">
               <input type="submit" class="btn btn-primary" name="submit" value="Create Reservation">
               <a href="AdminReservationView.jsp" class="btn btn-secondary">Cancel</a>
            </div> 
      </div> 
      
           
     </form>
     </div>
     
     <script>
function validateSeatNumbers() {
    var seatNumbers = document.getElementById("seatNumbers").value;
    var seatNumberArray = seatNumbers.split(",");
    
    for (var i = 0; i < seatNumberArray.length; i++) {
        var seatNumber = parseInt(seatNumberArray[i]);
        if (isNaN(seatNumber) || seatNumber < 1 || seatNumber > 60) {
            alert("Please enter valid seat numbers from 1 to 60 and seat numbers separated by (,)");
            return false;
        }
    }
    
    return true;
}
</script>
</body>
</html>