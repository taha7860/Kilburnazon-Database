function openEmployeeModal(employeeId) {
    fetch(`employee_details.php?id=${employeeId}`)
        .then(response => response.text())
        .then(data => {

            document.getElementById('modal-employee-info').innerHTML = data;
            document.getElementById('employeeModal').style.display = 'block';
        })
        .catch(error => console.error('Error fetching employee details:', error));
}


function closeEmployeeModal() {
    document.getElementById('employeeModal').style.display = 'none';
}
