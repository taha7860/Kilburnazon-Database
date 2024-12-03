<?php
require 'db_connection.php';

$stmt = $conn->query('SELECT * FROM EmployeeAudit');
$audits = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Amazon Style Home</title>
    <link rel="stylesheet" href="styles/home.css">
    <link rel="stylesheet" href="styles/terminations.css">
</head>
<body>
    <header class="header">
        <div class="logo-container">
            <a href="home.php" class="logo">
                <img src="images/logo.png" alt="Amazon Logo">
            </a>
        </div>
    </header>
    <nav class="navbar">
        <ul>
            <li><a href="home.php">Home</a></li>
            <li><a href="employees.php">Employees</a></li>
            <li><a href="employee_management.php">Employee Management</a></li>
            <li><a href="#">Leave Management</a></li>
            <li><a href="#">Payroll Report</a></li>
            <li><a href="birthdays.php">Birthdays</a></li>
            <li><a href="#">Terminations</a></li>
        </ul>
    </nav>
    <h2>Terminated Employees</h2>
    
    <table class="employee-table">
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Deleted By</th>
                <th>Notes</th>
                <th>Termination Datetime</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($audits as $audit) {
                $output = '<tr>';
                $output .= '<td>' . $audit['deleted_employee_name'] . '</td>';
                $output .= '<td>' . $audit['deleted_employee_email'] . '</td>';
                $output .= '<td>' . $audit['deleted_by_user_id'] . '</td>';
                $output .= '<td>' . (isset($audit['notes']) ? $audit['notes'] : 'N/A') . '</td>';
                $output .= '<td>' . $audit['deletion_time'] . '</td>';
                $output .= '</tr>';
                echo $output;
            } ?>
        </tbody>
    </table>
</body>
</html>
