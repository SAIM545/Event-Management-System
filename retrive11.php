<?php
$host = "localhost";
$dbusername = "saim2";
$dbpassword = "123";
$dbname = "event";

// Create connection
$conn = new mysqli('localhost', 'saim2', '123', $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT id, selected_car, cost, distance, booking_fees FROM travels1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table><tr><th>ID</th><th>Selected Car</th><th>Cost</th><th>Distance</th><th>Booking Fees</th></tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["id"]. "</td><td>" . $row["selected_car"]. "</td><td>" . $row["cost"]. "</td><td>" . $row["distance"]. "</td><td>" . $row["booking_fees"]. "</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}

$conn->close();
?>
