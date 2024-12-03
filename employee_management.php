<?php
require 'db_connection.php';

$successMessageAdd = '';

require 'add_employee.php';

$successMessagePromote = '';

require 'promote_employee.php';

$successMessageDelete = '';

require 'delete_employee.php';

$query = $conn->query('SELECT * FROM Position');
$positions = $query->fetchAll(PDO::FETCH_ASSOC);

$query = $conn->query('SELECT * FROM Office');
$offices = $query->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Amazon Style Home</title>
    <link rel="stylesheet" href="styles/home.css">
    <link rel="stylesheet" href="styles/employee_management.css">
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
    <div class="container">
        <?php if (!empty($successMessageAdd)) {
            $message = '<div class="success-message">';
            $message .= $successMessageAdd;
            $message .= '</div>';
            echo $message;
        } ?>
        <!-- Add Employee Form -->
        <section class="add-employee">
            <h2>Add New Employee</h2>
            <form method="POST">
                <input type="hidden" name="action" value="add">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required placeholder="Enter employee's name">
                </div>

                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required placeholder="Enter employee's email">
                </div>

                <div class="form-group">
                    <label for="position">Position:</label>
                    <select id="position" name="position_id" required>
                        <option value="">Select position</option>
                        <?php foreach($positions as $position) {
                            $output = '<option value="' . $position['position_id'] . '">';
                            $output .= $position['position_name'];
                            $output .= '</option>';
                            echo $output;
                        } ?>
                    </select>
                </div>

                <div class="form-group">
                    <label for="office">Office Location:</label>
                    <select id="office" name="office_id" required>
                        <option value="">Select office</option>
                        <?php foreach($offices as $office) {
                            $output = '<option value="' . $office['office_id'] . '">';
                            $output .= $office['office_name'];
                            $output .= '</option>';
                            echo $output;
                        } ?>
                    </select>
                </div>

                <div class="form-group">
                    <label for="salary">Salary:</label>
                    <input type="number" id="salary" name="salary"  placeholder="Enter salary" max="99999999.99" min="0" step="0.01" required>
                </div>

                <div class="form-group">
                    <label for="dob">D.O.B. (Date of Birth):</label>
                    <input type="date" id="dob" name="dob" required>
                </div>

                <div class="form-group">
                    <label for="address_line1">Address Line 1:</label>
                    <input type="text" id="address_line1" name="address_line1" required placeholder="Enter address line 1">
                </div>

                <div class="form-group">
                    <label for="address_line2">Address Line 2 (city):</label>
                    <input type="text" id="address_line2" name="address_line2" placeholder="Enter city">
                </div>

                <div class="form-group">
                    <label for="country">Country:</label>
                    <input type="text" id="country" name="country" placeholder="Enter country">
                </div>

                <div class="form-group">
                    <label for="postcode">Postcode:</label>
                    <input type="text" id="postcode" name="postcode" placeholder="Enter postcode">
                </div>

                <div class="form-group">
                    <label for="contract">Contract Type:</label>
                    <select id="contract" name="contract" required>
                        <option value="">Select contract type</option>
                        <option value="Freelance">Freelance</option>
                        <option value="Full-time">Full-time</option>
                        <option value="Part-time">Part-time</option>
                        <option value="Part-time">Internship</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="nin">National Insurance Number (NIN):</label>
                    <input type="text" id="nin" name="nin" minlength="9" maxlength="9" pattern=".{9,9}" placeholder="Enter NIN">
                    <small>Must be exactly 9 characters long.</small>
                </div>

                <div class="form-group">
                    <label for="emergency_name">Emergency Contact Name:</label>
                    <input type="text" id="emergency_name" name="emergency_name" placeholder="Enter emergency contact's name">
                </div>

                <div class="form-group">
                    <label for="emergency_relationship">Relationship with Emergency Contact:</label>
                    <input type="text" id="emergency_relationship" name="emergency_relationship" placeholder="Enter emergency contact's name">
                </div>

                <div class="form-group">
                    <label for="emergency_phone">Emergency Contact Phone:</label>
                    <input type="tel" id="emergency_phone" name="emergency_phone" placeholder="Enter emergency contact's phone number">
                </div>

                <button type="submit" class="btn">Add Employee</button>
            </form>
        </section>

        <?php if (!empty($successMessagePromote)) {
            $message = '<div class="success-message">';
            $message .= $successMessagePromote;
            $message .= '</div>';
            echo $message;
        } ?>
        <!-- Promote Employee Form -->
        <section class="promote-employee">
            <h2>Promote Employee</h2>
            <form method="POST">
                <input type="hidden" name="action" value="promote">
                <div class="form-group">
                    <label for="employee_id">Employee ID:</label>
                    <input type="number" id="employee_id" name="employee_id" required placeholder="Enter employee's ID to promote">
                </div>

                <div class="form-group">
                    <label for="payrise_percentage">Pay Rise Percentage (%):</label>
                    <input type="number" id="payrise_percentage" name="payrise_percentage" required placeholder="Enter percentage of pay rise">
                </div>

                <button type="submit" class="btn">Promote Employee</button>
            </form>
        </section>

        <?php if (!empty($successMessageDelete)) {
            $message = '<div class="success-message">';
            $message .= $successMessageDelete;
            $message .= '</div>';
            echo $message;
        } ?>
        <section class="delete-employee">
            <h2>Delete Employee</h2>
            <form method="POST">
                <input type="hidden" name="action" value="delete">
                <div class="form-group">
                    <label for="employee_id">Employee ID:</label>
                    <input type="number" id="employee_id" name="employee_id" required placeholder="Enter employee's ID to delete">
                </div>

                <div class="form-group">
                    <label for="leave_note">Note about the employee's leave:</label>
                    <textarea id="leave_note" name="leave_note" rows="4" placeholder="Enter any notes about the employee's leave (optional)"></textarea>
                </div>

                <button type="submit" class="btn">Delete Employee</button>
            </form>
        </section>
    </div>
</body>
</html>
