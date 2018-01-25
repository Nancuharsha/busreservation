
<?php
session_start();
?>
<!DOCTYPE HTML>
<html>
<style>
.error {color: black;
font-size:20px;}
body
{
background-image:url("bus.png");
background-repeat: no-repeat;
background-size: 1500px 1500px;
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
</style>
<body>

<?php
 $k=$_SESSION['count'];
 $n=[];
 $a=[];
 $g=[];
 $nameerr=[];
 $gendererr=[];
 $ageerr=[];
 $contact="";
 $email="";
 $contacterr="";
 $emailerr="";
 for($j=0;$j<$k;$j++)
 {
	 $n[$j]="";
	 $g[$j]="";
	 $a[$j]="";
	 $nameerr[$j]="";
	 $ageerr[$j]="";
	 $gendererr[$j]="";
 }
$n_k=0;
$a_k=0;
$g_k=0;
$valid=0;

if ($_SERVER["REQUEST_METHOD"] == "POST") 
{	
$i=0;
foreach($_POST["name_list"] as $temp)
{
	if(empty($temp))
	{
		$nameerr[$i++]="Name is required";
	}
	else
	{
		$valid++;
		$n[$i++]=$temp;
	}
}
$i=0;
foreach($_POST['age_list'] as $temp)
{
	if(empty($temp))
	{
		$ageerr[$i++]="age is required";
	}
	else
	{
		$valid++;
		$a[$i++]=$temp;
	}
}
$i=0;
foreach($_POST['gender_list'] as $temp)
{
		$valid++;
		$g[$i++]=$temp;
}
	if(empty($_POST['contact']))
	{
		$contacterr="Contact is required";
	}
	else
	{
		$valid++;
		$contact=$_POST['contact'];
	}
	if(empty($_POST['email']))
	{
		$emailerr="Email is required";
	}
	else
	{
		$valid++;
		$email=$_POST['email'];
	}
	
	if($valid==$k*3+2)
	{	
	for($j=0;$j<$k;$j++)
	{
	$_SESSION["name".$j]=$n[$j];
	$_SESSION["age".$j]=$a[$j];
	$_SESSION["gender".$j]=$g[$j];
	}
	$_SESSION['email']=$email;
	$_SESSION['contact']=$contact;
	header('Location: http://localhost/payment.html');
	}
	}				
?>
<?php
	$i=0;
	echo "<h1 class='heading'>PASSENGERS DETAILS</h1>";
	echo "<p><span class=error>* required field.</span></p>";
	echo "<form action=$_SERVER[PHP_SELF] method=POST autocomplete='off'>";
	
	$k=$_SESSION['count'];
	for($i=0;$i<$k;$i++)
	{
		echo "<fieldset>";
		echo "<strong>Passenger</strong>".($i+1).'<br><br>';
		
		
		echo "Name :&nbsp &nbsp <input type=text name=name_list[] id=1 value='$n[$i]'>";
		echo "<span class='error'>*  $nameerr[$i] </span> <br><br>";
		
		echo "Age  :&nbsp &nbsp&nbsp &nbsp <input type=text name=age_list[] id=2 value=$a[$i]>";
		echo "<span class='error'>*  $ageerr[$i] </span><br><br>";
		
		echo "Gender : <input type=radio name=gender_list['$i'] value=M id=5 checked>Male&nbsp &nbsp";
		echo "<input type=radio name=gender_list['$i'] value=F id=6 x1 >Female";
		
		echo "<span class='error'>* $gendererr[$i]</span><br><br>";
		echo "</fieldset><br>";
	}
	echo "<fieldset>";
		echo "Contact :&nbsp<input type=text name=contact id=3 value=$contact>";
		echo "<span class='error'>*  $contacterr</span><br><br>";

		echo "Email : &nbsp&nbsp&nbsp<input type=email name=email id=4 value=$email>";
		echo "<span class='error'>* $emailerr</span><br><br>";
	echo "</fieldset><br>";
	echo "<input type=submit name=submit class='button' value=continue>";
?>