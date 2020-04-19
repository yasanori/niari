// $(document).on('turbolinks:load', function () {
//   $(function () {
//     var search_list = $(".user-contants");
//     function appendUser(user) {
//       if (user.user_sign_in.id !== user.id) {
//         if (user.image.url == "nofoto.jpg" && user.prefecture == null && user.profile == null) {
//           console.log(1);
//           var html =
//             `
//             <a class="user_link" href="/users/${user.id}">
//               <div class="user-wrapper">
//                 <div class="user-container">
//                   <div class="user-container__image">
//                   </div>
//                   <div class="user-container__profile">
//                     <div class="user-container__profile__main">
//                       <div class="user-container__profile__main__image">
//                         <img class="mini-prf-image" src="/assets/nofoto-281bffacc1ae6b6f24b2170d7a182622072296aa7f34ae7cc4fcd4cee8601a9c.jpg" />
//                       </div>
//                       <div class="user-container__profile__main__name">
//                         <p class="user-name">
//                           ${user.name}
//                         </p>
//                       </div>
//                       <div class="user-container__profile__main__prefecture">
//                       </div>
//                     </div>
//                     <div class="user-container__profile__text">
//                     </div>
//                   </div>
//                 </div>
//               </div>
//             </a>
//         `
//           search_list.append(html);
//         } else if (user.image.url == "nofoto.jpg" && user.prefecture == null) {
//           console.log(2);
//           var html =
//             `
//             <a class="user_link" href="/users/${user.id}">
//               <div class="user-wrapper">
//                 <div class="user-container">
//                   <div class="user-container__image">
//                   </div>
//                   <div class="user-container__profile">
//                     <div class="user-container__profile__main">
//                       <div class="user-container__profile__main__image">
//                         <img class="mini-prf-image" src="/assets/nofoto-281bffacc1ae6b6f24b2170d7a182622072296aa7f34ae7cc4fcd4cee8601a9c.jpg" />
//                       </div>
//                       <div class="user-container__profile__main__name">
//                         <p class='user-name'>
//                           ${user.name}
//                         </p>
//                       </div>
//                       <div class="user-container__profile__main__prefecture">
//                       </div>
//                     </div>
//                     <div class="user-container__profile__text">
//                       <p class='user-text'>
//                         ${user.profile}
//                       </p>
//                     </div>
//                   </div>
//                 </div>
//               </div>
//             </a>
//         `
//           search_list.append(html);
//         } else if (user.image.url == "nofoto.jpg" && user.profile == null) {
//           console.log(3);
//           var html =
//             `
//             <a class="user_link" href="/users/${user.id}">
//               <div class="user-wrapper">
//                 <div class="user-container">
//                   <div class="user-container__image">
//                   </div>
//                   <div class="user-container__profile">
//                     <div class="user-container__profile__main">
//                       <div class="user-container__profile__main__image">
//                         <img class="mini-prf-image" src="/assets/nofoto-281bffacc1ae6b6f24b2170d7a182622072296aa7f34ae7cc4fcd4cee8601a9c.jpg" />
//                       </div>
//                       <div class="user-container__profile__main__name">
//                         <p class='user-name'>
//                           ${user.name}
//                         </p>
//                       </div>
//                       <div class="user-container__profile__main__prefecture">
//                         <p class='user-prefecture'>
//                           ${user.prefecture.name}
//                         </p>
//                       </div>
//                     </div>
//                     <div class="user-container__profile__text">
//                     </div>
//                   </div>
//                 </div>
//               </div>
//             </a>
//         `
//           search_list.append(html);
//         } else if (user.profile == null && user.prefecture == null) {
//           console.log(4);
//           var html =
//             `
//             <a class="user_link" href="/users/${user.id}">
//               <div class="user-wrapper">
//                 <div class="user-container">
//                   <div class="user-container__image">
//                   </div>
//                   <div class="user-container__profile">
//                     <div class="user-container__profile__main">
//                       <div class="user-container__profile__main__image">
//                         <img class="mini-prf-image" src="${user.image.url}" />
//                       </div>
//                       <div class="user-container__profile__main__name">
//                         <p class='user-name'>
//                           ${user.name}
//                         </p>
//                       </div>
//                       <div class="user-container__profile__main__prefecture">
//                       </div>
//                     </div>
//                     <div class="user-container__profile__text">
//                     </div>
//                   </div>
//                 </div>
//               </div>
//             </a>
//         `
//           search_list.append(html);
//         } else if (user.prefecture == null) {
//           console.log(5);
//           var html =
//             `
//             <a class="user_link" href="/users/${user.id}">
//               <div class="user-wrapper">
//                 <div class="user-container">
//                   <div class="user-container__image">
//                   </div>
//                   <div class="user-container__profile">
//                     <div class="user-container__profile__main">
//                       <div class="user-container__profile__main__image">
//                         <img class="mini-prf-image" src="${user.image.url}" />
//                       </div>
//                       <div class="user-container__profile__main__name">
//                         <p class='user-name'>
//                           ${user.name}
//                         </p>
//                       </div>
//                       <div class="user-container__profile__main__prefecture">
//                       </div>
//                     </div>
//                     <div class="user-container__profile__text">
//                       <p class='user-text'>
//                         ${user.profile}
//                       </p>
//                     </div>
//                   </div>
//                 </div>
//               </div>
//             </a>
//         `
//           search_list.append(html);
//         } else if (user.profile == null) {
//           console.log(6);
//           var html =
//             `
//             <a class="user_link" href="/users/${user.id}">
//               <div class="user-wrapper">
//                 <div class="user-container">
//                   <div class="user-container__image">
//                   </div>
//                   <div class="user-container__profile">
//                     <div class="user-container__profile__main">
//                       <div class="user-container__profile__main__image">
//                         <img class="mini-prf-image" src="/assets/nofoto-281bffacc1ae6b6f24b2170d7a182622072296aa7f34ae7cc4fcd4cee8601a9c.jpg" />
//                       </div>
//                       <div class="user-container__profile__main__name">
//                         <p class='user-name'>
//                           ${user.name}
//                         </p>
//                       </div>
//                       <div class="user-container__profile__main__prefecture">
//                         <p class='user-prefecture'>
//                           ${user.prefecture.name}
//                         </p>
//                       </div>
//                     </div>
//                     <div class="user-container__profile__text">
//                     </div>
//                   </div>
//                 </div>
//               </div>
//             </a>
//         `
//           search_list.append(html);
//         } else if (user.image.url == "nofoto.jpg") {
//           console.log(7);
//           var html =
//             `
//             <a class="user_link" href="/users/${user.id}">
//               <div class="user-wrapper">
//                 <div class="user-container">
//                   <div class="user-container__image">

