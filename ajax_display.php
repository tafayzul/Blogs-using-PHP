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

$sql = "SELECT * FROM ajax_staff";
$result = mysqli_query($conn, $sql);

if (!$result) {
    die("Error in query: " . mysqli_error($conn));
}

else{
$data =array();
while ($row = $result-> fetch_assoc()){

    $display = array(
        "ID"=> $row['Emp_ID'],
        "fName"=> $row['First_name'],
        "LName" => $row['Last_name'],
        "email" => $row['Email'],
        "uplaod" => $row['Upload'],
        
        

    );
    array_push($data, $display);
}
}
mysqli_close($conn);



if (count($data) > 0) {
    echo "<table>";
    echo "<thead><tr><th>SR.no</th><th>First Name</th><th>last name</th><th>Email</th><th>operation</th></tr></thead>";
    echo "<tbody>";
    foreach($data as $row) {
        echo "<tr>";
        echo "<td>" . $row['ID'] . "</td>";
        echo "<td>" . $row['fName'] . "</td>";
        echo "<td>" . $row['LName'] . "</td>";
        echo "<td>" . $row['email'] . "</td>";
        echo "<td>" . $row['uplaod'] . "</td>";
        
        echo "<td><a  href='update.php?sr=".($row['ID'])."&fName=".($row['fName'])."&LName=".($row['LName'])."&email=".($row['email'])."&uplaod=".($row['uplaod'])."'>Edit</a></td>";
        echo "<td><a  href='ajax_delete.php?sr=".($row['ID'])."&uplaod=".($row['uplaod'])."'>Delete</a></td>";

        echo "</tr>";
    }
    echo "</tbody>";
    echo "</table>";
} else {
    echo "No results";
}
?>



