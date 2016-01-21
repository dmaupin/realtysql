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

// Scroll-tos

$(document).ready(function() {
  $("#goingtolistings").click(function() {
    $('html, body').animate({
        scrollTop: $("#listings").offset().top-55
    }, 1000);
  });
});

$(document).ready(function() {
  $("#gotolistings").click(function() {
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

$(document).ready(function() {
  $("#gotocontact").click(function() {
    $('html, body').animate({
        scrollTop: $("#contact").offset().top+1200
    }, 1000);
  });
});

$(document).ready(function() {
  $("#gotolistings").click(function() {
    $(window).animate({
        scrollTop: $("#listings").offset().top-55
    }, 1000);
  });
});

// Toggle Menu

$(document).ready(function(){
  
  var menu = $(".navbar");
  var hamburger = $(".hamburger");
  var line = $(".line");
  var menuOpen;
  
  function openMenu(){
    menu.css("top", "0px");
    line.css("background", "#D9D9D9");
    menuOpen = true;
  }
  
  function closeMenu(){
    menu.css("top", "-180px");
    line.css("background", "#FDDE2C");
    menuOpen = false;
  }
  
  function toggleMenu(){
    if (menuOpen) {
      closeMenu();
    } else {
      openMenu();
    }
  }
  
  hamburger.on({
    click: function(){
      toggleMenu();
    }
  })
});

// Slider

jQuery(document).ready(function($) {
  $('.my-slider').unslider();
});

// Jquery animations

$(window).scroll(function(){
    $(".logo").css("opacity", 1 - $(window).scrollTop() / 200);
  });