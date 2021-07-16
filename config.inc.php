<?php
$servername = "localhost";
$username   = "vikky";
$password   = "Vikky@123";
$dbname     = "gamesnyit";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>