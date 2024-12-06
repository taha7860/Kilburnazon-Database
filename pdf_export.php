<?php
require 'fpdf186/fpdf.php';

function export_to_pdf($data) {
    $pdf = new FPDF();
    $pdf->AddPage();
    
    $pdf->SetFont('Arial', 'B', 12);
    
    $pdf->Cell(0, 10, 'Payroll Report', 0, 1, 'C');
    
    $pdf->SetFont('Arial', 'B', 10);
    $pdf->Cell(20, 7, 'Emp ID', 1);
    $pdf->Cell(40, 7, 'Name', 1);
    $pdf->Cell(40, 7, 'Department', 1);
    $pdf->Cell(30, 7, 'Job Title', 1);
    $pdf->Cell(25, 7, 'Base Salary', 1);
    $pdf->Cell(25, 7, 'Bonus', 1);
    $pdf->Cell(25, 7, 'Allowance', 1);
    $pdf->Cell(25, 7, 'Tax', 1);
    $pdf->Cell(25, 7, 'Insurance', 1);
    $pdf->Cell(25, 7, 'Retirement', 1);
    $pdf->Cell(25, 7, 'Net Pay', 1);
    $pdf->Ln();
    
    $pdf->SetFont('Arial', '', 10);
    
    foreach ($data as $row) {
        $pdf->Cell(20, 7, $row['employee_id'], 1);
        $pdf->Cell(40, 7, $row['name'], 1);
        $pdf->Cell(40, 7, $row['department_name'], 1);
        $pdf->Cell(30, 7, $row['position_name'], 1);
        $pdf->Cell(25, 7, number_format($row['base_salary'], 2), 1);
        $pdf->Cell(25, 7, number_format($row['bonus'], 2), 1);
        $pdf->Cell(25, 7, number_format($row['allowance'], 2), 1);
        $pdf->Cell(25, 7, number_format($row['tax'], 2), 1);
        $pdf->Cell(25, 7, number_format($row['insurance'], 2), 1);
        $pdf->Cell(25, 7, number_format($row['retirement'], 2), 1);
        $pdf->Cell(25, 7, number_format($row['net_pay'], 2), 1);
        $pdf->Ln();
    }
    
    $pdf->Output('D', 'payroll_report.pdf');
    exit();
}
