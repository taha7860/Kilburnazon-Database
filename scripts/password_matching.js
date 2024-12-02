const form = document.getElementById('registrationForm');
const password = document.getElementById('password');
const confirmPassword = document.getElementById('confirm_password');
const passwordError = document.getElementById('passwordError');

form.addEventListener('submit', (e) => {
    if (password.value !== confirmPassword.value) {
        e.preventDefault();
        passwordError.style.display = 'block';
    } else {
        passwordError.style.display = 'none';
    }
});
