const form = document.querySelector('form');
const startDate = document.getElementById('start_date');
const endDate = document.getElementById('end_date');
const errorMessage = document.getElementById('error-container');

form.addEventListener('submit', (e) => {
    const startDateValue = new Date(startDate.value);
    const endDateValue = new Date(endDate.value);

    if (endDateValue < startDateValue) {
        e.preventDefault();
        errorMessage.classList.add('visible');
    } else {
        errorContainer.classList.remove('visible');
    }
})