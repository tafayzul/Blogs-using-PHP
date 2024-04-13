<?php 
$host= "localhost";
$username= "root";
$password= "";
$dbname = "infasta";

// connect
$conn= mysqli_connect($host,$username,$password,$dbname);


// check connection

if(!$conn){
    die("fail to connect". mysqli_error());
}

if($_SERVER["REQUEST_METHOD"]=="POST") {

    $fname=$_POST['firstname'];
    $lname=$_POST['lastname'];
    $email=$_POST['email'];

    // file upload
    $upload_dir = "uploads/";
    $upload_type = pathinfo($_FILES["upload"]["name"], PATHINFO_EXTENSION);
    $unique_filename = uniqid() . "." . $upload_type;
    $upload_file = $upload_dir . $unique_filename;
    move_uploaded_file($_FILES["upload"]["tmp_name"], $upload_file);
    
    
    // Now you can store the $unique_filename variable in your database.
    

    // sql
    $sql= "INSERT INTO ajax_staff (First_name, Last_name , Email, Upload ) VALUES ('$fname','$lname','$email', '$unique_filename')";


    if(mysqli_query($conn, $sql)){
        echo "pass";
    }else{
        echo "fail". mysqli_connect_error();
    }

    mysqli_close($conn);
}

?>
