
$(document).on('turbolinks:load', function () {
  $(function () {
    $('.top_page').each(function () {
      var loopsliderWidth = $(this).width();
      var loopsliderHeight = $(this).height();
      $(this).children('.loop_slider').wrapAll('<div class="top_page_wrap"></div>');

      var listWidth = $('.top_page_wrap').children('.loop_slider').children('.loop_slider__contents').width();
      var listCount = $('.top_page_wrap').children('.loop_slider').children('.loop_slider__contents').length;

      var loopWidth = (listWidth) * (listCount);

      $('.top_page_wrap').css({
        top: '0',
        left: '0',
        width: ((loopWidth) * 2),
        height: (loopsliderHeight),
        overflow: 'hidden',
        position: 'absolute'
      });

      $('.top_page_wrap .loop_slider').css({
        width: (loopWidth)
      });
      loopsliderPosition();

      function loopsliderPosition() {
        $('.top_page_wrap').css({ left: '0' });
        $('.top_page_wrap').stop().animate({ left: '-' + (loopWidth) + 'px' }, 25000, 'linear');
        setTimeout(function () {
          loopsliderPosition();
        }, 25000);
      };

      $('.top_page_wrap ul').clone().appendTo('.top_page_wrap');
    });
  });
});
