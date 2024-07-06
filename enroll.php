<?php
include 'db_connect.php';

$student_name = $_POST['student_name'];
$grade_level = $_POST['grade_level'];
$parent_name = $_POST['parent_name'];


$sql = "SELECT id FROM grade_level WHERE level='$grade_level'";
$result = $conn->query($sql);
$grade_level_id = $result->fetch_assoc()['id'];


$sql = "SELECT id FROM parents WHERE name='$parent_name'";
$result = $conn->query($sql);
$parent_id = $result->fetch_assoc()['id'];


$sql = "INSERT INTO students (name, grade_level_id, parent_id) VALUES ('$student_name', '$grade_level_id', '$parent_id')";

if ($conn->query($sql) === TRUE) {
    echo "New student enrolled successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
header("Location: index.php");
exit();
?>
