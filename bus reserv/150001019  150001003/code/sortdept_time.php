<?php
session_start();
require 'connect.php';
?>

<!DOCTYPE HTML>
<html>
<style>
table,td{
border: 2px black;
font-style: oblique;	
	border-spacing: 5px;
	text-align: center;
	color:white;
	font-size:20px;
}
th
{
	color:black;
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
	-webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
	
}

.button:hover {
    background-color: #4CAF50; /* Green */
    color: white;
	font-size:14px;
	}
.error {color: black;
font-size:20px;
font-weight:bold;}
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

.dropbtn {

    background-color: white;
    color: black;
	border: 2px;
    padding: 10px;
    font-size: 14px;
    cursor: pointer;
	border-radius:8px;
}
.dropbtn:hover, .dropbtn:focus {
    background-color: #4CAF50;
	color:white;
	
}
.dropdown {
    position: relative;
    display: inline-block;
}
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 110px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}
.dropdown-content a {
    color: black;
	background-color:#C0C0C0;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}
.dropdown-content a:hover {background-color: #f1f1f1}

.show {display:block;}

body
{
background-image:url("bus.png");
background-repeat: no-repeat;
background-size: 1500px 1000px;
}
.simple{
	font-size:30px;
	font-style:italic;
	font-weight:500px;
}


</style>
<body>

<?php


$buserr="";
$valid=0;
if ($_SERVER["REQUEST_METHOD"] == "POST")
{
	if(empty($_POST['key']))
	{
	$buserr="Select atleast one bus please!!!!!";	
	}
	else
	{
	$valid++;
	$temp=$_POST['key'];
	$string=$temp;
	$o=0;
	$y=array();
	$n="";
for($i=0;$i<strlen($string);$i++)
	{
		$ch = substr( $string, $i, 1 );
		$q=ord($ch);
		if($q==39)
		{
			continue;
		}
		if($i==strlen($string)-1)
		{
			$n=$n.$ch;
			$y[$o]=$n;
			$o++;
			break;
		}
			if($ch=='_')
			{
			$y[$o]=$n;
			$o++;
			$n="";	
			continue;
			}
					$n=$n.$ch;
	}

	$date=$_SESSION["date"];
	$m=$y[0];
	echo $m;
	$_SESSION['O_id']=$m;
	$temp1=$y[1];
	echo $temp1;
	$_SESSION['R_id']=$temp1;
	$temp2=$y[2];
	echo $temp2;
	$_SESSION['B_id']=$temp2;
	$temp3=$y[3];
	echo $temp3;
	$_SESSION['O_name']=$temp3;
	$temp4=$y[4];
	echo $temp4;
	$_SESSION['Seat_type']=$temp4;
	$temp5=$y[5];
	echo $temp5;
	$_SESSION['Bus_type']=$temp15;
	$temp6=$y[8];
	echo $temp6;
	$_SESSION['fare']=$temp6;
	$temp7=$y[7];
	echo $temp7;
	$_SESSION['Arr_time']=$temp7;
	$temp8=$y[6];
	echo $temp8;
	$_SESSION['Dept_time']=$temp8;
	}
	if($valid==1)
	{
		header('Location: http://localhost/seats.php');
	}
}	
?>

<?php

function func($on)
{
	$s=$on;
	$k=0;
	$count=0;
	$ans;
	$p=1;
	$q=1;
	$r=2016;
	$t=array();
	$num="0";
for($i=0;$i<strlen($s);$i++)
	{
		$char = substr( $s, $i, 1 );
		if($i==strlen($s)-1)
		{
			$num=$num*10+$char;
			$t[$k]=$num;
			$k++;
			break;
		}
			if($char=='-')
			{
			$t[$k]=$num;
			$k++;
			$num="0";	
			}
		if($char>='0' && $char<='9')
		{
			$num=$num*10 + $char;
		}
		
	}
	$a=$t[2];
	$b=$t[1];
	$c=$t[0];
	
	$a=$a-$p;
	$c=$c-$r;
	if($c>0)
	{
		$count=$count+c*365;
	}
	if($b<2)
	{
		$count=$count+0;
	}
	else if($b==2)
	{
		$count=$count+31;
	}
	else 
	{
		if($b<8)
		{
		if($b%2==0)
		{
			$count=$count+($b/2)*31+(($b/2-1)*30)-1;
		}
		else
		{
			$count=$count+((($b-1)/2)*61)-1;
		}
		}
		else
		{
				$count=$count+213;
		$b=$b-7;
		if($b%2==0)
		{
			$count=$count+($b/2)*31+($b/2-1)*30;
		}
		else
		{
			$count=$count+(($b-1)/2)*61;
		}
		}
	}
	$count=$count+$a;
	$ans=$count%7;
	if($ans==0)
	{
		$printf="friday";
	}
	else if($ans==1)
	{
		$printf="saturday";
	}
	else if($ans==2)
	{
		$printf="sunday";
	}
		else if($ans==3)
	{
		$printf="monday";
	}
		else if($ans==4)
	{
		$printf="tuesday";
	}
		else if($ans==5)
	{
		$printf="wednesday";
	}
		else if($ans==6)
	{
		$printf="thursday";
	}
	return $printf;
}
echo "<script>

function myFunction() {
    document.getElementById('myDropdown').classList.toggle('show');
}

window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName('dropdown-content');
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
";
echo "<h1 class='heading'>CHOOSE YOUR BUS</h1><br>";
echo "<span class='simple'>SORT BY</span>";
	echo "&nbsp &nbsp &nbsp &nbsp &nbsp<input type='button' class='button' onclick=document.location.href='http://localhost/sortprice.php' name='price' id='price' value='price'>";
	echo "&nbsp &nbsp &nbsp &nbsp &nbsp <input type=button  class='button' onclick=document.location.href='http://localhost/sortdept_time.php' name=dept_time id=dept_time value=dept_time>";
	echo "&nbsp &nbsp &nbsp &nbsp &nbsp <input type=button  class='button' onclick=document.location.href='http://localhost/sortarr_time.php' name=arr_time id=arr_time value=arr_time>";
	echo "&nbsp &nbsp &nbsp &nbsp &nbsp <div class='dropdown'>
  <button onclick='myFunction()' class='dropbtn'>Bus Type</button>
  <div id='myDropdown' class='dropdown-content'>
    <a href='http://localhost/sortAC.php'>A/C</a>
    <a href='http://localhost/sortNonAC.php'>NON A/C</a>
  </div>
</div><br><br><br><br><br><br>";

	$from=$_SESSION['Dept_city'];
	$to=$_SESSION['Arr_city'];
	$on=$_SESSION['Date'];
	$res=func($on);
	
	
		$sql= "SELECT DISTINCT Operator.O_id,Buses.B_id,Routes.R_id,Operator.O_name,Buses.Seats_type,Buses.Bus_type,via.Dept_time,via.Arr_time,via.fare,via_days.Days FROM 
 via_days join Routes on Routes.R_id=via_days.R_id
 join Buses  on Buses.B_id=via_days.B_id
 join Operator on Operator.O_id=via_days.O_id,
 via WHERE via.O_id=via_days.O_id &&  via.R_id=via_days.R_id &&  via.B_id=via_days.B_id && Routes.Dept_city='$from' && Arr_city='$to' && via_days.Days= '$res' ORDER BY via.Dept_time"; 
$result=mysqli_query($conn,$sql);

if(mysqli_num_rows($result)>0)
{
	echo "<form action=$_SERVER[PHP_SELF] method='POST'>";
	echo "<span class='error'> $buserr </span><br><br>";
	echo "<table width=70%>
	<col width ='60'>";
	echo "<th>Select</th>";
		echo "<th>Bus name</th>";
			echo "<th>Seats type</th>";	
			echo "<th>Bus type</th>";
				echo "<th>Dept time</th>";
					echo "<th>Arr time</th>";
						echo "<th>Fare</th>";
	while($row=mysqli_fetch_assoc($result))
	{
		$d=substr($row['Dept_time'],0,5);
		$a=substr($row['Arr_time'],0,5);
	echo "<tr>";
	echo"<td><input type='radio' name='key' id='key' value=$row[O_id]_$row[R_id]_$row[B_id]_$row[O_name]_$row[Seats_type]_$row[Bus_type]_'$d'_'$a'_$row[fare]></td>";
	echo "<td>$row[O_name]</td><td>$row[Seats_type]</td><td>$row[Bus_type] </td>  <td>$d</td>	<td>$a </td><td>Rs $row[fare]</td>";
	echo "</tr>";
	}
	echo "</table>";
	
	echo "<br><br><input type='submit' class='button' name='submit' value='Select'>";
	echo "</form>";
}
	else
	{
		echo "0 results";
	}

	$conn->close();
?>