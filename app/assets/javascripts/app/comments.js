$(document).ready(function(){
  $('.comment').on('click', '.edit-comment--link', function(e) {
    e.preventDefault();

    $(this).parent().children(".edit_comment").show();
  });
});
