<?php
require_once('connection.php');
$email = $passwd = '';

$email = $_POST['email'];
$passwd = $_POST['passwd'];

$sql = "SELECT * FROM `company` WHERE email = '$email' AND passwd = '$passwd'";
$result = mysqli_query($conn,$sql);

if(mysqli_num_rows($result) > 0)
{
    while($row = mysqli_fetch_assoc($result))
    {
        
        $cid = $row['cid'];
        $name = $row['name'];
        $email = $row['email'];
        session_start();
        $_SESSION['cid'] = $cid;
       
        $_SESSION['email'] = $email;
        $_SESSION['name'] = $name;

        ?>
    <script type="text/javascript">
    alert("You have Logged in  successfully!");
    window.location.href="indexa.php";</script>
    <?php
    }
    //header("Location: indexa.php");

}

else
{
    ?>
    <script type="text/javascript">
    alert("Invalid Email or password!");
    window.location.href="company.html";</script>
    <?php
    //echo "Invalid email or password";
}
if(isset($_POST['save']))
{
    header("Location: company_registration.html");
}




if(empty($_POST['email']))
{
    $email_error = "please enter the emailId";
}
if(empty($_POST['passwd']))
{
    $passwd_error = "please enter the password";
}
?>