<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "info_management_project";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
