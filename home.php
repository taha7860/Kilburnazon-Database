<?php
session_start();

if (empty($_SESSION['user_id']) || $_SESSION['user_role'] !== 'executive') {
    echo 'Access denied.';
    exit;
}

require 'db_connection.php';

$sql = 'SELECT * FROM Employee WHERE id = :executive_id';
$stmt = $conn->prepare($sql);
$stmt->execute([
    'executive_id' => $_SESSION['user_id']
]);

$executive = $stmt->fetch(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Amazon Style Home</title>
    <link rel="stylesheet" href="styles/home.css">
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
            <li><a href="leave_management.php">Leave Management</a></li>
            <li><a href="payroll_report.php">Payroll Report</a></li>
            <li><a href="birthdays.php">Birthdays</a></li>
            <li><a href="terminations.php">Terminations</a></li>
        </ul>
    </nav>
    <main>
        <h1>Welcome, <?php echo $executive['name']; ?>!</h1>
        <p>As an executive, you have access to a range of features designed to 
            help you manage employee data, track absenteeism, generate payroll 
            reports, and more. You can easily view employee profiles, approve or
             reject leave requests, monitor department-wise absenteeism, and 
             generate detailed payroll reports. Additionally, you have the ability
              to process promotions, view upcoming birthdays, and track contract 
              terminations. All features are designed to enhance workflow and 
              provide insights into employee performance and company operations.</p>
    </main>
</body>
</html>
