//---------------------------kiểm tra mật khẩu------------------------------------
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

/*----------------------------------mắt ẩn hiện mật khẩu đăng nhập-------------------------------*/
function togglePasswordVisibility() {
  const passwordField = document.getElementById("password");
  const toggleButton = document.querySelector(".toggle-password");

  if (passwordField.type === "password") {
      passwordField.type = "text";
      toggleButton.innerHTML = '<i class="fas fa-eye"></i>' ;
  } else {
      passwordField.type = "password";
      toggleButton.innerHTML = '<i class="fas fa-eye-slash"></i>';
  }
}

//-------------------------------ẩn hiện mật khẩu đăng ký-----------------------------------
function togglePasswordVisibility(fieldId, toggleButtonClass) {
  const passwordField = document.getElementById(fieldId);
  const toggleButton = document.querySelector(`.${toggleButtonClass}`);

  if (passwordField.type === "password") {
      passwordField.type = "text";
      toggleButton.innerHTML = '<i class="fas fa-eye"></i>' ;
  } else {
      passwordField.type = "password";
      toggleButton.innerHTML = '<i class="fas fa-eye-slash"></i>';
  }
}
// gọi togglePasswordVisibility button 1
document.querySelector(".toggle-password-1").addEventListener("click", function() {
  togglePasswordVisibility("regPassword", "toggle-password-1");
});

// gọi togglePasswordVisibility button 2
document.querySelector(".toggle-password-2").addEventListener("click", function() {
  togglePasswordVisibility("confirmPassword", "toggle-password-2");
});