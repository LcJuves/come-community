const http = require("http");

const options = {
  method: "POST",
  hostname: "101.200.121.37",
  port: 8080,
  path: "/items",
  headers: {
    "user-agent": "vscode-restclient",
    "content-type": "application/json",
    token: "eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiI0ZDZhMjdjNi0xNjRmLTQ0M2ItYTExMC1jYzhjMTlmOGJmMTciLCJzdWIiOiJhZG1pbiIsImlzcyI6InN5c3RlbSIsImlhdCI6MTYwNjIwNDE5NiwiZXhwIjoxNjA2MjA3Nzk2fQ.qD_Yd7pHF-fS-VS08wh2TQIKbkA2CZp9HCEluJxcSSw",
  },
};

let data = [
  {
    imgIconUrl: "img/studio-icon.svg",
    title: "Android",
    url: "https://developer.android.google.cn/guide",
  },
  {
    imgIconUrl: "img/android.svg",
    title: "Android SDK",
    url: "https://docs.liangchengj.com/android",
  },
  {
    imgIconUrl: "img/dart.svg",
    title: "Dart",
    url: "https://dart.cn/guides/language/language-tour",
  },
  {
    imgIconUrl: "https://flutter.cn/images/favicon.png",
    title: "Flutter",
    url: "https://flutter.cn/docs/get-started/install",
  },
  {
    imgIconUrl:
      "https://www.kotlincn.net/assets/images/apple-touch-icon-72x72.png",
    title: "Kotlin",
    url: "https://www.kotlincn.net/docs/reference",
  },
  {
    imgIconUrl:
      "img/swiftgg.png",
    title: "SwiftGG",
    url: "https://swiftgg.gitbook.io/swift",
  },
  {
    imgIconUrl: "img/openjdk.png",
    title: "Java 8",
    url: "http://docs.liangchengj.com/jdk8",
  },
  {
    imgIconUrl: "img/scala-spiral.png",
    title: "Scala",
    url: "https://docs.scala-lang.org/zh-cn/tour/tour-of-scala.html",
  },
  {
    imgIconUrl: "img/groovy-logo.svg",
    title: "Groovy",
    url: "https://docs.groovy-lang.org/latest/html/documentation",
  },
  {
    imgIconUrl: "img/javascript.svg",
    title: "JavaScript",
    url: "https://developer.mozilla.org/zh-CN/docs/Web/JavaScript",
  },

  {
    imgIconUrl: "img/React.svg",
    title: "React Native",
    url: "https://reactnative.cn/docs/getting-started",
  },
  {
    imgIconUrl: "https://cn.vuejs.org/images/logo.png",
    title: "Vue",
    url: "https://cn.vuejs.org/v2/guide",
  },
  {
    imgIconUrl: "img/python.svg",
    title: "Python",
    url: "https://docs.python.org/zh-cn/3/reference",
  },
];

for (let item of data) {
  const req = http.request(options, function (res) {
    const chunks = [];

    res.on("data", function (chunk) {
      chunks.push(chunk);
    });

    res.on("end", function () {
      const body = Buffer.concat(chunks);
      console.log(body.toString());
    });
  });

  req.write(
    JSON.stringify({
      img_url: `${item["imgIconUrl"]}`,
      title: `${item["title"]}`,
      url: `${item["url"]}`,
    })
  );
  req.end();
}
