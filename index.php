
<?php

//setting connection variables 
$db_host = 'localhost';
$db_user = 'root';
$db_password = '';
$db = 'rangevalues';


//connection to server & database 
$conn = mysqli_connect($db_host, $db_user, $db_password, $db );

//check connection 
if (!$conn) {
  die("Connection failed :" . mysqli_connect_error());
} else{
echo "Connected successfully";}


//Inserting motor saved value settings into database
if(isset($_POST['save'])){

$Motor1 = $_POST['Motor1'];
$Motor2 = $_POST['Motor2'];
$Motor3 = $_POST['Motor3'];
$Motor4 = $_POST['Motor4'];
$Motor5 = $_POST['Motor5'];
$Motor6 = $_POST['Motor6'];

    $query = "INSERT INTO motor_values (Motor1, Motor2, Motor3, Motor4, Motor5, Motor6) VALUES ('$Motor1', '$Motor2', '$Motor3', '$Motor4', '$Motor5', $Motor6);";
    $result = mysqli_query($conn, $query);
    if($result){
        echo "<br><br> setting values are successfuly saved!";
    }
    else{
        echo "<br> ERROR: Unable to save <br>";
    }
}

    if(array_key_exists('ON', $_POST)) { 
    $my_query = "INSERT INTO ON_motors(isON) VALUES (1)";
    $result = mysqli_query($conn, $my_query);
    if($result){
        echo "<br><br> Motors are ON!";
    }
    else{
        echo "<br> ERROR: Unable to past <br>";
    }
        }

    if(array_key_exists('OFF', $_POST)) { 
    $my_query = "INSERT INTO OFF_motors(isOFF) VALUES (0)";
    $result = mysqli_query($conn, $my_query);
    if($result){
        echo "<br><br> Motors are off!";
    }
    else{
        echo "<br> ERROR: Unable to add <br>";
    }
        }

  