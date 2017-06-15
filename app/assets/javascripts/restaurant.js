$(document).on('turbolinks:load', function() {
    $(function() {
        $('.tab li').click(function() {
            var index = $('.tab li').index(this);
            $('.content li').css('display','none');
            $('.content li').eq(index).css('display','block');
            $('.tab li').removeClass('select');
            $(this).addClass('select')
        });
    });
    $(function(){
      $('.tab li').hover(
        function(){
        $(this).stop().animate({ opacity: "0.8"}, 100);
        },
        function(){
        $(this).stop().animate({ opacity: "1.0"}, 100);
        }
      );
    });
});
