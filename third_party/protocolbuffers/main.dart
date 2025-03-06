import 'dart:io';

import 'lib/items.pb.dart';

Future main(List<String> args) async {
  final List<Item> itemList = List.empty(growable: true);
  itemList.add(Item(
      imgUrl: "/SwiftGG.svg",
      title: "SwiftGG",
      cnurl:
          "https://doc.swiftgg.team/documentation/the-swift-programming-language-----/thebasics"));
  itemList.add(Item(
      imgUrl: "/Flutter.svg",
      title: "Flutter",
      // encnurl: "https://docs.flutter.dev/get-started/install/macos/mobile-android"
      cnurl: "https://docs.flutter.cn/get-started/install/windows/mobile"));
  itemList.add(Item(
      imgUrl: "/Gitpod.svg",
      title: "Gitpod",
      cnurl:
          "https://www.gitpod.io/docs/introduction/getting-started#a-gitpodyml-example"));
  itemList.add(Item(
      imgUrl: "/Android.svg",
      title: "Android",
      cnurl: "https://developer.android.google.cn/develop?hl=zh-cn"));
  itemList.add(Item(
      imgUrl: "/Android.svg",
      title: "Android NDK",
      cnurl: "https://developer.android.com/ndk/guides?hl=zh-cn"));
  itemList.add(Item(
      imgUrl: "/Android.svg",
      title: "SDK CmdLine Tools",
      cnurl: "https://developer.android.com/tools?hl=zh-cn"));
  itemList.add(Item(
      imgUrl: "/Android.svg",
      title: "Android Decompile",
      cnurl: "https://github.lcjuves.com/java/android/decompile"));
  itemList.add(Item(
      imgUrl: "/Android.svg",
      title: "AOSP",
      cnurl: "https://source.android.com/docs/setup/start?hl=zh-cn"));
  itemList.add(Item(
      imgUrl: "/Fuchsia.svg",
      title: "Fuchsia",
      cnurl: "https://fuchsia.dev/fuchsia-src/get-started?hl=zh-cn"));
  itemList.add(Item(
      imgUrl: "/Jetty.svg",
      title: "Jetty",
      cnurl: "https://jetty.org/docs/jetty/12/programming-guide"));
  itemList.add(Item(
      imgUrl: "/MAX.svg",
      title: "MAX",
      cnurl: "https://docs.modular.com/stable/max/get-started"));
  itemList.add(Item(
      imgUrl: "/Magic.svg",
      title: "Magic",
      cnurl: "https://docs.modular.com/stable/magic"));
  itemList.add(Item(
      imgUrl: "/C3.svg",
      title: "C3",
      cnurl: "https://c3-lang.org/getting-started"));
  itemList.add(Item(
      imgUrl: "/SageMath.svg",
      title: "SageMath",
      cnurl: "https://www.sagemath.org/tour-quickstart.html"));
  itemList.add(Item(
      imgUrl: "/Sage.svg",
      title: "Sage",
      cnurl:
          "https://github.com/sagemath/sage?tab=readme-ov-file#getting-started"));
  itemList.add(Item(
      imgUrl: "/Square.svg",
      title: "Okio",
      cnurl: "https://square.github.io/okio"));
  itemList.add(Item(
      imgUrl: "/LeakCanary.svg",
      title: "LeakCanary",
      cnurl: "https://square.github.io/leakcanary/getting_started"));
  itemList.add(Item(
      imgUrl: "/Android.svg",
      title: "Android XR",
      cnurl:
          "https://developer.android.google.cn/develop/xr/get-started?hl=zh-cn"));
  itemList.add(Item(
      imgUrl: "/Apache%20Groovy.svg",
      title: "Groovy",
      cnurl: "https://docs.groovy-lang.org/latest/html/documentation"));
  itemList.add(Item(
      imgUrl: "/Scala.svg",
      title: "Scala",
      cnurl:
          "https://docs.scala-lang.org/getting-started/sbt-track/getting-started-with-scala-and-sbt-on-the-command-line.html"));
  itemList.add(Item(
      imgUrl: "/MDN.svg",
      title: "MDN Web",
      cnurl: "https://developer.mozilla.org/zh-CN/docs"));
  itemList.add(Item(
      imgUrl: "/Kotlin.svg",
      title: "Kotlin",
      cnurl: "https://kotlinlang.org/docs/getting-started.html"));
  itemList.add(Item(
      imgUrl: "/kRPC.svg",
      title: "kRPC",
      cnurl: "https://kotlin.github.io/kotlinx-rpc/get-started.html"));
  itemList.add(Item(
      imgUrl: "/KotlinMultiplatform.svg",
      title: "Kotlin Multiplatform",
      cnurl:
          "https://www.jetbrains.com/help/kotlin-multiplatform-dev/get-started.html"));
  itemList.add(Item(
      imgUrl: "/ReactNative.svg",
      title: "React Native",
      cnurl: "https://reactnative.dev/docs/environment-setup"));
  itemList.add(Item(
      imgUrl: "/Expo.svg",
      title: "Expo",
      cnurl: "https://docs.expo.dev/get-started/create-a-project"));
  itemList.add(Item(
      imgUrl: "/Vue.svg",
      title: "VueJS",
      cnurl: "https://cn.vuejs.org/guide/quick-start.html"));
  itemList.add(Item(
      imgUrl: "/Python.svg",
      title: "Python",
      cnurl: "https://docs.python.org/zh-cn/3/tutorial/index.html"));
  itemList.add(Item(
      imgUrl: "/Ray.svg",
      title: "Ray Core",
      cnurl:
          "https://docs.ray.io/en/latest/ray-core/walkthrough.html#getting-started"));
  itemList.add(Item(
      imgUrl: "/Dart.svg", title: "Dart", cnurl: "https://dart.cn/language"));
  itemList.add(Item(
      imgUrl: "/Dart.svg",
      title: "Dart DevTools",
      cnurl: "https://dart.dev/tools/dart-devtools"));
  itemList.add(Item(
      imgUrl: "/Java.svg",
      title: "Java",
      cnurl: "https://dev.java/learn/getting-started"));
  itemList.add(Item(
      imgUrl: "/Xamarin.svg",
      title: "Xamarin",
      cnurl:
          "https://learn.microsoft.com/zh-cn/previous-versions/xamarin/get-started/quickstarts/app"));
  itemList.add(Item(
      imgUrl: "/Kubernetes.svg",
      title: "Kubernetes",
      cnurl: "https://kubernetes.io/zh-cn/docs/setup"));
  itemList.add(Item(
      imgUrl: "/TypeScript.svg",
      title: "TypeScript",
      cnurl:
          "https://www.typescriptlang.org/zh/docs/handbook/typescript-from-scratch.html"));
  itemList.add(Item(
      imgUrl: "/TypeScript.svg",
      title: "JSDoc",
      cnurl:
          "https://www.typescriptlang.org/docs/handbook/jsdoc-supported-types.html"));
  itemList.add(Item(
      imgUrl: "/JenkinsCI.svg",
      title: "Jenkins",
      cnurl: "https://www.jenkins.io/zh/doc/pipeline/tour/getting-started"));
  itemList.add(Item(
      imgUrl: "/_Unity.svg",
      title: "Unity",
      cnurl: "https://docs.unity.cn/cn/2022.3/Manual/UnityManual.html"));
  itemList.add(Item(
      imgUrl: "/China%20Mobile.svg",
      title: "Mobile Open Platform",
      cnurl: "https://dev.10086.cn/docHome"));
  itemList.add(Item(
      imgUrl: "/ThreeJS.svg",
      title: "ThreeJS",
      cnurl:
          "https://threejs.org/docs/index.html#manual/zh/introduction/Installation"));
  itemList.add(Item(
      imgUrl: "/Deno.svg",
      title: "Deno",
      cnurl: "https://docs.deno.com/runtime"));
  itemList.add(Item(
      imgUrl: "/NodeJS.svg",
      title: "NodeJS",
      cnurl:
          "https://nodejs.org/zh-cn/learn/getting-started/introduction-to-nodejs"));
  itemList.add(Item(
      imgUrl: "/PyTorch.svg",
      title: "PyTorch",
      cnurl: "https://pytorch.org/get-started/locally"));
  itemList.add(Item(
      imgUrl: "/dotNET.svg",
      title: "dotNET",
      cnurl: "https://docs.microsoft.com/zh-cn/dotnet"));
  itemList.add(Item(
      imgUrl: "/dotNET.svg",
      title: "dotNET MAUI",
      cnurl: "https://learn.microsoft.com/zh-cn/dotnet/maui"));
  itemList.add(Item(
      imgUrl: "/Docker.svg",
      title: "Docker",
      cnurl: "https://docs.docker.com"));
  itemList.add(Item(
      imgUrl: "/TensorFlow.svg",
      title: "TensorFlow",
      cnurl: "https://tensorflow.google.cn/learn?hl=zh-cn"));
  itemList.add(Item(
      imgUrl: "/Django.svg",
      title: "Django",
      cnurl: "https://docs.djangoproject.com/zh-hans/5.1/intro/overview"));
  itemList.add(Item(
      imgUrl: "/OpenCV.svg",
      title: "OpenCV",
      cnurl: "https://opencv.org/get-started"));
  itemList.add(Item(
      imgUrl: "/Apache%20Hadoop.svg",
      title: "Hadoop",
      cnurl: "https://hadoop.apache.org/docs/r1.0.4/cn/quickstart.html"));
  itemList.add(Item(
      imgUrl: "/Flink.svg",
      title: "Flink",
      cnurl: "https://ci.apache.org/projects/flink/flink-docs-stable/zh"));
  itemList.add(Item(
      imgUrl: "/_Markdown.svg",
      title: "Markdown",
      cnurl: "https://www.markdown.xyz/getting-started"));
  itemList.add(Item(
      imgUrl: "/Linux.svg",
      title: "Linux",
      cnurl: "https://www.kernel.org/doc/html/latest/translations/zh_CN"));
  itemList.add(Item(
      imgUrl: "/LinuxBoot.svg",
      title: "LinuxBoot",
      cnurl: "https://www.linuxboot.org"));
  itemList.add(Item(
      imgUrl: "/Linux%20Foundation.svg",
      title: "LF Projects",
      cnurl: "https://www.linuxfoundation.org/projects"));
  itemList.add(Item(
      imgUrl: "/GoLang.svg",
      title: "Go",
      cnurl: "https://go.dev/doc/tutorial/getting-started"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "Rust",
      cnurl: "https://www.rust-lang.org/learn/get-started"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "Rust MIR",
      cnurl: "https://rustc-dev-guide.rust-lang.org/mir"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "Rust HIR",
      cnurl: "https://rustc-dev-guide.rust-lang.org/hir.html"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "Crubit",
      cnurl:
          "https://github.com/google/crubit?tab=readme-ov-file#getting-started"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "The Rust Core Library",
      cnurl:
          "https://doc.rust-lang.org/core/index.html#the-rust-core-library"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "rustc",
      cnurl: "https://doc.rust-lang.org/rustc/index.html"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "Rust error codes",
      cnurl: "https://doc.rust-lang.org/error_codes/error-index.html"));
  itemList.add(Item(
      imgUrl: "/uv.svg",
      title: "uv",
      cnurl: "https://docs.astral.sh/uv/getting-started/installation"));
  itemList.add(Item(
      imgUrl: "/iced.svg",
      title: "iced",
      cnurl: "https://book.iced.rs/first-steps.html"));
  itemList.add(Item(
      imgUrl: "/gVisor.svg",
      title: "gVisor",
      cnurl: "https://gvisor.dev/docs/user_guide/install"));
  itemList.add(Item(
      imgUrl: "/Chromium.svg",
      title: "Chromium",
      cnurl:
          "https://chromium.googlesource.com/chromium/src/+/refs/heads/main/docs/README.md"));
  itemList.add(Item(
      imgUrl: "/Windows.svg",
      title: "Rust for Windows",
      cnurl: "https://microsoft.github.io/windows-docs-rs/doc/windows"));
  itemList.add(Item(
      imgUrl: "/Rust-for-Linux.svg",
      title: "Rust for Linux",
      cnurl:
          "https://docs.kernel.org/translations/zh_CN/rust/quick-start.html"));
  itemList.add(Item(
      imgUrl: "/Windows_Terminal.svg",
      title: "Windows Terminal",
      cnurl: "https://learn.microsoft.com/zh-cn/windows/terminal"));
  itemList.add(Item(
      imgUrl: "/Angular.svg",
      title: "Angular",
      cnurl:
          "https://angular.cn/tutorials/learn-angular/1-components-in-angular"));
  itemList.add(Item(
      imgUrl: "/OctoTools.svg",
      title: "OctoTools",
      cnurl:
          "https://github.com/octotools/octotools?tab=readme-ov-file#installation"));
  itemList.add(Item(
      imgUrl: "/Apache%20Dubbo.svg",
      title: "Dubbo",
      cnurl: "https://cn.dubbo.apache.org/zh-cn/overview/home"));
  itemList.add(Item(
      imgUrl: "/Microsoft.svg",
      title: "Microsoft SQL",
      cnurl: "https://docs.microsoft.com/zh-cn/sql"));
  itemList.add(Item(
      imgUrl: "/Webpack.svg",
      title: "webpack",
      cnurl: "https://webpack.docschina.org/guides/getting-started"));
  itemList.add(Item(
      imgUrl: "/Bonjour.svg",
      title: "Bonjour",
      cnurl:
          "https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/NetServices/Introduction.html"));
  itemList.add(Item(
      imgUrl: "/Let's%20Encrypt.svg",
      title: "Let's Encrypt",
      cnurl: "https://letsencrypt.org/zh-cn/getting-started"));
  itemList.add(Item(
      imgUrl: "/Certbot.svg",
      title: "Certbot Commands",
      cnurl:
          "https://eff-certbot.readthedocs.io/en/stable/using.html#certbot-commands"));
  itemList.add(Item(
      imgUrl: "/Bootstrap.svg",
      title: "Bootstrap",
      cnurl:
          "https://getbootstrap.com/docs/5.3/getting-started/introduction/#quick-start"));
  itemList.add(Item(
      imgUrl: "/Microsoft.svg",
      title: "OmniParser",
      cnurl:
          "https://github.com/microsoft/OmniParser?tab=readme-ov-file#install"));
  itemList.add(Item(
      imgUrl: "/Colossal-AI.svg",
      title: "Colossal-AI",
      cnurl: "https://colossalai.org/zh-Hans/docs/get_started/installation"));
  // itemList.add(Item(
  //     imgUrl: "/LLMCompressor.svg",
  //     title: "LLM Compressor",
  //     cnurl: "https://github.com/vllm-project/llm-compressor"));
  itemList.add(Item(
      imgUrl: "/PHP.svg",
      title: "PHP",
      cnurl: "https://www.php.net/manual/zh/tutorial.firstpage.php"));
  itemList.add(Item(
      imgUrl: "/Termux.svg",
      title: "Termux",
      cnurl: "https://wiki.termux.com/wiki/Getting_started"));
  itemList.add(Item(
      imgUrl: "/Ruby.svg",
      title: "Ruby",
      cnurl: "https://www.ruby-lang.org/zh_cn/documentation/quickstart"));
  itemList.add(Item(
      imgUrl: "/Qwen.svg",
      title: "Qwen Wan",
      cnurl:
          "https://github.com/Wan-Video/Wan2.1?tab=readme-ov-file#quickstart"));
  itemList.add(Item(
      imgUrl: "/Qwen.svg",
      title: "Qwen",
      cnurl:
          "https://qwen.readthedocs.io/zh-cn/latest/getting_started/quickstart.html"));
  itemList.add(Item(
      imgUrl: "/BentoML.svg",
      title: "BentoML",
      cnurl:
          "https://docs.bentoml.com/en/latest/get-started/hello-world.html"));
  itemList.add(Item(
      imgUrl: "/_Electron.svg",
      title: "Electron",
      cnurl:
          "https://www.electronjs.org/zh/docs/latest/tutorial/tutorial-prerequisites"));
  itemList.add(Item(
      imgUrl: "/JavaScript.svg",
      title: "JavaScript",
      cnurl: "https://developer.mozilla.org/zh-CN/docs/Web/JavaScript"));
  itemList.add(Item(
      imgUrl: "/GraphQL.svg",
      title: "GraphQL",
      cnurl: "https://graphql.cn/learn"));
  itemList.add(Item(
      imgUrl: "/ZIG.svg",
      title: "ZIG",
      cnurl: "https://zig.guide/getting-started/installation"));
  itemList.add(Item(
      imgUrl: "/The%20C%20Programming%20Language.svg",
      title: "Visual C",
      cnurl:
          "https://learn.microsoft.com/zh-cn/cpp/build/walkthrough-compile-a-c-program-on-the-command-line?view=msvc-170"));
  itemList.add(Item(
      imgUrl: "/C%2B%2B.svg",
      title: "Visual C++",
      cnurl:
          "https://learn.microsoft.com/zh-cn/cpp/build/vscpp-step-1-create?view=msvc-170"));
  itemList.add(Item(
      imgUrl: "/C%2B%2B.svg",
      title: "C++/WinRT",
      cnurl:
          "https://learn.microsoft.com/zh-cn/windows/uwp/cpp-and-winrt-apis/get-started?view=msvc-170#a-cwinrt-quick-start"));
  itemList.add(Item(
      imgUrl: "/C%2B%2B.svg",
      title: "ISO C++",
      cnurl: "https://isocpp.org/get-started"));
  itemList.add(
      Item(imgUrl: "/TOML.svg", title: "TOML", cnurl: "https://toml.io/cn"));
  itemList.add(Item(
      imgUrl: "/Swift.svg",
      title: "Swift",
      cnurl:
          "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour"));
  itemList.add(Item(
      imgUrl: "/OpenUSD.svg",
      title: "Open USD",
      cnurl: "https://openusd.org/release/tut_helloworld.html"));
  itemList.add(Item(
      imgUrl: "/Swift.svg",
      title: "SIL",
      cnurl: "https://github.com/swiftlang/swift/blob/main/docs/SIL/SIL.md"));
  itemList.add(Item(
      imgUrl: "/Swift.svg",
      title: "SwiftPM",
      cnurl: "https://www.swift.org/getting-started/cli-swiftpm"));
  itemList.add(Item(
      imgUrl: "/Swift.svg",
      title: "Swift for TensorFlow",
      cnurl:
          "https://github.com/tensorflow/swift/blob/main/README.md#getting-started"));
  itemList.add(Item(
      imgUrl: "/Elixir.svg",
      title: "Elixir",
      cnurl: "https://hexdocs.pm/elixir/introduction.html"));
  itemList.add(Item(
      imgUrl: "/Bun.svg",
      title: "Bun",
      cnurl: "https://bun.sh/docs/quickstart"));
  itemList.add(Item(
      imgUrl: "/Apple.svg",
      title: "Apple Developer",
      cnurl: "https://developer.apple.com/documentation"));
  itemList.add(Item(
      imgUrl: "/Apple.svg",
      title: "Objective-C Runtime",
      cnurl: "https://developer.apple.com/documentation/objectivec"));
  itemList.add(Item(
      imgUrl: "/WebAssembly.svg",
      title: "WebAssembly",
      cnurl: "https://webassembly.org/getting-started/developers-guide"));
  itemList.add(Item(
      imgUrl: "/Java.svg",
      title: "TeaVM",
      cnurl: "https://teavm.org/docs/intro/getting-started.html"));
  itemList.add(Item(
      imgUrl: "/Google.svg",
      title: "J2CL/Wasm",
      cnurl:
          "https://github.com/google/j2cl/blob/master/docs/getting-started-j2wasm.md"));
  itemList.add(Item(
      imgUrl: "/ReactJS.svg",
      title: "ReactJS",
      cnurl: "https://zh-hans.react.dev/learn"));
  itemList.add(Item(
      imgUrl: "/reactbits.svg",
      title: "reactbits",
      cnurl: "https://www.reactbits.dev/text-animations/split-text"));
  itemList.add(Item(
      imgUrl: "/ContainerSSH.svg",
      title: "ContainerSSH",
      cnurl: "https://containerssh.io/v0.5/getting-started"));
  itemList.add(Item(
      imgUrl: "/HMOS.svg",
      title: "HarmonyOS Developer",
      cnurl:
          "https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V5/start-overview-V5"));
  itemList.add(Item(
      imgUrl: "/Cangjie.svg",
      title: "Cangjie",
      cnurl:
          "https://cangjie-lang.cn/docs?url=%2F0.53.18%2Fuser_manual%2Fsource_zh_cn%2Ffirst_understanding%2Fbasic.html"));
  itemList.add(Item(
      imgUrl: "/TAURI.svg",
      title: "TAURI",
      cnurl: "https://tauri.app/zh-cn/start"));
  itemList.add(Item(
      imgUrl: "/Nginx.svg",
      title: "Nginx",
      cnurl: "https://nginx.org/en/docs/beginners_guide.html"));
  itemList.add(Item(
      imgUrl: "/git-scm.svg",
      title: "Git SCM",
      cnurl: "https://git-scm.com/docs/git/zh_HANS-CN"));
  // itemList.add(Item(
  //     imgUrl: "/libgit2.svg",
  //     title: "libgit2",
  //     cnurl: "https://libgit2.org/docs/reference/main"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "git2-rs",
      cnurl: "https://docs.rs/git2/latest/git2"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "capnpc",
      cnurl: "https://docs.rs/capnpc/latest/capnpc"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "Cap’n Proto Runtime",
      cnurl: "https://docs.rs/capnp/latest/capnp/#capn-proto-runtime-library"));
  itemList.add(Item(
      imgUrl: "/GitHub.svg",
      title: "GitHub Actions",
      cnurl:
          "https://docs.github.com/zh/actions/writing-workflows/quickstart"));
  itemList.add(Item(
      imgUrl: "/GitHub.svg",
      title: "GitHub REST API",
      cnurl:
          "https://docs.github.com/zh/rest/quickstart?apiVersion=2022-11-28"));
  itemList.add(Item(
      imgUrl: "/GitHub.svg",
      title: "Actions Runner Images",
      cnurl:
          "https://github.com/actions/runner-images/blob/main/docs/create-image-and-azure-resources.md#github-actions-runner-images"));
  itemList.add(Item(
      imgUrl: "/Packer.svg",
      title: "Packer",
      cnurl:
          "https://developer.hashicorp.com/packer/tutorials/docker-get-started/get-started-install-cli"));
  itemList.add(Item(
      imgUrl: "/GitHub.svg",
      title: "GitHub CLI",
      cnurl: "https://docs.github.com/zh/github-cli/github-cli/quickstart"));
  itemList.add(Item(
      imgUrl: "/GitHub.svg",
      title: "GitHub Codespaces",
      cnurl:
          "https://docs.github.com/zh/codespaces/getting-started/quickstart"));
  itemList.add(Item(
      imgUrl: "/GitLab.svg",
      title: "GitLab CI/CD",
      cnurl: "https://docs.gitlab.com/ci"));
  itemList.add(Item(
      imgUrl: "/GitLab.svg",
      title: "GitLab REST API",
      cnurl: "https://docs.gitlab.com/api/rest"));
  itemList.add(Item(
      imgUrl: "/GitLab.svg",
      title: "GitLab CLI",
      cnurl: "https://docs.gitlab.com/editor_extensions/gitlab_cli"));
  itemList.add(Item(
      imgUrl: "/VS Code.svg",
      title: "Visual Studio Code",
      cnurl: "https://code.visualstudio.com/docs/getstarted/getting-started"));
  itemList.add(Item(
      imgUrl: "/__CodeOSS.svg",
      title: "Code OSS",
      cnurl: "https://github.com/LcJuves/vscode/wiki/How-to-Contribute"));
  itemList.add(Item(
      imgUrl: "/__CodeOSS.svg",
      title: "Monaco Editor",
      cnurl: "https://microsoft.github.io/monaco-editor"));
  itemList.add(Item(
      imgUrl: "/CMake.svg",
      title: "CMake",
      cnurl:
          "https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html"));
  itemList.add(Item(
      imgUrl: "/PowerShell.svg",
      title: "PowerShell",
      cnurl: "https://learn.microsoft.com/zh-cn/powershell"));
  itemList.add(
      Item(imgUrl: "/GNU.svg", title: "GNU", cnurl: "https://www.gnu.org/doc"));
  itemList.add(Item(
      imgUrl: "/GNU.svg",
      title: "The GNU C Library",
      cnurl: "https://www.gnu.org/software/libc/manual/html_node/index.html"));
  itemList.add(Item(
      imgUrl: "/MSYS2.svg",
      title: "MSYS2",
      cnurl: "https://www.msys2.org/docs/what-is-msys2"));
  itemList.add(Item(
      imgUrl: "/JWT.svg", title: "JWT", cnurl: "https://jwt.io/introduction"));
  // itemList.add(Item(
  //     imgUrl: "/emscripten.svg",
  //     title: "emscripten",
  //     cnurl: "https://emscripten.org/docs/getting_started"));
  itemList.add(Item(
      imgUrl: "/podman.svg", title: "podman", cnurl: "https://podman.io/docs"));
  itemList.add(Item(
      imgUrl: "/redis.svg",
      title: "Redis",
      cnurl: "https://redis.io/docs/latest/get-started"));
  itemList.add(Item(
      imgUrl: "/LLVM.svg",
      title: "LLVM",
      cnurl: "https://llvm.org/docs/GettingStarted.html"));
  itemList.add(Item(
      imgUrl: "/LLVM.svg",
      title: "llvm-cov",
      cnurl: "https://llvm.org/docs/CommandGuide/llvm-cov.html"));
  itemList.add(Item(
      imgUrl: "/snowflake.svg",
      title: "snowflake",
      cnurl: "https://docs.snowflake.com/en/user-guide-getting-started"));
  itemList.add(Item(
      imgUrl: "/ClickHouse.svg",
      title: "ClickHouse",
      cnurl: "https://clickhouse.com/docs/en/getting-started/quick-start"));
  itemList.add(Item(
      imgUrl: "/NanoID.svg",
      title: "NanoID",
      cnurl: "https://zelark.github.io/nano-id-cc"));
  itemList.add(Item(
      imgUrl: "/eBPF.svg",
      title: "eBPF",
      cnurl: "https://ebpf.io/zh-hans/what-is-ebpf"));
  itemList.add(Item(
      imgUrl: "/SVGO.svg",
      title: "SVGO",
      cnurl: "https://svgo.dev/docs/introduction"));
  itemList.add(Item(
      imgUrl: "/Mermaid.svg",
      title: "Mermaid",
      cnurl: "https://mermaid.js.org/intro/getting-started.html"));
  // itemList.add(
  //     Item(imgUrl: "/JSON5.svg", title: "JSON5", cnurl: "https://json5.org"));
  itemList.add(Item(
      imgUrl: "/Datatracker.svg",
      title: "Datatracker",
      cnurl: "https://datatracker.ietf.org/doc"));
  itemList.add(Item(
      imgUrl: "/Org_FreeSVG.svg",
      title: "SVG",
      cnurl: "https://developer.mozilla.org/zh-CN/docs/Web/SVG"));
  itemList.add(Item(
      imgUrl: "/esbuild.svg",
      title: "esbuild",
      cnurl: "https://esbuild.github.io/getting-started"));
  itemList.add(Item(
      imgUrl: "/Raspberrypi.svg",
      title: "Raspberry Pi",
      cnurl:
          "https://www.raspberrypi.com/documentation/computers/getting-started.html"));
  itemList.add(Item(
      imgUrl: "/Pug%20Template%20Engine.svg",
      title: "PugJS",
      cnurl: "https://pugjs.org/api/getting-started.html"));
  itemList.add(Item(
      imgUrl: "/Pkl.svg",
      title: "Pkl",
      cnurl: "https://pkl-lang.org/main/current/index.html"));
  itemList.add(Item(
      imgUrl: "/Dragonfly.svg",
      title: "Dragonfly",
      cnurl: "https://www.dragonflydb.io/docs/getting-started"));
  itemList.add(Item(
      imgUrl: "/Bevy.svg",
      title: "Bevy",
      cnurl: "https://bevyengine.org/learn/quick-start/getting-started"));
  itemList.add(Item(
      imgUrl: "/godot.svg",
      title: "godot-rust",
      cnurl:
          "https://godot-rust.github.io/book/intro/setup.html#godot-engine"));
  itemList.add(Item(
      imgUrl: "/tokio.svg",
      title: "Tokio",
      cnurl: "https://tokio.rs/tokio/tutorial/hello-tokio"));
  itemList.add(Item(
      imgUrl: "/hyper.svg",
      title: "hyper",
      cnurl: "https://hyper.rs/guides/1/init/setup"));
  itemList.add(Item(
      imgUrl: "/Diesel.svg",
      title: "Diesel",
      cnurl: "https://diesel.rs/guides/getting-started"));
  itemList.add(Item(
      imgUrl: "/IPFS.svg",
      title: "IPFS",
      cnurl: "https://docs.ipfs.tech/install"));
  itemList.add(Item(
      imgUrl: "/PDFJS.svg",
      title: "PDFJS",
      cnurl: "https://mozilla.github.io/pdf.js/getting_started"));
  itemList.add(Item(
      imgUrl: "/SQLite.svg",
      title: "SQLite",
      cnurl: "https://www.sqlite.org/quickstart.html"));
  itemList.add(Item(
      imgUrl: "/Bytebase.svg",
      title: "Bytebase",
      cnurl:
          "https://www.bytebase.com/docs/get-started/step-by-step/deploy-with-docker"));
  itemList.add(Item(
      imgUrl: "/JetpackCompose.svg",
      title: "Jetpack Compose",
      cnurl:
          "https://developer.android.google.cn/develop/ui/compose/documentation?hl=zh-cn"));
  itemList.add(Item(
      imgUrl: "/ComposeMultiplatform.svg",
      title: "Compose Multiplatform",
      cnurl: "https://www.jetbrains.com/zh-cn/compose-multiplatform"));
  itemList.add(Item(
      imgUrl: "/WebdriverIO.svg",
      title: "WebdriverIO",
      cnurl: "https://webdriver.io/docs/gettingstarted"));
  itemList.add(Item(
      imgUrl: "/Rspack.svg",
      title: "Rspack",
      cnurl: "https://rspack.dev/zh/guide/start/quick-start"));
  itemList.add(Item(
      imgUrl: "/CSS.svg",
      title: "CSS",
      cnurl: "https://developer.mozilla.org/zh-CN/docs/Web/CSS"));
  itemList.add(Item(
      imgUrl: "/Vite.svg", title: "Vite", cnurl: "https://cn.vite.dev/guide"));
  itemList.add(Item(
      imgUrl: "/Rollup.svg",
      title: "Rollup",
      cnurl: "https://cn.rollupjs.org/introduction"));
  itemList.add(Item(
      imgUrl: "/ESLint.svg",
      title: "ESLint",
      cnurl: "https://zh-hans.eslint.org/docs/latest/use/getting-started"));
  itemList.add(Item(
      imgUrl: "/Playwright.svg",
      title: "Playwright",
      cnurl: "https://playwright.dev/docs/intro"));
  itemList.add(Item(
      imgUrl: "/Hexo.svg",
      title: "Hexo",
      cnurl: "https://hexo.io/zh-cn/docs/#%E8%A6%81%E6%B1%82"));
  itemList.add(Item(
      imgUrl: "/GruntJS.svg",
      title: "GruntJS",
      cnurl: "https://gruntjs.com/getting-started"));
  itemList.add(Item(
      imgUrl: "/Keras.svg",
      title: "Keras",
      cnurl: "https://keras.io/getting_started"));
  itemList.add(Item(
      imgUrl: "/JAX.svg",
      title: "JAX",
      cnurl: "https://jax.readthedocs.io/en/latest/quickstart.html"));
  itemList.add(Item(
      imgUrl: "/OpenVINO.svg",
      title: "OpenVINO",
      cnurl: "https://docs.openvino.ai/2024/get-started.html"));
  itemList.add(Item(
      imgUrl: "/Spring.svg",
      title: "Spring",
      cnurl: "https://spring.io/quickstart"));
  itemList.add(Item(
      imgUrl: "/Puppeteer.svg",
      title: "Puppeteer",
      cnurl: "https://pptr.dev/guides/getting-started"));
  itemList.add(Item(
      imgUrl: "/Wintun.svg",
      title: "Wintun",
      cnurl: "https://git.zx2c4.com/wintun/about"));
  itemList.add(Item(
      imgUrl: "/NumPy.svg",
      title: "NumPy",
      cnurl:
          "https://numpy.org/doc/stable/user/quickstart.html#numpy-quickstart"));
  itemList.add(Item(
      imgUrl: "/Browserless.svg",
      title: "Browserless",
      cnurl: "https://docs.browserless.io/baas/docker/quickstart"));
  itemList.add(Item(
      imgUrl: "/AppImage.svg",
      title: "AppImage",
      cnurl:
          "https://docs.appimage.org/introduction/quickstart.html#ref-quickstart"));
  itemList.add(Item(
      imgUrl: "/Laravel.svg",
      title: "Laravel",
      cnurl: "https://laravel.com/docs"));
  itemList.add(Item(
      imgUrl: "/Lodash.svg",
      title: "Lodash",
      cnurl: "https://lodash.com/docs"));
  itemList.add(Item(
      imgUrl: "/Subversion.svg",
      title: "Subversion",
      cnurl:
          "https://subversion.apache.org/quick-start#installing-the-client"));
  itemList.add(Item(
      imgUrl: "/OpenVela.svg",
      title: "Xiaomi OpenVela",
      cnurl: "https://github.com/open-vela/docs/blob/dev/README_zh-cn.md"));
  itemList.add(Item(
      imgUrl: "/NuttX.svg",
      title: "NuttX",
      cnurl: "https://nuttx.apache.org/docs/latest/quickstart/install.html"));
  itemList.add(Item(
      imgUrl: "/AzureQuantum.svg",
      title: "Azure Quantum",
      cnurl:
          "https://learn.microsoft.com/zh-cn/training/paths/quantum-computing-fundamentals"));
  itemList.add(Item(
      imgUrl: "/Azure.svg",
      title: "Azure Linux",
      cnurl:
          "https://github.com/microsoft/azurelinux/blob/3.0/toolkit/docs/quick_start/quickstart.md#quick-start-guide"));
  itemList.add(Item(
      imgUrl: "/Homebrew.svg",
      title: "Homebrew",
      cnurl: "https://docs.brew.sh/Installation"));
  itemList.add(Item(
      imgUrl: "/IANA.svg",
      title: "Media Types",
      cnurl: "https://www.iana.org/assignments/media-types/media-types.xhtml"));
  itemList.add(Item(
      imgUrl: "/ACME.svg",
      title: "ACME",
      cnurl: "https://datatracker.ietf.org/doc/html/rfc8555"));
  itemList.add(Item(
      imgUrl: "/HTML5.svg",
      title: "HTML",
      cnurl: "https://developer.mozilla.org/zh-CN/docs/Web/HTML"));
  itemList.add(Item(
      imgUrl: "/_cURL.svg",
      title: "cURL",
      cnurl: "https://curl.se/docs/tutorial.html"));
  itemList.add(Item(
      imgUrl: "/Ruby%20on%20Ralis.svg",
      title: "Ruby on Rails",
      cnurl: "https://guides.rubyonrails.org/getting_started.html"));
  itemList.add(Item(
      imgUrl: "/GODOT_Engine.svg",
      title: "Godot Engine",
      cnurl:
          "https://docs.godotengine.org/zh-cn/4.x/getting_started/introduction/introduction_to_godot.html"));
  itemList.add(Item(
      imgUrl: "/Apache%20Kafka.svg",
      title: "Kafka",
      cnurl: "https://kafka.apache.org/documentation/#gettingStarted"));
  itemList.add(Item(
      imgUrl: "/gulpjs.svg",
      title: "GulpJS",
      cnurl: "https://gulpjs.com/docs/en/getting-started/quick-start"));
  itemList.add(Item(
      imgUrl: "/Anaconda.svg",
      title: "Anaconda",
      cnurl: "https://docs.anaconda.com/anaconda/getting-started"));
  itemList.add(Item(
      imgUrl: "/Conda.svg",
      title: "Conda",
      cnurl:
          "https://docs.conda.io/projects/conda/en/latest/user-guide/getting-started.html"));
  itemList.add(Item(
      imgUrl: "/InLong.svg",
      title: "InLong",
      cnurl:
          "https://inlong.apache.org/zh-CN/docs/quick_start/data_ingestion/file_pulsar_clickhouse_example"));
  itemList.add(Item(
      imgUrl: "/conda-forge.svg",
      title: "conda-forge",
      cnurl: "https://conda-forge.org/docs/user/introduction"));
  itemList.add(Item(
      imgUrl: "/conda-forge.svg",
      title: "Miniforge",
      cnurl: "https://conda-forge.org/download"));
  itemList.add(Item(
      imgUrl: "/Trae.svg",
      title: "Trae",
      cnurl: "https://docs.trae.ai/docs/set-up-trae?_lang=en"));
  itemList.add(Item(
      imgUrl: "/GEETEST.svg",
      title: "GEETEST OneLogin",
      cnurl: "https://docs.geetest.com/onelogin/overview/start"));
  itemList.add(Item(
      imgUrl: "/Microsoft.svg",
      title: "AIOpsLab",
      cnurl:
          "https://github.com/microsoft/AIOpsLab?tab=readme-ov-file#%F0%9F%9A%80quickstart"));
  itemList.add(Item(
      imgUrl: "/Appium.svg",
      title: "Appium",
      cnurl: "https://appium.io/docs/zh/latest/quickstart"));
  itemList.add(Item(
      imgUrl: "/RabbitMQ.svg",
      title: "RabbitMQ",
      cnurl: "https://www.rabbitmq.com/tutorials/tutorial-one-rust-stream"));
  itemList.add(Item(
      imgUrl: "/Atlassian%20Bitbucket.svg",
      title: "Bitbucket Pipelines",
      cnurl:
          "https://support.atlassian.com/bitbucket-cloud/docs/get-started-with-bitbucket-pipelines"));
  itemList.add(Item(
      imgUrl: "/Jupyter.svg",
      title: "Jupyter",
      cnurl: "https://docs.jupyter.org/en/latest/start"));
  itemList.add(Item(
      imgUrl: "/Blender.svg",
      title: "Blender",
      cnurl:
          "https://docs.blender.org/manual/zh-hans/latest/getting_started/installing/index.html"));
  itemList.add(Item(
      imgUrl: "/SpiderMonkey.svg",
      title: "SpiderMonkey",
      cnurl: "https://firefox-source-docs.mozilla.org/js"));
  itemList.add(Item(
      imgUrl: "/WASIX.svg",
      title: "WASIX",
      cnurl: "https://wasix.org/docs/language-guide/rust/installation"));
  itemList.add(Item(
      imgUrl: "/MoonBit.svg",
      title: "MoonBit",
      cnurl: "https://docs.moonbitlang.com/zh-cn/latest/tutorial/tour.html"));
  itemList.add(Item(
      imgUrl: "/Clojure.svg",
      title: "Clojure",
      cnurl: "https://clojure.org/guides/getting_started"));
  itemList.add(Item(
      imgUrl: "/Crystal.svg",
      title: "Crystal",
      cnurl: "https://crystal-lang.org/reference/1.14/getting_started"));
  itemList.add(Item(
      imgUrl: "/BabylonJS.svg",
      title: "BabylonJS",
      cnurl:
          "https://doc.babylonjs.com/journey/theFirstStep#everyones-very-first-step"));
  itemList.add(Item(
      imgUrl: "/Nacos.svg",
      title: "Nacos",
      cnurl: "https://nacos.io/docs/latest/quickstart/quick-start"));
  itemList.add(Item(
      imgUrl: "/FreeBSD.svg",
      title: "FreeBSD",
      cnurl: "https://docs.freebsd.org/zh-cn/books/handbook/basics"));
  itemList.add(
      Item(imgUrl: "/Tabby.svg", title: "Tabby", cnurl: "https://tabby.sh"));
  itemList.add(Item(
      imgUrl: "/gRPC.svg",
      title: "gRPC",
      cnurl: "https://grpc.io/docs/languages/go/quickstart"));
  itemList.add(Item(
      imgUrl: "/e-CNY.svg",
      title: "Cap’n Proto",
      cnurl: "https://capnproto.org/install.html"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "SIMD JSON for Rust",
      cnurl: "https://docs.rs/simd-json/latest/simd_json/#usage"));
  // itemList.add(Item(
  //     imgUrl: "/radash.svg",
  //     title: "radash",
  //     cnurl: "https://radash-docs.vercel.app/docs/getting-started#getting-started"));
  itemList.add(Item(
      imgUrl: "/Apache%20Tomcat.svg",
      title: "Tomcat",
      cnurl: "https://tomcat.apache.org/tomcat-11.0-doc"));
  itemList.add(Item(
      imgUrl: "/Apache%20Camel.svg",
      title: "Camel Core",
      cnurl: "https://camel.apache.org/camel-core/getting-started"));
  itemList.add(Item(
      imgUrl: "/Bash.svg",
      title: "Bash",
      cnurl: "https://www.gnu.org/software/bash/manual/html_node/index.html"));
  itemList.add(Item(
      imgUrl: "/GraalVM.svg",
      title: "GraalVM",
      cnurl: "https://www.graalvm.org/latest/getting-started"));
  itemList.add(Item(
      imgUrl: "/GraalVM.svg",
      title: "GraalVM Native Image",
      cnurl: "https://www.graalvm.org/latest/reference-manual/native-image"));
  itemList.add(Item(
      imgUrl: "/Cygwin.svg",
      title: "Cygwin",
      cnurl: "https://cygwin.com/cygwin-ug-net/cygwin-ug-net.html"));
  itemList.add(Item(
      imgUrl: "/robot.svg",
      title: "Robot Framework",
      cnurl: "https://docs.robotframework.org/docs/getting_started/rpa"));
  itemList.add(Item(
      imgUrl: "/Apache%20Hive.svg",
      title: "Hive",
      cnurl:
          "https://cwiki.apache.org/confluence/display/Hive/GettingStarted"));
  itemList.add(Item(
      imgUrl: "/Apache%20Cordova.svg",
      title: "Cordova",
      cnurl:
          "https://cordova.apache.org/docs/en/latest/guide/cli/installation.html"));
  itemList.add(Item(
      imgUrl: "/GNU.svg",
      title: "GNU Coreutils",
      cnurl:
          "https://www.gnu.org/software/coreutils/manual/html_node/index.html#toc-Introduction-1"));
  itemList.add(Item(
      imgUrl: "/GNU.svg",
      title: "GNU Binutils",
      cnurl: "https://sourceware.org/binutils/docs/binutils/index.html"));
  itemList.add(Item(
      imgUrl: "/GNU.svg",
      title: "GNU make",
      cnurl: "https://www.gnu.org/software/make/manual/html_node/index.html"));
  itemList.add(Item(
      imgUrl: "/GNU.svg",
      title: "GNU Wget",
      cnurl: "https://www.gnu.org/software/wget/manual/html_node/index.html"));
  itemList.add(Item(
      imgUrl: "/Org_WebKit.svg",
      title: "WebKit",
      cnurl: "https://webkit.org/blog/category/standards"));
  // itemList
  //     .add(Item(imgUrl: "/V8.svg", title: "V8", cnurl: "https://v8.dev/docs"));
  itemList.add(Item(
      imgUrl: "/Duke%20Hips.svg",
      title: "OpenJDK",
      cnurl: "https://openjdk.org/guide"));
  itemList.add(Item(
      imgUrl: "/Duke%20Hips.svg",
      title: "Building the JDK",
      cnurl: "https://openjdk.org/groups/build/doc/building.html"));
  itemList.add(Item(
      imgUrl: "/Duke%20Hips.svg",
      title: "ZGC",
      cnurl: "https://wiki.openjdk.org/display/zgc/Main#Main-QuickStart"));
  itemList.add(Item(
      imgUrl: "/Chroma.svg",
      title: "Chroma",
      cnurl:
          "https://docs.trychroma.com/docs/overview/getting-started?lang=typescript"));
  itemList.add(Item(
      imgUrl: "/Kali.svg",
      title: "Kali Linux",
      cnurl: "https://www.kali.org/docs"));
  itemList.add(Item(
      imgUrl: "/Sentry.svg",
      title: "Sentry",
      cnurl: "https://docs.sentry.io/platforms"));
  // itemList.add(Item(
  //     imgUrl: "/ReactFlow.svg",
  //     title: "React Flow",
  //     cnurl: "https://reactflow.dev/learn"));
  itemList.add(Item(
      imgUrl: "/WebGPU.svg",
      title: "WebGPU",
      cnurl: "https://developer.mozilla.org/zh-CN/docs/Web/API/WebGPU_API"));
  itemList.add(Item(
      imgUrl: "/GTK.svg",
      title: "GTK",
      cnurl: "https://www.gtk.org/docs/getting-started"));
  itemList.add(Item(
      imgUrl: "/PostgreSQL.svg",
      title: "PostgreSQL",
      cnurl: "http://www.postgres.cn/docs/current/index.html"));
  itemList.add(Item(
      imgUrl: "/Vala.svg",
      title: "Vala",
      cnurl: "https://docs.vala.dev/installation-guide"));
  itemList.add(Item(
      imgUrl: "/Servo.svg",
      title: "Servo",
      cnurl: "https://book.servo.org/getting-servo.html"));
  itemList.add(Item(
      imgUrl: "/OpenHarmony.svg",
      title: "OpenHarmony",
      cnurl:
          "https://docs.openharmony.cn/pages/v5.0/zh-cn/device-dev/quick-start/quickstart-overview.md"));
  itemList.add(Item(
      imgUrl: "/_Xiaomi.svg",
      title: "Home Integration",
      cnurl:
          "https://github.com/XiaoMi/ha_xiaomi_home/blob/main/doc/README_zh.md"));
  itemList.add(Item(
      imgUrl: "/MQTT.svg",
      title: "MQTT",
      cnurl: "https://mqtt.org/getting-started"));
  itemList.add(Item(
      imgUrl: "/JSON.svg",
      title: "JSON",
      cnurl: "https://www.json.org/json-zh.html"));
  itemList.add(Item(
      imgUrl: "/JSONSchema.svg",
      title: "JSON Schema",
      cnurl: "https://json-schema.org/learn/getting-started-step-by-step"));
  itemList.add(Item(
      imgUrl: "/microbit.svg",
      title: "micro:bit",
      cnurl: "https://microbit.org/get-started/getting-started/introduction"));
  itemList.add(Item(
      imgUrl: "/HomeAssistant.svg",
      title: "Home Assistant",
      cnurl:
          "https://www.home-assistant.io/installation/generic-x86-64#install-home-assistant-container"));
  itemList.add(Item(
      imgUrl: "/D3JS.svg",
      title: "D3JS",
      cnurl: "https://d3js.org/getting-started#getting-started"));
  itemList.add(Item(
      imgUrl: "/RockyLinux.svg",
      title: "Rocky Linux",
      cnurl: "https://docs.rockylinux.org/zh/guides"));
  itemList.add(Item(
      imgUrl: "/Fedora.svg",
      title: "Fedora Workstation",
      cnurl: "https://docs.fedoraproject.org/zh_Hans/workstation-docs"));
  itemList.add(Item(
      imgUrl: "/Asahi%20Linux.svg",
      title: "Asahi Linux",
      cnurl: "https://github.com/asahilinux/docs/wiki"));
  itemList.add(Item(
      imgUrl: "/ClearLinux.svg",
      title: "Clear Linux",
      cnurl:
          "https://www.clearlinux.org/clear-linux-documentation/guides/index.html"));
  itemList.add(Item(
      imgUrl: "/Deepin.svg",
      title: "Deepin DTK",
      cnurl:
          "https://docs.deepin.org/info/%E5%BC%80%E5%8F%91%E5%85%A5%E9%97%A8/%E5%9F%BA%E7%A1%80%E7%8E%AF%E5%A2%83/DTK/%E6%A6%82%E8%BF%B0/%E6%A6%82%E8%BF%B0/DTK%E5%85%A5%E9%97%A8%E6%8C%87%E5%BC%95"));
  itemList.add(Item(
      imgUrl: "/QEMU.svg",
      title: "QEMU",
      cnurl: "https://www.qemu.org/docs/master"));
  itemList.add(Item(
      imgUrl: "/NVIDIA.svg",
      title: "NVVM IR",
      cnurl: "https://docs.nvidia.com/cuda/nvvm-ir-spec"));
  itemList.add(Item(
      imgUrl: "/NVIDIA.svg",
      title: "NVVM ABI for PTX",
      cnurl:
          "https://docs.nvidia.com/cuda/nvvm-ir-spec/index.html#nvvm-abi-for-ptx"));
  itemList.add(
      Item(imgUrl: "/UEFI.svg", title: "UEFI", cnurl: "https://uefi.org/uefi"));
  itemList.add(Item(
      imgUrl: "/Grok.svg",
      title: "xAI Grok",
      cnurl: "https://github.com/xai-org/grok-1"));
  itemList.add(Item(
      imgUrl: "/LangChain.svg",
      title: "LangChain",
      cnurl: "https://python.langchain.com/docs/how_to"));
  itemList.add(Item(
      imgUrl: "/NVIDIA.svg",
      title: "CUDA",
      cnurl: "https://docs.nvidia.com/cuda/cuda-quick-start-guide"));
  itemList.add(Item(
      imgUrl: "/NVIDIA.svg",
      title: "CUDA-GDB",
      cnurl:
          "https://docs.nvidia.com/cuda/cuda-gdb/index.html#getting-started"));
  itemList.add(Item(
      imgUrl: "/NVIDIA.svg",
      title: "Cosmos",
      cnurl:
          "https://research.nvidia.com/publication/2025-01_cosmos-world-foundation-model-platform-physical-ai"));
  itemList.add(Item(
      imgUrl: "/KasmWorkspaces.svg",
      title: "Kasm Workspaces",
      cnurl: "https://kasmweb.com/docs/latest/index.html#getting-started"));
  itemList.add(Item(
      imgUrl: "/WireGuard.svg",
      title: "WireGuard",
      cnurl: "https://www.wireguard.com/quickstart"));
  itemList.add(Item(
      imgUrl: "/OpenWrt.svg",
      title: "OpenWrt",
      cnurl: "https://openwrt.org/zh/docs/guide-quick-start/start"));
  itemList
      .add(Item(imgUrl: "/YAML.svg", title: "YAML", cnurl: "https://yaml.org"));
  itemList.add(Item(
      imgUrl: "/XML.svg",
      title: "XML",
      cnurl: "https://developer.mozilla.org/zh-CN/docs/Web/XML"));
  itemList.add(Item(
      imgUrl: "/Nim.svg",
      title: "Nim",
      cnurl: "https://nim-lang.org/documentation.html"));
  itemList.add(Item(
      imgUrl: "/Haskell.svg",
      title: "Haskell",
      cnurl: "https://www.haskell.org/get-started"));
  itemList.add(Item(
      imgUrl: "/Bitcoin.svg",
      title: "Bitcoin",
      cnurl: "https://developer.bitcoin.org/devguide/index.html"));
  itemList.add(Item(
      imgUrl: "/WinterCG.svg",
      title: "WinterTC",
      cnurl: "https://wintertc.org/work"));
  itemList.add(Item(
      imgUrl: "/Exercism.svg",
      title: "Exercism",
      cnurl: "https://exercism.org/tracks"));
  itemList.add(Item(
      imgUrl: "/gitee.svg",
      title: "Gitee Go",
      cnurl: "https://gitee.com/help/categories/69"));
  itemList.add(Item(
      imgUrl: "/Flameshot.svg",
      title: "Flameshot",
      cnurl: "https://flameshot.org/docs/overview/overview"));
  itemList.add(Item(
      imgUrl: "/Gradle.svg",
      title: "Gradle",
      cnurl: "https://docs.gradle.org/current/userguide/quick_start.html"));
  itemList.add(Item(
      imgUrl: "/Ethereum.svg",
      title: "Ethereum",
      cnurl: "https://ethereum.org/zh/developers/docs"));
  itemList.add(Item(
      imgUrl: "/arroyo.svg",
      title: "arroyo",
      cnurl: "https://doc.arroyo.dev/getting-started"));
  // itemList.add(Item(
  //     imgUrl: "/ProGuard.svg",
  //     title: "ProGuard",
  //     cnurl: "https://www.guardsquare.com/manual/quickstart"));

  itemList.add(Item(
      imgUrl: "/Mojo.svg",
      title: "Mojo",
      cnurl: "https://docs.modular.com/stable/mojo/manual/get-started"));
  itemList.add(Item(
      imgUrl: "/Debian.svg",
      title: "Debian",
      cnurl: "https://www.debian.org/doc/manuals/debian-reference"));
  itemList.add(Item(
      imgUrl: "/Debian.svg",
      title: "Simple Shell Command",
      cnurl:
          "https://www.debian.org/doc/manuals/debian-reference/ch01.zh-cn.html#_the_simple_shell_command"));
  itemList.add(Item(
      imgUrl: "/Cargo.svg",
      title: "Cargo",
      cnurl:
          "https://doc.rust-lang.org/stable/cargo/getting-started/first-steps.html"));
  /* itemList.add(Item(
      imgUrl: "/XTermJS.svg",
      title: "XTermJS",
      cnurl: "https://xtermjs.org/docs")); */
  itemList.add(Item(
      imgUrl: "/Wayland.svg",
      title: "Wayland",
      cnurl: "https://wayland.freedesktop.org/docs/html"));
  itemList.add(Item(
      imgUrl: "/Waydroid.svg",
      title: "Waydroid",
      cnurl: "https://docs.waydro.id/usage"));
  itemList.add(Item(
      imgUrl: "/CompilerExplorer.svg",
      title: "Compiler Explorer",
      cnurl: "https://godbolt.org"));
  itemList.add(Item(
      imgUrl: "/Microsoft.svg",
      title: "MSVC",
      cnurl:
          "https://learn.microsoft.com/zh-cn/cpp/build/reference/compiling-a-c-cpp-program?view=msvc-170"));
  itemList.add(Item(
      imgUrl: "/Microsoft.svg",
      title: "MSBuild",
      cnurl:
          "https://learn.microsoft.com/zh-cn/visualstudio/msbuild/walkthrough-using-msbuild?view=vs-2022"));
  itemList.add(Item(
      imgUrl: "/MySQL.svg",
      title: "MySQL",
      cnurl:
          "https://dev.mysql.com/doc/refman/8.4/en/binary-installation.html"));
  itemList.add(Item(
      imgUrl: "/OpenZFS.svg",
      title: "OpenZFS",
      cnurl:
          "https://openzfs.github.io/openzfs-docs/Getting%20Started/index.html"));
  itemList.add(Item(
      imgUrl: "/SpringBoot.svg",
      title: "Spring Boot",
      cnurl:
          "https://docs.spring.io/spring-boot/3.4-SNAPSHOT/documentation.html"));
  itemList.add(Item(
      imgUrl: "/ECMAScript.svg",
      title: "ECMAScript",
      cnurl: "https://tc39.es/ecma262"));
  itemList.add(Item(
      imgUrl: "/Xcode.svg",
      title: "Xcode",
      cnurl: "https://developer.apple.com/documentation/xcode"));
  // itemList.add(Item(
  //     imgUrl: "/HighlightJS.svg",
  //     title: "HighlightJS",
  //     cnurl: "https://highlightjs.readthedocs.io/en/latest"));
  itemList.add(Item(
      imgUrl: "/HTTP_Toolkit.svg",
      title: "HTTP Toolkit",
      cnurl: "https://httptoolkit.com/docs/getting-started"));
  itemList.add(Item(
      imgUrl: "/HTTP_3_Check.svg",
      title: "HTTP/3 Check",
      cnurl: "https://http3check.net"));
  itemList.add(Item(
      imgUrl: "/TIOBE.svg",
      title: "TIOBE Index",
      cnurl: "https://www.tiobe.com/tiobe-index"));
  itemList.add(Item(
      imgUrl: "/Lua.svg",
      title: "Lua",
      cnurl: "https://www.lua.org/start.html"));
  itemList.add(Item(
      imgUrl: "/Swagger.svg",
      title: "Swagger",
      cnurl: "https://swagger.io/docs"));
  itemList.add(Item(
      imgUrl: "/HHVM.svg",
      title: "HHVM",
      cnurl: "https://docs.hhvm.com/hhvm/basic-usage/introduction"));
  itemList.add(Item(
      imgUrl: "/Gnome.svg",
      title: "GNOME",
      cnurl: "https://developer.gnome.org/documentation"));
  itemList.add(Item(
      imgUrl: "/ReactiveX.svg",
      title: "ReactiveX",
      cnurl: "https://reactivex.io/documentation"));
  itemList.add(Item(
      imgUrl: "/OceanBase.svg",
      title: "OceanBase",
      cnurl:
          "https://www.oceanbase.com/docs/common-oceanbase-database-cn-1000000002012693"));
  itemList.add(Item(
      imgUrl: "/mongoDB.svg",
      title: "MongoDB",
      cnurl:
          "https://www.mongodb.com/zh-cn/docs/manual/tutorial/getting-started"));
  itemList.add(Item(
      imgUrl: "/DocsyJekyll.svg",
      title: "Docsy Jekyll",
      cnurl: "https://vsoch.github.io/docsy-jekyll/docs/getting-started"));
  itemList.add(Item(
      imgUrl: "/MariaDB.svg",
      title: "MariaDB",
      cnurl: "https://mariadb.com/kb/zh-cn/a-mariadb-primer"));
  itemList.add(Item(
      imgUrl: "/Tribuo.svg",
      title: "Tribuo",
      cnurl: "https://tribuo.org/learn/4.3/docs/#h1"));
  itemList.add(Item(
      imgUrl: "/GitLFS.svg",
      title: "Git LFS",
      cnurl:
          "https://github.com/git-lfs/git-lfs/tree/main/docs?utm_source=gitlfs_site&utm_medium=docs_link&utm_campaign=gitlfs"));
  itemList.add(Item(
      imgUrl: "/HTTP.svg",
      title: "HTTP",
      cnurl: "https://developer.mozilla.org/zh-CN/docs/Web/HTTP"));
  itemList.add(
      Item(imgUrl: "/Ktor.svg", title: "Ktor", cnurl: "https://ktor.io/docs"));
  itemList.add(Item(
      imgUrl: "/Airflow.svg",
      title: "Airflow",
      cnurl:
          "https://airflow.apache.org/docs/apache-airflow/stable/start.html"));
  itemList.add(Item(
      imgUrl: "/Arduino.svg",
      title: "Arduino",
      cnurl:
          "https://docs.arduino.cc/learn/starting-guide/getting-started-arduino"));
  itemList.add(Item(
      imgUrl: "/Inkscape.svg",
      title: "Inkscape",
      cnurl: "https://inkscape.org/zh-hans/simplified-chinese-learn"));
  // itemList.add(Item(
  //     imgUrl: "/Mattermost.svg",
  //     title: "Mattermost",
  //     cnurl: "https://docs.mattermost.com"));
  itemList.add(Item(
      imgUrl: "/LateX.svg",
      title: "LateX",
      cnurl: "https://www.latex-project.org/help/documentation"));
  itemList.add(Item(
      imgUrl: "/KateX.svg", title: "KateX", cnurl: "https://katex.org/docs"));
  itemList.add(Item(
      imgUrl: "/Redox.svg",
      title: "Redox OS",
      cnurl:
          "https://doc.redox-os.org/book/getting-started.html#getting-started"));
  itemList.add(Item(
      imgUrl: "/Plan9.svg",
      title: "Plan 9",
      cnurl: "http://9p.io/wiki/plan9/Installation_instructions/index.html"));

  // itemList.add(Item(
  //     imgUrl: "/RustWASM.svg",
  //     title: "Rust and WebAssembly",
  //     cnurl: "https://rustwasm.github.io/docs.html"));
  itemList.add(Item(
      imgUrl: "/FFmpeg.svg",
      title: "FFmpeg",
      cnurl: "https://ffmpeg.org/ffmpeg-all.html#Synopsis"));
  itemList.add(Item(
      imgUrl: "/Alpine.svg",
      title: "Alpine Linux",
      cnurl:
          "https://docs.alpinelinux.org/user-handbook/0.1a/Installing/medium.html"));
  itemList.add(Item(
      imgUrl: "/Etcher.svg",
      title: "Etcher",
      cnurl: "https://etcher-docs.balena.io/#supported-operating-systems"));
  itemList.add(Item(
      imgUrl: "/Arch%20Linux.svg",
      title: "Arch Linux",
      cnurl: "https://wiki.archlinuxcn.org/wiki/%E9%A6%96%E9%A1%B5"));
  itemList.add(Item(
      imgUrl: "/Windows.svg",
      title: "Windows",
      cnurl: "https://learn.microsoft.com/zh-cn/windows"));
  itemList.add(Item(
      imgUrl: "/Windows.svg",
      title: "Windows Commands",
      cnurl:
          "https://learn.microsoft.com/zh-cn/windows-server/administration/windows-commands/windows-commands"));
  itemList.add(Item(
      imgUrl: "/MS-DOS.svg",
      title: "MS-DOS",
      cnurl:
          "https://zh.wikipedia.org/wiki/MS-DOS%E5%91%BD%E4%BB%A4%E5%88%97%E8%A1%A8"));
  itemList.add(Item(
      imgUrl: "/ActixWeb.svg",
      title: "Actix Web",
      cnurl: "https://actix.rs/docs/getting-started"));
  itemList.add(Item(
      imgUrl: "/Rocket.svg",
      title: "Rocket",
      cnurl: "https://rocket.rs/guide/v0.5/getting-started/#getting-started"));
  itemList.add(Item(
      imgUrl: "/Eclipse%20IDE.svg",
      title: "AspectJ",
      cnurl:
          "https://eclipse.dev/aspectj/doc/released/progguide/starting.html"));
  itemList.add(Item(
      imgUrl: "/OW2_ASM.svg", title: "OW2 ASM", cnurl: "https://asm.ow2.io"));
  itemList.add(Item(
      imgUrl: "/Figma.svg",
      title: "Figma Developers",
      cnurl: "https://www.figma.com/developers"));
  itemList.add(Item(
      imgUrl: "/XOrg.svg",
      title: "X Window System",
      cnurl: "https://www.x.org/releases/current/doc/index.html"));
  itemList.add(Item(
      imgUrl: "/OCaml.svg",
      title: "OCaml",
      cnurl: "https://ocaml.org/docs/installing-ocaml"));
  itemList.add(Item(
      imgUrl: "/KDE.svg",
      title: "KDE Developer",
      cnurl: "https://develop.kde.org/docs/getting-started"));
  itemList.add(Item(
      imgUrl: "/Unicode.svg",
      title: "Unicode",
      cnurl: "https://www.unicode.org/versions/Unicode16.0.0"));
  itemList.add(Item(
      imgUrl: "/vcpkg.svg",
      title: "vcpkg",
      cnurl: "https://learn.microsoft.com/zh-cn/vcpkg"));
  itemList.add(Item(
      imgUrl: "/Maven.svg",
      title: "Maven",
      cnurl: "https://maven.apache.org/ref/current"));
  itemList.add(Item(
      imgUrl: "/DevContainer.svg",
      title: "Dev Container",
      cnurl: "https://containers.dev/overview"));
  itemList.add(Item(
      imgUrl: "/containerd.svg",
      title: "containerd",
      cnurl:
          "https://github.com/containerd/containerd/blob/main/docs/getting-started.md#getting-started-with-containerd"));
  itemList.add(Item(
      imgUrl: "/Bazel.svg",
      title: "Bazel",
      cnurl: "https://bazel.build/run/build?hl=zh-cn"));
  // itemList.add(Item(
  //     imgUrl: "/BusyBox.svg",
  //     title: "BusyBox",
  //     cnurl: "https://busybox.net/downloads/BusyBox.html"));
  itemList.add(Item(
      imgUrl: "/Zookeeper.svg",
      title: "Zookeeper",
      cnurl:
          "https://zookeeper.apache.org/doc/current/zookeeperStarted.html#getting-started-coordinating-distributed-applications-with-zooKeeper"));
  itemList.add(Item(
      imgUrl: "/WrenAI.svg",
      title: "Wren AI",
      cnurl: "https://docs.getwren.ai/oss/overview/introduction"));
  itemList.add(Item(
      imgUrl: "/quiche.svg",
      title: "quiche",
      cnurl: "https://docs.quic.tech/quiche"));
  itemList.add(Item(
      imgUrl: "/OpenSSL.svg",
      title: "OpenSSL",
      cnurl: "https://docs.openssl.org/master"));
  itemList.add(Item(
      imgUrl: "/OpenEuler.svg",
      title: "OpenEuler",
      cnurl: "https://docs.openeuler.org/zh"));
  itemList.add(Item(
      imgUrl: "/Datadog.svg",
      title: "Datadog",
      cnurl: "https://docs.datadoghq.com/getting_started/application"));
  itemList.add(Item(
      imgUrl: "/Wireshark.svg",
      title: "Wireshark",
      cnurl: "https://www.wireshark.org/docs/wsug_html"));
  // itemList.add(Item(
  //     imgUrl: "/Buildroot.svg",
  //     title: "Buildroot",
  //     cnurl: "https://buildroot.org/downloads/manual/manual.html#_getting_started"));
  itemList.add(Item(
      imgUrl: "/SWC.svg",
      title: "SWC",
      cnurl: "https://swc.rs/docs/getting-started"));
  itemList.add(Item(
      imgUrl: "/Qdrant.svg",
      title: "Qdrant",
      cnurl: "https://qdrant.tech/documentation/quickstart"));
  itemList.add(Item(
      imgUrl: "/HuggingFace.svg",
      title: "Hugging Face",
      cnurl: "https://huggingface.co/docs/transformers/quicktour"));
  itemList.add(Item(
      imgUrl: "/Ollama.svg",
      title: "Ollama",
      cnurl:
          "https://github.com/ollama/ollama/blob/main/README.md#quickstart"));
  itemList.add(Item(
      imgUrl: "/Grafana.svg",
      title: "Grafana",
      cnurl: "https://grafana.com/docs/grafana/latest/getting-started"));
  itemList.add(Item(
      imgUrl: "/Prometheus.svg",
      title: "Prometheus",
      cnurl: "https://prometheus.io/docs/introduction/first_steps"));
  itemList.add(Item(
      imgUrl: "/Cilium.svg",
      title: "Cilium",
      cnurl: "https://docs.cilium.io/en/stable/#getting-started"));
  itemList.add(Item(
      imgUrl: "/Hubble.svg",
      title: "Hubble",
      cnurl:
          "https://github.com/cilium/hubble?tab=readme-ov-file#getting-started"));
  itemList.add(Item(
      imgUrl: "/Tetragon.svg",
      title: "Tetragon",
      cnurl: "https://tetragon.io/docs/getting-started/install-k8s"));
  itemList.add(Item(
      imgUrl: "/Remmina.svg",
      title: "Remmina",
      cnurl: "https://remmina.gitlab.io/remminadoc.gitlab.io"));
  itemList.add(Item(
      imgUrl: "/Chat2DB.svg",
      title: "Chat2DB",
      cnurl:
          "https://chat2db-ai.com/resources/docs/start-guide/getting-started"));
  itemList.add(Item(
      imgUrl: "/Selenium.svg",
      title: "Selenium",
      cnurl:
          "https://www.selenium.dev/documentation/webdriver/getting_started"));
  itemList.add(Item(
      imgUrl: "/OpenAIPlatform.svg",
      title: "OpenAI Platform",
      cnurl: "https://platform.openai.com/docs/quickstart"));
  itemList.add(Item(
      imgUrl: "/OpenHands.svg",
      title: "OpenHands",
      cnurl:
          "https://github.com/All-Hands-AI/OpenHands?tab=readme-ov-file#-quick-start"));
  itemList.add(Item(
      imgUrl: "/OpenAIPlatform.svg",
      title: "universe",
      cnurl:
          "https://github.com/openai/universe?tab=readme-ov-file#getting-started"));
  itemList.add(Item(
      imgUrl: "/minikube.svg",
      title: "minikube",
      cnurl: "https://minikube.sigs.k8s.io/docs/start"));
  itemList.add(Item(
      imgUrl: "/IntelliJ_IDEA.svg",
      title: "IntelliJ IDEA",
      cnurl: "https://www.jetbrains.com/help/idea/getting-started.html"));
  itemList.add(Item(
      imgUrl: "/Fleet.svg",
      title: "JetBrains Fleet",
      cnurl: "https://www.jetbrains.com/help/fleet/getting-started.html"));
  itemList.add(Item(
      imgUrl: "/Space.svg",
      title: "JetBrains Space",
      cnurl: "https://www.jetbrains.com/help/space/getting-started.html"));
  itemList.add(Item(
      imgUrl: "/Metabase.svg",
      title: "Metabase",
      cnurl: "https://www.metabase.com/learn/metabase-basics/getting-started"));
  itemList.add(Item(
      imgUrl: "/TigerBeetle.svg",
      title: "TigerBeetle",
      cnurl: "https://docs.tigerbeetle.com/quick-start"));
  itemList.add(Item(
      imgUrl: "/Alibaba.svg",
      title: "AliDNS",
      cnurl: "https://www.alidns.com/knowledge?type=SETTING_DOCS#user"));
  itemList.add(Item(
      imgUrl: "/Aliyun.svg",
      title: "Alibaba Cloud",
      cnurl:
          "https://www.alibabacloud.com/help/zh/cloud-migration-guide-for-beginners/latest/overview"));
  itemList.add(Item(
      imgUrl: "/Cloudflare.svg",
      title: "1.1.1.1",
      cnurl: "https://developers.cloudflare.com/1.1.1.1/setup"));
  itemList.add(Item(
      imgUrl: "/MaterialWeb.svg",
      title: "Material Web",
      cnurl: "https://material-web.dev/about/quick-start"));
  itemList.add(Item(
      imgUrl: "/BaiduKaifa.svg",
      title: "Baidu Kaifa",
      cnurl: "https://kaifa.baidu.com"));
  itemList.add(Item(
      imgUrl: "/GooglePublicDNS.svg",
      title: "Google Public DNS",
      cnurl:
          "https://developers.google.com/speed/public-dns/docs/using?hl=zh-cn"));
  itemList.add(Item(
      imgUrl: "/Cursor.svg",
      title: "Cursor",
      cnurl: "https://docs.cursor.com/get-started/welcome#get-started"));
  itemList.add(Item(
      imgUrl: "/codeium.svg",
      title: "codeium",
      cnurl: "https://docs.codeium.com/getstarted/overview#get-started"));
  itemList.add(Item(
      imgUrl: "/Ghostty.svg",
      title: "Ghostty",
      cnurl: "https://ghostty.org/docs#get-started"));
  itemList.add(Item(
      imgUrl: "/Rsbuild.svg",
      title: "Rsbuild",
      cnurl: "https://rsbuild.dev/zh/guide/start/quick-start"));
  itemList.add(Item(
      imgUrl: "/Rolldown.svg",
      title: "Rolldown",
      cnurl: "https://rolldown.rs/guide/getting-started"));
  itemList.add(Item(
      imgUrl: "/AzurePipelines.svg",
      title: "Azure Pipelines",
      cnurl: "https://learn.microsoft.com/zh-cn/azure/devops/pipelines"));
  itemList.add(Item(
      imgUrl: "/CodeGeeX.svg",
      title: "CodeGeeX",
      cnurl: "https://github.com/THUDM/CodeGeeX4/blob/main/README_zh.md"));
  itemList.add(Item(
      imgUrl: "/ModelScope.svg",
      title: "ModelScope",
      cnurl: "https://modelscope.cn/docs/intro/quickstart"));
  itemList.add(Item(
      imgUrl: "/OpenInterpreter.svg",
      title: "Open Interpreter",
      // https://github.com/OpenInterpreter/open-interpreter?tab=readme-ov-file#quick-start
      cnurl:
          "https://github.com/OpenInterpreter/open-interpreter/blob/main/docs/README_ZH.md#%E5%BF%AB%E9%80%9F%E5%BC%80%E5%A7%8B"));
  itemList.add(Item(
      imgUrl: "/Gemini.svg",
      title: "Gemini API",
      cnurl:
          "https://ai.google.dev/gemini-api/docs/quickstart?hl=zh-cn&lang=rest"));
  itemList.add(Item(
      imgUrl: "/MetaLlama.svg",
      title: "Meta Llama",
      cnurl: "https://www.llama.com/docs/how-to-guides"));
  itemList.add(Item(
      imgUrl: "/NextChat.svg",
      title: "NextChat",
      cnurl:
          "https://github.com/ChatGPTNextWeb/NextChat/blob/main/README_CN.md#%E5%BC%80%E5%A7%8B%E4%BD%BF%E7%94%A8"));
  itemList.add(Item(
      imgUrl: "/Automa.svg",
      title: "Automa",
      cnurl: "https://docs.automa.site/guide/quick-start.html"));
  itemList.add(Item(
      imgUrl: "/Mintty.svg",
      title: "Mintty",
      cnurl: "https://mintty.github.io/mintty.1.html"));
  itemList.add(Item(
      imgUrl: "/Wasmer.svg",
      title: "Wasmer",
      cnurl: "https://docs.wasmer.io/install"));
  itemList.add(
      Item(imgUrl: "/Skia.svg", title: "Skia", cnurl: "https://skia.org/docs"));
  itemList.add(Item(
      imgUrl: "/Skia.svg",
      title: "CanvasKit",
      cnurl: "https://skia.org/docs/user/modules/quickstart"));
  itemList.add(Item(
      imgUrl: "/Lima.svg",
      title: "Lima",
      cnurl: "https://lima-vm.io/docs/usage"));
  itemList.add(Item(
      imgUrl: "/libimobiledevice.svg",
      title: "libimobiledevice",
      cnurl: "https://libimobiledevice.org/#get-started"));
  itemList.add(Item(
      imgUrl: "/AssemblyScript.svg",
      title: "AssemblyScript",
      cnurl: "https://www.assemblyscript.org/getting-started.html"));
  itemList.add(Item(
      imgUrl: "/MLIR.svg",
      title: "MLIR",
      cnurl: "https://mlir.llvm.org/getting_started"));
  itemList.add(Item(
      imgUrl: "/Pintree.svg",
      title: "Pintree",
      cnurl: "https://docs.pintree.io/zh/guide/open-source"));
  itemList.add(Item(
      imgUrl: "/JavaScript.svg",
      title: "QuickJS",
      cnurl: "https://bellard.org/quickjs/quickjs.html#Quick-start"));
  itemList.add(Item(
      imgUrl: "/BoaJS.svg",
      title: "Boa",
      cnurl: "https://docs.rs/boa_engine/latest/boa_engine/#example-usage"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "Rusty V8 Binding",
      cnurl: "https://docs.rs/v8/latest/v8/#example"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "The Rust Style Guide",
      cnurl:
          "https://doc.rust-lang.org/stable/style-guide/#the-default-rust-style"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "Pepe",
      cnurl:
          "https://github.com/omarmhaimdat/pepe/tree/master?tab=readme-ov-file#usage"));
  itemList.add(Item(
      imgUrl: "/COSMIC_Toolkit.svg",
      title: "COSMIC Toolkit",
      cnurl: "https://pop-os.github.io/libcosmic-book/introduction.html"));
  itemList.add(Item(
      imgUrl: "/Trunk.svg",
      title: "Trunk",
      cnurl: "https://trunkrs.dev/#getting-started"));
  itemList.add(Item(
      imgUrl: "/Cargo.svg",
      title: "Cargo Remote",
      cnurl: "https://github.com/sgeisler/cargo-remote"));
  itemList.add(Item(
      imgUrl: "/Prefix.svg",
      title: "Pixi",
      cnurl: "https://pixi.sh/latest/#installation"));
  itemList.add(Item(
      imgUrl: "/mingw-w64.svg",
      title: "mingw-w64",
      cnurl: "https://www.mingw-w64.org/getting-started/msys2-llvm"));
  itemList.add(Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "DeepSeek",
      cnurl:
          "https://github.com/deepseek-ai/DeepSeek-R1?tab=readme-ov-file#6-how-to-run-locally"));
  itemList.add(Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "DeepEP",
      cnurl:
          "https://github.com/deepseek-ai/DeepEP?tab=readme-ov-file#quick-start"));
  itemList.add(Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "DeepGEMM",
      cnurl:
          "https://github.com/deepseek-ai/DeepGEMM?tab=readme-ov-file#quick-start"));
  itemList.add(Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "DeepSeek 3FS",
      cnurl:
          "https://github.com/deepseek-ai/3FS/blob/main/deploy/README.md#3fs-setup-guide"));
  itemList.add(Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "Smallpond",
      cnurl:
          "https://github.com/deepseek-ai/smallpond/blob/main/docs/source/getstarted.rst"));
  itemList.add(Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "FlashMLA",
      cnurl:
          "https://github.com/deepseek-ai/FlashMLA?tab=readme-ov-file#quick-start"));
  itemList.add(Item(
      imgUrl: "/AppFlowy.svg",
      title: "AppFlowy",
      cnurl:
          "https://docs.appflowy.io/docs/appflowy/install-appflowy/installation-methods/installing-with-docker"));
  itemList.add(Item(
      imgUrl: "/PinganCloud.svg",
      title: "Ping An Cloud",
      cnurl:
          "https://fincloud.pingan.com/ssr/help/compute/ecs/Quick_Start.Linux_Quick_Start.Create_Instance"));
  itemList.add(Item(
      imgUrl: "/Tencent%20Cloud.svg",
      title: "Tencent Cloud VM",
      cnurl: "https://www.tencentcloud.com/document/product/213/38678"));
  itemList.add(Item(
      imgUrl: "/BaiduOCR.svg",
      title: "Baidu OCR",
      cnurl: "https://cloud.baidu.com/doc/OCR/s/dk3iqnq51"));
  itemList.add(Item(
      imgUrl: "/LcJuvesBlog.svg",
      title: "LcJuves' Blog",
      cnurl: "https://blog.lcjuves.com"));
  itemList.add(Item(
      imgUrl: "/OpenVSX.svg",
      title: "Open VSX",
      cnurl:
          "https://github.com/EclipseFdn/open-vsx.org?tab=readme-ov-file#getting-started"));
  itemList.add(Item(
      imgUrl: "/LcJuvesBlog.svg",
      title: "Learn X in Y minutes",
      cnurl: "https://learnxinyminutes.com/c"));
  itemList.add(Item(
      imgUrl: "/Svelte.svg",
      title: "Svelte",
      cnurl: "https://svelte.dev/docs/svelte/getting-started"));
  itemList.add(Item(
      imgUrl: "/rust-analyzer.svg",
      title: "rust-analyzer",
      cnurl: "https://rust-analyzer.github.io/book/vs_code.html#vs-code"));
  itemList.add(Item(
    imgUrl: "/OpenStack.svg",
    title: "OpenStack",
    cnurl: "https://docs.openstack.org/devstack/latest/#quick-start",
  ));
  itemList.add(Item(
      imgUrl: "/HelloAlgo.svg",
      title: "Hello Algo",
      cnurl: "https://www.hello-algo.com/chapter_hello_algo"));
  itemList.add(Item(
      imgUrl: "/AVIF.svg",
      title: "AVIF",
      cnurl: "https://aomediacodec.github.io/av1-avif"));
  itemList.add(Item(
      imgUrl: "/glTF.svg",
      title: "glTF",
      cnurl: "https://www.khronos.org/gltf/#gltf-intro"));
  itemList.add(Item(
      imgUrl: "/Chrome.svg",
      title: "Chrome DevTools",
      cnurl: "https://developer.chrome.com/docs/devtools?hl=zh-cn"));
  itemList.add(Item(
      imgUrl: "/AFFiNE.svg",
      title: "AFFiNE",
      cnurl: "https://docs.affine.pro/docs/development/quick-start"));
  itemList.add(Item(
      imgUrl: "/FingerprintJS.svg",
      title: "FingerprintJS",
      cnurl: "https://dev.fingerprint.com/docs/quick-start-guide"));
  itemList.add(Item(
      imgUrl: "/UbuntuServer.svg",
      title: "Ubuntu Server",
      cnurl:
          "https://documentation.ubuntu.com/server/tutorial/basic-installation/#basic-installation"));
  itemList.add(Item(
      imgUrl: "/J1Assistant.svg",
      title: "J1 Assistant",
      cnurl: "https://matter.ai"));
  itemList.add(Item(
      imgUrl: "/FVM.svg",
      title: "FVM",
      cnurl: "https://fvm.app/documentation/guides/basic-commands"));
  itemList.add(Item(
      imgUrl: "/Tabnine.svg",
      title: "Tabnine",
      cnurl: "https://docs.tabnine.com/main/getting-started/quickstart"));
  itemList.add(Item(
      imgUrl: "/Continue.svg",
      title: "Continue",
      cnurl: "https://docs.continue.dev/getting-started"));
  itemList.add(Item(
      imgUrl: "/VSCodium.svg",
      title: "VSCodium",
      cnurl: "https://github.com/VSCodium/vscodium/blob/master/docs/index.md"));
  itemList.add(Item(
      imgUrl: "/_Jekyll.svg",
      title: "Jekyll",
      cnurl: "https://jekyllrb.com/docs"));
  itemList.add(Item(
      imgUrl: "/W3C.svg",
      title: "WebDriver BiDi",
      cnurl: "https://w3c.github.io/webdriver-bidi"));
  itemList.add(Item(
      imgUrl: "/Tor.svg",
      title: "Tor",
      cnurl: "https://support.torproject.org/zh-CN"));
  itemList.add(Item(
      imgUrl: "/LOKINET.svg",
      title: "LOKINET",
      cnurl: "https://www.lokinet.org/faq"));
  itemList.add(Item(
      imgUrl: "/Oxen.svg",
      title: "Oxen",
      cnurl:
          "https://docs.oxen.io/oxen-docs/using-the-oxen-blockchain/oxen-service-node-guides/setting-up-an-oxen-service-node"));
  itemList.add(Item(
      imgUrl: "/SESSION.svg",
      title: "SESSION",
      cnurl: "https://getsession.org/faq"));
  itemList.add(Item(
      imgUrl: "/OpenRouter.svg",
      title: "OpenRouter",
      cnurl: "https://openrouter.ai/docs/quickstart"));
  itemList.add(Item(
      imgUrl: "/uutils.svg",
      title: "uutils coreutils",
      cnurl:
          "https://uutils.github.io/coreutils/docs/installation.html#cargo"));
  itemList.add(Item(
      imgUrl: "/OpenBSD.svg",
      title: "OpenBSD",
      cnurl: "https://www.openbsd.org/76.html"));
  itemList.add(Item(
      imgUrl: "/OpenGroup.svg",
      title: "POSIX",
      cnurl:
          "https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap01.html"));
  itemList.add(Item(
      imgUrl: "/OpenGroup.svg",
      title: "POSIX Headers",
      cnurl:
          "https://pubs.opengroup.org/onlinepubs/9799919799/idx/headers.html"));
  itemList.add(Item(
      imgUrl: "/OpenGroup.svg",
      title: "POSIX Shell",
      cnurl:
          "https://pubs.opengroup.org/onlinepubs/9799919799/utilities/V3_chap02.html"));
  itemList.add(Item(
      imgUrl: "/AWK.svg",
      title: "AWK",
      cnurl:
          "https://pubs.opengroup.org/onlinepubs/9799919799/utilities/awk.html"));
  itemList.add(Item(
      imgUrl: "/GNU.svg",
      title: "GAWK",
      cnurl:
          "https://www.gnu.org/software/gawk/manual/gawk.html#toc-Getting-Started-with-awk"));
  itemList.add(Item(
      imgUrl: "/Eko.svg",
      title: "Eko",
      cnurl: "https://eko.fellou.ai/docs/getting-started/quickstart"));
  itemList.add(Item(
      imgUrl: "/Serverpod.svg",
      title: "Serverpod",
      cnurl: "https://docs.serverpod.dev/#command-line-tools"));
  // itemList.add(Item(
  //     imgUrl: "/Motion.svg",
  //     title: "Motion",
  //     cnurl: "https://motion.dev/docs/react-quick-start"));
  // itemList.add(Item(
  //     imgUrl: "https://web.lcjuves.com/Material-for-MkDocs-Icon.svg",
  //     title: "Material for MkDocs",
  //     cnurl: "https://squidfunk.github.io/mkdocs-material/getting-started"));
  itemList.add(Item(
      imgUrl: "/GitBook.svg",
      title: "GitBook",
      cnurl: "https://docs.gitbook.com/getting-started/quickstart"));
  itemList.add(Item(
      imgUrl: "/GCC.svg",
      title: "GCC",
      cnurl: "https://gcc.gnu.org/onlinedocs/gcc-14.2.0/gcc"));
  itemList.add(Item(
      imgUrl: "/GDB.svg",
      title: "GDB",
      cnurl: "https://sourceware.org/gdb/download/onlinedocs/gdb.html"));
  itemList.add(Item(
      imgUrl: "/emoji_u1f41b.svg",
      title: "LLDB",
      cnurl: "https://lldb.llvm.org/use/tutorial.html"));
  itemList.add(Item(
      imgUrl: "/Buildah.svg",
      title: "Buildah",
      cnurl:
          "https://buildah.io/blogs/2017/11/02/getting-started-with-buildah.html#building-oci-container-images"));
  itemList.add(Item(
      imgUrl: "/Meson.svg",
      title: "Meson",
      cnurl: "https://mesonbuild.com/Quick-guide.html#requirements"));
  itemList.add(Item(
      imgUrl: "/Ionic.svg",
      title: "Ionic React",
      cnurl:
          "https://ionicframework.com/docs/react/quickstart#what-is-ionic-framework"));
  itemList.add(Item(
      imgUrl: "/Ionic.svg",
      title: "Ionic Vue",
      cnurl:
          "https://ionicframework.com/docs/vue/quickstart#what-is-ionic-framework"));
  itemList.add(Item(
      imgUrl: "/WebRTC.svg",
      title: "WebRTC",
      cnurl: "https://webrtc.org/getting-started/overview?hl=zh-cn"));
  itemList.add(Item(
      imgUrl: "/FlatBuffers.svg",
      title: "FlatBuffers",
      cnurl: "https://flatbuffers.dev/quick_start"));
  itemList.add(Item(
      imgUrl: "/Hono.svg",
      title: "Hono",
      cnurl: "https://hono.dev/docs/getting-started/basic#starter"));
  itemList.add(Item(
      imgUrl: "/Lobster.svg",
      title: "Lobster",
      cnurl: "https://aardappel.github.io/lobster/getting_started.html"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "Evcxr Rust REPL",
      cnurl: "https://github.com/evcxr/evcxr/blob/main/evcxr_repl/README.md"));
  itemList.add(Item(
      imgUrl: "/DeltaLake.svg",
      title: "Delta Lake",
      cnurl: "https://delta-io.github.io/delta-rs/usage/installation"));
  itemList.add(Item(
      imgUrl: "/StirlingPDF.svg",
      title: "Stirling PDF",
      cnurl:
          "https://docs.stirlingpdf.com/Installation/Docker%20Install#run-docker-container-with-docker-run"));
  itemList.add(Item(
      imgUrl: "/GN.svg",
      title: "GN",
      cnurl: "https://gn.googlesource.com/gn/+/main/docs/quick_start.md"));
  itemList.add(Item(
      imgUrl: "/Mojo.svg",
      title: "Firecrawl",
      cnurl: "https://docs.firecrawl.dev/introduction"));
  itemList.add(Item(
      imgUrl: "/qwik.svg",
      title: "qwik",
      cnurl: "https://qwik.dev/docs/getting-started"));
  itemList.add(Item(
      imgUrl: "/Nuxt.svg",
      title: "Nuxt",
      cnurl: "https://nuxt.com/docs/getting-started"));
  itemList.add(Item(
      imgUrl: "/OAuth.svg", title: "OAuth 2", cnurl: "https://oauth.net/2"));
  itemList.add(Item(
      imgUrl: "/OAuth.svg",
      title: "OAuth PKCE",
      cnurl: "https://oauth.net/2/pkce"));
  // itemList.add(Item(
  //     imgUrl: "/SDKMAN.svg",
  //     title: "SDKMAN",
  //     cnurl: "https://sdkman.io/install"));
  itemList.add(Item(
      imgUrl: "/MindSpore.svg",
      title: "MindSpore",
      cnurl: "https://www.mindspore.cn/install"));
  itemList.add(Item(
      imgUrl: "/ARCore.svg",
      title: "ARCore",
      cnurl:
          "https://developers.google.com/ar/develop/getting-started?hl=zh-cn"));
  itemList.add(Item(
      imgUrl: "/WebXR.svg",
      title: "WebXR",
      cnurl: "https://immersiveweb.dev/#gettingstartedbuildingawebxrwebsite"));
  itemList.add(Item(
      imgUrl: "/Buck2.svg",
      title: "Buck2",
      cnurl: "https://buck2.build/docs/about/getting_started"));
  // itemList.add(Item(
  //     imgUrl: "/OpenWebUI.svg",
  //     title: "Open WebUI",
  //     cnurl: "https://docs.openwebui.com/getting-started/quick-start"));
  // itemList.add(Item(
  //     imgUrl: "/Carbon.svg",
  //     title: "Carbon",
  //     cnurl: "https://docs.carbon-lang.dev/#getting-started"));
  itemList.add(Item(
      imgUrl: "/NextJS.svg",
      title: "NextJS",
      cnurl: "https://nextjs.org/docs/app/getting-started/installation"));
  itemList.add(Item(
      imgUrl: "/Mercurial.svg",
      title: "Mercurial",
      cnurl: "https://www.mercurial-scm.org/install"));
  itemList.add(Item(
      imgUrl: "/WebP.svg",
      title: "WebP",
      cnurl: "https://developers.google.com/speed/webp?hl=zh-cn"));
  itemList.add(Item(
      imgUrl: "/LLVM.svg",
      title: "Clang",
      cnurl: "https://clang.llvm.org/get_started.html"));
  itemList.add(Item(
      imgUrl: "/Windsurf.svg",
      title: "Windsurf",
      cnurl: "https://docs.codeium.com/windsurf/getting-started"));
  itemList.add(Item(
      imgUrl: "/Windows.svg",
      title: "Windows PE Format",
      cnurl:
          "https://learn.microsoft.com/zh-cn/windows/win32/debug/pe-format"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "rustdoc",
      cnurl: "https://doc.rust-lang.org/rustdoc"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "rustup",
      cnurl: "https://rust-lang.github.io/rustup"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "reqwest",
      cnurl: "https://docs.rs/reqwest/latest"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "Comprehensive Rust",
      cnurl: "https://google.github.io/comprehensive-rust/zh-CN"));
  itemList.add(Item(
      imgUrl: "/sbt.svg",
      title: "sbt",
      cnurl: "https://www.scala-sbt.org/1.x/docs/sbt-by-example.html"));
  itemList.add(Item(
      imgUrl: "/Java_with_Ant.svg",
      title: "Ant",
      cnurl: "https://ant.apache.org/manual/install.html#getting"));
  itemList.add(Item(
      imgUrl: "/MistralAI.svg",
      title: "Mistral AI",
      cnurl: "https://docs.mistral.ai/getting-started/quickstart"));
  itemList.add(Item(
      imgUrl: "/Metaflow.svg",
      title: "Metaflow",
      cnurl: "https://docs.metaflow.org/getting-started/install"));
  itemList.add(Item(
      imgUrl: "/_WeChat.svg",
      title: "WeChat Mini Program",
      cnurl:
          "https://developers.weixin.qq.com/miniprogram/dev/framework/quickstart/getstart.html"));
  itemList.add(Item(
      imgUrl: "/Douyin.svg",
      title: "Douyin Mini App",
      cnurl:
          "https://developer.open-douyin.com/docs/resource/zh-CN/mini-app/develop/tutorial/beginner/todo-list-app-dev"));
  // itemList.add(Item(
  //     imgUrl: "/Taro.svg",
  //     title: "Taro",
  //     cnurl: "https://docs.taro.zone/docs/GETTING-STARTED"));
  itemList.add(Item(
      imgUrl: "/u-root.svg",
      title: "u-root",
      cnurl: "https://u-root.org/#get-started"));
  itemList.add(Item(
      imgUrl: "/Rust.svg",
      title: "Rust UEFI",
      cnurl: "https://rust-osdev.github.io/uefi-rs/tutorial/app.html"));
  itemList.add(Item(
      imgUrl: "/iroh.svg",
      title: "iroh",
      cnurl: "https://www.iroh.computer/docs/quickstart"));
  itemList.add(Item(
      imgUrl: "/Bazzite.svg",
      title: "Bazzite",
      cnurl: "https://docs.bazzite.gg/General/Installation_Guide"));
  itemList.add(Item(
      imgUrl: "/UNIX.svg",
      title: "Unix ELF",
      cnurl:
          "https://zh.wikipedia.org/zh-cn/%E5%8F%AF%E5%9F%B7%E8%A1%8C%E8%88%87%E5%8F%AF%E9%8F%88%E6%8E%A5%E6%A0%BC%E5%BC%8F"));
  itemList.add(Item(
      imgUrl: "/UNIX.svg",
      title: "Unix domain socket",
      cnurl: "https://en.wikipedia.org/wiki/Unix_domain_socket"));
  itemList.add(Item(
      imgUrl: "/AsciiDoc.svg",
      title: "AsciiDoc",
      cnurl: "https://asciidoc.org/#try"));
  itemList.add(Item(
      imgUrl: "/ktunnel.svg",
      title: "ktunnel",
      cnurl: "https://github.com/omrikiei/ktunnel?tab=readme-ov-file#usage"));
  itemList.add(Item(
      imgUrl: "/UNIX.svg",
      title: "The UNIX® Standard",
      cnurl: "https://www.opengroup.org/membership/forums/platform/unix"));
  itemList.add(Item(
      imgUrl: "https://web.lcjuves.com/donate/Alipay.svg",
      title: "Donate to the author",
      cnurl: "https://web.lcjuves.com/donate/Alipay.svg"));
  itemList.add(Item(
      imgUrl: "/musl-libc.svg",
      title: "musl libc",
      cnurl: "https://wiki.musl-libc.org/getting-started"));
  itemList.add(Item(
      imgUrl: "/systemd.svg", title: "systemd", cnurl: "https://systemd.io"));
  itemList.add(Item(
      imgUrl: "/IT-Tools.svg",
      title: "IT - TOOLS",
      cnurl: "https://it-tools.tech"));
  itemList.add(
      Item(imgUrl: "/CRDTs.svg", title: "CRDTs", cnurl: "https://crdt.tech"));
  itemList.add(Item(
      imgUrl: "/HTTPieCLI.svg",
      title: "HTTPie CLI",
      cnurl: "https://httpie.io/docs/cli/installation"));
  itemList.add(Item(
      imgUrl: "/Microsoft.svg",
      title: "WSL",
      cnurl: "https://learn.microsoft.com/zh-cn/windows/wsl/install"));
  itemList.add(Item(
      imgUrl: "/LSP.svg",
      title: "LSP / LSIF",
      cnurl:
          "https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification"));
  itemList.add(Item(
      imgUrl: "/CocoaPods.svg",
      title: "CocoaPods",
      cnurl: "https://guides.cocoapods.org/using/getting-started.html"));
  itemList.add(Item(
      imgUrl: "/UUP-dump.svg",
      title: "UUP dump",
      cnurl: "https://uupdump.net"));
  itemList.add(Item(
      imgUrl: "/XunFeiOpenPlatform.svg",
      title: "iFLYTEK Open Platform",
      cnurl: "https://www.xfyun.cn/doc/platform/quickguide.html"));
  itemList.add(Item(
      imgUrl: "/Apple.svg",
      title: "Mach-O EF",
      cnurl:
          "https://developer.apple.com/library/archive/documentation/Performance/Conceptual/CodeFootprint/Articles/MachOOverview.html"));
  // itemList.add(Item(
  //     imgUrl: "/MATLAB.svg",
  //     title: "MATLAB",
  //     cnurl: "https://ww2.mathworks.cn/help/?s_tid=hp_ff_l_doc"));
  // itemList.add(Item(
  //     imgUrl: "/OpenGL.svg",
  //     title: "OpenGL",
  //     cnurl: "https://www.khronos.org/opengl/wiki/Getting_Started"));
  // itemList.add(Item(
  //     imgUrl: "/OpenSSH.svg",
  //     title: "OpenSSH",
  //     cnurl: "https://www.openssh.com/manual.html"));
  // itemList.add(Item(
  //     imgUrl: "/RocketMQ.svg",
  //     title: "RocketMQ",
  //     cnurl: "https://rocketmq.apache.org/zh/docs/quickStart/01quickstart"));
  itemList.add(Item(
      imgUrl: "/Aider.svg",
      title: "Aider",
      cnurl: "https://aider.chat/#getting-started"));
  itemList.add(Item(
      imgUrl: "/Zed.svg",
      title: "Zed",
      cnurl: "https://zed.dev/docs/#getting-started"));
  // itemList.add(Item(
  //     imgUrl: "/WASI.svg", title: "WASI", cnurl: "https://wasi.dev"));
  // itemList.add(Item(
  //     imgUrl: "/GPTAcademic.svg",
  //     title: "GPT Academic",
  //     cnurl: "https://github.com/binary-husky/gpt_academic/wiki/online"));
  // itemList.add(Item(
  //     imgUrl: "/Roo-Cline.svg",
  //     title: "Roo-Cline",
  //     cnurl: "https://github.com/RooVetGit/Roo-Cline"));
  // itemList.add(Item(
  //     imgUrl: "/TabbyML.svg",
  //     title: "Tabby ML",
  //     cnurl: "https://tabby.tabbyml.com/docs"));
  // itemList.add(Item(
  //     imgUrl: "/MarsCode.svg",
  //     title: "MarsCode",
  //     cnurl: "https://docs.marscode.com"));

  // itemList.add(Item(
  //     imgUrl: "/LibreOffice.svg",
  //     title: "LibreOffice",
  //     cnurl: "https://documentation.libreoffice.org/zh-cn/docs"));
  itemList.add(Item(
      imgUrl: "/RISC-V.svg",
      title: "RISC-V",
      cnurl: "https://riscv.org/developers"));
  itemList.add(Item(
      imgUrl: "/RISC-V.svg",
      title: "RISCV Sail Model",
      cnurl:
          "https://github.com/riscv/sail-riscv?tab=readme-ov-file#getting-started"));
  itemList.add(Item(
      imgUrl: "/arm.svg",
      title: "Arm Embedded Compiler",
      cnurl:
          "https://developer.arm.com/documentation/100748/0623/Getting-Started?lang=en"));
  itemList.add(Item(
      imgUrl: "/e-CNY.svg",
      title: "LoongArch",
      cnurl:
          "https://loongson.github.io/LoongArch-Documentation/README-CN.html#getting-start"));

  // itemList.add(Item(
  //     imgUrl: "/CommonLisp.svg",
  //     title: "Common Lisp",
  //     cnurl: "https://lisp-lang.org/learn/getting-started"));
  itemList.add(Item(
      imgUrl: "/Cloudflare.svg",
      title: "Pingora",
      cnurl:
          "https://github.com/cloudflare/pingora/blob/main/docs/quick_start.md"));

  // itemList.add(Item(
  //     imgUrl: "/Xen.svg",
  //     title: "Xen",
  //     cnurl: "https://wiki.xenproject.org/wiki/Main_Page"));

  // itemList.add(Item(
  //     imgUrl: "/WINE.svg",
  //     title: "WineHQ",
  //     cnurl: "https://gitlab.winehq.org/wine/wine/-/wikis/Wine-User's-Guide"));
  itemList
      .sort((a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()));
  final items = Items(itemList: itemList);
  final itemsPB = File('../../items.pb');
  await itemsPB.writeAsBytes(items.writeToBuffer(), flush: true);
}
