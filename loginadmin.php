<html>
  <head>
    
  </head>

  <body>
<?php
$servername = "localhost";
$username = "root";
$password = "dadalus123";
$dbname = "pf";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
else 
{
$adminid = mysqli_real_escape_string($conn,$_POST['adname']);
$adminpass = mysqli_real_escape_string($conn,$_POST['adpass']);
session_start();
$sql = "SELECT * FROM Admin Where AdminID = '$adminid' AND AdminPass = '$adminpass' ";

$count = mysqli_query($conn,$sql);
$row = mysqli_fetch_array($count,MYSQLI_ASSOC);
$active = $row['active'];
$result = mysqli_num_rows($count);
if($result == 1)
{
$_SESSION['admin_log'] = $adminid;
header("location: dadastudent.aspx");
}
else
{
	print "<script>alert('Username or Password invalid')</script>";
}

}

mysqli_close ($conn);


?>
  </body>
</html>