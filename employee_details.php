<?php
require 'db_connection.php';

$employeeId = $_GET['id'];

$stmt = $conn->prepare('SELECT e.*, p.position_name, d.department_name, o.office_name,
                        ec.emergency_name, ec.emergency_relationship, ec.emergency_phone
                        FROM Employee e 
                        LEFT JOIN Position p ON e.position_id = p.position_id
                        LEFT JOIN Department d ON p.department_id = d.department_id
                        LEFT JOIN Office o ON e.office_id = o.office_id
                        LEFT JOIN EmergencyContact ec ON e.id = ec.employee_id
                        WHERE e.id = :id');
$stmt->execute(['id' => $employeeId]);
$employee = $stmt->fetch(PDO::FETCH_ASSOC);

$employeeInformation = '
<div class="employee-profile">
    <img src="images/profile_picture.webp" alt="Profile Picture" class="profile-pic">
    <div class="employee-info">
        <h1>' . $employee['name'] . '</h1>
        <p><strong>Employee ID:</strong> ' . $employee['id'] . '</p>
        <p><strong>Position:</strong> ' . $employee['position_name'] . '</p>
        <p><strong>Department:</strong> ' . $employee['department_name'] . '</p>
        <p><strong>Office:</strong> ' . $employee['office_name'] . '</p>
        <p><strong>Date Hired:</strong> ' . $employee['hired_date'] . '</p>
    </div>
</div>

<div class="contact-details">
    <h2>Contact Details</h2>
    <p><strong>Email:</strong> ' . $employee['email'] . '</p>
    <p><strong>Emergency Contact Name:</strong> ' . (isset($employee['emergency_name']) && !empty($employee['emergency_name']) ? $employee['emergency_name'] : 'N/A') . '</p>
    <p><strong>Emergency Relationship:</strong> ' . (isset($employee['emergency_relationship']) && !empty($employee['emergency_relationship']) ? $employee['emergency_relationship'] : 'N/A') . '</p>
    <p><strong>Emergency Phone:</strong> ' . (isset($employee['emergency_phone']) && !empty($employee['emergency_phone']) ? $employee['emergency_phone'] : 'N/A') . '</p>
</div>

<div class="employment-history">
    <h2>Employment History</h2>
    <p>' . ($employee['employment_history'] ?: 'No previous employment history available.') . '</p>
</div>
';

echo $employeeInformation;
exit();
?>