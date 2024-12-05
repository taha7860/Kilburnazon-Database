<?php
session_start();

if (empty($_SESSION['user_id']) || $_SESSION['user_role'] !== 'executive') {
    echo 'Access denied.';
    exit;
}

require 'db_connection.php';

$query = $conn->query('SELECT * FROM Department');
$departments = $query->fetchAll(PDO::FETCH_ASSOC); 

$period_type = isset($_POST['period_type']) ? $_POST['period_type'] : 'annual';
$start_date = $end_date = '';

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

if (!empty($_POST['department'])) {
    $sql .= " WHERE d.department_name = :department";
}

$stmt = $conn->prepare($sql);
$params = [];

if (!empty($_POST['department'])) {
    $params['department'] = $_POST['department'];
}

$stmt->execute($params);
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
            // No change for annual
            break;
    }
}

// Export to CSV
if (isset($_POST['export']) && $_POST['export'] === 'csv') {
    header('Content-Type: text/csv');
    header('Content-Disposition: attachment;filename="payroll_report.csv"');
    $output = fopen('php://output', 'w');
    
    // Output the column headings
    fputcsv($output, ['Employee ID', 'Name', 'Department', 'Job Title', 'Base Salary', 'Bonus', 'Allowance', 'Tax', 'Insurance', 'Retirement', 'Net Pay']);
    
    // Output the data rows
    foreach ($payroll_data as $row) {
        fputcsv($output, $row);
    }

    fclose($output);
    exit;
}

// Export to PDF (you'll need a PDF library like TCPDF or FPDF for actual PDF export)
if (isset($_POST['export']) && $_POST['export'] === 'pdf') {
    // Implement PDF export logic here
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
            <select name="period_type" id="period_type">
                <option value="annual" <?php echo ($period_type == 'annual') ? 'selected' : ''; ?>>Annual</option>
                <option value="quarterly" <?php echo ($period_type == 'quarterly') ? 'selected' : ''; ?>>Quarterly</option>
                <option value="monthly" <?php echo ($period_type == 'monthly') ? 'selected' : ''; ?>>Monthly</option>
            </select>

            <label for="department">Department:</label>
            <select name="department">
                <option value="">All Departments</option>
                <?php foreach ($departments as $department) {
                        $selected = (isset($_POST['department']) && $_POST['department'] === $department['department_name']) ? 'selected' : '';
                        echo "<option value=\"{$deptartment['department_name']}\" $selected>{$department['department_name']}</option>";
                } ?>
            </select>

            <button type="submit">Generate Report</button>
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
            <tbody>
                <?php if (!empty($payroll_data)) { ?>
                    <?php foreach ($payroll_data as $row) { ?>
                        <tr>
                            <td><?php echo $row['employee_id']; ?></td>
                            <td><?php echo $row['name']; ?></td>
                            <td><?php echo $row['department_name']; ?></td>
                            <td><?php echo $row['position_name']; ?></td>
                            <td><?php echo number_format($row['base_salary'], 2); ?></td>
                            <td><?php echo number_format($row['bonus'], 2); ?></td>
                            <td><?php echo number_format($row['allowance'], 2); ?></td>
                            <td><?php echo number_format($row['tax'], 2); ?></td>
                            <td><?php echo number_format($row['insurance'], 2); ?></td>
                            <td><?php echo number_format($row['retirement'], 2); ?></td>
                            <td><?php echo number_format($row['net_pay'], 2); ?></td>
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
