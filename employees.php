<?php
session_start();

if (empty($_SESSION['user_id']) || $_SESSION['user_role'] !== 'executive') {
    echo 'Access denied.';
    exit;
}

require 'db_connection.php';

$searchResults = '';

$query = $conn->query('SELECT * FROM Employee e
        LEFT JOIN Position p ON e.position_id = p.position_id
        LEFT JOIN Department d ON p.department_id = d.department_id
        LEFT JOIN Office o ON e.office_id = o.office_id');
$directory = $query->fetchAll(PDO::FETCH_ASSOC);

$query = $conn->query('SELECT position_id, position_name FROM Position');
$positions = $query->fetchAll(PDO::FETCH_ASSOC);

$query = $conn->query('SELECT department_id, department_name FROM Department');
$departments = $query->fetchAll(PDO::FETCH_ASSOC);

$query = $conn->query('SELECT office_id, office_name FROM Office');
$offices = $query->fetchAll(PDO::FETCH_ASSOC);

if (isset($_GET['query']) || isset($_GET['position']) || isset($_GET['department']) || isset($_GET['office'])) {
    $query = $_GET['query'];
    $position = $_GET['position'];
    $department = $_GET['department'];
    $office = $_GET['office'];

    if (trim($query) !== '' || $position || $department || $office) {
        $sql = 'SELECT * FROM Employee e
        LEFT JOIN Position p ON e.position_id = p.position_id
        LEFT JOIN Department d ON p.department_id = d.department_id
        LEFT JOIN Office o ON e.office_id = o.office_id';

        $where = [];
        $params = [];

        if (!empty($query)) {
            $where[] = '(name LIKE :query OR id LIKE :query)';
            $params['query'] = "%" . $query . "%";
        }

        if (!empty($position)) {
            $where[] = 'e.position_id = :position';
            $params['position'] = $position;
        }

        if (!empty($department)) {
            $where[] = 'p.department_id = :department';
            $params['department'] = $department;
        }

        if (!empty($office)) {
            $where[] = 'e.office_id = :office';
            $params['office'] = $office;
        }

        if (!empty($where)) {
            $sql .= ' WHERE ' . join(' AND ', $where);
        }

        $stmt = $conn->prepare($sql);
        $stmt->execute($params);
        $stmt->setFetchMode(PDO::FETCH_ASSOC);

        if ($stmt->rowCount() > 0) {
            while ($row = $stmt->fetch()) {
                $searchResults .= '
                <li class="employee-card" onclick="openEmployeeModal(' . $row['id'] . ')">
                    <img src="images/profile_picture.webp" alt="Profile Picture" class="profile-pic">
                    <div class="employee-info">
                        <h3>' . $row['name'] . '</h3>
                        <p><strong>Employee ID:</strong> ' . $row['id'] . '</p>
                        <p><strong>Position:</strong> ' . $row['position_name'] . '</p>
                        <p><strong>Department:</strong> ' . $row['department_name'] . '</p>
                        <p><strong>Office:</strong> ' . $row['office_name'] . '</p>
                        <p><strong>Date Hired:</strong> ' . $row['hired_date'] . '</p>
                    </div>
                </li>';
            }
        } else {
            $searchResults = "Can't find";
        }
    }

    echo $searchResults;
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Amazon Style Home</title>
    <link rel="stylesheet" href="styles/home.css">
    <link rel="stylesheet" href="styles/employees.css">
    <script src="scripts/search.js" defer></script>
    <script src="scripts/get_employee_details.js" defer></script>
</head>
<body>
    <header class="header">
        <div class="logo-container">
            <a href="#" class="logo">
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
    <div class="search-filter-container">
        <div class="search-bar">
            <input type="text" placeholder="Search..." 
            onkeyup="searchEmployee(document.querySelector(`input[type='text']`).value)">
        </div>
        <div class="filter-dropdown" id="position-filter">
            <select onchange="searchEmployee(document.querySelector(`input[type='text']`).value)">
                <option value="">All positions</option>
                <?php foreach ($positions as $position) {
                    $output = '<option value="' . $position['position_id'] . '">';
                    $output .= $position['position_name'];
                    $output .= '</option>';
                    echo $output;
                } ?>
            </select>
        </div>
        <div class="filter-dropdown" id="department-filter">
            <select onchange="searchEmployee(document.querySelector(`input[type='text']`).value)">
                <option value="">All departments</option>
                <?php foreach ($departments as $department) {
                    $output = '<option value="' . $department['department_id'] . '">';
                    $output .= $department['department_name'];
                    $output .= '</option>';
                    echo $output;
                } ?>
            </select>
        </div>
        <div class="filter-dropdown" id="office-filter">
            <select onchange="searchEmployee(document.querySelector(`input[type='text']`).value)">
                <option value="">All office locations</option>
                <?php foreach ($offices as $office) {
                    $output = '<option value="' . htmlspecialchars($office['office_id']) . '" onkeydown>';
                    $output .= $office['office_name'];
                    $output .= '</option>';
                    echo $output;
                } ?>
            </select>
        </div>
    </div>
    <ul id="results" class="search-results">
        <?php foreach ($directory as $employee) {
            $output = '
            <li class="employee-card" onclick="openEmployeeModal(' . $employee['id'] . ')">
                <img src="images/profile_picture.webp" alt="Profile Picture" class="profile-pic">
                <div class="employee-info">
                    <h3>' . $employee['name'] . '</h3>
                    <p><strong>Employee ID:</strong> ' . $employee['id'] . '</p>
                    <p><strong>Position:</strong> ' . $employee['position_name'] . '</p>
                    <p><strong>Department:</strong> ' . $employee['department_name'] . '</p>
                    <p><strong>Office:</strong> ' . $employee['office_name'] . '</p>
                    <p><strong>Date Hired:</strong> ' . $employee['hired_date'] . '</p>
                </div>
            </li>';
            echo $output;
        } ?>
    </ul>
    <div id="employeeModal" class="modal">
    <div class="modal-content">
        <span class="close-btn" onclick="closeEmployeeModal()">&times;</span>
        <div id="modal-employee-info">
            <!-- Employee details will be dynamically inserted here -->
        </div>
    </div>
</body>
</html>