//                   </div>
//                   <div class="user-container__profile">
//                     <div class="user-container__profile__main">
//                       <div class="user-container__profile__main__image">
//                         <img class="mini-prf-image" src="/assets/nofoto-281bffacc1ae6b6f24b2170d7a182622072296aa7f34ae7cc4fcd4cee8601a9c.jpg" />
//                       </div>
//                       <div class="user-container__profile__main__name">
//                         <p class='user-name'>
//                           ${user.name}
//                         </p>
//                       </div>
//                       <div class="user-container__profile__main__prefecture">
//                         <p class='user-prefecture'>
//                           ${user.prefecture.name}
//                         </p>
//                       </div>
//                     </div>
//                     <div class="user-container__profile__text">
//                       <p class='user-text'>
//                         ${user.profile}
//                       </p>
//                     </div>
//                   </div>
//                 </div>
//               </div>
//             </a>
//         `
//           search_list.append(html);
//         } else {
//           console.log(8);
//           var html =
//             `
//               <a class="user_link" href="/users/${user.id}">
//                 <div class="user-wrapper">
//                   <div class="user-container">
//                     <div class="user-container__image">
//                       <img class="main-image" src="${user.main_photo.photo.url}" />
//                     </div>
//                     <div class="user-container__profile">
//                       <div class="user-container__profile__main">
//                         <div class="user-container__profile__main__image">
//                           <img class="mini-prf-image" src="${user.image.url}" />
//                         </div>
//                         <div class="user-container__profile__main__name">
//                           <p class='user-name'>
//                             ${user.name}
//                           </p>
//                         </div>
//                         <div class="user-container__profile__main__prefecture">
//                           <p class='user-prefecture'>
//                             ${user.prefecture}
//                           </p>
//                         </div>
//                       </div>
//                       <div class="user-container__profile__text">
//                         <p class='user-text'>
//                           ${user.profile}
//                         </p>
//                       </div>
//                     </div>
//                   </div>
//                 </div>
//               </a>
//             `
//           search_list.append(html);
//         }
//       } else {
//         var html = ""
//         search_list.append(html);
//       }
//     }
//     function appendErrMsgToHTML(msg) {
//       var html = `<div class='name'>${msg}</div>`
//       search_list.append(html);
//     }

