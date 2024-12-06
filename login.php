<?php
session_start();
require 'db_connection.php';

$message = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = 'SELECT * FROM User WHERE email = :email';
    $stmt = $conn->prepare($sql);
    $stmt->execute([
        'email' => $email
    ]);

    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($user) {
        if (password_verify($password, $user['password'])) {
            $sql = 'SELECT * FROM Employee e
            LEFT JOIN Position p ON e.position_id = p.position_id
            WHERE id = :id';
            $stmt = $conn->prepare($sql);
            $stmt->execute([
                'id' => $user['employee_id']
            ]);
            $employee = $stmt->fetch(PDO::FETCH_ASSOC);

            $_SESSION['user_id'] = $user['employee_id'];
            $_SESSION['email'] = $user['email'];
            if ($employee['is_executive']) {
                $_SESSION['user_role'] = 'executive';
                header('Location: home.php');
            } else {
                $_SESSION['user_role'] = 'employee';
                header('Location: non_executive_home.php');
            }
            exit();
        } else {
            $message = 'Incorrect password';
        }
    } else {
        $message = 'No account registered with this email.';
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="styles/home.css">
    <link rel="stylesheet" href="styles/form.css">
</head>
<body>
    <?php if (!empty($message)): ?>
        <div class="error-message"><?= $message; ?></div>
    <?php endif; ?>
    <div class="form-container">
        <h2>Login</h2>
        <form method="POST" action="">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="text" id="email" name="email" required placeholder="Enter your username or email">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required placeholder="Enter your password">
            </div>
            <button type="submit" class="btn">Login</button>
        </form>
        <p class="form-footer">
            Don't have an account? <a href="registration.php">Register here</a>
        </p>
    </div>
</body>
</html>
