<?php
session_start();
require 'db_connection.php';

$successMessage = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $leave_type = $_POST['leave_type'];
    $start_date = $_POST['start_date'];
    $end_date = $_POST['end_date'];
    $reason = $_POST['reason'];
    $employee_id = $_SESSION['user_id'];

    $sql = 'SELECT * FROM Employee WHERE id = :id';
    $stmt = $conn->prepare($sql);
    $stmt->execute([
        'id' => $employee_id
    ]);
    $employee = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($employee) {
        $sql = 'INSERT INTO LeaveTable (leave_type, employee_id, start_date, end_date, reason)
        VALUES (:leave_type, :employee_id, :start_date, :end_date, :reason)';
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            'leave_type' => $leave_type,
            'employee_id' => $employee_id,
            'start_date' => $start_date,
            'end_date' => $end_date,
            'reason' => $reason
        ]);
        $successMessage = 'Your leave request has been successfully submitted!';
    } else {
        echo 'User not logged in.';
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restricted Access</title>
    <link rel="stylesheet" href="styles/home.css">
    <link rel="stylesheet" href="styles/leave_request.css">
    <script src="scripts/date_checking.js" defer></script>
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
            <li><a href="non_executive_home.php">Home</a></li>
            <li><a href="#" class="disabled">Employees <span class="lock-icon">🔒</span></a></li>
            <li><a href="#" class="disabled">Employee Management <span class="lock-icon">🔒</span></a></li>
            <li><a href="leave_request.php">Leave Request</a></li>
            <li><a href="#" class="disabled">Payroll Report <span class="lock-icon">🔒</span></a></li>
            <li><a href="#" class="disabled">Birthdays <span class="lock-icon">🔒</span></a></li>
            <li><a href="#" class="disabled">Terminations <span class="lock-icon">🔒</span></a></li>
        </ul>
    </nav>

    <main>
        <h1>Leave Request Form</h1>
        <?php if (!empty($successMessage)) {
            $message = '<div class="success-message">';
            $message .= $successMessage;
            $message .= '</div>';
            echo $message;
        } ?>
        <form action="" method="POST" class="leave-request-form">
            <div class="form-group">
                <label for="leave_type">Type of Leave:</label>
                <select id="leave_type" name="leave_type" required>
                    <option value="">Select Leave Type</option>
                    <option value="sick">Sick Leave</option>
                    <option value="holiday">Holiday</option>
                    <option value="personal">Personal Reasons</option>
                </select>
            </div>
            <div class="form-group">
                <label for="start_date">Start Date:</label>
                <input type="date" id="start_date" name="start_date" required>
            </div>
            <div class="form-group">
                <label for="end_date">End Date:</label>
                <input type="date" id="end_date" name="end_date" required>
            </div>
            <div class="form-group">
                <label for="reason">Reason for Leave:</label>
                <textarea id="reason" name="reason" rows="4" placeholder="Provide a reason for your leave (optional)"></textarea>
            </div>
            <button type="submit" class="btn">Submit Leave Request</button>
            <div id="error-container" class="error-message">
                Make sure the dates are correct!
            </div>
        </form>
    </main>
</body>
</html>
