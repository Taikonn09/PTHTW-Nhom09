//---------------------banner trên page-------------------------------------------
var slideIndex = 0;
var slides = document.getElementsByClassName("slide");

function showSlides() {
  for (var i = 0; i < slides.length; i++) {
    slides[i].classList.remove("active");
  }
  slideIndex++;
  if (slideIndex >= slides.length) {
    slideIndex = 0;
  }
  slides[slideIndex].classList.add("active");
  setTimeout(showSlides, 3500); // chuyển slide sau mỗi 3,5 giây
}
showSlides();

//------------------------check-box đăng nhập--------------------------------------


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







//---------------------------nút về đầu trang-------------------------------------------

function scrollToTop() {
  window.scrollTo({ top: 0, behavior: 'smooth' });
}

// Lấy đối tượng button
var topButton = document.querySelector('.top-page-btn');
// Thêm sự kiện cuộn
window.addEventListener('scroll', function () {
  // Kiểm tra vị trí cuộn
  if (window.scrollY > 0) {
    // Hiển thị nút khi vị trí cuộn > 0
    topButton.style.opacity = '1';
    topButton.style.poterEvents = 'auto';
  } else {
    // Ẩn nút khi vị trí cuộn = 0
    topButton.style.opacity = '0';
    topButton.style.poterEvents = 'none';
  }
});

/*--------mấy chức năng chưa làm hoặc link trống dùng onclick này nha--------*/
function future() {
  alert("chức năng đang phát triển ^^")
}
