<?php
session_start();

  $conn = mysqli_connect("localhost","root","","jobdb");
$EmpID=$_SESSION['EmpID'];
$fname=$_SESSION['fname'];
$lname=$_SESSION['lname'];
$gender=$_SESSION['gender'];
$dob=$_SESSION['dob'];
$phone=$_SESSION['phone'];
$email=$_SESSION['email'];

  if($conn)
  {
    echo "";
 
  }
  else{
    echo "Error";
  }
 

  
    $jobid=$_GET['jobid'];
    $Title=$_GET['Title'];
    $cname=$_GET['cname'];
   
    $Salary=$_GET['Salary'];
    $Exprnce=$_GET['Exprnce'];
    $Eligibility=$_GET['Eligibility'];
    $City=$_GET['City'];
    $Description=$_GET['Description'];

    $query=mysqli_query($conn,"INSERT INTO `applied`(`jobid`, `Title`,`Salary`,`Exprnce`,`Eligibility`,`City`,`Description`,`EmpID`,`cname`, `fname`, `lname`, `gender`, `dob`, `phone`, `email`) VALUES ('$jobid','$Title','$Salary','$Exprnce','$Eligibility','$City','$Description','$EmpID','$cname','$fname','$lname','$gender','$dob','$phone','$email') ");
  
  
 $connect = mysqli_query($conn,$query);
  

?>



<html>
  <head>
    <title>status</title>
    <link rel="stylesheet" href="status.css" />
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  </head>

  <body>
    <div class="center">
      <input type="checkbox" id="click" />
      <label for="click" class="click-me">Conifrm</label>

      <div class="content">
        <div class="header">
          <h2>Notice</h2>
          <label for="click" class="fas-fa-times"></label>
        </div>

        <label for="click" class="fas fa-check"></label>
        <p style="color:#545885;">YOUR APPLICATION SUBMITTED SUCCESSFULLY!! Wait for the response</p>
        <div class="line"></div>
        <label for="click" class="close-btn">
          <a style="text-decoration: none;" href="userhomepage.php"> Close</a></label
        >
      </div>
    </div>
  </body>
</html>