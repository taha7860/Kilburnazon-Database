function searchEmployee(query) {
    if (query.length === 0 ) {
        document.getElementById('results').innerHTML = '';
        return;
    }

    const trimmedQuery = query.trim();
    fetch('employees.php?query=' + encodeURIComponent(trimmedQuery))
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