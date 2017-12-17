<?php
$servername = "localhost";
$username = "root";
$password = "dadalus123";
$dbname = "dadaphp";

$conn = mysqli_connect($servername, $username, $password, $dbname);

session_start();

$check_admin = $_SESSION['admin_log'];

$readses_sql = mysqli_query($conn,"SELECT adminID FROM  admin Where AdminID = '$check_admin'");
$row = mysqli_fetch_array($readses_sql,MYSQLI_ASSOC);

$login_display_name = $row['AdminID'];

if (!isset($_SESSION['admin_log']))
{
	header("location:MainPage.aspx");
}
?>