//     $(".search_input").on("keyup", function () {
//       var input = $(".search_input").val();
//       $.ajax({
//         type: 'GET',
//         url: '/users/searches',
//         data: { keyword: input },
//         dataType: 'json'
//       })
//         .done(function (users) {
//           search_list.empty();
//           if (users.length !== 0) {
//             users.forEach(function (user) {
//               appendUser(user);
//             });
//           } else {
//             appendErrMsgToHTML("一致するユーザーがいません");
//           }
//         })
//         .fail(function () {
//           alert('error');
//         });
//     });
//   });
//   $(function () {
//     $("#prefecture").change(function () {
//       $(".search_form").submit();
//     });
//   });
// });



$(document).on('turbolinks:load', function () {
  $(function () {
    var search_list = $(".user-contants");
    function buildMainImage(user) {
      if (user.main_photo !== null) {
        var main_photo =
          `
        <img class="main-image" src="${user.main_photo.photo.url}" />
        `
        return main_photo
      } else {
        var main_photo = ""
        return main_photo
      }
    };
    function buildUserImage(user) {
      if (user.image.url == "nofoto.jpg") {
        var user_image =
          `
            <img class="mini-prf-image" src="/assets/nofoto-281bffacc1ae6b6f24b2170d7a182622072296aa7f34ae7cc4fcd4cee8601a9c.jpg" />
          `
        return user_image
      } else {
        var user_image =
          `
          <img class="mini-prf-image" src="${user.image.url}" />
          `
        return user_image
      }
    };
    function buildPrefecture(user) {
      if (user.prefecture == null) {
        var prefecture = ""
        return prefecture
      } else {
        var prefecture =
          `
            <p class='user-prefecture'>
              ${user.prefecture.name}
            </p>
          `
        return prefecture
      }
    };
    function buildProfile(user) {
      if (user.profile == null) {
        var profile = ""
        return profile
      } else {
        var profile =
          `
            <p class='user-text'>
              ${user.profile}
            </p>
          `
        return profile
      }
    };
    function appendUserContainer(user, main_photo, user_image, prefecture, profile) {
      var html =
        `
              <a class="user_link" href="/users/${user.id}">
                <div class="user-wrapper">
                  <div class="user-container">
                    <div class="user-container__image">
                      ${main_photo}
                    </div>
                    <div class="user-container__profile">
                      <div class="user-container__profile__main">
                        <div class="user-container__profile__main__image">
                          ${user_image}
                        </div>
                        <div class="user-container__profile__main__name">
                          <p class='user-name'>
                            ${user.name}
                          </p>
                        </div>
                        <div class="user-container__profile__main__prefecture">
                          ${prefecture}
                        </div>
                      </div>
                      <div class="user-container__profile__text">
                        ${profile}
                      </div>
                    </div>
                  </div>
                </div>
              </a>
            `
      search_list.append(html);
    };
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
              if (user.user_sign_in.id !== user.id) {
                var main_photo = buildMainImage(user);
                var user_image = buildUserImage(user);
                var prefecture = buildPrefecture(user);
                var profile = buildProfile(user);
                appendUserContainer(user, main_photo, user_image, prefecture, profile);
              };
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
  $(function () {
    $("#prefecture").change(function () {
      $(".search_form").submit();
    });
  });
});
