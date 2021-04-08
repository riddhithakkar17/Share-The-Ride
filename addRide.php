<?php
session_start();    

$con=mysqli_connect('localhost','root','','carpool');
$vehicle=$_POST['t1'];
$date=$_POST['t2'];
$from=$_POST['t3'];
$to=$_POST['t4'];
$seats=$_POST['t5'];
$contact=$_POST['t9'];

$sql = "INSERT INTO `route`(`vehicle`, `date`, `frm`, `tu`, `seats`, `contact`) VALUES ('$vehicle',\"$date\",'$from','$to',$seats,'$contact')";
$result= mysqli_query($con, $sql);
header("location:Welcome.php")
?>