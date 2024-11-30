const originalContent = document.getElementById('results').innerHTML;

function searchEmployee(query) {
    const trimmedQuery = query.trim();

    const position = document.getElementById('position-filter').querySelector('select').value;
    const department = document.getElementById('department-filter').querySelector('select').value;
    const office = document.getElementById('office-filter').querySelector('select').value;

    if (trimmedQuery.length === 0  && !position && !department && !office) {
        document.getElementById('results').innerHTML = originalContent;
        return;
    }
    
    fetch('employees.php?' + 
        'query=' + encodeURIComponent(trimmedQuery) +
        '&position=' + encodeURIComponent(position) +
        '&department=' + encodeURIComponent(department) +
        '&office=' + encodeURIComponent(office))
        .then(response => {
            if (!response.ok) {
                throw new Error("Network response was not ok: " + response.statusText);
            }
            return response.text();
        })
        .then(data => {
            console.log(data);
            document.getElementById('results').innerHTML = data;
        })
        .catch(error => {
            console.error("There was a problem with the fetch operation:", error);
            document.getElementById('results').innerHTML = "Error loading results.";
        })
}
