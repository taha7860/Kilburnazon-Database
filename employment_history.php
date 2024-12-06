<?php
$companies = [
    'TechCorp',
    'Innovatech',
    'GlobalSoft',
    'NextGen Solutions',
    'PrimeCode Inc.',
    'Alpha Systems',
    'VisionTech',
    'CyberDynamics',
    'BlueChip Co.',
    'FutureWare'
];

$query = $conn->query('SELECT id, hired_date FROM Employee');
$employees = $query->fetchAll(PDO::FETCH_ASSOC);

foreach ($employees as $employee) {
    $randomCompanies = array_rand(array_flip($companies), 3);

    $hiredDate = new DateTime($employee['hired_date']);
    $endDate1 = clone $hiredDate;
    $endDate1->modify('-6 years');
    $startDate1 = clone $endDate1;
    $startDate1->modify('-2 years');

    $endDate2 = clone $startDate1;
    $startDate2 = clone $endDate2;
    $startDate2->modify('-2 years');

    $endDate3 = clone $startDate2;
    $startDate3 = clone $endDate3;
    $startDate3->modify('-2 years');

    $employmentHistory = sprintf(
        "%s (%s - %s), %s (%s - %s), %s (%s - %s)",
        $randomCompanies[0], $startDate3->format('Y'), $endDate3->format('Y'),
        $randomCompanies[1], $startDate2->format('Y'), $endDate2->format('Y'),
        $randomCompanies[2], $startDate1->format('Y'), $endDate1->format('Y')
    );

    $stmt = $conn->prepare('UPDATE Employee SET employment_history = :employment_history WHERE id = :id');
    $stmt->execute([
        'employment_history' => $employmentHistory,
        'id' => $employee['id']
    ]);
}
?>