<?php
function export_to_csv($data) {
    header('Content-Type: text/csv');
    header('Content-Disposition: attachment; filename="payroll_report.csv"');

    $output = fopen('php://output', 'w');

    $headers = ['Employee ID', 'Name', 'Department', 'Job Title', 'Base Salary', 'Bonus', 'Allowance', 'Tax', 'Insurance', 'Retirement', 'Net Pay'];
    fputcsv($output, $headers, ',', '"', '\\');

    foreach ($data as $row) {
        fputcsv($output, [
            $row['employee_id'],
            $row['name'],
            $row['department_name'],
            $row['position_name'],
            number_format($row['base_salary'], 2),
            number_format($row['bonus'], 2),
            number_format($row['allowance'], 2),
            number_format($row['tax'], 2),
            number_format($row['insurance'], 2),
            number_format($row['retirement'], 2),
            number_format($row['net_pay'], 2)
        ], ',', '"', '\\');
    }

    fclose($output);
    exit();
}
?>