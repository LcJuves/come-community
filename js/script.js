(() => {
  jQuery.ajaxPrefilter(function (options) {
    if (options.crossDomain && jQuery.support.cors) {
      options.url = /* "https://cors-anywhere.herokuapp.com/" + */ options.url;
    }
  });
})();

var prefixUrl = "http://101.200.121.37:8080/";

String.prototype.isEmpty = function () {
  return this == null || this == "" || this.trim() == "";
};

var uploadData = {
  title: null,
  url: null,
  img_url: null,
};

function loadTag() {
  $.ajax({
    type: "get",
    url: prefixUrl + "items",
    // beforeSend: function (req) {
    //   let token = Cookies.get("token");
    //   if (token) {
    //     req.setRequestHeader("token", Cookies.get("token"));
    //   }
    // },
    dataType: "json",
    success: function (data) {
      if (data.flag) {
        $("#parent").html("");

        data = data["data"].sort(function (a, b) {
          return a["title"].localeCompare(b["title"]);
        });
        for (let obj of data) {
          let imgIconUrl = obj["img_url"];
          let title = obj["title"];
          let url = obj["url"];
          let id = obj["id"];

          $("#parent")
            .append(`<div id="baseContainer" onclick="location.href='${url}';" class="shake shake-little">
    <img src="${imgIconUrl}" alt="${title}"/>
    <div id="childContainer">
      <span id="title">${title}</span>
      <span id="url">${url}</span>
    </div>
    <img src="img/delete.svg" class="img_del" onclick="delItem(this,${id})"/>
  </div>`);
        } // End loop.
      } // #endif
    },
  });
}

onload = () => {
  loadTag();

  document.getElementById("add").onclick = function () {
    if (Cookies.get("token")) {
      showDialog(
        "添加",
        true,
        "提交",
        "请输入标签标题",
        "请输入标签内容链接",
        this
      );
    } else {
      showDialog("用户登录", false, "登录", "请输入用户名", "请输入密码", this);
    }
  };

  var imgDelBtnIsShowing = false;

  document.getElementById("edit").onclick = function () {
    if (Cookies.get("token")) {
      if (!imgDelBtnIsShowing) {
        $("#baseContainer .img_del").fadeIn();
        this.children[0].setAttribute("src", "img/ok.svg");
        imgDelBtnIsShowing = true;
      } else {
        $("#baseContainer .img_del").fadeOut();
        this.children[0].setAttribute("src", "img/edit.svg");
        imgDelBtnIsShowing = false;
      }
      $(this).hide();
      $(this).fadeIn();
    } else {
      showDialog("用户登录", false, "登录", "请输入用户名", "请输入密码", this);
    }
  };
};

