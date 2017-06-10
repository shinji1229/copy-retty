$(function(){
  $("li#bt_score_1 img").hover(function(){
    $(this).attr('src', $(this).attr('src').replace('_off', '_on'));
          },
      function(){
        if (!$(this).hasClass('currentPage')) {
        $(this).attr('src', $(this).attr('src').replace('_on', '_off'));
        }
  });

  $("li#bt_score_2 img").hover(function(){
    $(this).attr('src', $(this).attr('src').replace('_off', '_on'));
          },
      function(){
        if (!$(this).hasClass('currentPage')) {
        $(this).attr('src', $(this).attr('src').replace('_on', '_off'));
        }
  });

  $("li#bt_score_3 img").hover(function(){
    $(this).attr('src', $(this).attr('src').replace('_off', '_on'));
          },
      function(){
        if (!$(this).hasClass('currentPage')) {
        $(this).attr('src', $(this).attr('src').replace('_on', '_off'));
        }
  });



});