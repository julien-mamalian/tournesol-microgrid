$(document).ready(function(){

  var nav_height = $('#bs-example-navbar-collapse-1').height();
  if(window.matchMedia("screen and (min-width: 840px) and (max-width: 1600px)").matches) {
    console.log($(window).width())
    var width_all = $(document).width();

    $('.article-show-content').css({
      'padding-left': width_all * 0.10,
      'padding-right': width_all * 0.10,
    });
    $('.article_show_writter').css({

      'height': $('.article-show-content').height()
    });

    $('content_article').css({
      'margin-top': $('.article_show_picture ').height() * 1.25
    });
    $('.article_show_picture ').css({
      'width': $('.content_article').width()
    });
    $('.profile_info_writter').css({
      'margin-top': nav_height + 30
    })

  } else if (window.matchMedia("screen and (min-width: 1600px)").matches) {
    console.log($(window).width())
    var width_all = $(document).width();

    $('.article-show-content').css({
      'padding-left': width_all * 0.15,
      'padding-right': width_all * 0.15,
    });
    $('.article_show_writter').css({

      'height': $('.article-show-content').height()
    });

    $('content_article').css({
      'margin-top': $('.article_show_picture ').height() * 1.25
    });
    $('.article_show_picture ').css({
      'width': $('.content_article').width()
    });

    $('.profile_info_writter').css({
      'margin-top': nav_height + 30
    })

  } else {

  }
});





