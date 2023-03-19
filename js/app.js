// Phí Ngọc Tài
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
  setTimeout(showSlides, 4000); // chuyển slide sau mỗi 5 giây
}
showSlides();

button ontop
$(document).ready(function(){
  $(window).scroll(function(){
    if($(this).scrollTop()){
      $('#header-page').fadeIn();
    }else{
      $('#header-page').fadeOut();
    }
  });
});
