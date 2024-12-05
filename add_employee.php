<?php
if (!empty($_POST) && $_POST['action'] === 'add') {
    $name = trim($_POST['name']);
    $email = trim($_POST['email']);
    $position = $_POST['position_id'];
    $office = $_POST['office_id'];
    $salary = $_POST['salary'];
    $dob = $_POST['dob'];
    $contract = $_POST['contract'];
    $address_line1 = trim($_POST['address_line1']);
    $address_line2 = isset($_POST['address_line2']) ? trim($_POST['address_line2']) : null;
    $country = isset($_POST['country']) ? trim($_POST['country']) : null;
    $postcode = isset($_POST['post_code']) ? trim($_POST['post_code']) : null;
    $nin = trim($_POST['nin']);
    $emergency_name = isset($_POST['emergency_name']) ? trim($_POST['emergency_name']) : '';
    $emergency_relationship = isset($_POST['emergency_relationship']) ? trim($_POST['emergency_relationship']) : '';
    $emergency_phone = isset($_POST['emergency_phone']) ? trim($_POST['emergency_phone']) : '';

    $sql = 'INSERT INTO Address (address_line_one, address_line_two, country, post_code)
        VALUES (:address_line_one, :address_line_two, :country, :post_code)';
    
    $stmt = $conn->prepare($sql);
    $stmt->execute([
        'address_line_one' => $address_line1,
        'address_line_two' => $address_line2,
        'country' => $country,
        'post_code' => $postcode
    ]);
    $lastInsertedAddressId = $conn->lastInsertId();

    try {
        $sql = 'INSERT INTO Employee (name, email, position_id, office_id, dob, nin, contract, address_id) 
        VALUES (:name, :email, :position_id, :office_id, :dob, :nin, :contract, :address_id)';
    
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            'name' => $name,
            'email' => $email,
            'position_id' => $position,
            'office_id' => $office,
            'dob' => $dob,
            'nin' => $nin,
            'contract' => $contract,
            'address_id' => $lastInsertedAddressId
        ]);

        $lastInsertedEmployeeId = $conn->lastInsertId();

        $sql = 'INSERT INTO EmergencyContact (employee_id, emergency_name, emergency_relationship, emergency_phone) 
        VALUES (:employee_id, :emergency_name, :emergency_relationship, :emergency_phone)';

        $stmt = $conn->prepare($sql);
        $stmt->execute([
            'employee_id' => $lastInsertedEmployeeId,
            'emergency_name' => $emergency_name,
            'emergency_relationship' => $emergency_relationship,
            'emergency_phone' => $emergency_phone
        ]);

        $sql = 'INSERT INTO Payroll (employee_id, base_salary) 
        VALUES (:employee_id, :salary)';

        $stmt = $conn->prepare($sql);
        $stmt->execute([
            'employee_id' => $lastInsertedEmployeeId,
            'salary' => $salary
        ]);

        $successMessageAdd = 'New employee ' . $name . ' (with ID: ' . $lastInsertedEmployeeId . ') added successfully!';
    } catch (PDOException $e) {
        $deleteQuery = 'DELETE FROM Address WHERE address_id = :address_id';
        $stmt = $conn->prepare($deleteQuery);
        $stmt->execute([
            'address_id' => $lastInsertedAddressId
        ]);
        echo "Error: " . $e->getMessage();
    }
}
?>