function showDialog(title, showInputFile, buttonTipTop, p1, p2, target) {
  let html = `<div id="dialog-parent"><div id="dialog">
  <h1>${title}</h1>
  <input type="text" id="upload_title" placeholder="${p1}" />
  <input type="text" id="upload_url" placeholder="${p2}" />
  <input type="file" id="upload_file" accept="image/*" ${
    showInputFile ? "" : "disabled"
  }/>

  <button id="submit" disabled>${buttonTipTop}</button>
  <img src="img/close.svg" id="close_dialog" />
</div></div>`;

  $(html).insertAfter($("#rigth_bottom"));

  $("#close_dialog").click(function () {
    $("#dialog").hide(300);
    $("#dialog-parent").remove();
    let elem = document.getElementById("upload_file");
    if (elem && elem.outerHTML) {
      elem.outerHTML = elem.outerHTML;
    }
  });

  /* 标签内容标题设置 */
  document.getElementById("upload_title").oninput = function () {
    uploadData.title = this.value;
  };

  /* 标签内容链接设置 */
  document.getElementById("upload_url").oninput = function () {
    uploadData.url = this.value;
  };

  document.getElementById("upload_file").onchange = function () {
    var file = this.files[0];
    var formData = new FormData();
    formData.append("image", file);

    $.ajax({
      type: "post",
      url: `${prefixUrl}image`,
      beforeSend: function (req) {
        let token = Cookies.get("token");
        if (token) {
          req.setRequestHeader("token", Cookies.get("token"));
        }
      },
      contentType: false,
      cache: false,
      data: formData,
      processData: false,
      dataType: "json",
      success: function (response) {
        if (response["flag"]) {
          let fullUrl = `${location.protocol}//qk7nh8b1e.hn-bkt.clouddn.com/${response["data"]}`;
          uploadData.img_url = fullUrl;
          document.getElementById("submit").removeAttribute("disabled");
          $("#submit").css("cursor", "pointer");

          toast("图片" + file["name"] + "上传成功！");
        } else {
          alert("图片" + file["name"] + "上传失败");
        }
      },
      error: function (e) {
        console.error(e);
      },
    });
  };

  if (!showInputFile) {
    $("#upload_file").remove();
    document.getElementById("submit").removeAttribute("disabled");
    $("#submit").css("cursor", "pointer");
  }

  $("#submit").click(function () {
    if (showInputFile) {
      $.ajax({
        type: "post",
        url: `${prefixUrl}items`,
        cache: false,
        beforeSend: function (req) {
          let token = Cookies.get("token");
          if (token) {
            req.setRequestHeader("token", Cookies.get("token"));
          }
        },
        contentType: "application/json",
        data: JSON.stringify(uploadData),
        dataType: "json",
        success: function (response) {
          if (response.flag) {
            $("#close_dialog").click();
            $("#upload_title").val("");
            $("#upload_url").val("");
            loadTag();
          }
        },
      });
    } else {
      if (uploadData.title.toString().isEmpty()) {
        toast("用户名不能为空！");
      } else if (uploadData.url.toString().isEmpty()) {
        toast("密码不能为空！");
      } else {
        $.ajax({
          type: "post",
          url: `${prefixUrl}/login`,
          contentType: "application/json",
          data: JSON.stringify({
            username: uploadData.title,
            password: uploadData.url,
          }),
          success: function (reponse) {
            if (reponse.flag) {
              Cookies.set("token", reponse["data"]);
              $("#close_dialog").click();
              $("#upload_title").val("");
              $("#upload_url").val("");

              $(target).click();
            } else {
              console.dir(reponse);
              toast(reponse["message"]);
            }

            uploadData = {
              title: null,
              url: null,
              img_url: null,
            };
          },
        });
      }
    }
  });

  $("#dialog").show(300);
}

function delItem(target, id) {
  // console.dir(arguments.callee.caller.arguments[0]);
  var e = window.event || arguments.callee.caller.arguments[0];
  e.preventDefault();
  e.stopPropagation();

  $.ajax({
    type: "delete",
    url: prefixUrl + "items/" + id,
    beforeSend: function (req) {
      let token = Cookies.get("token");
      if (token) {
        req.setRequestHeader("token", Cookies.get("token"));
      }
    },
    dataType: "json",
    success: function (response) {
      if (response.flag === true) {
        $(target)
          .parent()
          .animate({ width: 0, height: 0, opacity: 0 }, function () {
            $(target).parent().remove();
          });
      }
    },
    error: function (e) {
      Cookies.set("token", "");
      $("#edit").click();
    },
  });
}

function toast(msg) {
  let html = `<div id="toast_div" style="
  background-color: white;
  width: auto;
  text-align: center;
  padding: 0.2rem 0.6rem;
  position: absolute;
  top: 0;
  left: 50%;
  transform: translate(-50%, 0);
  border-radius: 0.3rem;
  margin-top: 1rem;
">
<span style="font-size: 1.2rem">${msg}</span>
</div>`;

  document.body.insertAdjacentHTML("beforeend", html);

  let fadeInDuration = 1000;
  let fadeOutDuration = 1000;

  $("#toast_div").fadeIn(fadeInDuration);
  $("#toast_div").fadeOut(fadeOutDuration);

  setTimeout(function () {
    $("#toast_div").remove();
  }, fadeInDuration + fadeOutDuration);
}
