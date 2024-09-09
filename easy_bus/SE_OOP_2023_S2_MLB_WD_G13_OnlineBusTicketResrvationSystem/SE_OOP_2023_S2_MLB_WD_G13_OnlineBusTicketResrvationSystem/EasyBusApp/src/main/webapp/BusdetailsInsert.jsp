<!DOCTYPE html>
<html>
<head>
<title>BusdetailsInsert</title>
<link rel=stylesheet type=text/css href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel=stylesheet type=text/css href="adminpanel.css">
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <style>
        table {
            border: 1px solid #000;
            margin: 0 auto;
            width: 1000px;
        }

        caption {
            text-align: center;
            font-size: 50px;
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
            border: 2px solid #007BFF;
            padding: 10px;
            margin: 0 auto;
            width: 1000px; /* Adjust the width as needed */
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
 

    <div class="form-border">
        <table>
            <caption>Bus Information Form</caption>
            <form action="idiot" method="post">
                <tr>
                    <td>Bustype</td>
                    <td><input type="text" name="bustype"></td>
                </tr>
                <tr>
                    <td>Busname</td>
                    <td><input type="text" name="busname"></td>
                </tr>
                <tr>
                    <td>Busmodel</td>
                    <td><input type="text" name="busmodel"></td>
                </tr>
                <tr>
                    <td>Drivername</td>
                    <td><input type="text" name="drivername"></td>
                </tr>
                <tr>
                    <td>Company</td>
                    <td><input type="text" name="company"></td>
                </tr>
                <tr>
                    <td>OwnerName</td>
                    <td><input type="text" name="ownername"></td>
                </tr>
                <tr>
                    <td colspan="2">
                      <button type="submit">Create Bus</button>
                    </td>
                </tr>
            </form>
        </table>
    </div>
</body>
</html>
