onload = () => {

  jQuery.ajaxPrefilter(function (options) {
    if (options.crossDomain && jQuery.support.cors) {
      options.url = /* "https://cors-anywhere.herokuapp.com/" + */ options.url;
    }
  });

  $.getJSON("http://liangchengj.utools.club/items", function (data) {
    console.dir(data);
    data = data["data"];
    for (let obj of data) {
      let imgIconUrl = obj["img_url"];
      let title = obj["title"];
      let url = obj["url"];
      $("#parent")
        .append(`<div id="baseContainer" onclick="location.href='${url}';">
    <img src="${imgIconUrl}" alt="${title}"/>
    <div id="childContainer">
      <span id="title">${title}</span>
      <span id="url">${url}</span>
    </div>
  </div>`);
    } // end function
  });
};
