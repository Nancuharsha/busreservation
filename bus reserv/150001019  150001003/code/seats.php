<?php
session_start();
require 'connect.php';
?>

<!DOCTYPE HTML>
<html>
<style>

table,td{
border: 2px  black;
font-style: oblique;	
	border-spacing: 5px;
	text-align: center;
	color:white;
	font-size:20px;
}
.error {color: #FF0000;}
body
{
background-image:url("bus.png");
background-repeat: no-repeat;
background-size: 1500px 700px;
}
input:checkbox {
    height: 20px;
    width: 20px;
}
.heading
{
padding: 20px;
border-style: none;
border-color: none;
background-color: none;
text-align: center;
color: white;
padding-top: 30px;
    padding-right: 30px;
    padding-bottom: 30px;
    padding-left: 80px;
	color: white;
    text-shadow: 2px 2px 4px #000000;
}
.button {
    background-color: white;
    border: none;
    color: black;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
	  border-radius:8px;
    cursor: pointer;
	-webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
	
}

.button:hover
{
    background-color: #4CAF50; 
    color: white;
	font-size:14px;
}
.booked_seat
{
		
}
</style>
<body>

<?php
$seaterr="";
$valid=0;
$count=0;
$sum=0;
$bp=0;
$bperr="";
$seat=[];
if($_SERVER["REQUEST_METHOD"] == "POST")
{
	if(empty($_POST['check_list']))
	{
		$seaterr="Select atleast one seat";
	}
	else
	{
		$valid++;
		foreach($_POST['check_list'] as $check) {
		$seat[$count]=$check;
		$count++;
		
    }
	if(empty($_POST['boarding']))
	{
		$bperr="Select one boarding point";
	}
	else
	{
		$valid++;
		$bp=$_POST['boarding'];
		$_SESSION['Bpid']=$bp;
	}
	

	
	if($valid==2)
	{
		 $sum=$count*$_SESSION['fare'];
		 $tax=0.015*$sum;
		 $final=$sum+$tax;
		 $_SESSION['final']=round($final);
		 $_SESSION['count']=$count;
		 for($j=0;$j<$count;$j++)
		 {
		 $_SESSION['seat_no'.$j]=$seat[$j];
		 }
		 header('Location: http://localhost/passenger.php');
	}
	}
}
?>

<?php

echo "<h1 class='heading'>Book Your Tickets ";
echo "<h3>CHOOSE YOUR SEAT/S</h3>";	
echo "<p><strong>(If a seat is disabled then it is already booked!!)</strong><p>";
 $x=$_SESSION['O_id'];
$y= $_SESSION['R_id'];
$z= $_SESSION['B_id'];
$sql2="SELECT * FROM Boarding_points WHERE  O_id=$x && R_id='$y' && B_id='$z'";
	
	$res2=mysqli_query($conn,$sql2);
	if(mysqli_num_rows($res2)==0)
	{
		echo 'esdrtfgy';
	}
	if(!$res2)
	{
		die(mysqli_error($conn));
	}
echo "<form action=$_SERVER[PHP_SELF] method=POST>";
echo "<span class='error'> $seaterr </span>";

$d= $_SESSION['Date'];
echo "<table width=60%>";
for($j=1;$j<=2;$j++)
{
	$k=(($j-1)*5)+1;
	echo "<tr>";
	for($i=$k;$i<=$j*5;$i++)
{	
	
	$sql1="SELECT * FROM Seats WHERE O_id='$x' && R_id='$y' && B_id='$z' && Date='$d' && Seat_no='$i'";
	$res1=mysqli_query($conn,$sql1);
	if(!$res1)
	{
		die(mysqli_error($conn));
	}
	if(mysqli_num_rows($res1)>0)
	{
	echo "<td><input type=checkbox  class='booked_seat' name=check_list[$i] value=$i disabled>$i </td>";
	}
	else
	{
		echo "<td><input type=checkbox class='seat' name=check_list[$i] id='$i' value=$i>$i</td>";	
	}
}
	echo "</tr>";
}
echo "</table>";
echo "<br><br>";
echo "<table width=60%>";

	echo "<tr>";
	for($i=11;$i<=15;$i++)
{	
	
	$sql1="SELECT * FROM Seats WHERE O_id='$x' && R_id='$y' && B_id='$z' && Date='$d' && Seat_no='$i'";
	$res1=mysqli_query($conn,$sql1);
	if(!$res1)
	{
		die(mysqli_error($conn));
	}
	if(mysqli_num_rows($res1)>0)
	{
	echo "<td><input type=checkbox  class='booked_seat' name=check_list[$i] value=$i disabled>$i</td>";
	}
	else
	{
		echo "<td><input type=checkbox class='seat' name=check_list[$i] id='$i' value=$i>$i </td>";	
	}
}
	echo "</tr>";

echo "</table>";


echo "<br><br>";
echo "<h3>CHOOSE ONE BOARDING POINT</h3>";
echo "<h4><span class='error'> $bperr </span><h4>";

while($row=mysqli_fetch_array($res2))
{
	$d=substr($row['Bp_time'],0,5);
	if($bp!="")
	{
		echo "<input type=radio  name=boarding value=$row[Bp_id] checked> $row[Bp_name] at $d<br><br>";
	}
	else
	{
		echo "<input type=radio name=boarding value=$row[Bp_id]>$row[Bp_name] at $d<br><br>";
	}

}
echo "<br><br>";
echo "<input type=submit class='button' value=Go>";
echo "</form>";

?>