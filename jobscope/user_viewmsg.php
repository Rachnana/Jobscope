<?php
session_start();

  $conn = mysqli_connect("localhost","root","","jobdb");
  $EmpID=$_SESSION['EmpID'];

  if($conn)
  {
    $query = "SELECT `name`,`status`,`message` FROM `message` WHERE EmpID='$EmpID'";
    $connect = mysqli_query($conn,$query);
    $num = mysqli_num_rows($connect);
  
  }
  else{
    echo "Error";
  }
  

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>JOB Result Page</title>
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css",href="jobresult1.css"> 

</head>
<body>
   
    <div class="topnav">
        <h1>JOBSCOPE</h1>
    </div>

     <div > 
        <table  style="margin-right: auto;margin-left:auto">
            <thead>
                <tr>
                   
                    <th>Company Name</th>
                    <th>Status </th>
                    <th>Message</th>

                </tr>
               
            </thead>
             <?php
                  if($num > 0)
                  {
                    while(  $data = mysqli_fetch_assoc($connect))
                    {
                        echo "
                            <tr>
                            <td>".$data['name']."</td>
                            <td>".$data['status']."</td>
                            <td>".$data['message']."</td>
                            </tr>";

                    }
                  }
                ?>
          
        </table>
       
    </div>
    <div class="footer" style="margin-top: 230px;">
      <p class="f4" style="font-size: 30;font: bold;">JOBSCOPE</p>
      <a href="#" class="fa fa-facebook"></a>
      <a href="#" class="fa fa-twitter"></a>
      <a href="#" class="fa fa-instagram"></a>
      <p class="f5">
        Designed and Developed by Prathijna DS, Rachana Nayak - @2022, All
        Rights Reserved.
      </p>
    </form>
    </div>


</body>
<style>

.topnav {
  background-color: #545885;
}
.topnav h1 {
  color: white;
  padding-left: 20px;
  margin-bottom: 5px;
  font-weight: 800;
  font-size: 50px;
}

.registered_info {
  display: flex;
  justify-content: center;
  align-items: center;
  color: white;
}

table {
  margin-top: 100px;
  border-collapse: collapse;
  box-shadow: 0 5px 10px lightgray;
  background-color: white;
  text-align: left;
  overflow: hidden;
  border-radius: none;
  width: 50%;
}
table thead {
  box-shadow: 0 5px 10px lightgray;
  background-color: #a83832;
}
table thead th {
  padding: 20px;
  text-transform: uppercase;
  letter-spacing: 5px;
  font-size: 20px;
  font-weight: 500;
  color: white;
  font-family: "Poppins", sans-serif;
  height: 10px;
}
table tbody {
  justify-content: center;
}

table tbody td {
  padding: 1rem 2rem;
}

.status {
  border-radius: 70px;
  background-color: #36a832;
  padding: 0.2em 1rem;
  text-align: center;
  width: 90px;
  color: white;
  text-decoration: none;
}

.statue {
  border-radius: 50px;
  background-color: #545885;
  padding: 0.2em 1rem;
  text-align: center;
  width: 90px;
  color: white;
  text-decoration: none;
}
.stat {
  border-radius: 70px;
  background-color: rgb(231, 94, 15);
  padding: 0.2em 1rem;
  text-align: center;
  width: 90px;
  text-decoration: none;
  color: white;
}
table tbody tr {
  background-color: rgb(229, 226, 226);
}

.fa-times {
  color: red;
}
.table {
  padding-left: 40px;
  padding-right: 70px;
}

  .footer {
      left: 0;
      bottom: 0;
      width: 100%;
      background-color: lightgray;
      color: white;
      text-align: center;
      padding-top: 5px;
    }
    .f4 {
      font-size: 30px;
      text-align: center;
      padding: 0;
      color: #545885;
      font: bold;
    }
    .f5 {
      font-size: 18px;
      text-align: center;
      color: #545885;
      font-weight: 300;
    }
    .fa:hover {
      opacity: 0.7;
    }

    .fa-facebook {
      background: #3b5998;
      color: white;
    }

    .fa-twitter {
      background: #55acee;
      color: white;
    }
    .fa-instagram {
      background: #125688;
      color: white;
    }
    .fa {
      padding: 15px;
      font-size: 20px;
      width: 20px;
      text-align: center;
      text-decoration: none;
      border-radius: 50%;
    }
</style>
</html>