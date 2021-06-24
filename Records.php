
<?php

//setting connection variables 
$db_host = 'localhost';
$db_user = 'root';
$db_password = '';
$db = 'rangevalues';


//connection to server & database 
$conn = mysqli_connect($db_host, $db_user, $db_password, $db );

//fetching and printing last data records 
echo "<br>";
$sql = mysqli_query($conn, "SELECT * FROM motor_values ORDER BY id DESC LIMIT 1");
$print_data = mysqli_fetch_row($sql);

$sql2 = mysqli_query($conn, "SELECT * FROM on_motors ORDER BY id DESC LIMIT 1");
$print_data2 = mysqli_fetch_row($sql2);

$sql3 = mysqli_query($conn, "SELECT * FROM off_motors ORDER BY id DESC LIMIT 1");
$print_data3 = mysqli_fetch_row($sql3); 

echo "<br><br> LAST SAVED SETTING VALUES...";
echo "<br>";
echo "<br>";

echo "SAVE BUTTON";
echo"<hr>";

echo "id = ".$print_data[0];
echo "<br>";
echo "Motor1 =".$print_data[1];
echo "<br>";
echo "Motor2 =".$print_data[2];
echo "<br>";
echo "Motor3 =".$print_data[3];
echo "<br>";
echo "Motor4 =".$print_data[4];
echo "<br>";
echo "Motor5 =".$print_data[5];
echo "<br>";
echo "Motor6 =".$print_data[6];
echo"<br>";
echo"<br>";


echo"ON BUTTON";
echo "<hr>";
echo "id = ".$print_data2[0];
echo"<br>";
echo "isOn = ".$print_data2[1];
echo "<br>";
echo "<br>";


echo"OFF BUTTON";
echo"<hr>";
echo "id = ".$print_data3[0];
echo"<br>";
echo "isOff =".$print_data3[1];
echo "<br>";
echo "<br>"; 


 ?>