import 'dart:io';

import 'lib/items.pb.dart';

Future main(List<String> args) async {
  final List<Item> itemList = List.empty(growable: true);
  itemList.add(Item(
      imgUrl: "/SwiftGG.svg",
      title: "SwiftGG",
      url:
          "https://doc.swiftgg.team/documentation/the-swift-programming-language"));
  itemList.add(Item(
      imgUrl: "/Flutter.svg",
      title: "Flutter",
      url: "https://flutter.cn/docs"));
  itemList.add(Item(
      imgUrl: "/Android.svg",
      title: "Android",
      url: "https://developer.android.google.cn/docs"));
  itemList.add(Item(
      imgUrl: "/Apache%20Groovy.svg",
      title: "Groovy",
      url: "https://docs.groovy-lang.org/latest/html/documentation"));
  itemList.add(Item(
      imgUrl: "/Scala.svg",
      title: "Scala",
      url: "https://docs.scala-lang.org/zh-cn/tour/tour-of-scala.html"));
  itemList.add(Item(
      imgUrl: "/MDN.svg",
      title: "MDN",
      url: "https://developer.mozilla.org/zh-CN/docs"));
  itemList.add(Item(
      imgUrl: "/Kotlin.svg",
      title: "Kotlin",
      url: "https://kotlinlang.org/docs"));
  itemList.add(Item(
      imgUrl: "/React.svg",
      title: "React Native",
      url: "https://reactnative.cn/docs/getting-started"));
  itemList.add(Item(
      imgUrl: "/Vue.svg",
      title: "VueJS",
      url: "https://cn.vuejs.org/guide/introduction"));
  itemList.add(Item(
      imgUrl: "/Python.svg",
      title: "Python",
      url: "https://docs.python.org/zh-cn"));
  itemList.add(Item(
      imgUrl: "/Dart.svg",
      title: "Dart",
      url: "https://dart.cn/guides/language/language-tour"));
  itemList.add(Item(
      imgUrl: "/Java.svg",
      title: "Java",
      url: "https://docs.oracle.com/en/java"));
  itemList.add(Item(
      imgUrl: "/Xamarin.svg",
      title: "Xamarin",
      url: "https://docs.microsoft.com/zh-cn/xamarin"));
  itemList.add(Item(
      imgUrl: "/Kubernetes.svg",
      title: "Kubernetes",
      url: "https://kubernetes.io/zh/docs"));
  itemList.add(Item(
      imgUrl: "/TypeScript.svg",
      title: "TypeScript",
      url: "https://www.typescriptlang.org/zh/docs"));
  itemList.add(Item(
      imgUrl: "/JenkinsCI.svg",
      title: "Jenkins",
      url: "https://www.jenkins.io/zh/doc"));
  itemList.add(Item(
      imgUrl: "/Unity.svg",
      title: "Unity",
      url: "https://docs.unity.cn/cn/2022.3/Manual/UnityManual.html"));
  itemList.add(Item(
      imgUrl: "/ThreeJS.svg",
      title: "ThreeJS",
      url:
          "https://threejs.org/docs/index.html#manual/zh/introduction/Creating-a-scene"));
  itemList.add(Item(
      imgUrl: "/Deno.svg",
      title: "Deno",
      url: "https://doc.deno.land/builtin/stable"));
  itemList.add(Item(
      imgUrl: "/NodeJS.svg",
      title: "NodeJS",
      url: "https://nodejs.org/zh-cn/docs"));
  itemList.add(Item(
      imgUrl: "/PyTorch.svg",
      title: "PyTorch",
      url: "https://pytorch.org/docs/stable"));
  itemList.add(Item(
      imgUrl: "/dotNET.svg",
      title: "dotNET",
      url: "https://docs.microsoft.com/zh-cn/dotnet"));
  itemList.add(Item(
      imgUrl: "/Docker.svg", title: "Docker", url: "https://docs.docker.com"));
  itemList.add(Item(
      imgUrl: "/TensorFlow.svg",
      title: "TensorFlow",
      url: "https://tensorflow.google.cn/learn?hl=zh-cn"));
  itemList.add(Item(
      imgUrl: "/Django.svg",
      title: "Django",
      url: "https://docs.djangoproject.com/zh-hans"));
  itemList.add(Item(
      imgUrl: "/OpenCV.svg", title: "OpenCV", url: "https://docs.opencv.org"));
  itemList.add(Item(
      imgUrl: "/Apache%20Hadoop.svg",
      title: "Hadoop",
      url: "https://hadoop.apache.org/docs/r1.0.4/cn"));
  itemList.add(Item(
      imgUrl: "/Flink.svg",
      title: "Flink",
      url: "https://ci.apache.org/projects/flink/flink-docs-stable/zh"));
  itemList.add(Item(
      imgUrl: "/Markdown.svg",
      title: "Markdown",
      url: "https://www.markdown.xyz"));
  itemList.add(Item(
      imgUrl: "/Linux.svg",
      title: "Linux",
      url: "https://www.kernel.org/doc/html/latest/translations/zh_CN"));
  itemList
      .add(Item(imgUrl: "/GoLang.svg", title: "Go", url: "https://go.dev/doc"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "Rust",
      url: "https://www.rust-lang.org/zh-CN/learn"));
  itemList.add(Item(
      imgUrl: "/Angular.svg",
      title: "Angular",
      url: "https://angular.cn/docs"));
  itemList.add(Item(
      imgUrl: "/Apache%20Dubbo.svg",
      title: "Dubbo",
      url: "https://dubbo.apache.org/zh/docs"));
  itemList.add(Item(
      imgUrl: "/Microsoft.svg",
      title: "Microsoft SQL",
      url: "https://docs.microsoft.com/zh-cn/sql"));
  itemList.add(Item(
      imgUrl: "/Webpack.svg",
      title: "webpack",
      url: "https://webpack.docschina.org/concepts"));
  itemList.add(Item(
      imgUrl: "/Let's%20Encrypt.svg",
      title: "Let's Encrypt",
      url: "https://letsencrypt.org/zh-cn/docs"));
  itemList.add(Item(
      imgUrl: "/Bootstrap.svg",
      title: "Bootstrap",
      url: "https://v5.bootcss.com/docs"));
  itemList.add(Item(
      imgUrl: "/PHP.svg", title: "PHP", url: "https://www.php.net/manual/zh"));
  itemList.add(Item(
      imgUrl: "/Ruby.svg",
      title: "Ruby",
      url: "https://www.ruby-lang.org/zh_cn/documentation"));
  itemList.add(Item(
      imgUrl: "/_Electron.svg",
      title: "Electron",
      url: "https://www.electronjs.org/docs"));
  itemList.add(Item(
      imgUrl: "/JavaScript.svg",
      title: "JavaScript",
      url: "https://developer.mozilla.org/zh-CN/docs/Web/JavaScript"));
  itemList.add(Item(
      imgUrl: "/GraphQL.svg",
      title: "GraphQL",
      url: "https://graphql.cn/learn"));
  itemList.add(Item(
      imgUrl: "/ZIG.svg",
      title: "ZIG",
      url: "https://ziglang.org/documentation/master"));
  itemList.add(Item(
      imgUrl: "/The%20C%20Programming%20Language.svg",
      title: "Visual C",
      url: "https://learn.microsoft.com/zh-cn/cpp/c-language/?view=msvc-170"));
  itemList.add(Item(
      imgUrl: "/C%2B%2B.svg",
      title: "Visual C++",
      url: "https://learn.microsoft.com/zh-cn/cpp/cpp/?view=msvc-170"));
  itemList
      .add(Item(imgUrl: "/TOML.svg", title: "TOML", url: "https://toml.io/cn"));
  itemList.add(Item(
      imgUrl: "/Swift.svg",
      title: "Swift",
      url:
          "https://docs.swift.org/swift-book/documentation/the-swift-programming-language"));
  itemList
      .add(Item(imgUrl: "/Bun.svg", title: "Bun", url: "https://bun.sh/docs"));
  itemList.add(Item(
      imgUrl: "/Apple.svg",
      title: "Apple Developer",
      url: "https://developer.apple.com/documentation"));
  itemList.add(Item(
      imgUrl: "/WebAssembly.svg",
      title: "WebAssembly",
      url: "https://developer.mozilla.org/zh-CN/docs/WebAssembly"));
  // itemList.add(Item(
  //     imgUrl: "/WebAssembly.svg",
  //     title: "WebAssembly",
  //     url: "https://developer.huawei.com/consumer/cn/doc"));
  itemList.add(Item(
      imgUrl: "/React.svg",
      title: "ReactJS",
      url: "https://zh-hans.react.dev/learn"));
  itemList.add(Item(
      imgUrl: "/Huawei.svg",
      title: "Huawei Developer",
      url: "https://developer.huawei.com/consumer/cn/doc"));
  itemList.add(Item(
      imgUrl: "/TAURI.svg",
      title: "TAURI",
      url: "https://tauri.app/zh-cn/start"));
  itemList.add(Item(
      imgUrl: "/Nginx.svg", title: "Nginx", url: "https://nginx.org/en/docs"));
  itemList.add(Item(
      imgUrl: "/git-scm.svg",
      title: "Git SCM",
      url: "https://git-scm.com/docs/git/zh_HANS-CN"));
  itemList.add(Item(
      imgUrl: "/GitHub.svg",
      title: "GitHub Actions",
      url: "https://docs.github.com/zh/actions"));
  itemList.add(Item(
      imgUrl: "/GitLab.svg",
      title: "GitLab CI",
      url: "https://docs.gitlab.com/operator/developer/ci.html"));
  itemList.add(Item(
      imgUrl: "/VS Code.svg",
      title: "Visual Studio Code",
      url: "https://code.visualstudio.com/docs"));
  itemList.add(Item(
      imgUrl: "/CMake.svg",
      title: "CMake",
      url: "https://cmake.org/cmake/help/latest"));
  itemList.add(Item(
      imgUrl: "/PowerShell.svg",
      title: "PowerShell",
      url: "https://learn.microsoft.com/zh-cn/powershell"));
  itemList.add(
      Item(imgUrl: "/GNU.svg", title: "GNU", url: "https://www.gnu.org/doc"));
  itemList.add(Item(
      imgUrl: "/MSYS2.svg",
      title: "MSYS2",
      url: "https://www.msys2.org/docs/what-is-msys2"));
  itemList.add(Item(imgUrl: "/JWT.svg", title: "JWT", url: "https://jwt.io"));
  itemList.add(Item(
      imgUrl: "/emscripten.svg",
      title: "emscripten",
      url: "https://emscripten.org/docs"));
  // itemList.add(Item(
  //     imgUrl: "/podman.svg",
  //     title: "podman",
  //     url: "https://docs.podman.io/en/latest"));
  itemList.add(
      Item(imgUrl: "/redis.svg", title: "Redis", url: "https://redis.io/docs"));
  itemList.add(
      Item(imgUrl: "/LLVM.svg", title: "LLVM", url: "https://llvm.org/docs"));
  itemList.add(Item(
      imgUrl: "/snowflake.svg",
      title: "snowflake",
      url: "https://docs.snowflake.com"));
  itemList.add(Item(
      imgUrl: "/ClickHouse.svg",
      title: "ClickHouse",
      url: "https://clickhouse.com/docs"));
  itemList.add(Item(
      imgUrl: "/NanoID.svg",
      title: "NanoID",
      url: "https://zelark.github.io/nano-id-cc"));
  itemList.add(Item(
      imgUrl: "/eBPF.svg",
      title: "eBPF",
      url: "https://ebpf.io/zh-hans/what-is-ebpf"));
  itemList.add(Item(
      imgUrl: "/SVGO.svg",
      title: "SVGO",
      url: "https://svgo.dev/docs/introduction"));
  itemList.add(Item(
      imgUrl: "/Mermaid.svg",
      title: "Mermaid",
      url: "https://mermaid.js.org/intro"));
  // itemList.add(
  //     Item(imgUrl: "/JSON5.svg", title: "JSON5", url: "https://json5.org"));
  itemList.add(Item(
      imgUrl: "/Datatracker.svg",
      title: "Datatracker",
      url: "https://datatracker.ietf.org/doc"));
  itemList.add(Item(
      imgUrl: "/Org_FreeSVG.svg",
      title: "SVG",
      url: "https://developer.mozilla.org/zh-CN/docs/Web/SVG"));
  itemList.add(Item(
      imgUrl: "/esbuild.svg",
      title: "esbuild",
      url: "https://esbuild.github.io/getting-started"));
  // itemList.add(Item(
  //     imgUrl: "/Linux.svg",
  //     title: "Linux Command",
  //     url: "https://wangchujiang.com/linux-command/hot.html"));
  itemList.add(Item(
      imgUrl: "/Raspberrypi.svg",
      title: "Raspberry Pi",
      url: "https://www.raspberrypi.com/documentation"));
  // itemList.add(Item(
  //     imgUrl: "/Pug%20Template%20Engine.svg",
  //     title: "PugJS",
  //     url: "https://pugjs.org"));
  itemList.add(Item(
      imgUrl: "/Pkl.svg",
      title: "Pkl",
      url: "https://pkl-lang.org/main/current/index.html"));
  itemList.add(Item(
      imgUrl: "/Dragonfly.svg",
      title: "Dragonfly",
      url: "https://www.dragonflydb.io/docs"));
  itemList.add(Item(
      imgUrl: "/Bevy.svg",
      title: "Bevy",
      url: "https://bevyengine.org/learn/quick-start/introduction"));
  itemList.add(Item(
      imgUrl: "/godot.svg",
      title: "godot",
      url: "https://godot-rust.github.io/docs"));
  itemList.add(Item(
      imgUrl: "/tokio.svg",
      title: "Tokio",
      url: "https://tokio.rs/tokio/tutorial"));
  itemList.add(Item(
      imgUrl: "/hyper.svg", title: "hyper", url: "https://hyper.rs/guides"));
  itemList.add(Item(
      imgUrl: "/Diesel.svg",
      title: "Diesel",
      url: "https://diesel.rs/guides/getting-started"));
  itemList.add(
      Item(imgUrl: "/IPFS.svg", title: "IPFS", url: "https://docs.ipfs.tech"));
  itemList.add(Item(
      imgUrl: "/PDFJS.svg",
      title: "PDFJS",
      url: "https://mozilla.github.io/pdf.js/getting_started"));
  itemList.add(Item(
      imgUrl: "/SQLite.svg",
      title: "SQLite",
      url: "https://www.sqlite.org/docs.html"));
  // itemList.add(Item(
  //     imgUrl: "/JetpackCompose.svg",
  //     title: "Jetpack Compose",
  //     url:
  //         "https://developer.android.google.cn/develop/ui/compose/documentation?hl=zh-cn"));
  itemList.add(Item(
      imgUrl: "/ComposeMultiplatform.svg",
      title: "Compose Multiplatform",
      url: "https://www.jetbrains.com/zh-cn/compose-multiplatform"));
  // itemList.add(Item(
  //     imgUrl: "/Pug%20Template%20Engine.svg",
  //     title: "radash",
  //     url: "https://radash-docs.vercel.app/docs/getting-started"));
  // itemList.add(Item(
  //     imgUrl: "/Apache%20Tomcat.svg",
  //     title: "Tomcat",
  //     url: "https://tomcat.apache.org/tomcat-11.0-doc"));
  // itemList.add(Item(
  //     imgUrl: "/Bash.svg",
  //     title: "Bash",
  //     url: "https://www.gnu.org/software/bash/manual/html_node/index.html"));
  // itemList.add(Item(
  //     imgUrl: "/MAUI.svg",
  //     title: "MAUI",
  //     url: "https://learn.microsoft.com/zh-cn/dotnet/maui"));
  // itemList
  //     .add(Item(imgUrl: "/Mojo.svg", title: "Mojo", url: "https://docs.modular.com/mojo"));
  final items = Items(itemList: itemList);
  final itemsPB = File('../../items.pb');
  await itemsPB.writeAsBytes(items.writeToBuffer(), flush: true);
  final itemsJSON = File('../../items.json');
  await itemsJSON.writeAsString(items.writeToJson(), flush: true);
}
