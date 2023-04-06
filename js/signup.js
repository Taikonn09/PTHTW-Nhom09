const passwd = document.getElementById("user_pass");
const confirmPasswd = document.getElementById("confirm_pass");
const invalidFeedback = document.querySelector(".invalid-feedback");

invalidFeedback.style.display = 'none';
confirmPasswd.addEventListener("input", validatePassword);

function validatePassword() {
    if (confirmPasswd.value === '') {
        invalidFeedback.style.display = 'none';
    } else if (passwd.value === confirmPasswd.value) {
        confirmPasswd.setCustomValidity("Mật khẩu không khớp");
        invalidFeedback.style.display = "none";
        confirmPasswd.style.borderColor = '#ced4da';
    } else {
        confirmPasswd.setCustomValidity("Mật khẩu không khớp.");
        invalidFeedback.style.display = "block";
        confirmPasswd.style.borderColor = 'red';
    }
   
}

  

