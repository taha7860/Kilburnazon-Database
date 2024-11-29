<?php
$dsn = "mysql:host=localhost;dbname=Kilburnazon";
$username = "root";
$password = "";

$conn = new PDO($dsn, $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>