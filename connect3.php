<?php

$fname = filter_input(INPUT_POST, 'fname');
$mname = filter_input(INPUT_POST, 'mname');
$lname = filter_input(INPUT_POST, 'lname');
$phoneno = filter_input(INPUT_POST, 'phoneno');
$email = filter_input(INPUT_POST, 'email');
$address = filter_input(INPUT_POST, 'address');
$pincode = filter_input(INPUT_POST, 'pincode');
$date = filter_input(INPUT_POST, 'date');
$time = filter_input(INPUT_POST, 'time');
$category = filter_input(INPUT_POST, 'category');
$people = filter_input(INPUT_POST, 'people');

if (!empty($fname) && !empty($lname)) {
    $host = "localhost";
    $dbusername = "root";
    $dbpassword = "";
    $dbname = "event";

    // Create connection
    $conn = new mysqli('localhost', 'saim2', '123', $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // SQL statement to insert data into the wedding table
    $sql = "INSERT INTO wedding (fname, mname, lname, phoneno, email, address, pincode, date, time, category, people) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

    // Prepare statement
    $stmt = $conn->prepare($sql);
    if ($stmt) {
        // Bind parameters
        $stmt->bind_param("ssssssisssi", $fname, $mname, $lname, $phoneno, $email, $address, $pincode, $date, $time, $category, $people);

        // Execute statement
        if ($stmt->execute()) {
            echo "New record is inserted successfully";
        } else {
            echo "Error: " . $stmt->error;
        }
        $stmt->close();
    } else {
        echo "Error preparing statement: " . $conn->error;
    }

    // Close connection
    $conn->close();
} else {
    echo "First name and last name should not be empty";
}
?>
