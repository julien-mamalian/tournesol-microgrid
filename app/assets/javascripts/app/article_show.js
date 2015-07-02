$(document).ready(function(){
  var pos = $('.navbar').height() + $('.article_show_content').height() - $(window).height()

  $('.article_show_writter').css({
    'height': $(window).height()
  })

  $('.article_show_writter').css({
      'position': 'fixed',
      'top': $('.navbar').height()
  });

  $(window).on('scroll', function() {
    if ($(window).scrollTop()  > pos) {
        $('.article_show_writter').css({
            'position': 'absolute',
            'top': pos
        });
        $('.article_show_writter').css({
          'height': $(window).height() - $('.navbar').height() - $('#retour_link').height()
        })
    } else {
      $('.article_show_writter').css({
        'height': $(window).height()
      })
      $('.article_show_writter').css({
          'position': 'fixed',
          'top': $('.navbar').height()
      });
    }
  });
});



