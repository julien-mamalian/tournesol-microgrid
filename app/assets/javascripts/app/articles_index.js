$(document).ready(function(){
  var width_col_4 = $('.articles_index_container_picture').width();
  console.log(width_col_4);
  $('.articles_index_picture').css({
    'width': width_col_4
  });
});
