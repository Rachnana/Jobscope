<?php
session_start();

require_once('connection.php');

    $jobid = $_GET['jobid'];
    $Title = $_GET['Title'];
    $Hour = $_GET['Hour'];
    $Salary = $_GET['Salary'];
    $Exprnce = $_GET['Exprnce'];
    $Eligibility = $_GET['Eligibility'];
    $City = $_GET['City'];
    $Description = $_GET['Description'];
    

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="update.css">
    <title>Document</title>
  </head>
  <body>
    <section>
      <div class="contentbx">
        <div class="formbx">
          <form action="update.php" method="GET">
            <h1 style="margin-right: 310px;">JOBSCOPE</h1>
            <h2>Job Details</h2>
            <div class="inputbx">
              <p>JOB ID</p>
              <input type="text" value="<?php echo "$jobid"?>" name="jobid" readonly>
            </div>
            <div class="inputbx">
              <p>Title</p>
              <input type="text" value="<?php echo "$Title"?>" name="Title">
            </div>
            <div class="inputbx">
              <p>Working Hours</p>
              <input type="text" value="<?php echo "$Hour"?>" name="Hour">
            </div>
            <div class="inputbx">
              <p>Salary</p>
              <input type="number" value="<?php echo "$Salary"?>" name="Salary">
            </div>

            <div class="inputbx">
              <p>Expereince</p>
              <input type="text" value="<?php echo "$Exprnce"?>" name="Exprnce">
            </div>
            <div class="inputbx">
              <p>Eligibility Criteria</p>
              <input type="text" value="<?php echo "$Eligibility"?>"name="Eligibility">
            </div>

            <div class="inputbx">
              <p>City</p>
              <input type="text" value="<?php echo "$City"?>"name="City">
            </div>
            <div class="inputbx">
              <p>Description</p>
              <input type="text" value="<?php echo "$Description"?>" name="Description">
            </div>

            <div class="inputbx">
              <div id="logx">
                <input type="submit" value="Update" name="Update">
              </div>
            </div>
            <!-- <div class="inputbx">
              <p style="position: relative; left: 51%">
                Seen this page before?
              </p>
              <input type="submit" value="Login" name="" />
            </div> -->
            <div class="text">
              <h4 style="padding-right: 150px;">BACK</h4>
            </div>
          </form>
        </div>
      </div>
    </section>
  </body>
</html>

<?php
if(isset($_GET['Update']))
{
  $jobid = $_GET['jobid'];
  $Title = $_GET['Title'];
  $Hour = $_GET['Hour'];
  $Salary = $_GET['Salary'];
  $Exprnce = $_GET['Exprnce'];
  $Eligibility = $_GET['Eligibility'];
  $City = $_GET['City'];
  $Description = $_GET['Description'];

  $sql = "UPDATE `job` SET `Title`='$Title',`Hour`='$Hour',`Salary`='$Salary',`Exprnce`='$Exprnce',`Eligibility`='$Eligibility',`City`='$City',`Description`='$Description' WHERE jobid = '$jobid'";
  $data = mysqli_query($conn,$sql);
  if ($data)
  {
    //echo "<script>alert('Record Updated')</script>";
    ?>
  <script type="text/javascript">
  alert("Record Updated");
  window.location.href="jobresult1.php";</script>
  <?php
  }
  else
  {
    //echo "error";
    ?>
  <script type="text/javascript">
  alert("There is error in Record");
  window.location.href="update.php";</script>
  <?php
  }
}
?>