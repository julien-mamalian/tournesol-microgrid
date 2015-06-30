$(document).ready(function(){

  if(window.matchMedia("screen and (min-width: 840px) and (max-width: 1600px)").matches) {
    console.log($(window).width())
    var width_all = $(document).width();

    $('.article-show-content').css({
      'width': width_all * 0.7,
      'padding-left': width_all * 0.10,
      'padding-right': width_all * 0.10,
    });
    $('.article_show_writter').css({
      'width': width_all * 0.3,
      'height': $('.article-show-content').height()
    });

    $('content_article').css({
      'margin-top': $('.article_show_picture ').height() * 1.25
    });
    $('.article_show_picture ').css({
      'width': $('.content_article').width()
    });


  } else if (window.matchMedia("screen and (min-width: 1600px)").matches) {
    console.log($(window).width())
    var width_all = $(document).width();

    $('.article-show-content').css({
      'width': width_all * 0.7,
      'padding-left': width_all * 0.15,
      'padding-right': width_all * 0.15,
    });
    $('.article_show_writter').css({
      'width': width_all * 0.3,
      'height': $('.article-show-content').height()
    });

    $('content_article').css({
      'margin-top': $('.article_show_picture ').height() * 1.25
    });
    $('.article_show_picture ').css({
      'width': $('.content_article').width()
    });


  } else {

  }
});





