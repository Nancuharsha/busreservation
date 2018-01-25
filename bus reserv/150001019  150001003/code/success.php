<?php
session_start();
require 'connect.php';
?>

<!DOCTYPE HTML>
<html>
<style>

.heading
{
padding: 20px;
text-shadow: 2px 2px 4px #000000;
border-style: none;
border-color: none;
background-color: none;
text-align: center;
color: white;
padding-top: 30px;
    padding-right: 30px;
    padding-bottom: 30px;
    padding-left: 80px;
}
body
{
background-image:url("bus.png");
background-repeat: no-repeat;
background-size: 1500px 600px;
}
.simple
{
	font-size:20px;
	font-weight:bold;
}
</style>
</html>
<?php

echo "<h1 class='heading'> Tickets booked successfully</h1>";
	
	echo "<p class='simple' > $_SESSION[O_name] $_SESSION[Seat_type]    $_SESSION[Bus_type] $_SESSION[Dept_city] --->>  $_SESSION[Arr_city]  $_SESSION[Dept_time]  $_SESSION[Arr_time] $_SESSION[Date]</p>";
$k=$_SESSION['count'];
echo '<p class=simple>Seat Number/s :</p>';
for($j=0;$j<$k;$j++)
{
	echo $_SESSION['seat_no'.$j].'<br><br>';
}
echo "<p class=simple>All the details(including PNR number) have been sent to your contact number $_SESSION[contact].</p><br><br>";
echo "<p class=simple>You can print your ticket clicking link sent to your email id $_SESSION[email].</p><br><br>";
$date=date('Y-m-d');
//sqlpayment
$sqltxn="INSERT INTO payment (Mthd_payment,final_amnt,card_no,Payment_date) VALUES ('$_SESSION[Method]','$_SESSION[Amount]','$_SESSION[Card]','$date')";
$restxn=mysqli_query($conn,$sqltxn);
if(!$restxn)
{
	die(mysqli_error($conn));
}
if(mysqli_affected_rows($conn)>0)
{
	$txnid=mysqli_insert_id($conn);
	echo "<h4 class='simple'> Your TRANSACTION ID is $txnid<br>.PLEASE KEEP THIS FOR FUTURE REFERENCE(IN case that you want to cancel your ticket)</h4>";
}
//sqlappliedto
if($_SESSION['applied']==1)
{
	$coupon=$_SESSION['coupon'];
$sqlcoupon="INSERT INTO applied(Txn_id,Cpn_code) VALUES ('$txnid','$coupon')";
$rescoupon=mysqli_query($conn,$sqlcoupon);
if(!$rescoupon)
{
	die(mysqli_error($conn));
}

}

//sqlpassengers
for($i=0;$i<$k;$i++)
{
	$x=$_SESSION['name'.$i];
	$y=$_SESSION['gender'.$i];
	$z=$_SESSION['age'.$i];
	$d=$_SESSION['Date'];
	if($i==0)
	{
		$contact=$_SESSION['contact'];
		$email=$_SESSION['email'];
		$sqlpass="INSERT INTO Passengers(P_name,P_gender,P_age,journey_date,Txn_id,P_contact,P_email) VALUES ('$x','$y','$z','$d','$txnid','$contact','$email')";

	}
	else
	{
	$sqlpass="INSERT INTO Passengers(P_name,P_gender,P_age,journey_date,Txn_id,P_contact,P_email) VALUES ('$x','$y','$z','$d','$txnid',NULL,NULL)";	
	}

$respass=mysqli_query($conn,$sqlpass);
if(!$respass)
{
	die(mysqli_error($conn));
}
if(mysqli_affected_rows($conn)>0)
{
	$pid=mysqli_insert_id($conn);
}
$seat=$_SESSION['seat_no'.$i];
$sqlseat="INSERT INTO Seats(P_id,O_id,R_id,B_id,Date,Seat_no) VALUES ('$pid',$_SESSION[O_id],$_SESSION[R_id],$_SESSION[B_id],'$_SESSION[Date]',$seat)";
$resseat=mysqli_query($conn,$sqlseat);
if(!$resseat)
{
	die(mysqli_error($conn));
}

}
?>