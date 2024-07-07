<?php
include 'db_connect.php';

$id = $_GET['Student_ID'];

$sql = "DELETE FROM students WHERE Student_ID=$Student_ID";

if ($conn->query($sql) === TRUE) {
    echo "Student deleted successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
header("Location: index.html");
exit();
