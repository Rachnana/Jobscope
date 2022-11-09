<?php
require_once('connection.php');


$name = $address = $location = $sector = $website = $phone = $email = $passwd= '';

$name = $_POST['name'];
$address = $_POST['address'];
$location = $_POST['location'];
$sector = $_POST['sector'];
$website = $_POST['website'];
$phone = $_POST['phone'];
$email = $_POST['email'];
$passwd = $_POST['passwd'];

$sql  = "INSERT INTO `company`( `name`, `address`, `location`, `sector`, `website`, `phone`, `email`, `passwd`) 
VALUES ('$name','$address','$location','$sector','$website','$phone','$email','$passwd')";

$result = mysqli_query($conn,$sql);

if($result)
{
	?>
	<script type="text/javascript">
	alert("You have Registered successfully!");
	window.location.href="company.html";</script>
	<?php
	//header("Location: company.html");
}
else
{
	?>
	<script type="text/javascript">
	alert("Data is Incorrect!");
	window.location.href="company_registration.html";</script>
	<?php
	//echo "Error :".$sql;
}
?>