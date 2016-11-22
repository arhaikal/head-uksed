$( document ).ready(function() {
    $(window).scroll(function() {
   var hT = $('.counter').offset().top,
       hH = $('.counter').outerHeight(),
       wH = $(window).height(),
       wS = $(this).scrollTop();
   if (wS > (hT+hH-wH)){
       $('.counter').each(function() {
  var $this = $(this),
      countTo = $this.attr('data-count');
  
  $({ countNum: $this.text()}).animate({
    countNum: countTo
  },

  {

    duration: 1000,
    easing:'linear',
    step: function() {
      $this.text(Math.floor(this.countNum));
    },
    complete: function() {
      $this.text(this.countNum);
      //alert('finished');
    }

  });  
  
});
   }
});
    
});