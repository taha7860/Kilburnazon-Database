<?php
$dsn = "mysql:host=127.0.0.1;dbname=Kilburnazon";
$username = "root";
$password = "";

$conn = new PDO($dsn, $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>