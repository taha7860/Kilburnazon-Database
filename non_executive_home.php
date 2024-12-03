<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restricted Access</title>
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
        <h1>Restricted Access Page</h1>
        <p>As a non-executive employee, you only have the ability to make leave requests.</p>
    </main>
</body>
</html>
