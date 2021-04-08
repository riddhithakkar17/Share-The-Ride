
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" type="text/css" href="css/datepicker.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
  <nav class="navbar navbar-expand-lg bg-light navbar-light sticky-top">
    <a class="navbar-brand align-content-start" href="#"><img src="logo.jpg"  alt="logo"></a>
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="index.html"><i class='fas fa-home'>&nbsp;</i> Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="login.html"><i class="fas fa-user">&nbsp;</i> Log In</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="signin.html"><i class="fas fa-user-plus"></i> Sign Up</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="logout.php"><i class="fas fa-sign-out-alt">&nbsp;</i> Logout</a>
      </li>
    </ul>
  </nav>
      
<div class="container-fluid bg-light">
  

    <table class="table table-striped table-inverse table-responsive table-dark table-hover rounded-lg text-center" style=" color:ghostwhite">
        <thead class="thead-inverse">
            <tr>
                <th>Vehicle Name</th>
                <th>Date of Travel</th>
                <th>Source</th>
                <th>Destination</th>
                <th>Available Seats</th>
                <th>Contact Me</th>
            </tr>
            </thead>
            <tbody>
              <?php
                session_start();

                $con=new mysqli("localhost","root","","carpool");
                // $con=mysqli_connect('localhost','root','','carpool');
                $date=$_POST['t6'];
                $frm=$_POST['t7'];
                $tu=$_POST['t8'];
                // echo "$to $from $date";
                $res=$con->query("SELECT * FROM route WHERE frm ='$frm' && tu ='$tu' && date = \"$date\" ");
                echo"<br>Records : ".mysqli_num_rows($res);
                // $q = "SELECT * FROM `route` WHERE `from`=\'ddd\' && `to`=\'ee\'";
                // $result = mysqli_query($con , $q);

                while($row=$res->fetch_row())
                {
              ?>
            
                <tr>
                    <td><?php echo "$row[0]"; ?></td>
                    <td><?php echo "$row[1]"; ?></td>
                    <td><?php echo "$row[2]"; ?></td>
                    <td><?php echo "$row[3]"; ?></td>
                    <td><?php echo "$row[4]"; ?></td>
                    <td><?php echo "$row[5]"; ?></td>
                </tr>

              <?php
                 }
              ?>
                
            </tbody>
    </table>
  </div>
</body>
</html>   