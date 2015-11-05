// Parrallax

$(document).ready(function(){
   // cache the window object
   $window = $(window);
 
   $('div[data-type="background"]').each(function(){
     // declare the variable to affect the defined data-type
     var $scroll = $(this);
                     
      $(window).scroll(function() {
        // HTML5 proves useful for helping with creating JS functions!
        // also, negative value because we're scrolling upwards                             
        var yPos = -($window.scrollTop() / $scroll.data('speed')); 
         
        // background position
        var coords = '10% '+ yPos + 'px';
 
        // move the background
        $scroll.css({ backgroundPosition: coords });    
      }); // end window scroll
   });  // end section function
}); // close out script

// Scroll-to

$(document).ready(function() {
  $("#goingtolistings").click(function() {
    $('html, body').animate({
        scrollTop: $("#listings").offset().top-55
    }, 1000);
  });
});

$(document).ready(function() {
  $("#goingtoabout").click(function() {
    $('html, body').animate({
        scrollTop: $("#about").offset().top-55
    }, 1000);
  });
});

$(document).ready(function() {
  $("#gotodev").click(function() {
    $('html, body').animate({
        scrollTop: $("#dev").offset().top+655
    }, 1000);
  });
});

// initialize bxslider

$(document).ready(function(){
  $('.bxslider').bxSlider();
});
