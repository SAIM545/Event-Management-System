<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
    border: 1px solid black;
}
</style>
</head>
<body>

<?php
$host = "localhost";
$dbusername = "saim2";  // Database username
$dbpassword = "your_password_here";  // Database password
$dbname = "event";  // Database name

// Create connection
$conn = new mysqli('localhost', 'saim2', $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT id, selected_item, cost, quantity FROM catering2";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table><tr><th>ID</th><th>Selected Item</th><th>Cost</th><th>Quantity</th></tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["id"]. "</td><td>" . $row["selected_item"]. "</td><td>" . $row["cost"]. "</td><td>" . $row["quantity"]. "</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}

$conn->close();
?> 

</body>
</html>
