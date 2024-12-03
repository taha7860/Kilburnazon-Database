<?php
require 'db_connection.php';

$currentMonth = date('F');

$query = $conn->query('SELECT * FROM Employee WHERE MONTH(dob) = MONTH(CURRENT_DATE()) ORDER BY DAY(dob)');
$employees = $query->fetchAll(PDO::FETCH_ASSOC);

function timeDifference($dob) {
    $today = new DateTime();
    $birthday = DateTime::createFromFormat('Y-m-d', $dob);
    $birthdayThisYear = DateTime::createFromFormat('m-d', $birthday->format('m-d'));
    $birthdayThisYear->setDate($today->format('Y'), $birthdayThisYear->format('m'), $birthdayThisYear->format('d'));

    $timeDiff = $today->diff($birthdayThisYear);
    $res = $timeDiff->days;
    if ($today > $birthdayThisYear) {
        $res = -$res;
    }
    return $res;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Amazon Style Home</title>
    <link rel="stylesheet" href="styles/home.css">
    <link rel="stylesheet" href="styles/birthdays.css">
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
            <li><a href="#">Payroll Report</a></li>
            <li><a href="birthdays.php">Birthdays</a></li>
            <li><a href="terminations.php">Terminations</a></li>
        </ul>
    </nav>
    <h2>Employee Birthdays for <?php echo $currentMonth ?></h2>
    
    <table class="employee-table">
        <thead>
            <tr>
                <th>Employee ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Birthday</th>
                <th>Days Left</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($employees as $employee) {
                $birthdayFormatted = (new DateTime($employee['dob']))->format('m-d');
                $output = '<tr>';
                $output .= '<td>' . $employee['id'] . '</td>';
                $output .= '<td>' . $employee['name'] . '</td>';
                $output .= '<td>' . $employee['email'] . '</td>';
                $output .= '<td>' . $birthdayFormatted . '</td>';
                $output .= '<td>' . timeDifference($employee['dob'])  . '</td>';
                $output .= '</tr>';
                echo $output;
            } ?>
        </tbody>
    </table>
</body>
</html>
