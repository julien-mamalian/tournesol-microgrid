$(document).ready(function(){

  var window_height = $(window).height();
  $('.account_menu').css({
    'height': window_height + 70
  });
  $('.account_contain').css({
    'height': window_height
  });
  // ARTICLE FAVORITES
  $('.favorite_article img').css({
    'height': window_height * 0.25
  });
  var width_img = $('.favorite_article img').width();
  $('.hover_card_article').css({
    'height': window_height * 0.25,
    'width': width_img
  });


  // PROJECT FAVORITES
   $('.favorite_project img').css({
    'height': window_height * 0.25
  });
  var width_project = $('.favorite_project img').width();
  $('.hover_card_project').css({
    'height': window_height * 0.25,
    'width': width_project
  });



  $('#favorite_articles_link').on('click', function(){
    if ($('#favorite_projects').is(":visible")) {
      $('#favorite_projects').fadeOut(0);
      $('#favorite_articles').fadeIn(1500);
    }
  });
  $('#favorite_projects_link').on('click', function(){
    if ($('#favorite_articles').is(":visible")) {
      $('#favorite_articles').fadeOut(0);
      $('#favorite_projects').fadeIn(1500);
    }
  });
});


