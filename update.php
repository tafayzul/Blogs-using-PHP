<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Record</title>
</head>
<body>
    <h1>Edit Record</h1>
    <?php 

    $id = $_GET['sr'] ?? '';
    $fname = $_GET['fName'] ?? '';
    $lname = $_GET['LName'] ?? '';
    $email = $_GET['email'] ?? '';

        
  $host = "localhost";
  $username = "root";
  $password = "";
  $dbname = "infasta";
  
  // connect
  $conn = mysqli_connect($host, $username, $password, $dbname);
  
  // check connection
  if (!$conn) {
      die("fail to connect" . mysqli_error());
  }
  
  if (isset($_POST['submit'])) {
      $id = $_POST['id'];
      $fname = $_POST['fname'];
      $lname = $_POST['lname'];
      $email = $_POST['email'];
  
      $sql = "UPDATE ajax_staff SET First_name='$fname', Last_name='$lname', Email='$email' WHERE Emp_ID='$id'";
  
      if (mysqli_query($conn, $sql)) {
          echo "Record updated successfully";
          header("location:ajax_display.php");
      } else {
          echo "Error updating record: " . mysqli_error($conn);
      }
  
      mysqli_close($conn);
  }
  
    ?>
    <form method="POST" action="update.php">
        <input type="hidden" name="id" value="<?php echo $id; ?>">
        <label>First Name:</label>
        <input type="text" name="fname" value="<?php echo $fname; ?>"><br><br>
        <label>Last Name:</label>
        <input type="text" name="lname" value="<?php echo $lname; ?>"><br><br>
        <label>Email:</label>
        <input type="text" name="email" value="<?php echo $email; ?>"><br><br>
        <input type="submit" name="submit" value="Update">
    </form>
</body>
</html>
