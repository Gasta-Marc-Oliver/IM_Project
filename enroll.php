<?php
include 'db_connect.php';

$first_name = $_POST['F_name'];
$last_name = $_POST['L_name'];
$lrn = $_POST['LRN'];
$year_level = $_POST['Level'];
$age = $_POST['Age'];
$gender = $_POST['Gender'];

$sql = "INSERT INTO students (F_name, L_name, LRN, Level, Age, Gender) VALUES ('$F_name', '$L_name', '$LRN', '$Level', '$Age', '$Gender')";

if ($conn->query($sql) === TRUE) {
    echo "New student enrolled successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
header("Location: index.html");
exit();
?>
