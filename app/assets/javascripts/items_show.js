$(function(){
  $('.owl-dots li').mouseover(function(e) {
    $('.owl-item').removeClass("active");
    $('.owl-dot').removeClass("active");
    $('this').addClass("active")
  });
});
