$(document).on('turbolinks:load', function () {
  $(function () {

    function buildHTML(image) {
      var html =
        `
        <div class="prev-content">
          <img src="${image}", alt="preview" class="prev-image">
        <div>
        `
      return html;
    }

    $(document).on('change', '.hidden_file', function () {
      var file = this.files[0];
      var reader = new FileReader();
      reader.readAsDataURL(file);
      reader.onload = function () {
        var image = this.result;
        if ($('.prev-content').length == 0) {
          var html = buildHTML(image)
          $('.prev-contents').prepend(html);
          $('.photo-icon').hide();
        } else {
          $('.prev-content .prev-image').attr({ src: image });
        }
      }
    });
  });
});

if (window.location.href.match(/\/items\/\d+\/edit/)) {
  var prevContent = $('.label-content').prev();
  $('.preview-box').each(function (index, box) {
    $(box).attr('id', `preview-box__${index}`);
  })
  $('.delete-box').each(function (index, box) {
    $(box).attr('id', `delete_btn_${index}`);
  })
  var count = $('.preview-box').length;
  if (count == 5) {
    $('.label-content').hide();
  }
}
