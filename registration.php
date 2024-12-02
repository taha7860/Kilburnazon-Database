<?php
require 'db_connection.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = trim($_POST['email']);
    $password = $_POST['password'];

    $sql = 'SELECT id FROM Employee WHERE email = :email';
    $stmt = $conn->prepare($sql);
    $stmt->execute([
        'email' => $email
    ]);

    $employee = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($employee) {
        $employee_id = $employee['id'];
        $sql = 'SELECT * FROM User WHERE employee_id = :employee_id';
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            'employee_id' => $employee_id
        ]);
        $user = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($user !== false) {
            echo 'User already registered';
        } else {
            $hashed_password = password_hash($password, PASSWORD_DEFAULT);
            $sql = 'INSERT INTO User (employee_id, email, password)
            VALUES (:employee_id, :email, :hashed_password)';
            $stmt = $conn->prepare($sql);
            $stmt->execute([
                'employee_id' => $employee_id,
                'email' => $email,
                'hashed_password' => $hashed_password
            ]);
            header('Location: login.php');
            exit();
        }   
    } else {
        echo 'Employee not in our records';
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <link rel="stylesheet" href="styles/form.css">
    <script src="scripts/password_matching.js" defer></script>
</head>
<body>
    <div class="form-container">
        <h2>Register</h2>
        <form id="registrationForm" method="POST" action="">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required placeholder="Enter your email">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required placeholder="Enter your password">
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password:</label>
                <input type="password" id="confirm_password" name="confirm_password" required placeholder="Confirm your password">
                <small id="passwordError" style="color: red; display: none;">Passwords do not match.</small>
            </div>
            <button type="submit" class="btn">Register</button>
        </form>
        <p class="form-footer">
            Already have an account? <a href="login.php">Login here</a>
        </p>
    </div>
</body>
</html>
