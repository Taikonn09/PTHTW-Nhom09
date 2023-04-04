//---------------------banner trên page------------------------------------------------------------------
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

//------------------------check-box đăng nhập-----------------------------------------------------







//---------------------------nút về đầu trang---------------------------------------------------------------

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
function future(){
  alert("chức năng đang phát triển ^^")
}
