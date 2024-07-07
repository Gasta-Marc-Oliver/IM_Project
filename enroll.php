<?php
include 'db_connect.php';

$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$lrn = $_POST['lrn'];
$year_level = $_POST['year_level'];
$age = $_POST['age'];
$gender = $_POST['gender'];

$sql = "INSERT INTO students (first_name, last_name, lrn, year_level, age, gender) VALUES ('$first_name', '$last_name', '$lrn', '$year_level', '$age', '$gender')";

if ($conn->query($sql) === TRUE) {
    echo "New student enrolled successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
header("Location: index.html");
exit();
?>
