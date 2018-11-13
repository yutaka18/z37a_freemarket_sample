$(function(){
  $('.owl-dots li').on('mouseover', function(e) {
    $('.owl-dot').removeClass("active");
    $(this).addClass("active");
    var index = $(this).index();
    index = index * -300 + "px"
    $(".owl-stage").animate({left: index}, 200);
    e.preventDefault();
  });
});
