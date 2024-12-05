<?php
if (!empty($_POST) && $_POST['action'] === 'promote') {
    $employee_id = $_POST['employee_id'];
    $pay_rise = $_POST['payrise_percentage'] / 100;

    try {
        $sql = 'UPDATE Payroll SET salary = salary * (1 + :pay_rise) WHERE id = :id';
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            'id' => $employee_id,
            'pay_rise' => $pay_rise
        ]);

        $successMessagePromote = 'Employee promote successfully!';
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}
?>