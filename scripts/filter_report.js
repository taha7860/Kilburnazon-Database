const originalContent = document.getElementById('payroll-table-body');

function updatePayrollReport() {  
    const department = document.getElementById("department").value;
    const periodType = document.getElementById("period_type").value;

    const departmentParam = department === "" ? "" : department;

    fetch(`payroll_report.php?department=${encodeURIComponent(departmentParam)}&period_type=${encodeURIComponent(periodType)}`)
        .then(response => response.json())
        .then(data => {
            const tableBody = document.getElementById("payroll-table-body");
            tableBody.innerHTML = "";

            if (data.length === 0) {
                const row = document.createElement("tr");
                row.innerHTML = "<td colspan='11'>No payroll data found for the selected department.</td>";
                tableBody.appendChild(row);
            } else {
                data.forEach(row => {
                    const tr = document.createElement("tr");

                    const baseSalary = parseFloat(row.base_salary) || 0;
                    const bonus = parseFloat(row.bonus) || 0;
                    const allowance = parseFloat(row.allowance) || 0;
                    const tax = parseFloat(row.tax) || 0;
                    const insurance = parseFloat(row.insurance) || 0;
                    const retirement = parseFloat(row.retirement) || 0;
                    const netPay = parseFloat(row.net_pay) || 0;

                    tr.innerHTML = `
                        <td>${row.employee_id}</td>
                        <td>${row.name}</td>
                        <td>${row.department_name}</td>
                        <td>${row.position_name}</td>
                        <td>${baseSalary.toFixed(2)}</td>
                        <td>${bonus.toFixed(2)}</td>
                        <td>${allowance.toFixed(2)}</td>
                        <td>${tax.toFixed(2)}</td>
                        <td>${insurance.toFixed(2)}</td>
                        <td>${retirement.toFixed(2)}</td>
                        <td>${netPay.toFixed(2)}</td>
                    `;
                    tableBody.appendChild(tr);
                });
            }
        })
        .catch(error => {
            console.error("Error fetching data:", error);
        });
}
