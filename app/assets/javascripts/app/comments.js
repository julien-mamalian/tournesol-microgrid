$(document).ready(function(){
  $('#comments').on('click', '.edit-comment--link', function(e) {
    e.preventDefault();
    $(this).parents('.comment').children('.edit_comment').show();
  });
});
