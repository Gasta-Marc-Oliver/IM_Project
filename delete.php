<?php
include 'db_connect.php';

$id = $_GET['id'];

$sql = "DELETE FROM students WHERE id=$id";

if ($conn->query($sql) === TRUE) {
    echo "Student deleted successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
header("Location: index.html");
exit();
?>
