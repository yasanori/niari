$(document).on('turbolinks:load', function () {
  $(function () {
    var search_list = $(".camera_boxes");
    function appendUser(user) {
      if (user.user_sign_in.id !== user.id) {
        if (user.image.url == "nofoto.jpg") {
          var html =
            `
          <a class="camera_link" href="/users/${user.id}">
            <div class='camera_box'>
              <div class='mini-prf-image-box'>
                <img class="mini-prf-image" src="/assets/nofoto-281bffacc1ae6b6f24b2170d7a182622072296aa7f34ae7cc4fcd4cee8601a9c.jpg" />
              </div>
              <p class='camera_name'>
                ${user.name}
              </p>
            </div>
          </a>
        `
          search_list.append(html);
        } else {
          var html =
            `
          <a class="camera_link" href="/users/${user.id}">
            <div class='camera_box'>
              <div class='mini-prf-image-box'>
                <img class="mini-prf-image" src="${user.image.url}" />
              </div>
              <p class='camera_name'>
                ${user.name}
              </p>
            </div>
          </a>
        `
          search_list.append(html);
        }
      } else {
        var html = ""
        search_list.append(html);
      }
    }
    function appendErrMsgToHTML(msg) {
      var html = `<div class='name'>${msg}</div>`
      search_list.append(html);
    }

    $(".search_input").on("keyup", function () {
      var input = $(".search_input").val();
      $.ajax({
        type: 'GET',
        url: '/users/searches',
        data: { keyword: input },
        dataType: 'json'
      })
        .done(function (users) {
          search_list.empty();
          if (users.length !== 0) {
            users.forEach(function (user) {
              appendUser(user);
            });
          } else {
            appendErrMsgToHTML("一致するユーザーがいません");
          }
        })
        .fail(function () {
          alert('error');
        });
    });
  });
});
