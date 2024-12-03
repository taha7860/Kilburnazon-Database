<?php
session_start();

if (!empty($_POST) && $_POST['action'] === 'delete') {
    $employee_id = $_POST['employee_id'];
    $leave_note = $_POST['leave_note'];

    $sql = 'SELECT * FROM Employee WHERE id = :id';
    $stmt = $conn->prepare($sql);
    $stmt->execute([
        'id' => $employee_id
    ]);
    $employee = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($employee) {
        $sql = 'DELETE FROM EmergencyContact WHERE employee_id = :employee_id';
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            'employee_id' => $employee['id']
        ]);

        $sql = 'DELETE FROM User WHERE employee_id = :employee_id';
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            'employee_id' => $employee['id']
        ]);

        $sql = 'DELETE FROM Employee WHERE id = :id';
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            'id' => $employee['id']
        ]);

        $sql = 'DELETE FROM Address WHERE address_id = :address_id';
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            'address_id' => $employee['address_id']
        ]);

        $sql = 'INSERT INTO EmployeeAudit (deleted_employee_name, deleted_employee_email, deleted_by_user_id, notes)
        VALUES (:deleted_employee_name, :deleted_employee_email, :deleted_by_user_id, :notes)';
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            'deleted_employee_name' => $employee['name'],
            'deleted_employee_email' => $employee['email'],
            'deleted_by_user_id' => $_SESSION['user_id'],
            'notes' => $leave_note
        ]);

        $successMessageDelete = 'Employee successfully deleted!';
    } else {
        echo 'No such employee exists.';
    }
}
?>