<?php
// config.php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gestao_academica";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
