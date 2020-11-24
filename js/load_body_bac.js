(function () {
  var cors_api_host = "cors-anywhere.herokuapp.com";
  var cors_api_url = "https://" + cors_api_host + "/";
  var slice = [].slice;
  var origin = window.location.protocol + "//" + window.location.host;
  var open = XMLHttpRequest.prototype.open;
  XMLHttpRequest.prototype.open = function () {
    var args = slice.call(arguments);
    var targetOrigin = /^https?:\/\/([^\/]+)/i.exec(args[1]);
    if (
      targetOrigin &&
      targetOrigin[0].toLowerCase() !== origin &&
      targetOrigin[1] !== cors_api_host
    ) {
      args[1] = cors_api_url + args[1];
    }
    return open.apply(this, args);
  };
})();

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
