<?php
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

// get the id and unique filename of the staff member to delete
$ID = $_GET['sr'] ?? '';
$sql = "SELECT Upload FROM ajax_staff WHERE Emp_ID = $ID";
$result = mysqli_query($conn, $sql);
if (!$result) {
    die("Error in query: " . mysqli_error($conn));
}
$row = mysqli_fetch_assoc($result);
$filename = $row['Upload'];

// delete the staff member from the database
$sql = "DELETE FROM ajax_staff WHERE Emp_ID = $ID";
$result = mysqli_query($conn, $sql);
if (!$result) {
    die("Error in query: " . mysqli_error($conn));
}

// delete the file from the upload directory
if (!empty($filename)) {
    $upload_dir = "uploads/";
    $upload_file = $upload_dir . $filename;
    unlink($upload_file);
}

mysqli_close($conn);

// redirect back to the original page
header("Location: ajax_display.php");
exit;
?>
