<?php
session_start();
require 'db_connection.php';

$sql = 'SELECT * FROM LeaveTable lt
LEFT JOIN Employee e ON lt.employee_id = e.id
LEFT JOIN Position p ON e.position_id = p.position_id
LEFT JOIN Department d ON p.department_id = d.department_id
WHERE d.manager_id = :manager_id
AND lt.status = "Pending"';
$stmt = $conn->prepare($sql);
$stmt->execute([
    'manager_id' => $_SESSION['user_id']
]);

$leaves = $stmt->fetchAll(PDO::FETCH_ASSOC);

$start_date = isset($_POST['start_date']) ? $_POST['start_date'] : date('Y-m-01'); // Default to first of the month
$end_date = isset($_POST['end_date']) ? $_POST['end_date'] : date('Y-m-t'); // Default to last day of the month

$sql = 'SELECT
    d.department_name,
    COALESCE(SUM(CASE WHEN lt.leave_type = "sick" THEN DATEDIFF(lt.end_date, lt.start_date) + 1 ELSE 0 END), 0) AS sick_days,
    COALESCE(SUM(CASE WHEN lt.leave_type = "holiday" THEN DATEDIFF(lt.end_date, lt.start_date) + 1 ELSE 0 END), 0) AS holiday_days,
    COALESCE(SUM(CASE WHEN lt.leave_type = "personal" THEN DATEDIFF(lt.end_date, lt.start_date) + 1 ELSE 0 END), 0) AS personal_days,
    COUNT(DISTINCT lt.leave_id) AS total_leave_requests,
    COUNT(DISTINCT e.id) AS total_employees_in_dept,
    (COALESCE(SUM(DATEDIFF(lt.end_date, lt.start_date) + 1), 0) / COUNT(DISTINCT e.id)) AS avg_absence_rate
FROM
    Department d
LEFT JOIN Position p ON d.department_id = p.department_id
LEFT JOIN Employee e ON p.position_id = e.position_id
LEFT JOIN LeaveTable lt ON lt.employee_id = e.id AND lt.status = "Approved" AND lt.start_date BETWEEN :start_date AND :end_date
GROUP BY
    d.department_name
ORDER BY
    d.department_name;
';


$stmt = $conn->prepare($sql);
$stmt->execute([
    'start_date' => $start_date,
    'end_date' => $end_date
]);

$report = $stmt->fetchAll(PDO::FETCH_ASSOC);

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['status'])) {
    $leave_id = $_POST['leave_id'];
    $status = $_POST['status'];

    if ($status === 'Approved' || $status === 'Rejected') {
        $sql = 'UPDATE LeaveTable SET status = :status WHERE leave_id = :leave_id';
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            'status' => $status,
            'leave_id' => $leave_id
        ]);

        header("Location: leave_management.php");
        exit;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Amazon Style Home</title>
    <link rel="stylesheet" href="styles/home.css">
    <link rel="stylesheet" href="styles/leave_management.css">
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
    
    <main>
        <!-- Pending Leave Requests Section -->
        <section class="pending-leave-requests">
            <h2>Pending Leave Requests</h2>
            <div class="leave-cards-container">
                <?php if (!empty($leaves)) { ?>
                    <?php foreach($leaves as $leave) { ?>
                        <div class="leave-card">
                            <h3>Employee ID: <?php echo $leave['employee_id']; ?></h3>
                            <p><strong>Leave Type:</strong> <?php echo $leave['leave_type']; ?></p>
                            <p><strong>Start Date:</strong> <?php echo $leave['start_date']; ?></p>
                            <p><strong>End Date:</strong> <?php echo $leave['end_date']; ?></p>
                            <p><strong>Reason:</strong> <?php echo (isset($leave['reason']) ? $leave['reason'] : 'N/A'); ?></p>
                            <div class="button-container">
                                <form method="POST">
                                    <input type="hidden" name="leave_id" value="<?php echo $leave['leave_id']; ?>">
                                    <input type="hidden" name="status" value="Approved">
                                    <button type="submit" class="btn accept">Accept</button>
                                </form>
                                <form method="POST">
                                    <input type="hidden" name="leave_id" value="<?php echo $leave['leave_id']; ?>">
                                    <input type="hidden" name="status" value="Rejected">
                                    <button type="submit" class="btn reject">Reject</button>
                                </form>
                            </div>
                        </div>
                    <?php } ?>
                <?php } else { ?>
                    <p>No pending leave requests.</p>
                <?php } ?>
            </div>
        </section>

        <!-- Absenteeism Report Section -->
        <section class="absenteeism-report">
            <h2>Absenteeism Report</h2>

            <!-- Form for Date Filter -->
            <form method="POST" class="report-form">
                <input type="hidden" name="action" value="generate_report">
                <label for="start_date">Start Date:</label>
                <input type="date" name="start_date" value="<?php echo $start_date; ?>" required>
                <label for="end_date">End Date:</label>
                <input type="date" name="end_date" value="<?php echo $end_date; ?>" required>
                <button type="submit">Generate Report</button>
            </form>

            <!-- Absenteeism Report Table -->
            <table>
                <thead>
                    <tr>
                        <th>Department</th>
                        <th>Sick Leave (Days)</th>
                        <th>Holiday Leave (Days)</th>
                        <th>Personal Leave (Days)</th>
                        <th>Total Days Absent</th>
                        <th>Total Leave Requests</th>
                        <th>Total Employees</th>
                        <th>Average Absence Rate (Days)</th>
                    </tr>
                </thead>
                <tbody>
                    <?php if (!empty($report)) { ?>
                        <?php foreach ($report as $row) { ?>
                            <tr>
                                <td><?php echo $row['department_name']; ?></td>
                                <td><?php echo $row['sick_days']; ?></td>
                                <td><?php echo $row['holiday_days']; ?></td>
                                <td><?php echo $row['personal_days']; ?></td>
                                <td><?php echo $row['personal_days'] + $row['holiday_days'] + $row['sick_days']; ?></td>
                                <td><?php echo $row['total_leave_requests']; ?></td>
                                <td><?php echo $row['total_employees_in_dept']; ?></td>
                                <td><?php echo number_format($row['avg_absence_rate'], 2); ?> days</td>
                            </tr>
                        <?php } ?>
                    <?php } else { ?>
                        <tr>
                            <td colspan="8">No data available for the selected period.</td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </section>
    </main>
</body>
</html>
