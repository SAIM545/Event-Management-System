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
$category1 = filter_input(INPUT_POST, 'category1');
$source = filter_input(INPUT_POST, 'source');
$destination = filter_input(INPUT_POST, 'destination');
$people = filter_input(INPUT_POST, 'people');

if (!empty($fname) && !empty($lname)) {
    $host = "localhost";
    $dbusername = "saim2";
    $dbpassword = "123";
    $dbname = "user";

    // Create connection
    $conn = new mysqli('localhost', 'saim2', '123', $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "INSERT INTO travels (fname, mname, lname, phoneno, email, address, pincode, date, time, category1, source, destination, people) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);
    if ($stmt) {
        $stmt->bind_param("ssssssisssssi", $fname, $mname, $lname, $phoneno, $email, $address, $pincode, $date, $time, $category1, $source, $destination, $people);

        if ($stmt->execute()) {
            echo "New record is inserted successfully";
        } else {
            echo "Error: " . $stmt->error;
        }
        $stmt->close();
    } else {
        echo "Error preparing statement: " . $conn->error;
    }

    $conn->close();
} else {
    echo "First name and last name should not be empty";
}
?>
