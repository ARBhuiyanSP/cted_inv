<?php
/*
 * Mysql Database connection string:
 */
global $conn;
$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "cted_inv";

// Create connection
$conn       = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
