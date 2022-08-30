<?php
require_once('connection.php');

if(isset($_POST['submit']))
{
	header("Location: company.html");
}
elseif (isset($_POST['save'])) 
{
	header("Location: userlogin.html");
}
else
{
	header("Location: index.html");
}
?>