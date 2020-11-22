jQuery.ajaxPrefilter(function (options) {
  if (options.crossDomain && jQuery.support.cors) {
    options.url = "https://cors-anywhere.herokuapp.com/" + options.url;
  }
});

let prefix = "https://cn.bing.com/";

$.ajax({
  url: `${prefix}HPImageArchive.aspx?format=js&idx=0&n=1`,
  type: "get",
  cache: false,
  contentType: false,
  processData: false,
  success: function (data) {
    let fullImgUrl = `${prefix}${data["images"][0]["url"]}`;
    $("body").css({ background: `url("${fullImgUrl}") fixed` });
  },
  error: function (e) {
    console.error(e);
  },
});
