<?php
require 'db_connection.php';

$searchResults = '';

if (isset($_GET['query'])) {
    $query = $_GET['query'];

    if (trim($query) !== '') {
        $sql = 'SELECT * FROM Employee WHERE name LIKE :query';
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            'query' => "%" . $query . "%"
        ]);
        
        $stmt->setFetchMode(PDO::FETCH_ASSOC);

        if ($stmt->rowCount() > 0) {
            while ($row = $stmt->fetch()) {
                $searchResults .= '
                    <li class="employee-card">
                        <img src="images/default-profile.png" alt="Profile Picture" class="profile-pic">
                        <div class="employee-info">
                            <h3>' . $row['name'] . '</h3>
                            <p><strong>Position:</strong> ' . $row['position'] . '</p>
                        </div>
                    </li>
                ';
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
            <li><a href="#">Data Management</a></li>
            <li><a href="#">Leave Management</a></li>
            <li><a href="#">Payroll Report</a></li>
            <li><a href="#">Birthdays</a></li>
            <li><a href="#">Terminations</a></li>
        </ul>
    </nav>
    <div class="search-filter-container">
        <div class="search-bar">
            <input type="text" placeholder="Search..." 
            onkeyup="searchEmployee(document.querySelector(`input[type='text']`).value)">
            <button>Search</button>
        </div>
        <div class="filter-dropdown">
            <select>
                <option value="">Filter by</option>
                <option value="department">Department</option>
                <option value="position">Position</option>
                <option value="salary">Salary</option>
                <option value="hired_date">Hired Date</option>
            </select>
        </div>
    </div>
    <ul id="results" class="search-results">
        
    </ul>
</body>
</html>
