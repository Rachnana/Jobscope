<?php
session_start();
require_once('connection.php');

$name=$_SESSION['name'];
$EmpID=$_SESSION['EmpID'];
$conn = mysqli_connect("localhost","root","","jobdb");


if($conn)
{
  echo "";
}
else{
  echo "";
}

if(isset( $_POST['save']))
{
$status=$_POST['status'];
$message=$_POST['message'];

$query=mysqli_query($conn,"INSERT INTO `message`(`EmpID`, `name`, `status`, `message`) VALUES ('$EmpID','$name','$status','$message') ");
  

$connect = mysqli_query($conn,$query);


if($connect)
{
  header("Location: indexa.php");
}
else
{
  echo "";
}

}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>message</title>
    <link rel="stylesheet" type="text/css" href="msg.css">
    
  </head>
  <body>
    <section>
      <div class="contentbx">
        <div class="formbx">
          <form action="write_message.php" method="post">
            <h1>JOBSCOPE</h1>
            <h2>Write a Message</h2>
            <div class="inputbx">
              <p>Status</p>
              <span style="color: #545885">Accepted</span>
              <input type="radio" name="status" value="Accepted">
              <span style="color: #545885">Rejected</span>
              <input type="radio" name="status" value="Rejected" >  

            </div>
            <div class="inputbx">
              <p>Message</p>
              <textarea rows="10" cols="90" class="textarea" name="message"></textarea>
            </div>
            <div class="inputbx">

              <div id="logx">
                <input type="submit" value="Send" name="save" style="background-color: rgb(16, 206, 16);color:white;width:725px;font-size:20px" />
              </div>
            </div>
            <div class="text">
              <h4 style="color: #545885; margin-left:340px">BACK</h4>
            </div>
          </form>
        </div>
      </div>
    </section>
  </body>
</html>