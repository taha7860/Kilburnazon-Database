<?php
session_start();

if (empty($_SESSION['user_id']) || $_SESSION['user_role'] !== 'executive') {
    echo 'Access denied.';
    exit;
}

require_once 'db_connection.php';
require 'csv_export.php';
require 'pdf_export.php';

function calculatePayrollValues($base_salary) {
    $bonus = $base_salary * 0.10;
    $allowance = $base_salary * 0.05;
    $tax = $base_salary * 0.15;
    $insurance = $base_salary * 0.05;
    $retirement = $base_salary * 0.05;
    return [
        'bonus' => $bonus,
        'allowance' => $allowance,
        'tax' => $tax,
        'insurance' => $insurance,
        'retirement' => $retirement
    ];
}

$sql = "SELECT * FROM Payroll";
$stmt = $conn->query($sql);
$employees = $stmt->fetchAll(PDO::FETCH_ASSOC);

foreach ($employees as $employee) {
    $employee_id = $employee['employee_id'];
    $base_salary = $employee['base_salary'];

    $payroll_data = calculatePayrollValues($base_salary);

    $update_sql = "UPDATE Payroll 
                   SET bonus = :bonus, 
                       allowance = :allowance, 
                       tax = :tax, 
                       insurance = :insurance, 
                       retirement = :retirement
                   WHERE employee_id = :employee_id";

    $stmt = $conn->prepare($update_sql);
    $stmt->execute([
        ':bonus' => $payroll_data['bonus'],
        ':allowance' => $payroll_data['allowance'],
        ':tax' => $payroll_data['tax'],
        ':insurance' => $payroll_data['insurance'],
        ':retirement' => $payroll_data['retirement'],
        ':employee_id' => $employee_id
    ]);
}

$query = $conn->query('SELECT * FROM Department');
$departments = $query->fetchAll(PDO::FETCH_ASSOC);

$period_type = isset($_GET['period_type']) ? $_GET['period_type'] : 'annual';
$department_id = isset($_GET['department']) ? $_GET['department'] : null;

$sql = "SELECT 
            e.id AS employee_id, 
            e.name, 
            d.department_name, 
            p.position_name, 
            pr.base_salary, 
            pr.bonus, 
            pr.allowance, 
            pr.tax, 
            pr.insurance, 
            pr.retirement, 
            pr.net_pay
        FROM Payroll pr
        LEFT JOIN Employee e ON pr.employee_id = e.id
        LEFT JOIN Position p ON e.position_id = p.position_id
        LEFT JOIN Department d ON p.department_id = d.department_id";

if ($department_id) {
    $sql .= " WHERE d.department_id = :department_id";
    $stmt = $conn->prepare($sql);
    $stmt->execute(['department_id' => $department_id]);
} else {
    $stmt = $conn->prepare($sql);
    $stmt->execute();
}
$payroll_data = $stmt->fetchAll(PDO::FETCH_ASSOC);

foreach ($payroll_data as &$row) {
    switch ($period_type) {
        case 'quarterly':
            $row['base_salary'] /= 4;
            $row['bonus'] /= 4;
            $row['allowance'] /= 4;
            $row['tax'] /= 4;
            $row['insurance'] /= 4;
            $row['retirement'] /= 4;
            $row['net_pay'] /= 4;
            break;
        case 'monthly':
            $row['base_salary'] /= 12;
            $row['bonus'] /= 12;
            $row['allowance'] /= 12;
            $row['tax'] /= 12;
            $row['insurance'] /= 12;
            $row['retirement'] /= 12;
            $row['net_pay'] /= 12;
            break;
        case 'annual':
        default:
            break;
    }
}

if (isset($_GET['department']) || isset($_GET['period_type'])) {
    header('Content-Type: application/json');
    echo json_encode($payroll_data);
    exit();
}

if (isset($_POST['export'])) {
    if ($_POST['export'] == 'csv') {
        export_to_csv($payroll_data);
    } elseif ($_POST['export'] == 'pdf') {
        export_to_pdf($payroll_data);
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
    <link rel="stylesheet" href="styles/payroll.css">
    <script src="scripts/filter_report.js" defer></script>
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
        <h2>Generate Payroll Report</h2>

        <!-- Form for report generation -->
        <form method="POST">
            <label for="period_type">Time Period:</label>
            <select name="period_type" id="period_type" onchange="updatePayrollReport()">
                <option value="annual" <?php echo ($period_type == 'annual') ? 'selected' : ''; ?>>Annual</option>
                <option value="quarterly" <?php echo ($period_type == 'quarterly') ? 'selected' : ''; ?>>Quarterly</option>
                <option value="monthly" <?php echo ($period_type == 'monthly') ? 'selected' : ''; ?>>Monthly</option>
            </select>

            <label for="department">Department:</label>
            <select id="department" onchange="updatePayrollReport()">
                <option value="">All Departments</option>
                <?php foreach ($departments as $department) {
                    $output = '<option value="' . htmlspecialchars($department['department_id']) . '" onkeydown>';
                    $output .= $department['department_name'];
                    $output .= '</option>';
                    echo $output;
                } ?>
            </select>
        </form>

        <form method="POST">
            <input type="hidden" name="department" value="<?php echo isset($_POST['department']) ? $_POST['department'] : ''; ?>">
            
            <div class="export-buttons">
                <button type="submit" name="export" value="csv">Export to CSV</button>
                <button type="submit" name="export" value="pdf">Export to PDF</button>
            </div>
        </form>


        <h2>Payroll Report Results</h2>

        <!-- Payroll Data Table -->
        <table>
            <thead>
                <tr>
                    <th>Employee ID</th>
                    <th>Name</th>
                    <th>Department</th>
                    <th>Job Title</th>
                    <th>Base Salary</th>
                    <th>Bonus</th>
                    <th>Allowance</th>
                    <th>Tax</th>
                    <th>Insurance</th>
                    <th>Retirement</th>
                    <th>Net Pay</th>
                </tr>
            </thead>
            <tbody id="payroll-table-body">
                <?php if (!empty($payroll_data)) { ?>
                    <?php foreach ($payroll_data as $row) { ?>
                        <tr>
                            <td><?php echo $row['employee_id']; ?></td>
                            <td><?php echo $row['name']; ?></td>
                            <td><?php echo $row['department_name']; ?></td>
                            <td><?php echo $row['position_name']; ?></td>
                            <td><?php echo number_format(is_numeric($row['base_salary']) ? $row['base_salary'] : 0, 2); ?></td>
                            <td><?php echo number_format(is_numeric($row['bonus']) ? $row['bonus'] : 0, 2); ?></td>
                            <td><?php echo number_format(is_numeric($row['allowance']) ? $row['allowance'] : 0, 2); ?></td>
                            <td><?php echo number_format(is_numeric($row['tax']) ? $row['tax'] : 0, 2); ?></td>
                            <td><?php echo number_format(is_numeric($row['insurance']) ? $row['insurance'] : 0, 2); ?></td>
                            <td><?php echo number_format(is_numeric($row['retirement']) ? $row['retirement'] : 0, 2); ?></td>
                            <td><?php echo number_format(is_numeric($row['net_pay']) ? $row['net_pay'] : 0, 2); ?></td>
                        </tr>
                    <?php } ?>
                <?php } else { ?>
                    <tr>
                        <td colspan="11">No payroll data found for the selected department.</td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </main>
</body>
</html>
