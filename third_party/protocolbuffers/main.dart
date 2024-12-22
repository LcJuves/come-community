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
      title: "MDN Web",
      url: "https://developer.mozilla.org/zh-CN/docs"));
  itemList.add(Item(
      imgUrl: "/Kotlin.svg",
      title: "Kotlin",
      url: "https://kotlinlang.org/docs"));
  itemList.add(Item(
      imgUrl: "/React.svg",
      title: "React Native",
      url: "https://reactnative.dev/docs/getting-started"));
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
          "https://threejs.org/docs/index.html#manual/zh/introduction/Installation"));
  itemList.add(Item(
      imgUrl: "/Deno.svg",
      title: "Deno",
      url: "https://docs.deno.com/runtime"));
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
      url: "https://cn.dubbo.apache.org/zh-cn/overview/home"));
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
      url: "https://www.electronjs.org/zh/docs/latest"));
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
  itemList.add(Item(
      imgUrl: "/React.svg",
      title: "ReactJS",
      url: "https://zh-hans.react.dev/learn"));
  itemList.add(Item(
      imgUrl: "/Huawei.svg",
      title: "Huawei HarmonyOS",
      url: "https://developer.huawei.com/consumer/cn/doc"));
  itemList.add(Item(
      imgUrl: "/Huawei.svg",
      title: "Cangjie",
      url:
          "https://developer.huawei.com/consumer/cn/doc/cangjie-guides-V5/cj-wp-abstract-V5"));
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
  // itemList.add(Item(
  //     imgUrl: "/emscripten.svg",
  //     title: "emscripten",
  //     url: "https://emscripten.org/docs"));
  itemList.add(Item(
      imgUrl: "/podman.svg",
      title: "podman",
      url: "https://docs.podman.io/en/latest"));
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
  itemList.add(Item(
      imgUrl: "/Pug%20Template%20Engine.svg",
      title: "PugJS",
      url: "https://pugjs.org"));
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
      url: "https://bevyengine.org/learn/quick-start/getting-started"));
  itemList.add(Item(
      imgUrl: "/godot.svg",
      title: "godot-rust",
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
  itemList.add(Item(
      imgUrl: "/JetpackCompose.svg",
      title: "Jetpack Compose",
      url:
          "https://developer.android.google.cn/develop/ui/compose/documentation?hl=zh-cn"));
  itemList.add(Item(
      imgUrl: "/ComposeMultiplatform.svg",
      title: "Compose Multiplatform",
      url: "https://www.jetbrains.com/zh-cn/compose-multiplatform"));
  itemList.add(Item(
      imgUrl: "/WebdriverIO.svg",
      title: "WebdriverIO",
      url: "https://webdriver.io/docs/gettingstarted"));
  itemList.add(Item(
      imgUrl: "/Rspack.svg",
      title: "Rspack",
      url: "https://rspack.dev/zh/guide/start/quick-start"));
  itemList.add(Item(
      imgUrl: "/CSS.svg",
      title: "CSS",
      url: "https://developer.mozilla.org/zh-CN/docs/Web/CSS"));
  itemList.add(Item(
      imgUrl: "/Vite.svg", title: "Vite", url: "https://cn.vite.dev/guide"));
  itemList.add(Item(
      imgUrl: "/Rollup.svg",
      title: "Rollup",
      url: "https://cn.rollupjs.org/introduction"));
  itemList.add(Item(
      imgUrl: "/ESLint.svg",
      title: "ESLint",
      url: "https://zh-hans.eslint.org/docs/latest"));
  itemList.add(Item(
      imgUrl: "/Playwright.svg",
      title: "Playwright",
      url: "https://playwright.dev/docs/intro"));
  itemList.add(Item(
      imgUrl: "/Hexo.svg", title: "Hexo", url: "https://hexo.io/zh-cn/docs"));
  itemList.add(Item(
      imgUrl: "/GruntJS.svg",
      title: "GruntJS",
      url: "https://gruntjs.com/documentation"));
  itemList.add(Item(
      imgUrl: "/Spring.svg",
      title: "Spring",
      url: "https://spring.io/quickstart"));
  itemList.add(Item(
      imgUrl: "/Puppeteer.svg",
      title: "Puppeteer",
      url: "https://pptr.dev/guides/getting-started"));
  itemList.add(Item(
      imgUrl: "/Wintun.svg",
      title: "Wintun",
      url: "https://git.zx2c4.com/wintun/about"));
  itemList.add(Item(
      imgUrl: "/Browserless.svg",
      title: "Browserless",
      url: "https://docs.browserless.io"));
  itemList.add(Item(
      imgUrl: "/AppImage.svg",
      title: "AppImage",
      url:
          "https://docs.appimage.org/introduction/quickstart.html#ref-quickstart"));
  itemList.add(Item(
      imgUrl: "/Laravel.svg",
      title: "Laravel",
      url: "https://laravel.com/docs"));
  itemList.add(Item(
      imgUrl: "/Lodash.svg", title: "Lodash", url: "https://lodash.com/docs"));
  itemList.add(Item(
      imgUrl: "/Subversion.svg",
      title: "Subversion",
      url: "https://subversion.apache.org/docs"));
  itemList.add(Item(
      imgUrl: "/OpenVela.svg",
      title: "Xiaomi OpenVela",
      url: "https://github.com/open-vela/docs/blob/dev/README_zh-cn.md"));
  itemList.add(Item(
      imgUrl: "/NuttX.svg",
      title: "NuttX",
      url: "https://nuttx.apache.org/docs/latest"));
  itemList.add(Item(
      imgUrl: "/Azure.svg",
      title: "Azure Quantum",
      url: "https://learn.microsoft.com/zh-cn/azure/quantum"));
  itemList.add(Item(
      imgUrl: "/Homebrew.svg", title: "Homebrew", url: "https://docs.brew.sh"));
  itemList.add(Item(
      imgUrl: "/HTML5.svg",
      title: "HTML",
      url: "https://developer.mozilla.org/zh-CN/docs/Web/HTML"));
  itemList.add(
      Item(imgUrl: "/_cURL.svg", title: "cURL", url: "https://curl.se/docs"));
  itemList.add(Item(
      imgUrl: "/Ruby%20on%20Ralis.svg",
      title: "Ruby on Rails",
      url: "https://guides.rubyonrails.org/getting_started.html"));
  itemList.add(Item(
      imgUrl: "/GODOT_Engine.svg",
      title: "Godot Engine",
      url: "https://docs.godotengine.org/zh-cn"));
  itemList.add(Item(
      imgUrl: "/Apache%20Kafka.svg",
      title: "Kafka",
      url: "https://kafka.apache.org/documentation"));
  itemList.add(Item(
      imgUrl: "/gulpjs.svg",
      title: "GulpJS",
      url: "https://gulpjs.com/docs/en/getting-started/quick-start"));
  itemList.add(Item(
      imgUrl: "/Anaconda.svg",
      title: "Anaconda",
      url: "https://docs.anaconda.com/anaconda/getting-started"));
  itemList.add(Item(
      imgUrl: "/InLong.svg",
      title: "InLong",
      url: "https://inlong.apache.org/zh-CN/docs/introduction"));
  itemList.add(Item(
      imgUrl: "/Appium.svg",
      title: "Appium",
      url: "https://appium.io/docs/zh/latest/quickstart"));
  itemList.add(Item(
      imgUrl: "/RabbitMQ.svg",
      title: "RabbitMQ",
      url: "https://www.rabbitmq.com/docs"));
  itemList.add(Item(
      imgUrl: "/Jupyter.svg",
      title: "Jupyter",
      url: "https://docs.jupyter.org/en/latest"));
  itemList.add(Item(
      imgUrl: "/Blender.svg",
      title: "Blender",
      url: "https://docs.blender.org/manual/zh-hans"));
  itemList.add(Item(
      imgUrl: "/SpiderMonkey.svg",
      title: "SpiderMonkey",
      url: "https://firefox-source-docs.mozilla.org/js"));
  itemList.add(Item(
      imgUrl: "/WASIX.svg", title: "WASIX", url: "https://wasix.org/docs"));
  itemList.add(Item(
      imgUrl: "/MoonBit.svg",
      title: "MoonBit",
      url: "https://docs.moonbitlang.com/zh-cn/latest"));
  itemList.add(Item(
      imgUrl: "/Clojure.svg",
      title: "Clojure",
      url: "https://clojure.org/guides/getting_started"));
  itemList.add(Item(
      imgUrl: "/Crystal.svg",
      title: "Crystal",
      url: "https://crystal-lang.org/reference/1.14/getting_started"));
  // itemList.add(Item(
  //     imgUrl: "/ECharts.svg",
  //     title: "ECharts",
  //     url: "https://echarts.apache.org/handbook/zh/get-started"));
  itemList.add(Item(
      imgUrl: "/BabylonJS.svg",
      title: "BabylonJS",
      url: "https://doc.babylonjs.com"));
  // itemList.add(Item(
  //     imgUrl: "/Alibaba.svg",
  //     title: "Nacos",
  //     url: "https://nacos.io/docs/latest/overview"));
  // itemList.add(Item(
  //     imgUrl: "/FreeBSD.svg",
  //     title: "FreeBSD",
  //     url: "https://docs.freebsd.org/zh-cn/books/handbook/basics"));
  // itemList.add(
  //     Item(imgUrl: "/GTK.svg", title: "GTK", url: "https://www.gtk.org/docs"));
  // itemList.add(
  //     Item(imgUrl: "/gRPC.svg", title: "gRPC", url: "https://grpc.io/docs"));
  // itemList.add(Item(
  //     imgUrl: "/Pug%20Template%20Engine.svg",
  //     title: "radash",
  //     url: "https://radash-docs.vercel.app/docs/getting-started"));
  // itemList.add(Item(
  //     imgUrl: "/Apache%20Tomcat.svg",
  //     title: "Tomcat",
  //     url: "https://tomcat.apache.org/tomcat-11.0-doc"));
  itemList.add(Item(
      imgUrl: "/Bash.svg",
      title: "Bash",
      url: "https://www.gnu.org/software/bash/manual/html_node/index.html"));
  itemList.add(Item(
      imgUrl: "/GraalVM.svg",
      title: "GraalVM",
      url: "https://www.graalvm.org/latest/getting-started"));
  itemList.add(Item(
      imgUrl: "/Cygwin.svg",
      title: "Cygwin",
      url: "https://cygwin.com/docs.html"));
  itemList.add(Item(
      imgUrl: "/robot.svg",
      title: "Robot Framework",
      url: "https://docs.robotframework.org/docs"));
  itemList.add(Item(
      imgUrl: "/Apache%20Hive.svg",
      title: "Hive",
      url: "https://hive.apache.org/docs/latest"));
  itemList.add(Item(
      imgUrl: "/Apache%20Cordova.svg",
      title: "Cordova",
      url: "https://cordova.apache.org/docs/en/latest"));
  itemList.add(Item(
      imgUrl: "/GNU.svg",
      title: "GNU Coreutils",
      url:
          "https://www.gnu.org/software/coreutils/manual/html_node/index.html"));
  // itemList
  //     .add(Item(imgUrl: "/V8.svg", title: "V8", url: "https://v8.dev/docs"));
  itemList.add(Item(
      imgUrl: "/WebGPU.svg",
      title: "WebGPU",
      url: "https://developer.mozilla.org/zh-CN/docs/Web/API/WebGPU_API"));
  itemList.add(Item(
      imgUrl: "/GTK.svg",
      title: "GTK",
      url: "https://www.gtk.org/docs/getting-started"));
  itemList.add(Item(
      imgUrl: "/PostgreSQL.svg",
      title: "PostgreSQL",
      url: "http://www.postgres.cn/docs/current/index.html"));
  itemList.add(
      Item(imgUrl: "/Vala.svg", title: "Vala", url: "https://docs.vala.dev"));
  itemList.add(
      Item(imgUrl: "/Servo.svg", title: "Servo", url: "https://doc.servo.org"));
  itemList.add(Item(
      imgUrl: "/OpenHarmony.svg",
      title: "OpenHarmony",
      url: "https://docs.openharmony.cn"));
  itemList.add(Item(
      imgUrl: "/_Xiaomi.svg",
      title: "Home Integration",
      url:
          "https://github.com/XiaoMi/ha_xiaomi_home/blob/main/doc/README_zh.md"));
  itemList.add(Item(
      imgUrl: "/MQTT.svg",
      title: "MQTT",
      url: "https://mqtt.org/getting-started"));
  itemList.add(Item(
      imgUrl: "/JSON.svg",
      title: "JSON",
      url: "https://www.json.org/json-zh.html"));
  itemList.add(Item(
      imgUrl: "/microbit.svg",
      title: "micro:bit",
      url: "https://microbit.org/get-started/getting-started/introduction"));
  itemList.add(Item(
      imgUrl: "/HomeAssistant.svg",
      title: "Home Assistant",
      url: "https://www.home-assistant.io/docs"));
  itemList.add(Item(
      imgUrl: "/D3JS.svg",
      title: "D3JS",
      url: "https://d3js.org/getting-started"));
  itemList.add(Item(
      imgUrl: "/RockyLinux.svg",
      title: "Rocky Linux",
      url: "https://docs.rockylinux.org/zh"));
  itemList.add(Item(
      imgUrl: "/Fedora.svg",
      title: "Fedora Workstation",
      url: "https://docs.fedoraproject.org/zh_Hans/workstation-docs"));
  itemList.add(Item(
      imgUrl: "/Asahi%20Linux.svg",
      title: "Asahi Linux",
      url: "https://github.com/asahilinux/docs/wiki"));
  itemList.add(Item(
      imgUrl: "/Deepin.svg", title: "Deepin", url: "https://docs.deepin.org"));
  itemList.add(Item(
      imgUrl: "/QEMU.svg",
      title: "QEMU",
      url: "https://www.qemu.org/docs/master"));
  itemList.add(Item(
      imgUrl: "/KasmWorkspaces.svg",
      title: "Kasm Workspaces",
      url: "https://kasmweb.com/docs/latest/index.html"));
  itemList.add(Item(
      imgUrl: "/WireGuard.svg",
      title: "WireGuard",
      url: "https://www.wireguard.com/quickstart"));
  itemList.add(Item(
      imgUrl: "/OpenWrt.svg",
      title: "OpenWrt",
      url: "https://openwrt.org/zh/docs/guide-quick-start/start"));
  itemList
      .add(Item(imgUrl: "/YAML.svg", title: "YAML", url: "https://yaml.org"));
  itemList.add(Item(
      imgUrl: "/XML.svg",
      title: "XML",
      url: "https://developer.mozilla.org/zh-CN/docs/Web/XML"));
  itemList.add(Item(
      imgUrl: "/Nim.svg",
      title: "Nim",
      url: "https://nim-lang.org/documentation.html"));
  itemList.add(Item(
      imgUrl: "/Haskell.svg",
      title: "Haskell",
      url: "https://www.haskell.org/documentation"));
  itemList.add(Item(
      imgUrl: "/Bitcoin.svg",
      title: "Bitcoin",
      url: "https://developer.bitcoin.org/devguide/index.html"));
  itemList.add(Item(
      imgUrl: "/WinterCG.svg",
      title: "WinterCG",
      url: "https://wintercg.org/work"));
  itemList.add(Item(
      imgUrl: "/gitee.svg",
      title: "Gitee Go",
      url: "https://gitee.com/help/categories/69"));
  itemList.add(Item(
      imgUrl: "/Flameshot.svg",
      title: "Flameshot",
      url: "https://flameshot.org/docs"));
  itemList.add(Item(
      imgUrl: "/Gradle.svg",
      title: "Gradle",
      url: "https://docs.gradle.org/current/userguide/quick_start.html"));
  itemList.add(Item(
      imgUrl: "/Ethereum.svg",
      title: "Ethereum",
      url: "https://ethereum.org/zh/developers/docs"));
  // itemList.add(Item(
  //     imgUrl: "/CloudBeaver.svg",
  //     title: "CloudBeaver",
  //     url: "https://dbeaver.com/docs/cloudbeaver/24.3"));
  // itemList.add(Item(
  //     imgUrl: "/ProGuard.svg",
  //     title: "ProGuard",
  //     url: "https://www.guardsquare.com/manual/quickstart"));
  // itemList.add(Item(
  //     imgUrl: "/MAUI.svg",
  //     title: "MAUI",
  //     url: "https://learn.microsoft.com/zh-cn/dotnet/maui"));
  itemList.add(Item(
      imgUrl: "/Mojo.svg",
      title: "Mojo",
      url: "https://docs.modular.com/mojo"));
  itemList.add(Item(
      imgUrl: "/Debian.svg",
      title: "Debian",
      url: "https://www.debian.org/doc/manuals/debian-reference"));
  final items = Items(itemList: itemList);
  final itemsPB = File('../../items.pb');
  await itemsPB.writeAsBytes(items.writeToBuffer(), flush: true);
  final itemsJSON = File('../../items.json');
  await itemsJSON.writeAsString(items.writeToJson(), flush: true);
}
