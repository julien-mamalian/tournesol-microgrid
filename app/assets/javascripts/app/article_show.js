$(document).ready(function(){

  $('.article_show_writter').css({
      'position': 'absolute',
      'top': $('.navbar').height()
  });

  var fromtop = $('.navbar').height()
  var bottom = $('.navbar').height() + $('.article_show_content').height() - $(window).height()

  $(document).scroll(function() {
    doc = $(this);
    dist = $(this).scrollTop();

    if (dist <=  bottom) {

        $('.article_show_writter:first').css({
            'position': 'fixed',
            'top': $('.navbar').height()
        });
    } else {

      $('.article_show_writter:last').css({
        'position': 'absolute',
        'top': $('.article_show_content').height() - $('.article_show_writter:last').height()
      })
    }
  });
});



