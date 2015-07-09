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
  $('.hover_card_project').css({
    'height': window_height * 0.25,
    'width': width_img
  });

  // MY ARTICLES
  $('.my_favorite_article img').css({
    'height': window_height * 0.25
  });
  $('.hover_card_my_article').css({
    'height': window_height * 0.25,
    'width': width_img
  });

  // MY PROJECTS
  $('.my_favorite_project img').css({
    'height': window_height * 0.25
  });
  $('.hover_card_my_project').css({
    'height': window_height * 0.25,
    'width': width_img
  });



  $('#favorite_articles_link').on('click', function(){
    if ($('#favorite_projects').is(":visible")) {
      $('#favorite_projects').fadeOut(0);
      $('#favorite_articles').fadeIn(1500);
    }
    if ($('#my_articles').is(":visible")) {
      $('#my_articles').fadeOut(0);
      $('#favorite_articles').fadeIn(1500);
    }
    if ($('#my_projects').is(":visible")) {
      $('#my_projects').fadeOut(0);
      $('#favorite_articles').fadeIn(1500);
    }
  });
  $('#favorite_projects_link').on('click', function(){
    if ($('#favorite_articles').is(":visible")) {
      $('#favorite_articles').fadeOut(0);
      $('#favorite_projects').fadeIn(1500);
    }
    if ($('#my_articles').is(":visible")) {
      $('#my_articles').fadeOut(0);
      $('#favorite_projects').fadeIn(1500);
    }
    if ($('#my_projects').is(":visible")) {
      $('#my_projects').fadeOut(0);
      $('#favorite_projects').fadeIn(1500);
    }
  });
  $('#my_articles_link').on('click', function(){
    if ($('#favorite_articles').is(":visible")) {
      $('#favorite_articles').fadeOut(0);
      $('#my_articles').fadeIn(1500);
    }
    if ($('#favorite_projects').is(":visible")) {
      $('#favorite_projects').fadeOut(0);
      $('#my_articles').fadeIn(1500);
    }
    if ($('#my_projects').is(":visible")) {
      $('#my_projects').fadeOut(0);
      $('#my_articles').fadeIn(1500);
    }
  });
  $('#my_projects_link').on('click', function(){
    if ($('#favorite_articles').is(":visible")) {
      $('#favorite_articles').fadeOut(0);
      $('#my_projects').fadeIn(1500);
    }
    if ($('#favorite_projects').is(":visible")) {
      $('#favorite_projects').fadeOut(0);
      $('#my_projects').fadeIn(1500);
    }
    if ($('#my_articles').is(":visible")) {
      $('#my_articles').fadeOut(0);
      $('#my_projects').fadeIn(1500);
    }
  });

});


