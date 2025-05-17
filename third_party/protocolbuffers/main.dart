import 'dart:io';

import 'lib/items.pb.dart';

Future main(List<String> args) async {
  final List<Item> itemList = List.empty(growable: true);
  itemList.add(
    Item(
      imgUrl: "/Flutter.svg",
      title: "Flutter",
      enurl:
          "https://docs.flutter.dev/get-started/install/macos/mobile-android",
      cnurl: "https://docs.flutter.cn/get-started/install/windows/mobile",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Gitpod.svg",
      title: "Gitpod",
      enurl: "#",
      cnurl:
          "https://www.gitpod.io/docs/introduction/getting-started#a-gitpodyml-example",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Android.svg",
      title: "Android",
      enurl:
          "https://developer.android.com/codelabs/basic-android-kotlin-compose-first-app?hl=en#0",
      cnurl:
          "https://developer.android.google.cn/codelabs/basic-android-kotlin-compose-first-app?hl=zh-cn#0",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/hex-rays.svg",
      title: "hex-rays",
      enurl: "https://docs.hex-rays.com/getting-started/install-ida",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/e-CNY.svg",
      title: "How To Cook",
      enurl:
          "https://cook.aiursoft.cn/tips/%E5%8E%A8%E6%88%BF%E5%87%86%E5%A4%87",
      cnurl: "#",
      currentlyOnlySupportsChinese: true,
    ),
  );
  // itemList.add(
  //   Item(
  //     imgUrl: "/Apktool.svg",
  //     title: "Apktool",
  //     enurl: "https://apktool.org/docs/the-basics/intro",
  //     cnurl: "#",
  //   ),
  // );
  itemList.add(
    Item(
      imgUrl: "/Android.svg",
      title: "CameraX",
      enurl:
          "https://developer.android.com/codelabs/camerax-getting-started?hl=en#0",
      cnurl:
          "https://developer.android.google.cn/codelabs/camerax-getting-started?hl=zh-cn#0",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Android.svg",
      title: "ExoPlayer",
      enurl: "https://developer.android.com/codelabs/exoplayer-intro?hl=en#0",
      cnurl:
          "https://developer.android.google.cn/codelabs/exoplayer-intro?hl=zh-cn#0",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Android.svg",
      title: "ADPF",
      enurl: "https://developer.android.com/games/optimize/adpf?hl=en",
      cnurl: "https://developer.android.google.cn/games/optimize/adpf?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Android.svg",
      title: "Android NDK",
      enurl: "https://developer.android.com/ndk/guides?hl=en",
      cnurl: "https://developer.android.google.cn/ndk/guides?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Android.svg",
      title: "SDK CmdLine Tools",
      enurl: "https://developer.android.com/tools?hl=en",
      cnurl: "https://developer.android.google.cn/tools?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Android.svg",
      title: "Android Decompile",
      enurl: "#",
      cnurl: "https://github.lcjuves.com/java/android/decompile",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/_Atom.svg",
      title: "Atom",
      enurl: "#",
      cnurl:
          "https://flight-manual.atom-editor.cc/getting-started/sections/atom-basics",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Android.svg",
      title: "AOSP",
      enurl: "https://source.android.com/docs/setup/start?hl=en",
      cnurl: "https://source.android.com/docs/setup/start?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Fuchsia.svg",
      title: "Fuchsia",
      enurl: "https://fuchsia.dev/fuchsia-src/get-started?hl=en",
      cnurl: "https://fuchsia.dev/fuchsia-src/get-started?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Jetty.svg",
      title: "Jetty",
      enurl: "#",
      cnurl: "https://jetty.org/docs/jetty/12/programming-guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MAX.svg",
      title: "MAX",
      enurl: "#",
      cnurl: "https://docs.modular.com/stable/max/get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Magic.svg",
      title: "Magic",
      enurl: "#",
      cnurl: "https://docs.modular.com/stable/magic",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/C3.svg",
      title: "C3",
      enurl: "#",
      cnurl: "https://c3-lang.org/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SageMath.svg",
      title: "SageMath",
      enurl: "#",
      cnurl: "https://www.sagemath.org/tour-quickstart.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Sage.svg",
      title: "Sage",
      enurl: "#",
      cnurl:
          "https://github.com/sagemath/sage?tab=readme-ov-file#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Square.svg",
      title: "Okio",
      enurl: "#",
      cnurl: "https://square.github.io/okio",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LeakCanary.svg",
      title: "LeakCanary",
      enurl: "#",
      cnurl: "https://square.github.io/leakcanary/getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Android.svg",
      title: "Android XR",
      enurl: "https://developer.android.com/develop/xr/get-started?hl=en",
      cnurl:
          "https://developer.android.google.cn/develop/xr/get-started?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apache%20Groovy.svg",
      title: "Groovy",
      enurl: "#",
      cnurl: "https://docs.groovy-lang.org/latest/html/documentation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Scala.svg",
      title: "Scala",
      enurl: "#",
      cnurl:
          "https://docs.scala-lang.org/getting-started/sbt-track/getting-started-with-scala-and-sbt-on-the-command-line.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ScalaJS.svg",
      title: "ScalaJS",
      enurl: "#",
      cnurl: "https://www.scala-js.org/doc/tutorial/scalajs-vite.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MDN.svg",
      title: "MDN Web",
      enurl: "https://developer.mozilla.org/en-US/docs/Web",
      cnurl: "https://developer.mozilla.org/zh-CN/docs/Web",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MDN.svg",
      title: "HTTP cookies",
      enurl: "https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/Cookies",
      cnurl: "https://developer.mozilla.org/zh-CN/docs/Web/HTTP/Guides/Cookies",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MDN.svg",
      title: "Types of attacks",
      enurl:
          "https://developer.mozilla.org/en-US/docs/Web/Security/Types_of_attacks",
      cnurl:
          "https://developer.mozilla.org/zh-CN/docs/Web/Security/Types_of_attacks",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Kotlin.svg",
      title: "Kotlin",
      enurl: "#",
      cnurl: "https://kotlinlang.org/docs/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/kRPC.svg",
      title: "kRPC",
      enurl: "#",
      cnurl: "https://kotlin.github.io/kotlinx-rpc/get-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/KotlinMultiplatform.svg",
      title: "Kotlin Multiplatform",
      enurl: "#",
      cnurl:
          "https://www.jetbrains.com/help/kotlin-multiplatform-dev/get-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Kuikly.svg",
      title: "Kuikly",
      enurl:
          "https://github.com/Tencent-TDS/KuiklyUI?tab=readme-ov-file#getting-started",
      cnurl:
          "https://kuikly.tds.qq.com/%E5%BF%AB%E9%80%9F%E5%BC%80%E5%A7%8B/hello-world.html#%E6%96%B0%E5%BB%BAkuikly%E5%B7%A5%E7%A8%8B",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ReactNative.svg",
      title: "React Native",
      enurl: "#",
      cnurl: "https://reactnative.dev/docs/environment-setup",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Expo.svg",
      title: "Expo",
      enurl: "#",
      cnurl: "https://docs.expo.dev/get-started/create-a-project",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Vue.svg",
      title: "VueJS",
      enurl: "#",
      cnurl: "https://cn.vuejs.org/guide/quick-start.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Python.svg",
      title: "Python",
      enurl: "#",
      cnurl: "https://docs.python.org/zh-cn/3/tutorial/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "PyO3",
      enurl: "#",
      cnurl: "https://pyo3.rs/latest/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "numpy",
      enurl: "#",
      cnurl: "https://docs.rs/numpy/latest/numpy",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Ferrules",
      enurl: "#",
      cnurl:
          "https://github.com/AmineDiro/ferrules?tab=readme-ov-file#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ONNXRuntime.svg",
      title: "ONNX Runtime",
      enurl: "#",
      cnurl: "https://onnxruntime.ai/docs/get-started/with-c.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "ort",
      enurl: "#",
      cnurl: "https://ort.pyke.io",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ray.svg",
      title: "Ray Core",
      enurl: "#",
      cnurl:
          "https://docs.ray.io/en/latest/ray-core/walkthrough.html#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Dart.svg",
      title: "Dart",
      enurl: "https://dart.dev/language",
      cnurl: "https://dart.cn/language",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Dart.svg",
      title: "dio",
      enurl: "https://pub.dev/packages/dio#get-started",
      cnurl:
          "https://github.com/cfug/dio/blob/main/dio/README-ZH.md#%E5%BC%80%E5%A7%8B%E4%BD%BF%E7%94%A8",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Dart.svg",
      title: "Dart DevTools",
      enurl: "#",
      cnurl: "https://dart.dev/tools/dart-devtools",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Java.svg",
      title: "Java",
      enurl: "#",
      cnurl: "https://dev.java/learn/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JBang.svg",
      title: "JBang",
      enurl: "#",
      cnurl: "https://www.jbang.dev/documentation/guide/latest/usage.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Xamarin.svg",
      title: "Xamarin",
      enurl:
          "https://learn.microsoft.com/en-us/previous-versions/xamarin/get-started/quickstarts/app",
      cnurl:
          "https://learn.microsoft.com/zh-cn/previous-versions/xamarin/get-started/quickstarts/app",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Kubernetes.svg",
      title: "Kubernetes",
      enurl: "#",
      cnurl: "https://kubernetes.io/zh-cn/docs/setup",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/kind.svg",
      title: "kind",
      enurl: "#",
      cnurl: "https://kind.sigs.k8s.io/docs/user/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TypeScript.svg",
      title: "TypeScript",
      enurl: "#",
      cnurl:
          "https://www.typescriptlang.org/zh/docs/handbook/typescript-from-scratch.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TypeScript.svg",
      title: "JSDoc",
      enurl: "#",
      cnurl:
          "https://www.typescriptlang.org/docs/handbook/jsdoc-supported-types.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JenkinsCI.svg",
      title: "Jenkins",
      enurl: "#",
      cnurl: "https://www.jenkins.io/zh/doc/pipeline/tour/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MCP.svg",
      title: "MCP Java",
      enurl: "#",
      cnurl: "https://modelcontextprotocol.io/sdk/java/mcp-overview",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MCP.svg",
      title: "MCP Kotlin",
      enurl:
          "https://github.com/modelcontextprotocol/kotlin-sdk?tab=readme-ov-file#quick-start",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MCP.svg",
      title: "MCP TypeScript",
      enurl: "#",
      cnurl:
          "https://github.com/modelcontextprotocol/typescript-sdk?tab=readme-ov-file#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/_Unity.svg",
      title: "Unity",
      enurl:
          "https://docs.unity3d.com/2022.3/Documentation/Manual/Quickstart3D.html",
      cnurl: "https://docs.unity.cn/cn/2022.3/Manual/Quickstart3D.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Unreal%20Engine.svg",
      title: "Unreal Engine",
      enurl:
          "https://dev.epicgames.com/documentation/en-us/unreal-engine/understanding-the-basics-of-unreal-engine",
      cnurl:
          "https://dev.epicgames.com/documentation/zh-cn/unreal-engine/understanding-the-basics-of-unreal-engine",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/China%20Mobile.svg",
      title: "Mobile Open Platform",
      enurl: "#",
      cnurl: "https://dev.10086.cn/docInside",
      currentlyOnlySupportsChinese: true,
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ThreeJS.svg",
      title: "ThreeJS",
      enurl: "#",
      cnurl:
          "https://threejs.org/docs/index.html#manual/zh/introduction/Installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Deno.svg",
      title: "Deno",
      enurl: "#",
      cnurl: "https://docs.deno.com/runtime",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NodeJS.svg",
      title: "NodeJS",
      enurl: "#",
      cnurl:
          "https://nodejs.org/zh-cn/learn/getting-started/introduction-to-nodejs",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/PyTorch.svg",
      title: "PyTorch",
      enurl: "#",
      cnurl: "https://pytorch.org/get-started/locally",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/dotNET.svg",
      title: "dotNET",
      enurl: "#",
      cnurl: "https://docs.microsoft.com/zh-cn/dotnet",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/dotNET.svg",
      title: "dotNET MAUI",
      enurl:
          "https://learn.microsoft.com/en-us/dotnet/maui/get-started/installation",
      cnurl:
          "https://learn.microsoft.com/zh-cn/dotnet/maui/get-started/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Docker.svg",
      title: "Docker",
      enurl: "#",
      cnurl: "https://docs.docker.com",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TensorFlow.svg",
      title: "TensorFlow",
      enurl: "https://tensorflow.org/tutorials/quickstart/beginner?hl=en",
      cnurl:
          "https://tensorflow.google.cn/tutorials/quickstart/beginner?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Django.svg",
      title: "Django",
      enurl: "https://docs.djangoproject.com/en/5.1/intro/overview",
      cnurl: "https://docs.djangoproject.com/zh-hans/5.1/intro/overview",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenCV.svg",
      title: "OpenCV",
      enurl: "#",
      cnurl: "https://opencv.org/get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apache%20Hadoop.svg",
      title: "Hadoop",
      enurl:
          "https://hadoop.apache.org/docs/current/hadoop-project-dist/hadoop-common/SingleCluster.html",
      cnurl: "https://hadoop.apache.org/docs/r1.0.4/cn/quickstart.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Flink.svg",
      title: "Flink",
      enurl:
          "https://nightlies.apache.org/flink/flink-docs-release-1.20/docs/learn-flink/overview",
      cnurl:
          "https://nightlies.apache.org/flink/flink-docs-release-1.20/zh/docs/learn-flink/overview",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/_Markdown.svg",
      title: "Markdown",
      enurl: "https://www.markdownguide.org/getting-started",
      cnurl: "https://www.markdown.xyz/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Linux.svg",
      title: "Linux",
      enurl: "https://www.kernel.org/doc/html/latest/index.html",
      cnurl: "https://www.kernel.org/doc/html/latest/translations/zh_CN",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Linux.svg",
      title: "Linux XZ",
      enurl: "https://www.kernel.org/doc/html/latest/staging/xz.html",
      cnurl:
          "https://www.kernel.org/doc/html/latest/translations/zh_CN/staging/xz.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LinuxBoot.svg",
      title: "LinuxBoot",
      enurl: "#",
      cnurl: "https://www.linuxboot.org",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Linux%20Foundation.svg",
      title: "LF Projects",
      enurl: "#",
      cnurl: "https://www.linuxfoundation.org/projects",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GoLang.svg",
      title: "Go",
      enurl: "#",
      cnurl: "https://go.dev/doc/tutorial/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust",
      enurl: "https://www.rust-lang.org/learn/get-started",
      cnurl: "https://www.rust-lang.org/zh-CN/learn/get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust MIR",
      enurl: "#",
      cnurl: "https://rustc-dev-guide.rust-lang.org/mir",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust HIR",
      enurl: "#",
      cnurl: "https://rustc-dev-guide.rust-lang.org/hir.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Crubit",
      enurl: "#",
      cnurl:
          "https://github.com/google/crubit?tab=readme-ov-file#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Corrosion",
      enurl: "#",
      cnurl: "https://corrosion-rs.github.io/corrosion/v0.5/quick_start.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "cc",
      enurl: "#",
      cnurl: "https://docs.rs/cc/latest/cc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "libc",
      enurl: "#",
      cnurl: "https://docs.rs/libc/latest/libc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "CXX",
      enurl: "#",
      cnurl: "https://cxx.rs",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "bindgen",
      enurl: "#",
      cnurl: "https://rust-lang.github.io/rust-bindgen",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "The Rust Core Library",
      enurl: "#",
      cnurl: "https://doc.rust-lang.org/core/index.html#the-rust-core-library",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "rustc",
      enurl: "#",
      cnurl: "https://doc.rust-lang.org/rustc/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust error codes",
      enurl: "#",
      cnurl: "https://doc.rust-lang.org/error_codes/error-index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/uv.svg",
      title: "uv",
      enurl: "#",
      cnurl: "https://docs.astral.sh/uv/getting-started/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/iced.svg",
      title: "iced",
      enurl: "#",
      cnurl: "https://book.iced.rs/first-steps.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/gVisor.svg",
      title: "gVisor",
      enurl: "#",
      cnurl: "https://gvisor.dev/docs/user_guide/install",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Chromium.svg",
      title: "Chromium",
      enurl: "#",
      cnurl:
          "https://chromium.googlesource.com/chromium/src/+/refs/heads/main/docs/README.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Windows_11.svg",
      title: "Rust for Windows",
      enurl: "#",
      cnurl: "https://microsoft.github.io/windows-docs-rs/doc/windows",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust-for-Linux.svg",
      title: "Rust for Linux",
      enurl: "#",
      cnurl: "https://docs.kernel.org/translations/zh_CN/rust/quick-start.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Windows_Terminal.svg",
      title: "Windows Terminal",
      enurl: "https://learn.microsoft.com/en-us/windows/terminal",
      cnurl: "https://learn.microsoft.com/zh-cn/windows/terminal",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Angular.svg",
      title: "Angular",
      enurl:
          "https://angular.dev/tutorials/learn-angular/1-components-in-angular",
      cnurl:
          "https://angular.cn/tutorials/learn-angular/1-components-in-angular",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OctoTools.svg",
      title: "OctoTools",
      enurl: "#",
      cnurl:
          "https://github.com/octotools/octotools?tab=readme-ov-file#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apache%20Dubbo.svg",
      title: "Dubbo",
      enurl:
          "https://cn.dubbo.apache.org/en/overview/mannual/java-sdk/quick-start/starter",
      cnurl:
          "https://cn.dubbo.apache.org/zh-cn/overview/mannual/java-sdk/quick-start/starter",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "Microsoft SQL",
      enurl: "https://learn.microsoft.com/en-us/sql",
      cnurl: "https://docs.microsoft.com/zh-cn/sql",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Webpack.svg",
      title: "webpack",
      enurl: "https://webpack.js.org/guides/getting-started",
      cnurl: "https://webpack.docschina.org/guides/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bonjour.svg",
      title: "Bonjour",
      enurl: "#",
      cnurl:
          "https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/NetServices/Introduction.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Let's%20Encrypt.svg",
      title: "Let's Encrypt",
      enurl: "https://letsencrypt.org/getting-started",
      cnurl: "https://letsencrypt.org/zh-cn/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Certbot.svg",
      title: "Certbot Commands",
      enurl: "#",
      cnurl:
          "https://eff-certbot.readthedocs.io/en/stable/using.html#certbot-commands",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bootstrap.svg",
      title: "Bootstrap",
      enurl: "#",
      cnurl:
          "https://getbootstrap.com/docs/5.3/getting-started/introduction/#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "OmniParser",
      enurl: "#",
      cnurl:
          "https://github.com/microsoft/OmniParser?tab=readme-ov-file#install",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "Universal CRT",
      enurl:
          "https://learn.microsoft.com/en-us/cpp/windows/universal-crt-deployment?view=msvc-170",
      cnurl:
          "https://learn.microsoft.com/zh-cn/cpp/windows/universal-crt-deployment?view=msvc-170",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Colossal-AI.svg",
      title: "Colossal-AI",
      enurl: "https://colossalai.org/docs/get_started/installation",
      cnurl: "https://colossalai.org/zh-Hans/docs/get_started/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/PHP.svg",
      title: "PHP",
      enurl: "https://www.php.net/manual/en/tutorial.firstpage.php",
      cnurl: "https://www.php.net/manual/zh/tutorial.firstpage.php",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Termux.svg",
      title: "Termux",
      enurl: "#",
      cnurl: "https://wiki.termux.com/wiki/Getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ruby.svg",
      title: "Ruby",
      enurl: "https://www.ruby-lang.org/en/documentation/quickstart",
      cnurl: "https://www.ruby-lang.org/zh_cn/documentation/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Qwen.svg",
      title: "Qwen Wan",
      enurl: "#",
      cnurl:
          "https://github.com/Wan-Video/Wan2.1?tab=readme-ov-file#quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Qwen.svg",
      title: "Qwen",
      enurl:
          "https://qwen.readthedocs.io/en/latest/getting_started/quickstart.html",
      cnurl:
          "https://qwen.readthedocs.io/zh-cn/latest/getting_started/quickstart.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BentoML.svg",
      title: "BentoML",
      enurl: "#",
      cnurl: "https://docs.bentoml.com/en/latest/get-started/hello-world.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/_Electron.svg",
      title: "Electron",
      enurl:
          "https://www.electronjs.org/docs/latest/tutorial/tutorial-first-app",
      cnurl:
          "https://www.electronjs.org/zh/docs/latest/tutorial/tutorial-first-app",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JavaScript.svg",
      title: "JavaScript",
      enurl: "https://developer.mozilla.org/en-US/docs/Web/JavaScript",
      cnurl: "https://developer.mozilla.org/zh-CN/docs/Web/JavaScript",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GraphQL.svg",
      title: "GraphQL",
      enurl: "https://graphql.org/learn",
      cnurl: "https://graphql.cn/learn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZIG.svg",
      title: "ZIG",
      enurl: "#",
      cnurl: "https://zig.guide/getting-started/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/The%20C%20Programming%20Language.svg",
      title: "Visual C",
      enurl:
          "https://learn.microsoft.com/en-us/cpp/build/walkthrough-compile-a-c-program-on-the-command-line?view=msvc-170",
      cnurl:
          "https://learn.microsoft.com/zh-cn/cpp/build/walkthrough-compile-a-c-program-on-the-command-line?view=msvc-170",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/C%2B%2B.svg",
      title: "Visual C++",
      enurl:
          "https://learn.microsoft.com/en-us/cpp/build/vscpp-step-1-create?view=msvc-170",
      cnurl:
          "https://learn.microsoft.com/zh-cn/cpp/build/vscpp-step-1-create?view=msvc-170",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/C%2B%2B.svg",
      title: "C++/WinRT",
      enurl:
          "https://learn.microsoft.com/en-us/windows/uwp/cpp-and-winrt-apis/get-started?view=msvc-170#a-cwinrt-quick-start",
      cnurl:
          "https://learn.microsoft.com/zh-cn/windows/uwp/cpp-and-winrt-apis/get-started?view=msvc-170#a-cwinrt-quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/C%2B%2B.svg",
      title: "ISO C++",
      enurl: "#",
      cnurl: "https://isocpp.org/get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TOML.svg",
      title: "TOML",
      enurl: "https://toml.io/en",
      cnurl: "https://toml.io/cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Swift.svg",
      title: "Swift",
      enurl:
          "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour",
      cnurl:
          "https://doc.swiftgg.team/documentation/the-swift-programming-language-----/thebasics",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SKIP.tools.svg",
      title: "SKIP.tools",
      enurl: "#",
      cnurl: "https://skip.tools/docs/gettingstarted",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MetaMask.svg",
      title: "Meta Mask",
      enurl: "#",
      cnurl: "https://docs.metamask.io/sdk/quickstart/javascript-wagmi",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Vapor.svg",
      title: "Vapor",
      enurl: "#",
      cnurl: "https://docs.vapor.codes/getting-started/hello-world",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenUSD.svg",
      title: "Open USD",
      enurl: "#",
      cnurl: "https://openusd.org/release/tut_helloworld.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Swift.svg",
      title: "SIL",
      enurl: "#",
      cnurl: "https://github.com/swiftlang/swift/blob/main/docs/SIL/SIL.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Swift.svg",
      title: "SwiftPM",
      enurl: "#",
      cnurl: "https://www.swift.org/getting-started/cli-swiftpm",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Swift.svg",
      title: "Swift for TensorFlow",
      enurl: "#",
      cnurl:
          "https://github.com/tensorflow/swift/blob/main/README.md#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Elixir.svg",
      title: "Elixir",
      enurl: "#",
      cnurl: "https://hexdocs.pm/elixir/introduction.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bun.svg",
      title: "Bun",
      enurl: "#",
      cnurl: "https://bun.sh/docs/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apple.svg",
      title: "Apple Developer",
      enurl: "#",
      cnurl: "https://developer.apple.com/documentation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apple.svg",
      title: "Objective-C Runtime",
      enurl: "#",
      cnurl: "https://developer.apple.com/documentation/objectivec",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apple.svg",
      title: "FastVLM",
      enurl:
          "https://github.com/apple/ml-fastvlm?tab=readme-ov-file#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WebAssembly.svg",
      title: "WebAssembly",
      enurl: "#",
      cnurl: "https://webassembly.org/getting-started/developers-guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WebAssembly.svg",
      title: "WAMR",
      enurl: "#",
      cnurl: "https://wamr.gitbook.io/document/basics/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BytecodeAlliance.svg",
      title: "wasm-tools",
      enurl: "#",
      cnurl:
          "https://github.com/bytecodealliance/wasm-tools?tab=readme-ov-file#wasm-tools",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Slint.svg",
      title: "Slint",
      enurl: "#",
      cnurl:
          "https://docs.slint.dev/latest/docs/slint/tutorial/getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Java.svg",
      title: "TeaVM",
      enurl: "#",
      cnurl: "https://teavm.org/docs/intro/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Google.svg",
      title: "J2CL/Wasm",
      enurl: "#",
      cnurl:
          "https://github.com/google/j2cl/blob/master/docs/getting-started-j2wasm.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/A2A.svg",
      title: "Agent2Agent",
      enurl: "https://google.github.io/A2A/topics/what-is-a2a/#what-is-a2a",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MDN.svg",
      title: "SSE",
      enurl:
          "https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events",
      cnurl:
          "https://developer.mozilla.org/zh-CN/docs/Web/API/Server-sent_events/Using_server-sent_events",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Brotli.svg",
      title: "Brotli",
      enurl: "https://github.com/google/brotli?tab=readme-ov-file#introduction",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CVE.svg",
      title: "CVE List V5",
      enurl:
          "https://github.com/CVEProject/cvelistV5?tab=readme-ov-file#cve-list-v5",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CodeCrafters.svg",
      title: "CodeCrafters",
      enurl: "https://app.codecrafters.io/catalog",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Google.svg",
      title: "ANGLE",
      enurl: "#",
      cnurl: "https://chromium.googlesource.com/angle/angle/+/main/README.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GoogleTranslate.svg",
      title: "Google Translate",
      enurl: "https://translate.google.com/?hl=en&sl=en&tl=zh-CN&op=translate",
      cnurl:
          "https://translate.google.com.hk/?hl=zh-CN&sourceid=cnhp&sl=zh-CN&tl=en&op=translate",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ReactJS.svg",
      title: "ReactJS",
      enurl: "https://react.dev/learn",
      cnurl: "https://zh-hans.react.dev/learn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/reactbits.svg",
      title: "reactbits",
      enurl: "#",
      cnurl: "https://www.reactbits.dev/text-animations/split-text",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ContainerSSH.svg",
      title: "ContainerSSH",
      enurl: "#",
      cnurl: "https://containerssh.io/v0.5/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HMOS.svg",
      title: "HarmonyOS Developer",
      enurl:
          "https://developer.huawei.com/consumer/en/doc/harmonyos-guides-V5/start-overview-V5",
      cnurl:
          "https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V5/start-overview-V5",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cangjie.svg",
      title: "Cangjie",
      enurl:
          "https://cangjie-lang.cn/en/docs?url=%2F0.53.13%2Fuser_manual%2Fsource_en%2Ffirst_understanding%2Fbasic.html",
      cnurl:
          "https://cangjie-lang.cn/docs?url=%2F0.53.18%2Fuser_manual%2Fsource_zh_cn%2Ffirst_understanding%2Fbasic.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TAURI.svg",
      title: "TAURI",
      enurl: "https://tauri.app/start",
      cnurl: "https://tauri.app/zh-cn/start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Nginx.svg",
      title: "Nginx",
      enurl: "#",
      cnurl: "https://nginx.org/en/docs/beginners_guide.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/git-scm.svg",
      title: "Git SCM",
      enurl: "https://git-scm.com/docs/git",
      cnurl: "https://git-scm.com/docs/git/zh_HANS-CN",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitButler.svg",
      title: "GitButler",
      enurl: "https://docs.gitbutler.com/guide",
      cnurl: "#",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/libgit2.svg",
  //     title: "libgit2",
  //     cnurl: "https://libgit2.org/docs/reference/main"));
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "git2-rs",
      enurl: "#",
      cnurl: "https://docs.rs/git2/latest/git2",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "capnpc",
      enurl: "#",
      cnurl: "https://docs.rs/capnpc/latest/capnpc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Cap’n Proto Runtime",
      enurl: "#",
      cnurl: "https://docs.rs/capnp/latest/capnp/#capn-proto-runtime-library",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "GitHub Actions",
      enurl: "https://docs.github.com/en/actions/writing-workflows/quickstart",
      cnurl: "https://docs.github.com/zh/actions/writing-workflows/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "GitHub Packages",
      enurl: "https://docs.github.com/en/packages/quickstart",
      cnurl: "https://docs.github.com/zh/packages/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "GitHub REST API",
      enurl: "https://docs.github.com/en/rest/quickstart?apiVersion=2022-11-28",
      cnurl: "https://docs.github.com/zh/rest/quickstart?apiVersion=2022-11-28",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "Actions Runner Images",
      enurl: "#",
      cnurl:
          "https://github.com/actions/runner-images/blob/main/docs/create-image-and-azure-resources.md#github-actions-runner-images",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "gh-card",
      enurl: "#",
      cnurl: "https://gh-card.dev",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/freeCodeCamp.svg",
      title: "freeCodeCamp",
      enurl: "https://www.freecodecamp.org/learn",
      cnurl: "https://www.freecodecamp.org/chinese/learn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/996.ICU.svg",
      title: "996.ICU",
      enurl: "https://996.icu/#/en_US",
      cnurl: "https://996.icu/#/zh_CN",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Packer.svg",
      title: "Packer",
      enurl: "#",
      cnurl:
          "https://developer.hashicorp.com/packer/tutorials/docker-get-started/get-started-install-cli",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "GitHub CLI",
      enurl: "https://docs.github.com/en/github-cli/github-cli/quickstart",
      cnurl: "https://docs.github.com/zh/github-cli/github-cli/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "GitHub Codespaces",
      enurl: "https://docs.github.com/en/codespaces/quickstart",
      cnurl: "https://docs.github.com/zh/codespaces/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "GitHub Desktop",
      enurl:
          "https://docs.github.com/en/desktop/overview/getting-started-with-github-desktop",
      cnurl:
          "https://docs.github.com/zh/desktop/overview/getting-started-with-github-desktop",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitLab.svg",
      title: "GitLab CI/CD",
      enurl: "#",
      cnurl: "https://docs.gitlab.com/ci",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitLab.svg",
      title: "GitLab REST API",
      enurl: "#",
      cnurl: "https://docs.gitlab.com/api/rest",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitLab.svg",
      title: "GitLab CLI",
      enurl: "#",
      cnurl: "https://docs.gitlab.com/editor_extensions/gitlab_cli",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/VS Code.svg",
      title: "Visual Studio Code",
      enurl: "#",
      cnurl: "https://code.visualstudio.com/docs/getstarted/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/VS Code.svg",
      title: "VS Code Extension",
      enurl: "#",
      cnurl:
          "https://code.visualstudio.com/api/get-started/your-first-extension",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/VS Code.svg",
      title: "VS Code API",
      enurl: "#",
      cnurl: "https://code.visualstudio.com/api/references/vscode-api",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IntelliJ_Platform_Plugin.svg",
      title: "IntelliJ Plugins",
      enurl: "#",
      cnurl:
          "https://plugins.jetbrains.com/docs/intellij/creating-plugin-project.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GIMP.svg",
      title: "GIMP",
      enurl: "#",
      cnurl: "https://www.gimp.org/tutorials/GIMP_Quickies",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust CUDA",
      enurl: "#",
      cnurl:
          "https://github.com/Rust-GPU/Rust-CUDA/blob/main/guide/src/guide/getting_started.md#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust GPU",
      enurl: "#",
      cnurl: "https://rust-gpu.github.io",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "empiriqa",
      enurl: "#",
      cnurl: "https://github.com/ynqa/empiriqa?tab=readme-ov-file#usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/__CodeOSS.svg",
      title: "Code OSS",
      enurl: "#",
      cnurl: "https://github.com/LcJuves/vscode/wiki/How-to-Contribute",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/__CodeOSS.svg",
      title: "Monaco Editor",
      enurl: "#",
      cnurl: "https://microsoft.github.io/monaco-editor",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mermaid.svg",
      title: "Mermaid Live Editor",
      enurl: "#",
      cnurl:
          "https://mermaid.live/edit#pako:eNpVjkFrwzAMhf-K0GmD5g_kMFiTrZfCButpcQ8iUWKz2DKOTSlJ_vucdoNNJ-m97z00YysdY4n9KJdWU4hwqpWDPM9NpYOZoqXpDEXxtBw4ghXH1wX2DweBSYv3xg2Pd36_QVDNxw1jiNq4r_VuVbf8m-MF6uZIPoo__3VOF1ngpTHvOtf_d3TgnHpteip7KloKUFG4IbhDy8GS6fL786YojJotKyzz2nFPaYwKlVszSinKx9W1WMaQeIdB0qAxd45TvpLvKHJtaAhkfxFP7lPE_kDrN7nAYR4",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CMake.svg",
      title: "CMake",
      enurl: "#",
      cnurl:
          "https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/PowerShell.svg",
      title: "PowerShell",
      enurl:
          "https://learn.microsoft.com/en-us/powershell/scripting/learn/ps101/01-getting-started?view=powershell-7.5",
      cnurl:
          "https://learn.microsoft.com/zh-cn/powershell/scripting/learn/ps101/01-getting-started?view=powershell-7.5",
    ),
  );
  itemList.add(
    Item(imgUrl: "/GNU.svg", title: "GNU", cnurl: "https://www.gnu.org/doc"),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "The GNU C Library",
      enurl: "#",
      cnurl: "https://www.gnu.org/software/libc/manual/html_node/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MSYS2.svg",
      title: "MSYS2",
      enurl: "#",
      cnurl: "https://www.msys2.org/docs/what-is-msys2",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JWT.svg",
      title: "JWT",
      cnurl: "https://jwt.io/introduction",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/emscripten.svg",
  //     title: "emscripten",
  //     cnurl: "https://emscripten.org/docs/getting_started"));
  itemList.add(
    Item(
      imgUrl: "/podman.svg",
      title: "podman",
      enurl: "#",
      cnurl: "https://podman.io/docs/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/redis.svg",
      title: "Redis",
      enurl: "#",
      cnurl: "https://redis.io/docs/latest/get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LLVM.svg",
      title: "LLVM",
      enurl: "#",
      cnurl: "https://llvm.org/docs/GettingStarted.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "mlir-sys",
      enurl: "#",
      cnurl: "https://github.com/mlir-rs/mlir-sys",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Melior",
      enurl: "#",
      cnurl: "https://mlir-rs.github.io/melior/melior",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "llvm-sys",
      enurl: "#",
      cnurl: "https://docs.rs/llvm-sys/latest/llvm_sys",
    ),
  );

  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "audionimbus-sys",
      enurl: "#",
      cnurl: "https://docs.rs/audionimbus-sys/latest/audionimbus_sys",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LLVM.svg",
      title: "llvm-cov",
      enurl: "#",
      cnurl: "https://llvm.org/docs/CommandGuide/llvm-cov.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/snowflake.svg",
      title: "snowflake",
      enurl: "#",
      cnurl: "https://docs.snowflake.com/en/user-guide-getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ClickHouse.svg",
      title: "ClickHouse",
      enurl: "https://clickhouse.com/docs/en/getting-started/quick-start",
      cnurl: "https://clickhouse.com/docs/zh/getting-started/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NanoID.svg",
      title: "NanoID",
      enurl: "#",
      cnurl: "https://zelark.github.io/nano-id-cc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/eBPF.svg",
      title: "eBPF",
      enurl: "https://ebpf.io/what-is-ebpf",
      cnurl: "https://ebpf.io/zh-hans/what-is-ebpf",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SVGO.svg",
      title: "SVGO",
      enurl: "#",
      cnurl: "https://svgo.dev/docs/introduction",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mermaid.svg",
      title: "Mermaid",
      enurl: "#",
      cnurl: "https://mermaid.js.org/intro/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JSONCrack.svg",
      title: "JSON Crack",
      enurl: "#",
      cnurl: "https://todiagram.com/editor",
    ),
  );
  // itemList.add(
  //     Item(imgUrl: "/JSON5.svg", title: "JSON5", cnurl: "https://json5.org"));
  itemList.add(
    Item(
      imgUrl: "/Datatracker.svg",
      title: "Datatracker",
      enurl: "#",
      cnurl: "https://datatracker.ietf.org/doc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SVG.svg",
      title: "SVG",
      enurl:
          "https://developer.mozilla.org/en-US/docs/Web/SVG#getting_started_with_svg",
      cnurl:
          "https://developer.mozilla.org/zh-CN/docs/Web/SVG#getting_started_with_svg",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/esbuild.svg",
      title: "esbuild",
      enurl: "#",
      cnurl: "https://esbuild.github.io/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Raspberrypi.svg",
      title: "Raspberry Pi",
      enurl: "#",
      cnurl:
          "https://www.raspberrypi.com/documentation/computers/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Pug%20Template%20Engine.svg",
      title: "PugJS",
      enurl: "#",
      cnurl: "https://pugjs.org/api/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Pkl.svg",
      title: "Pkl",
      enurl: "#",
      cnurl: "https://pkl-lang.org/swift/current/quickstart.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Dragonfly.svg",
      title: "Dragonfly",
      enurl: "#",
      cnurl: "https://www.dragonflydb.io/docs/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bevy.svg",
      title: "Bevy",
      enurl: "#",
      cnurl: "https://bevyengine.org/learn/quick-start/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/godot.svg",
      title: "godot-rust",
      enurl: "#",
      cnurl: "https://godot-rust.github.io/book/intro/setup.html#godot-engine",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/tokio.svg",
      title: "Tokio",
      enurl: "#",
      cnurl: "https://tokio.rs/tokio/tutorial/hello-tokio",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ByteDance.svg",
      title: "Monoio",
      enurl:
          "https://github.com/bytedance/monoio?tab=readme-ov-file#quick-start",
      cnurl:
          "https://github.com/bytedance/monoio/blob/master/README-zh.md#%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ByteDance.svg",
      title: "ByteX",
      enurl:
          "https://github.com/bytedance/ByteX?tab=readme-ov-file#quick-start",
      cnurl:
          "https://github.com/bytedance/ByteX/blob/master/README_zh.md#%E5%BF%AB%E9%80%9F%E6%8E%A5%E5%85%A5",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/hyper.svg",
      title: "hyper",
      enurl: "#",
      cnurl: "https://hyper.rs/guides/1/init/setup",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Diesel.svg",
      title: "Diesel",
      enurl: "#",
      cnurl: "https://diesel.rs/guides/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IPFS.svg",
      title: "IPFS",
      enurl: "#",
      cnurl: "https://docs.ipfs.tech/install",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/PDFJS.svg",
      title: "PDFJS",
      enurl: "#",
      cnurl: "https://mozilla.github.io/pdf.js/getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SQLite.svg",
      title: "SQLite",
      enurl: "#",
      cnurl: "https://www.sqlite.org/quickstart.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bytebase.svg",
      title: "Bytebase",
      enurl: "#",
      cnurl:
          "https://www.bytebase.com/docs/get-started/step-by-step/deploy-with-docker",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JetpackCompose.svg",
      title: "Jetpack Compose",
      enurl:
          "https://developer.android.com/develop/ui/compose/documentation?hl=en",
      cnurl:
          "https://developer.android.google.cn/develop/ui/compose/documentation?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ComposeMultiplatform.svg",
      title: "Compose Multiplatform",
      enurl: "https://www.jetbrains.com/compose-multiplatform",
      cnurl: "https://www.jetbrains.com/zh-cn/compose-multiplatform",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WebdriverIO.svg",
      title: "WebdriverIO",
      enurl: "#",
      cnurl: "https://webdriver.io/docs/gettingstarted",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rspack.svg",
      title: "Rspack",
      enurl: "https://rspack.dev/guide/start/quick-start",
      cnurl: "https://rspack.dev/zh/guide/start/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CSS.svg",
      title: "CSS",
      enurl: "https://developer.mozilla.org/en-US/docs/Web/CSS",
      cnurl: "https://developer.mozilla.org/zh-CN/docs/Web/CSS",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Vite.svg",
      title: "Vite",
      enurl: "https://vite.dev/guide",
      cnurl: "https://cn.vite.dev/guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rollup.svg",
      title: "Rollup",
      enurl: "https://rollupjs.org/introduction/#installation",
      cnurl: "https://cn.rollupjs.org/introduction/#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ESLint.svg",
      title: "ESLint",
      enurl: "https://eslint.org/docs/latest/use/getting-started",
      cnurl: "https://zh-hans.eslint.org/docs/latest/use/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Playwright.svg",
      title: "Playwright",
      enurl: "#",
      cnurl: "https://playwright.dev/docs/intro#installing-playwright",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Hexo.svg",
      title: "Hexo",
      enurl: "https://hexo.io/docs/setup.html",
      cnurl: "https://hexo.io/zh-cn/docs/setup",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GruntJS.svg",
      title: "GruntJS",
      enurl: "#",
      cnurl: "https://gruntjs.com/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Keras.svg",
      title: "Keras",
      enurl: "#",
      cnurl: "https://keras.io/getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JAX.svg",
      title: "JAX",
      enurl: "#",
      cnurl: "https://jax.readthedocs.io/en/latest/quickstart.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenVINO.svg",
      title: "OpenVINO",
      enurl: "#",
      cnurl: "https://docs.openvino.ai/2024/get-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Spring.svg",
      title: "Spring",
      enurl: "#",
      cnurl: "https://spring.io/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Puppeteer.svg",
      title: "Puppeteer",
      enurl: "#",
      cnurl: "https://pptr.dev/guides/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Wintun.svg",
      title: "Wintun",
      enurl: "#",
      cnurl: "https://git.zx2c4.com/wintun/about",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NumPy.svg",
      title: "NumPy",
      enurl: "#",
      cnurl:
          "https://numpy.org/doc/stable/user/quickstart.html#numpy-quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Browserless.svg",
      title: "Browserless",
      enurl: "#",
      cnurl: "https://docs.browserless.io/baas/docker/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AppImage.svg",
      title: "AppImage",
      enurl: "#",
      cnurl:
          "https://docs.appimage.org/introduction/quickstart.html#ref-quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Laravel.svg",
      title: "Laravel",
      enurl: "#",
      cnurl: "https://laravel.com/docs/12.x#creating-a-laravel-project",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Lodash.svg",
      title: "Lodash",
      enurl: "#",
      cnurl: "https://lodash.com/docs",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Subversion.svg",
      title: "Subversion",
      enurl: "#",
      cnurl: "https://subversion.apache.org/quick-start#installing-the-client",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenVela.svg",
      title: "Xiaomi OpenVela",
      enurl: "https://github.com/open-vela/docs/blob/dev/README.md",
      cnurl: "https://github.com/open-vela/docs/blob/dev/README_zh-cn.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NuttX.svg",
      title: "NuttX",
      enurl: "#",
      cnurl: "https://nuttx.apache.org/docs/latest/quickstart/install.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AzureQuantum.svg",
      title: "Azure Quantum",
      enurl:
          "https://learn.microsoft.com/en-us/training/paths/quantum-computing-fundamentals",
      cnurl:
          "https://learn.microsoft.com/zh-cn/training/paths/quantum-computing-fundamentals",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Azure.svg",
      title: "Azure Linux",
      enurl: "#",
      cnurl:
          "https://github.com/microsoft/azurelinux/blob/3.0/toolkit/docs/quick_start/quickstart.md#quick-start-guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Homebrew.svg",
      title: "Homebrew",
      enurl: "#",
      cnurl: "https://docs.brew.sh/Installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "Media Types",
      enurl: "#",
      cnurl: "https://www.iana.org/assignments/media-types/media-types.xhtml",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "HTTP Status Codes",
      enurl: "#",
      cnurl:
          "https://www.iana.org/assignments/http-status-codes/http-status-codes.xhtml",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "HTTP Methods",
      enurl: "#",
      cnurl: "https://www.iana.org/assignments/http-methods/http-methods.xhtml",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "HTTP Fields",
      enurl: "#",
      cnurl: "https://www.iana.org/assignments/http-fields/http-fields.xhtml",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "DoQ Error Codes",
      enurl:
          "https://www.iana.org/assignments/dns-parameters/dns-parameters.xhtml#dns-quic-error-codes",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "ICMPv6 Parameters",
      enurl:
          "https://www.iana.org/assignments/icmpv6-parameters/icmpv6-parameters.xhtml",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Wikipedia.svg",
      title: "ICMPv6",
      enurl: "https://en.wikipedia.org/wiki/ICMPv6",
      cnurl:
          "https://zh.wikipedia.org/wiki/%E4%BA%92%E8%81%94%E7%BD%91%E6%8E%A7%E5%88%B6%E6%B6%88%E6%81%AF%E5%8D%8F%E8%AE%AE%E7%AC%AC%E5%85%AD%E7%89%88",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/U-Boot.svg",
      title: "Das U-Boot",
      enurl: "https://docs.u-boot.org/en/latest/usage/index.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "DNSSEC Alg Numbers",
      enurl:
          "https://www.iana.org/assignments/dns-sec-alg-numbers/dns-sec-alg-numbers.xhtml#dns-sec-alg-numbers-1",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "HTTP/3 Error Codes",
      enurl:
          "https://www.iana.org/assignments/http3-parameters/http3-parameters.xhtml#http3-parameters-error-codes",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "HTTP/3 Frame Types",
      enurl:
          "https://www.iana.org/assignments/http3-parameters/http3-parameters.xhtml#http3-parameters-frame-types",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "HTTP/3 Settings",
      enurl:
          "https://www.iana.org/assignments/http3-parameters/http3-parameters.xhtml#http3-parameters-settings",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "HTTP/3 Stream Types",
      enurl:
          "https://www.iana.org/assignments/http3-parameters/http3-parameters.xhtml#http3-parameters-stream-types",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ACME.svg",
      title: "ACME",
      enurl: "#",
      cnurl: "https://datatracker.ietf.org/doc/html/rfc8555",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HTML5.svg",
      title: "HTML",
      enurl: "https://developer.mozilla.org/en-US/docs/Web/HTML",
      cnurl: "https://developer.mozilla.org/zh-CN/docs/Web/HTML",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/_cURL.svg",
      title: "cURL",
      enurl: "#",
      cnurl: "https://curl.se/docs/tutorial.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ruby%20on%20Ralis.svg",
      title: "Ruby on Rails",
      enurl: "#",
      cnurl: "https://guides.rubyonrails.org/getting_started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GODOT_Engine.svg",
      title: "Godot Engine",
      enurl:
          "https://docs.godotengine.org/en/stable/getting_started/introduction/introduction_to_godot.html",
      cnurl:
          "https://docs.godotengine.org/zh-cn/stable/getting_started/introduction/introduction_to_godot.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apache%20Kafka.svg",
      title: "Kafka",
      enurl: "#",
      cnurl: "https://kafka.apache.org/documentation/#gettingStarted",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/gulpjs.svg",
      title: "GulpJS",
      enurl: "#",
      cnurl: "https://gulpjs.com/docs/en/getting-started/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Anaconda.svg",
      title: "Anaconda",
      enurl: "#",
      cnurl: "https://docs.anaconda.com/anaconda/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Conda.svg",
      title: "Conda",
      enurl: "#",
      cnurl:
          "https://docs.conda.io/projects/conda/en/latest/user-guide/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/InLong.svg",
      title: "InLong",
      enurl:
          "https://inlong.apache.org/docs/quick_start/data_ingestion/file_pulsar_clickhouse_example",
      cnurl:
          "https://inlong.apache.org/zh-CN/docs/quick_start/data_ingestion/file_pulsar_clickhouse_example",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/conda-forge.svg",
      title: "conda-forge",
      enurl: "#",
      cnurl: "https://conda-forge.org/docs/user/introduction",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/conda-forge.svg",
      title: "Miniforge",
      enurl: "#",
      cnurl: "https://conda-forge.org/download",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Trae.svg",
      title: "Trae",
      enurl: "https://docs.trae.ai/docs/set-up-trae?_lang=en",
      cnurl: "https://docs.trae.ai/docs/set-up-trae?_lang=zh",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GEETEST.svg",
      title: "GEETEST OneLogin",
      enurl: "#",
      cnurl: "https://docs.geetest.com/onelogin/overview/start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "AIOpsLab",
      enurl: "#",
      cnurl:
          "https://github.com/microsoft/AIOpsLab?tab=readme-ov-file#%F0%9F%9A%80quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Appium.svg",
      title: "Appium",
      enurl: "https://appium.io/docs/en/latest/quickstart",
      cnurl: "https://appium.io/docs/zh/latest/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/RabbitMQ.svg",
      title: "RabbitMQ",
      enurl: "#",
      cnurl: "https://www.rabbitmq.com/tutorials/tutorial-one-rust-stream",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Atlassian%20Bitbucket.svg",
      title: "Bitbucket Pipelines",
      enurl: "#",
      cnurl:
          "https://support.atlassian.com/bitbucket-cloud/docs/get-started-with-bitbucket-pipelines",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Jupyter.svg",
      title: "Jupyter",
      enurl: "#",
      cnurl: "https://docs.jupyter.org/en/latest/start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Blender.svg",
      title: "Blender",
      enurl:
          "https://docs.blender.org/manual/en/latest/getting_started/installing/index.html",
      cnurl:
          "https://docs.blender.org/manual/zh-hans/latest/getting_started/installing/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SpiderMonkey.svg",
      title: "SpiderMonkey",
      enurl: "#",
      cnurl: "https://firefox-source-docs.mozilla.org/js",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WASIX.svg",
      title: "WASIX",
      enurl: "#",
      cnurl: "https://wasix.org/docs/language-guide/rust/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MoonBit.svg",
      title: "MoonBit",
      enurl: "https://docs.moonbitlang.com/en/latest/tutorial/tour.html",
      cnurl: "https://docs.moonbitlang.com/zh-cn/latest/tutorial/tour.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Clojure.svg",
      title: "Clojure",
      enurl: "#",
      cnurl: "https://clojure.org/guides/getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Crystal.svg",
      title: "Crystal",
      enurl: "#",
      cnurl: "https://crystal-lang.org/reference/1.14/getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BabylonJS.svg",
      title: "BabylonJS",
      enurl: "#",
      cnurl:
          "https://doc.babylonjs.com/journey/theFirstStep#everyones-very-first-step",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Nacos.svg",
      title: "Nacos",
      enurl: "#",
      cnurl: "https://nacos.io/docs/latest/quickstart/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FreeBSD.svg",
      title: "FreeBSD",
      enurl: "https://docs.freebsd.org/en/books/handbook/basics",
      cnurl: "https://docs.freebsd.org/zh-cn/books/handbook/basics",
    ),
  );
  itemList.add(
    Item(imgUrl: "/Tabby.svg", title: "Tabby", cnurl: "https://tabby.sh"),
  );
  itemList.add(
    Item(
      imgUrl: "/gRPC.svg",
      title: "gRPC",
      enurl: "#",
      cnurl: "https://grpc.io/docs/languages/go/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/e-CNY.svg",
      title: "Cap’n Proto",
      enurl: "#",
      cnurl: "https://capnproto.org/language.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "SIMD JSON for Rust",
      enurl: "#",
      cnurl: "https://docs.rs/simd-json/latest/simd_json/#usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "i24",
      enurl: "https://docs.rs/i24/2.1.0/i24/#usage",
      cnurl: "#",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/radash.svg",
  //     title: "radash",
  //     cnurl: "https://radash-docs.vercel.app/docs/getting-started#getting-started"));
  itemList.add(
    Item(
      imgUrl: "/Apache%20Tomcat.svg",
      title: "Tomcat",
      enurl: "#",
      cnurl: "https://tomcat.apache.org/tomcat-11.0-doc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apache%20Camel.svg",
      title: "Camel Core",
      enurl: "#",
      cnurl: "https://camel.apache.org/camel-core/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bash.svg",
      title: "Bash",
      enurl: "#",
      cnurl: "https://www.gnu.org/software/bash/manual/html_node/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GraalVM.svg",
      title: "GraalVM",
      enurl: "#",
      cnurl: "https://www.graalvm.org/latest/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GraalVM.svg",
      title: "GraalVM Native Image",
      enurl: "#",
      cnurl: "https://www.graalvm.org/latest/reference-manual/native-image",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GraalVM.svg",
      title: "GraalVM SDK",
      enurl: "#",
      cnurl: "https://www.graalvm.org/sdk/javadoc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cygwin.svg",
      title: "Cygwin",
      enurl: "#",
      cnurl: "https://cygwin.com/cygwin-ug-net/cygwin-ug-net.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/robot.svg",
      title: "Robot Framework",
      enurl: "#",
      cnurl: "https://docs.robotframework.org/docs/getting_started/rpa",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apache%20Hive.svg",
      title: "Hive",
      enurl: "#",
      cnurl: "https://cwiki.apache.org/confluence/display/Hive/GettingStarted",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apache%20Cordova.svg",
      title: "Cordova",
      enurl: "#",
      cnurl:
          "https://cordova.apache.org/docs/en/latest/guide/cli/installation.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "GNU Coreutils",
      enurl: "#",
      cnurl:
          "https://www.gnu.org/software/coreutils/manual/html_node/index.html#toc-Introduction-1",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "sed",
      enurl: "#",
      cnurl:
          "https://www.gnu.org/software/sed/manual/sed.html#Command_002dLine-Options",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "grep",
      enurl: "#",
      cnurl:
          "https://www.gnu.org/software/grep/manual/grep.html#grep-Programs-1",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "GNU Binutils",
      enurl: "#",
      cnurl: "https://sourceware.org/binutils/docs/binutils/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "GNU make",
      enurl: "#",
      cnurl: "https://www.gnu.org/software/make/manual/html_node/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "GNU Wget",
      enurl: "#",
      cnurl: "https://www.gnu.org/software/wget/manual/html_node/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Org_WebKit.svg",
      title: "WebKit",
      enurl: "#",
      cnurl: "https://webkit.org/blog/category/standards",
    ),
  );
  // itemList
  //     .add(Item(imgUrl: "/V8.svg", title: "V8", cnurl: "https://v8.dev/docs"));
  itemList.add(
    Item(
      imgUrl: "/Duke%20Hips.svg",
      title: "OpenJDK",
      enurl: "#",
      cnurl: "https://openjdk.org/guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Duke%20Hips.svg",
      title: "Building the JDK",
      enurl: "#",
      cnurl: "https://openjdk.org/groups/build/doc/building.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Duke%20Hips.svg",
      title: "ZGC",
      enurl: "#",
      cnurl: "https://wiki.openjdk.org/display/zgc/Main#Main-QuickStart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Chroma.svg",
      title: "Chroma",
      enurl: "#",
      cnurl:
          "https://docs.trychroma.com/docs/overview/getting-started?lang=typescript",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Kali.svg",
      title: "Kali Linux",
      enurl: "#",
      cnurl: "https://www.kali.org/docs/introduction/what-is-kali-linux",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Kali.svg",
      title: "Kali Tools",
      enurl: "#",
      cnurl: "https://www.kali.org/tools",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/linebender.svg",
      title: "resvg",
      enurl: "#",
      cnurl: "https://github.com/linebender/resvg",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Sentry.svg",
      title: "Sentry",
      enurl: "#",
      cnurl: "https://docs.sentry.io/platforms",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ReactFlow.svg",
      title: "React Flow",
      enurl: "https://reactflow.dev/learn",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AppVeyor.svg",
      title: "AppVeyor",
      enurl:
          "https://www.appveyor.com/docs/getting-started-with-appveyor-for-linux/#quick-start",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WebGPU.svg",
      title: "WebGPU",
      enurl: "https://developer.mozilla.org/en-US/docs/Web/API/WebGPU_API",
      cnurl: "https://developer.mozilla.org/zh-CN/docs/Web/API/WebGPU_API",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/wgpu.svg",
      title: "wgpu",
      enurl: "https://docs.rs/wgpu/latest/wgpu",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "WRKFLW",
      enurl:
          "https://github.com/bahdotsh/wrkflw?tab=readme-ov-file#installation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Bake",
      enurl:
          "https://github.com/ali77gh/bake-rs?tab=readme-ov-file#installation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/jnv.svg",
      title: "jnv",
      enurl: "https://github.com/ynqa/jnv",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/tonic.svg",
      title: "tonic",
      enurl: "https://github.com/ynqa/jnv",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "axum",
      enurl: "https://docs.rs/axum/latest/axum/#example",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "uniocr",
      enurl:
          "https://github.com/mediar-ai/uniOCR?tab=readme-ov-file#quickstart-",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MinIO.svg",
      title: "MinIO",
      enurl:
          "https://min.io/docs/minio/container/operations/installation.html#install-and-deploy-minio",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GTK.svg",
      title: "GTK",
      enurl: "#",
      cnurl: "https://www.gtk.org/docs/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/PostgreSQL.svg",
      title: "PostgreSQL",
      enurl: "https://www.postgresql.org/docs/current/tutorial-install.html",
      cnurl: "http://www.postgres.cn/docs/current/tutorial-install.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Vala.svg",
      title: "Vala",
      enurl: "#",
      cnurl: "https://docs.vala.dev/installation-guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Servo.svg",
      title: "Servo",
      enurl: "#",
      cnurl: "https://book.servo.org/getting-servo.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenHarmony.svg",
      title: "OpenHarmony",
      enurl:
          "https://docs.openharmony.cn/pages/v5.0/en/device-dev/quick-start/quickstart-overview.md",
      cnurl:
          "https://docs.openharmony.cn/pages/v5.0/zh-cn/device-dev/quick-start/quickstart-overview.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Huawei%20DevEco%20Studio.svg",
      title: "DevEco Studio",
      enurl:
          "https://developer.huawei.com/consumer/en/doc/harmonyos-guides-V2/installation_process-0000001071425528-V2",
      cnurl:
          "https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V2/installation_process-0000001071425528-V2",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/_Xiaomi.svg",
      title: "Home Integration",
      enurl: "https://github.com/XiaoMi/ha_xiaomi_home/blob/main/README.md",
      cnurl:
          "https://github.com/XiaoMi/ha_xiaomi_home/blob/main/doc/README_zh.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MQTT.svg",
      title: "MQTT",
      enurl: "#",
      cnurl: "https://mqtt.org/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JSON.svg",
      title: "JSON",
      enurl: "https://www.json.org/json-en.html",
      cnurl: "https://www.json.org/json-zh.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BSON.svg",
      title: "BSON",
      enurl: "https://bsonspec.org/spec.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Langflow.svg",
      title: "Langflow",
      enurl: "https://docs.langflow.org/get-started-quickstart",
      cnurl: "#",
    ),
  );
  // itemList.add(
  //   Item(
  //     imgUrl: "/GitLocalize.svg",
  //     title: "GitLocalize",
  //     enurl: "https://docs.gitlocalize.com/getting_started.html",
  //     cnurl: "#",
  //   ),
  // );
  itemList.add(
    Item(
      imgUrl: "/JSONSchema.svg",
      title: "JSON Schema",
      enurl: "#",
      cnurl: "https://json-schema.org/learn/getting-started-step-by-step",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/microbit.svg",
      title: "micro:bit",
      enurl: "#",
      cnurl:
          "https://microbit.org/get-started/getting-started/power-up-and-play",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HomeAssistant.svg",
      title: "Home Assistant",
      enurl: "#",
      cnurl:
          "https://www.home-assistant.io/installation/generic-x86-64#install-home-assistant-container",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/D3JS.svg",
      title: "D3JS",
      enurl: "#",
      cnurl: "https://d3js.org/getting-started#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/RockyLinux.svg",
      title: "Rocky Linux",
      enurl: "https://docs.rockylinux.org/guides/installation",
      cnurl: "https://docs.rockylinux.org/zh/guides/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Fedora.svg",
      title: "Fedora Workstation",
      enurl: "https://docs.fedoraproject.org/en-US/workstation-docs",
      cnurl: "https://docs.fedoraproject.org/zh_Hans/workstation-docs",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Asahi%20Linux.svg",
      title: "Asahi Linux",
      enurl: "https://asahilinux.org/docs/#developers",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ClearLinux.svg",
      title: "Clear Linux",
      enurl: "#",
      cnurl:
          "https://www.clearlinux.org/clear-linux-documentation/guides/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Deepin.svg",
      title: "Deepin DTK",
      enurl: "#",
      cnurl:
          "https://docs.deepin.org/info/%E5%BC%80%E5%8F%91%E5%85%A5%E9%97%A8/%E5%9F%BA%E7%A1%80%E7%8E%AF%E5%A2%83/DTK/%E6%A6%82%E8%BF%B0/%E6%A6%82%E8%BF%B0/DTK%E5%85%A5%E9%97%A8%E6%8C%87%E5%BC%95",
      currentlyOnlySupportsChinese: true,
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/QEMU.svg",
      title: "QEMU",
      enurl: "#",
      cnurl: "https://www.qemu.org/docs/master",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NVIDIA.svg",
      title: "NVVM IR",
      enurl: "#",
      cnurl: "https://docs.nvidia.com/cuda/nvvm-ir-spec",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NVIDIA.svg",
      title: "NVVM ABI for PTX",
      enurl: "#",
      cnurl:
          "https://docs.nvidia.com/cuda/nvvm-ir-spec/index.html#nvvm-abi-for-ptx",
    ),
  );
  itemList.add(
    Item(imgUrl: "/UEFI.svg", title: "UEFI", cnurl: "https://uefi.org/uefi"),
  );
  itemList.add(
    Item(
      imgUrl: "/Grok.svg",
      title: "xAI Grok",
      enurl: "#",
      cnurl: "https://github.com/xai-org/grok-1",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LangChain.svg",
      title: "LangChain",
      enurl: "#",
      cnurl: "https://js.langchain.com/docs/how_to",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NVIDIA.svg",
      title: "CUDA",
      enurl: "#",
      cnurl: "https://docs.nvidia.com/cuda/cuda-quick-start-guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MooreThreads.svg",
      title: "MT-Transformer-vLLM",
      enurl: "#",
      cnurl: "https://docs.mthreads.com/mtt/mtt-doc-online/quick_start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/vLLM.svg",
      title: "vLLM",
      enurl: "https://docs.vllm.ai/en/stable/getting_started/quickstart.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NVIDIA.svg",
      title: "CUDA-GDB",
      enurl: "#",
      cnurl: "https://docs.nvidia.com/cuda/cuda-gdb/index.html#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NVIDIA.svg",
      title: "Cosmos",
      enurl: "#",
      cnurl:
          "https://research.nvidia.com/publication/2025-01_cosmos-world-foundation-model-platform-physical-ai",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/KasmWorkspaces.svg",
      title: "Kasm Workspaces",
      enurl: "#",
      cnurl: "https://kasmweb.com/docs/latest/index.html#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WireGuard.svg",
      title: "WireGuard",
      enurl: "#",
      cnurl: "https://www.wireguard.com/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenWrt.svg",
      title: "OpenWrt",
      enurl: "https://openwrt.org/docs/guide-quick-start/start",
      cnurl: "https://openwrt.org/zh/docs/guide-quick-start/start",
    ),
  );
  itemList.add(
    Item(imgUrl: "/YAML.svg", title: "YAML", cnurl: "https://yaml.org"),
  );
  itemList.add(
    Item(
      imgUrl: "/XML.svg",
      title: "XML",
      enurl: "https://developer.mozilla.org/en-US/docs/Web/XML",
      cnurl: "https://developer.mozilla.org/zh-CN/docs/Web/XML",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Nim.svg",
      title: "Nim",
      enurl: "#",
      cnurl: "https://nim-lang.org/documentation.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Haskell.svg",
      title: "Haskell",
      enurl: "#",
      cnurl: "https://www.haskell.org/get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bitcoin.svg",
      title: "Bitcoin",
      enurl: "#",
      cnurl: "https://developer.bitcoin.org/devguide/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WinterCG.svg",
      title: "WinterTC",
      enurl: "#",
      cnurl: "https://wintertc.org/work",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Exercism.svg",
      title: "Exercism",
      enurl: "#",
      cnurl: "https://exercism.org/tracks",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/gitee.svg",
      title: "Gitee Go",
      enurl: "#",
      cnurl: "https://gitee.com/help/articles/4357#article-header0",
      currentlyOnlySupportsChinese: true,
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/gitee.svg",
      title: "Gitee MCP Server",
      enurl:
          "https://github.com/oschina/mcp-gitee?tab=readme-ov-file#installation",
      cnurl: "https://gitee.com/oschina/mcp-gitee#%E5%AE%89%E8%A3%85",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "GitHub MCP Server",
      enurl:
          "https://github.com/github/github-mcp-server?tab=readme-ov-file#usage-with-vs-code",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Playwright.svg",
      title: "Playwright MCP",
      enurl:
          "https://github.com/microsoft/playwright-mcp?tab=readme-ov-file#installation-in-vs-code",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MCP.svg",
      title: "Git MCP",
      enurl:
          "https://github.com/idosal/git-mcp?tab=readme-ov-file#-getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Flameshot.svg",
      title: "Flameshot",
      enurl: "#",
      cnurl: "https://flameshot.org/docs/overview/overview",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Gradle.svg",
      title: "Gradle",
      enurl: "#",
      cnurl: "https://docs.gradle.org/current/userguide/quick_start.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ethereum.svg",
      title: "Ethereum",
      enurl: "https://ethereum.org/en/developers/docs/intro-to-ethereum",
      cnurl: "https://ethereum.org/zh/developers/docs/intro-to-ethereum",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/arroyo.svg",
      title: "arroyo",
      enurl: "#",
      cnurl: "https://doc.arroyo.dev/getting-started",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/ProGuard.svg",
  //     title: "ProGuard",
  //     cnurl: "https://www.guardsquare.com/manual/quickstart"));

  itemList.add(
    Item(
      imgUrl: "/Mojo.svg",
      title: "Mojo",
      enurl: "#",
      cnurl: "https://docs.modular.com/stable/mojo/manual/get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mojo.svg",
      title: "Mojo StdLib",
      enurl: "#",
      cnurl: "https://docs.modular.com/mojo/lib",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Debian.svg",
      title: "Debian",
      enurl: "#",
      cnurl: "https://www.debian.org/doc/manuals/debian-reference",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Debian.svg",
      title: "Simple Shell Command",
      enurl:
          "https://www.debian.org/doc/manuals/debian-reference/ch01.en.html#_the_simple_shell_command",
      cnurl:
          "https://www.debian.org/doc/manuals/debian-reference/ch01.zh-cn.html#_the_simple_shell_command",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cargo.svg",
      title: "Cargo",
      enurl: "#",
      cnurl:
          "https://doc.rust-lang.org/stable/cargo/getting-started/first-steps.html",
    ),
  );
  /* itemList.add(Item(
      imgUrl: "/XTermJS.svg",
      title: "XTermJS",
      enurl:"#", cnurl: "https://xtermjs.org/docs")); */
  itemList.add(
    Item(
      imgUrl: "/Wayland.svg",
      title: "Wayland",
      enurl: "#",
      cnurl: "https://wayland.freedesktop.org/docs/html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Waydroid.svg",
      title: "Waydroid",
      enurl: "#",
      cnurl: "https://docs.waydro.id/usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CompilerExplorer.svg",
      title: "Compiler Explorer",
      enurl: "#",
      cnurl: "https://godbolt.org",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "MSVC",
      enurl:
          "https://learn.microsoft.com/en-us/cpp/build/reference/compiling-a-c-cpp-program?view=msvc-170",
      cnurl:
          "https://learn.microsoft.com/zh-cn/cpp/build/reference/compiling-a-c-cpp-program?view=msvc-170",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "MSBuild",
      enurl:
          "https://learn.microsoft.com/en-us/visualstudio/msbuild/walkthrough-using-msbuild?view=vs-2022",
      cnurl:
          "https://learn.microsoft.com/zh-cn/visualstudio/msbuild/walkthrough-using-msbuild?view=vs-2022",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MySQL.svg",
      title: "MySQL",
      enurl: "#",
      cnurl:
          "https://dev.mysql.com/doc/refman/latest/en/binary-installation.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenZFS.svg",
      title: "OpenZFS",
      enurl: "#",
      cnurl:
          "https://openzfs.github.io/openzfs-docs/Getting%20Started/Debian/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GreptimeDB.svg",
      title: "GreptimeDB",
      enurl: "#",
      cnurl: "https://docs.greptime.com/getting-started/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SpringBoot.svg",
      title: "Spring Boot",
      enurl: "#",
      cnurl:
          "https://docs.spring.io/spring-boot/3.4-SNAPSHOT/documentation.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ECMAScript.svg",
      title: "ECMAScript",
      enurl: "#",
      cnurl: "https://tc39.es/ecma262",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Xcode.svg",
      title: "Xcode",
      enurl: "#",
      cnurl:
          "https://developer.apple.com/documentation/xcode/creating-an-xcode-project-for-an-app",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/HighlightJS.svg",
  //     title: "HighlightJS",
  //     cnurl: "https://highlightjs.readthedocs.io/en/latest"));
  itemList.add(
    Item(
      imgUrl: "/HTTP_Toolkit.svg",
      title: "HTTP Toolkit",
      enurl: "#",
      cnurl: "https://httptoolkit.com/docs/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HTTP_3_Check.svg",
      title: "HTTP/3 Check",
      enurl: "#",
      cnurl: "https://http3check.net",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TIOBE.svg",
      title: "TIOBE Index",
      enurl: "#",
      cnurl: "https://www.tiobe.com/tiobe-index",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Lua.svg",
      title: "Lua",
      enurl: "#",
      cnurl: "https://www.lua.org/start.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Swagger.svg",
      title: "Swagger",
      enurl: "#",
      cnurl: "https://swagger.io/docs",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HHVM.svg",
      title: "HHVM",
      enurl: "#",
      cnurl: "https://docs.hhvm.com/hhvm/basic-usage/introduction",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Gnome.svg",
      title: "GNOME",
      enurl: "#",
      cnurl: "https://developer.gnome.org/documentation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ReactiveX.svg",
      title: "ReactiveX",
      enurl: "#",
      cnurl: "https://reactivex.io/documentation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OceanBase.svg",
      title: "OceanBase",
      enurl:
          "https://en.oceanbase.com/docs/common-oceanbase-database-10000000001970931",
      cnurl:
          "https://www.oceanbase.com/docs/common-oceanbase-database-cn-1000000002012693",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/mongoDB.svg",
      title: "MongoDB",
      enurl: "https://www.mongodb.com/docs/manual/tutorial/getting-started",
      cnurl:
          "https://www.mongodb.com/zh-cn/docs/manual/tutorial/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DocsyJekyll.svg",
      title: "Docsy Jekyll",
      enurl: "#",
      cnurl: "https://vsoch.github.io/docsy-jekyll/docs/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DocsyJekyll.svg",
      title: "Protocol Buffers",
      enurl: "#",
      cnurl: "https://protobuf.dev/programming-guides/proto3",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DocsyJekyll.svg",
      title: "ProtoJSON Format",
      enurl: "#",
      cnurl: "https://protobuf.dev/programming-guides/json",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MariaDB.svg",
      title: "MariaDB",
      enurl: "https://mariadb.com/kb/en/a-mariadb-primer",
      cnurl: "https://mariadb.com/kb/zh-cn/a-mariadb-primer",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Tribuo.svg",
      title: "Tribuo",
      enurl: "#",
      cnurl: "https://tribuo.org/learn/4.3/docs/#h1",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitLFS.svg",
      title: "Git LFS",
      enurl:
          "https://github.com/git-lfs/git-lfs?tab=readme-ov-file#example-usage",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HTTP.svg",
      title: "HTTP",
      enurl: "https://developer.mozilla.org/en-US/docs/Web/HTTP",
      cnurl: "https://developer.mozilla.org/zh-CN/docs/Web/HTTP",
    ),
  );
  itemList.add(
    Item(imgUrl: "/Ktor.svg", title: "Ktor", cnurl: "https://ktor.io/docs"),
  );
  itemList.add(
    Item(
      imgUrl: "/Airflow.svg",
      title: "Airflow",
      enurl: "#",
      cnurl: "https://airflow.apache.org/docs/apache-airflow/stable/start.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Arduino.svg",
      title: "Arduino",
      enurl: "#",
      cnurl:
          "https://docs.arduino.cc/learn/starting-guide/getting-started-arduino",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Inkscape.svg",
      title: "Inkscape",
      enurl: "https://inkscape.org/doc/tutorials/basic/tutorial-basic.html",
      cnurl:
          "https://inkscape.org/zh-hans/doc/tutorials/basic/tutorial-basic.html",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/Mattermost.svg",
  //     title: "Mattermost",
  //     cnurl: "https://docs.mattermost.com"));
  itemList.add(
    Item(
      imgUrl: "/LateX.svg",
      title: "LateX",
      enurl: "#",
      cnurl: "https://www.latex-project.org/help/documentation",
    ),
  );
  itemList.add(
    Item(imgUrl: "/KateX.svg", title: "KateX", cnurl: "https://katex.org/docs"),
  );
  itemList.add(
    Item(
      imgUrl: "/Redox.svg",
      title: "Redox OS",
      enurl: "#",
      cnurl:
          "https://doc.redox-os.org/book/getting-started.html#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Plan9.svg",
      title: "Plan 9",
      enurl: "#",
      cnurl: "http://9p.io/wiki/plan9/Installation_instructions/index.html",
    ),
  );

  // itemList.add(Item(
  //     imgUrl: "/RustWASM.svg",
  //     title: "Rust and WebAssembly",
  //     cnurl: "https://rustwasm.github.io/docs.html"));
  itemList.add(
    Item(
      imgUrl: "/FFmpeg.svg",
      title: "FFmpeg",
      enurl: "#",
      cnurl: "https://ffmpeg.org/ffmpeg-all.html#Synopsis",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Alpine.svg",
      title: "Alpine Linux",
      enurl: "#",
      cnurl:
          "https://docs.alpinelinux.org/user-handbook/0.1a/Installing/medium.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Etcher.svg",
      title: "Etcher",
      enurl: "#",
      cnurl: "https://etcher-docs.balena.io/#supported-operating-systems",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Arch%20Linux.svg",
      title: "Arch Linux",
      enurl: "https://wiki.archlinux.org/title/Main_page",
      cnurl: "https://wiki.archlinuxcn.org/wiki/%E9%A6%96%E9%A1%B5",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Windows_11.svg",
      title: "Windows",
      enurl:
          "https://learn.microsoft.com/en-us/windows/whats-new/windows-11-overview",
      cnurl:
          "https://learn.microsoft.com/zh-cn/windows/whats-new/windows-11-overview",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Windows_11.svg",
      title: "Windows Commands",
      enurl:
          "https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands",
      cnurl:
          "https://learn.microsoft.com/zh-cn/windows-server/administration/windows-commands/windows-commands",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MS-DOS.svg",
      title: "MS-DOS",
      enurl: "https://en.wikipedia.org/wiki/List_of_DOS_commands",
      cnurl:
          "https://zh.wikipedia.org/wiki/MS-DOS%E5%91%BD%E4%BB%A4%E5%88%97%E8%A1%A8",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ActixWeb.svg",
      title: "Actix Web",
      enurl: "#",
      cnurl: "https://actix.rs/docs/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rocket.svg",
      title: "Rocket",
      enurl: "#",
      cnurl: "https://rocket.rs/guide/v0.5/getting-started/#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Eclipse%20IDE.svg",
      title: "AspectJ",
      enurl: "#",
      cnurl: "https://eclipse.dev/aspectj/doc/released/progguide/starting.html",
    ),
  );
  itemList.add(
    Item(imgUrl: "/OW2_ASM.svg", title: "OW2 ASM", cnurl: "https://asm.ow2.io"),
  );
  itemList.add(
    Item(
      imgUrl: "/Figma.svg",
      title: "Figma Developers",
      enurl: "#",
      cnurl: "https://www.figma.com/developers",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/XOrg.svg",
      title: "X Window System",
      enurl: "#",
      cnurl: "https://www.x.org/releases/current/doc/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OCaml.svg",
      title: "OCaml",
      enurl: "#",
      cnurl: "https://ocaml.org/docs/installing-ocaml",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/KDE.svg",
      title: "KDE Developer",
      enurl: "#",
      cnurl: "https://develop.kde.org/docs/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Unicode.svg",
      title: "Unicode",
      enurl: "#",
      cnurl: "https://www.unicode.org/versions/Unicode16.0.0",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/vcpkg.svg",
      title: "vcpkg",
      enurl:
          "https://learn.microsoft.com/en-us/vcpkg/get_started/get-started?pivots=shell-bash",
      cnurl:
          "https://learn.microsoft.com/zh-cn/vcpkg/get_started/get-started?pivots=shell-bash",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Maven.svg",
      title: "Maven",
      enurl: "#",
      cnurl: "https://maven.apache.org/ref/current",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DevContainer.svg",
      title: "Dev Containers",
      enurl: "#",
      cnurl: "https://containers.dev/implementors/templates",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/containerd.svg",
      title: "containerd",
      enurl: "#",
      cnurl:
          "https://github.com/containerd/containerd/blob/main/docs/getting-started.md#getting-started-with-containerd",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/containerd.svg",
      title: "nerdctl",
      enurl: "#",
      cnurl:
          "https://github.com/containerd/nerdctl?tab=readme-ov-file#basic-usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OCI.svg",
      title: "runc",
      enurl: "#",
      cnurl:
          "https://github.com/opencontainers/runc?tab=readme-ov-file#using-runc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OCI.svg",
      title: "OCI Runtime Spec",
      enurl:
          "https://opencontainers.org/posts/blog/2024-02-18-oci-runtime-spec-v1-2/#what-is-the-oci-runtime-spec",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/youki_flat.svg",
      title: "youki",
      enurl: "https://youki-dev.github.io/youki/user/basic_setup.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CSV.svg",
      title: "CSV",
      enurl: "https://en.wikipedia.org/wiki/Comma-separated_values",
      cnurl:
          "https://zh.wikipedia.org/wiki/%E9%80%97%E5%8F%B7%E5%88%86%E9%9A%94%E5%80%BC",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/InternVL.svg",
      title: "InternVL",
      enurl:
          "https://internvl.readthedocs.io/en/latest/internvl2.5/quick_start.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Trendshift.svg",
      title: "Trendshift",
      enurl: "https://trendshift.io",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/crun.svg",
      title: "crun",
      enurl:
          "https://github.com/containers/crun/tree/main?tab=readme-ov-file#performance",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bazel.svg",
      title: "Bazel",
      enurl: "https://bazel.build/run/build?hl=en",
      cnurl: "https://bazel.build/run/build?hl=zh-cn",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/BusyBox.svg",
  //     title: "BusyBox",
  //     cnurl: "https://busybox.net/downloads/BusyBox.html"));
  itemList.add(
    Item(
      imgUrl: "/Zookeeper.svg",
      title: "Zookeeper",
      enurl: "#",
      cnurl:
          "https://zookeeper.apache.org/doc/current/zookeeperStarted.html#getting-started-coordinating-distributed-applications-with-zooKeeper",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WrenAI.svg",
      title: "Wren AI",
      enurl: "#",
      cnurl: "https://docs.getwren.ai/oss/overview/introduction",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/quiche.svg",
      title: "quiche",
      enurl: "#",
      cnurl: "https://docs.quic.tech/quiche",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenSSL.svg",
      title: "OpenSSL commands",
      enurl: "#",
      cnurl: "https://docs.openssl.org/master/man1",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenEuler.svg",
      title: "OpenEuler",
      enurl:
          "https://docs.openeuler.org/en/docs/22.03_LTS_SP2/docs/Installation/installation-preparations.html",
      cnurl:
          "https://docs.openeuler.org/zh/docs/22.03_LTS_SP2/docs/Installation/%E5%AE%89%E8%A3%85%E6%8C%87%E5%AF%BC.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Datadog.svg",
      title: "Datadog",
      enurl: "#",
      cnurl: "https://docs.datadoghq.com/getting_started/application",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Wireshark.svg",
      title: "Wireshark",
      enurl: "#",
      cnurl: "https://www.wireshark.org/docs/wsug_html",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/Buildroot.svg",
  //     title: "Buildroot",
  //     cnurl: "https://buildroot.org/downloads/manual/manual.html#_getting_started"));
  itemList.add(
    Item(
      imgUrl: "/SWC.svg",
      title: "SWC",
      enurl: "#",
      cnurl: "https://swc.rs/docs/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Qdrant.svg",
      title: "Qdrant",
      enurl: "#",
      cnurl: "https://qdrant.tech/documentation/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HuggingFace.svg",
      title: "Hugging Face",
      enurl: "#",
      cnurl: "https://huggingface.co/docs/transformers/quicktour",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ollama.svg",
      title: "Ollama",
      enurl: "#",
      cnurl: "https://github.com/ollama/ollama/blob/main/README.md#quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Grafana.svg",
      title: "Grafana",
      enurl: "#",
      cnurl: "https://grafana.com/docs/grafana/latest/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Prometheus.svg",
      title: "Prometheus",
      enurl: "#",
      cnurl: "https://prometheus.io/docs/introduction/first_steps",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cilium.svg",
      title: "Cilium",
      enurl: "#",
      cnurl: "https://docs.cilium.io/en/stable/#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Hubble.svg",
      title: "Hubble",
      enurl: "#",
      cnurl:
          "https://github.com/cilium/hubble?tab=readme-ov-file#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Tetragon.svg",
      title: "Tetragon",
      enurl: "#",
      cnurl: "https://tetragon.io/docs/getting-started/install-k8s",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Remmina.svg",
      title: "Remmina",
      enurl: "#",
      cnurl: "https://remmina.gitlab.io/remminadoc.gitlab.io",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Chat2DB.svg",
      title: "Chat2DB",
      enurl: "#",
      cnurl:
          "https://chat2db-ai.com/resources/docs/start-guide/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Selenium.svg",
      title: "Selenium",
      enurl: "#",
      cnurl: "https://www.selenium.dev/documentation/webdriver/getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenAIPlatform.svg",
      title: "OpenAI Platform",
      enurl: "#",
      cnurl: "https://platform.openai.com/docs/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenAIPlatform.svg",
      title: "Codex CLI",
      enurl: "https://github.com/openai/codex?tab=readme-ov-file#quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenAIPlatform.svg",
      title: "typst",
      enurl: "https://typst.app/docs/guides/page-setup-guide",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenHands.svg",
      title: "OpenHands",
      enurl: "#",
      cnurl:
          "https://github.com/All-Hands-AI/OpenHands?tab=readme-ov-file#-quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenAIPlatform.svg",
      title: "universe",
      enurl: "#",
      cnurl:
          "https://github.com/openai/universe?tab=readme-ov-file#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/minikube.svg",
      title: "minikube",
      enurl: "#",
      cnurl: "https://minikube.sigs.k8s.io/docs/start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IntelliJ_IDEA.svg",
      title: "IntelliJ IDEA",
      enurl: "#",
      cnurl: "https://www.jetbrains.com/help/idea/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Fleet.svg",
      title: "JetBrains Fleet",
      enurl: "#",
      cnurl: "https://www.jetbrains.com/help/fleet/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Space.svg",
      title: "JetBrains Space",
      enurl: "#",
      cnurl: "https://www.jetbrains.com/help/space/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Metabase.svg",
      title: "Metabase",
      enurl: "#",
      cnurl: "https://www.metabase.com/learn/metabase-basics/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TigerBeetle.svg",
      title: "TigerBeetle",
      enurl: "#",
      cnurl: "https://docs.tigerbeetle.com/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Alibaba.svg",
      title: "AliDNS",
      enurl: "#",
      cnurl: "https://www.alidns.com/knowledge?type=SETTING_DOCS#user",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Aliyun.svg",
      title: "Alibaba Cloud",
      enurl:
          "https://www.alibabacloud.com/help/en/cloud-migration-guide-for-beginners/latest/overview",
      cnurl:
          "https://www.alibabacloud.com/help/zh/cloud-migration-guide-for-beginners/latest/overview",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cloudflare.svg",
      title: "1.1.1.1",
      enurl: "#",
      cnurl: "https://developers.cloudflare.com/1.1.1.1/setup",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MaterialWeb.svg",
      title: "Material Web",
      enurl: "#",
      cnurl: "https://material-web.dev/about/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BaiduKaifa.svg",
      title: "Baidu Kaifa",
      enurl: "#",
      cnurl: "https://kaifa.baidu.com",
      currentlyOnlySupportsChinese: true,
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GooglePublicDNS.svg",
      title: "Google Public DNS",
      enurl: "https://developers.google.com/speed/public-dns/docs/using?hl=en",
      cnurl:
          "https://developers.google.com/speed/public-dns/docs/using?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cursor.svg",
      title: "Cursor",
      enurl: "#",
      cnurl: "https://docs.cursor.com/get-started/welcome#get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FAST.svg",
      title: "FAST",
      enurl: "#",
      cnurl: "https://fast.com",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "Win32 API",
      enurl:
          "https://learn.microsoft.com/en-us/windows/win32/desktop-programming",
      cnurl:
          "https://learn.microsoft.com/zh-cn/windows/win32/desktop-programming",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "UWP",
      enurl:
          "https://learn.microsoft.com/zh-cn/windows/uwp/get-started/create-a-hello-world-app-xaml-universal",
      cnurl:
          "https://learn.microsoft.com/en-us/windows/uwp/get-started/create-a-hello-world-app-xaml-universal",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/codeium.svg",
      title: "codeium",
      enurl: "#",
      cnurl: "https://docs.codeium.com/getstarted/overview#get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ghostty.svg",
      title: "Ghostty",
      enurl: "#",
      cnurl: "https://ghostty.org/docs#get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rsbuild.svg",
      title: "Rsbuild",
      enurl: "https://rsbuild.dev/guide/start/quick-start",
      cnurl: "https://rsbuild.dev/zh/guide/start/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rolldown.svg",
      title: "Rolldown",
      enurl: "#",
      cnurl: "https://rolldown.rs/guide/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AzurePipelines.svg",
      title: "Azure Pipelines",
      enurl:
          "https://learn.microsoft.com/en-us/azure/devops/pipelines/create-first-pipeline?view=azure-devops&tabs=java%2Cbrowser",
      cnurl:
          "https://learn.microsoft.com/zh-cn/azure/devops/pipelines/create-first-pipeline?view=azure-devops&tabs=java%2Cbrowser",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CodeGeeX.svg",
      title: "CodeGeeX",
      enurl: "https://github.com/THUDM/CodeGeeX4/blob/main/README.md",
      cnurl: "https://github.com/THUDM/CodeGeeX4/blob/main/README_zh.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ModelScope.svg",
      title: "ModelScope",
      enurl: "#",
      cnurl: "https://modelscope.cn/docs/intro/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenInterpreter.svg",
      title: "Open Interpreter",
      enurl:
          "https://github.com/OpenInterpreter/open-interpreter?tab=readme-ov-file#quick-start",
      cnurl:
          "https://github.com/OpenInterpreter/open-interpreter/blob/main/docs/README_ZH.md#%E5%BF%AB%E9%80%9F%E5%BC%80%E5%A7%8B",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Gemini.svg",
      title: "Gemini API",
      enurl: "https://ai.google.dev/gemini-api/docs/quickstart?hl=en&lang=rest",
      cnurl:
          "https://ai.google.dev/gemini-api/docs/quickstart?hl=zh-cn&lang=rest",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MetaLlama.svg",
      title: "Meta Llama",
      enurl: "#",
      cnurl: "https://www.llama.com/docs/how-to-guides",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NextChat.svg",
      title: "NextChat",
      enurl:
          "https://github.com/ChatGPTNextWeb/NextChat/tree/main?tab=readme-ov-file#get-started",
      cnurl:
          "https://github.com/ChatGPTNextWeb/NextChat/blob/main/README_CN.md#%E5%BC%80%E5%A7%8B%E4%BD%BF%E7%94%A8",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Automa.svg",
      title: "Automa",
      enurl: "#",
      cnurl: "https://docs.automa.site/guide/quick-start.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mintty.svg",
      title: "Mintty",
      enurl: "#",
      cnurl: "https://mintty.github.io/mintty.1.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Wasmer.svg",
      title: "Wasmer",
      enurl: "#",
      cnurl: "https://docs.wasmer.io/install",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Wasmer.svg",
      title: "WinterJS",
      enurl: "#",
      cnurl:
          "https://github.com/wasmerio/winterjs?tab=readme-ov-file#running-winterjs-natively",
    ),
  );
  itemList.add(
    Item(imgUrl: "/Skia.svg", title: "Skia", cnurl: "https://skia.org/docs"),
  );
  itemList.add(
    Item(
      imgUrl: "/Skia.svg",
      title: "CanvasKit",
      enurl: "#",
      cnurl: "https://skia.org/docs/user/modules/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Lima.svg",
      title: "Lima",
      enurl: "#",
      cnurl: "https://lima-vm.io/docs/usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/libimobiledevice.svg",
      title: "libimobiledevice",
      enurl: "#",
      cnurl: "https://libimobiledevice.org/#get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AssemblyScript.svg",
      title: "AssemblyScript",
      enurl: "#",
      cnurl: "https://www.assemblyscript.org/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MLIR.svg",
      title: "MLIR",
      enurl: "#",
      cnurl: "https://mlir.llvm.org/getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Pintree.svg",
      title: "Pintree",
      enurl: "https://docs.pintree.io/en/guide/open-source",
      cnurl: "https://docs.pintree.io/zh/guide/open-source",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JavaScript.svg",
      title: "QuickJS",
      enurl: "#",
      cnurl: "https://bellard.org/quickjs/quickjs.html#Quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BoaJS.svg",
      title: "Boa",
      enurl: "#",
      cnurl: "https://docs.rs/boa_engine/latest/boa_engine/#example-usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rusty V8 Binding",
      enurl: "#",
      cnurl: "https://docs.rs/v8/latest/v8/#example",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "The Rust Style Guide",
      enurl: "#",
      cnurl:
          "https://doc.rust-lang.org/stable/style-guide/#the-default-rust-style",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Pepe",
      enurl: "#",
      cnurl:
          "https://github.com/omarmhaimdat/pepe/tree/master?tab=readme-ov-file#usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "MCPR",
      enurl: "#",
      cnurl: "https://github.com/conikeec/mcpr?tab=readme-ov-file#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "rustup",
      enurl: "#",
      cnurl: "https://rustup.rs",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "bitflags",
      enurl: "#",
      cnurl: "https://github.com/bitflags/bitflags?tab=readme-ov-file#usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "facet",
      enurl: "https://docs.rs/facet/latest/facet",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "cross",
      enurl: "https://github.com/cross-rs/cross?tab=readme-ov-file#usage",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "unsynn",
      enurl: "https://docs.rs/unsynn/latest/unsynn",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "flate2",
      enurl: "#",
      cnurl:
          "https://github.com/rust-lang/flate2-rs/tree/main?tab=readme-ov-file#compression",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FUTURES-RS.svg",
      title: "futures",
      enurl: "#",
      cnurl: "https://docs.rs/futures/latest/futures",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZIG.svg",
      title: "Zig LangRef",
      enurl: "#",
      cnurl: "https://ziglang.org/documentation/0.14.0",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZIG.svg",
      title: "Zig StdLib",
      enurl: "#",
      cnurl: "https://ziglang.org/documentation/0.14.0/std",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "NatureLM",
      enurl: "#",
      cnurl: "https://naturelm.github.io",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "BitNet",
      enurl: "https://github.com/microsoft/BitNet?tab=readme-ov-file#usage",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "UniFFI",
      enurl: "#",
      cnurl: "https://mozilla.github.io/uniffi-rs/latest/Getting_started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "RustOwl",
      enurl: "#",
      cnurl:
          "https://github.com/cordx56/rustowl?tab=readme-ov-file#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "mlx-rs",
      enurl: "#",
      cnurl:
          "https://github.com/oxideai/mlx-rs?tab=readme-ov-file#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "windows-drivers-rs",
      enurl:
          "https://github.com/microsoft/windows-drivers-rs?tab=readme-ov-file#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/COSMIC_Toolkit.svg",
      title: "COSMIC Toolkit",
      enurl: "#",
      cnurl: "https://pop-os.github.io/libcosmic-book/introduction.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Trunk.svg",
      title: "Trunk",
      enurl: "#",
      cnurl: "https://trunkrs.dev/#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cargo.svg",
      title: "Cargo Remote",
      enurl: "#",
      cnurl: "https://github.com/sgeisler/cargo-remote",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cargo.svg",
      title: "Cargo NDK",
      enurl: "#",
      cnurl:
          "https://github.com/bbqsrc/cargo-ndk?tab=readme-ov-file#cargo-ndk---build-rust-code-for-android",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cargo.svg",
      title: "Cargo Cocoapods",
      enurl: "#",
      cnurl:
          "https://github.com/bbqsrc/cargo-cocoapods/tree/main?tab=readme-ov-file#cargo-cocoapods---build-rust-code-for-xcode-integration",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cargo.svg",
      title: "Cargo Lipo",
      enurl: "#",
      cnurl:
          "https://github.com/TimNN/cargo-lipo?tab=readme-ov-file#cargo-lipo--",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cargo.svg",
      title: "Workspace Analyzer",
      enurl: "#",
      cnurl:
          "https://github.com/jaads/cargo-workspace-analyzer?tab=readme-ov-file#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cargo.svg",
      title: "Cargo Make",
      enurl: "https://sagiegurari.github.io/cargo-make",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Prefix.svg",
      title: "Pixi",
      enurl: "#",
      cnurl: "https://pixi.sh/latest/#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/mingw-w64.svg",
      title: "mingw-w64",
      enurl: "#",
      cnurl: "https://www.mingw-w64.org/getting-started/msys2-llvm",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "DeepSeek",
      enurl: "#",
      cnurl:
          "https://github.com/deepseek-ai/DeepSeek-R1?tab=readme-ov-file#6-how-to-run-locally",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "DeepEP",
      enurl: "#",
      cnurl:
          "https://github.com/deepseek-ai/DeepEP?tab=readme-ov-file#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "DeepGEMM",
      enurl: "#",
      cnurl:
          "https://github.com/deepseek-ai/DeepGEMM?tab=readme-ov-file#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "DeepSeek 3FS",
      enurl: "#",
      cnurl:
          "https://github.com/deepseek-ai/3FS/blob/main/deploy/README.md#3fs-setup-guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "Smallpond",
      enurl: "#",
      cnurl:
          "https://github.com/deepseek-ai/smallpond/blob/main/docs/source/getstarted.rst",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "FlashMLA",
      enurl: "#",
      cnurl:
          "https://github.com/deepseek-ai/FlashMLA?tab=readme-ov-file#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "DeepSeek-VL2",
      enurl:
          "https://github.com/deepseek-ai/DeepSeek-VL2?tab=readme-ov-file#4-quick-start",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AppFlowy.svg",
      title: "AppFlowy",
      enurl: "#",
      cnurl:
          "https://docs.appflowy.io/docs/appflowy/install-appflowy/installation-methods/installing-with-docker",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/PinganCloud.svg",
      title: "Ping An Cloud",
      enurl:
          "https://fincloud.pingan.com/ssr/help/compute/ecs/Quick_Start.Linux_Quick_Start.Create_Instance",
      cnurl:
          "https://fincloud.pingan.com/ssr/help/compute/ecs/Quick_Start.Linux_Quick_Start.Create_Instance",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Tencent%20Cloud.svg",
      title: "Tencent Cloud VM",
      enurl: "https://www.tencentcloud.com/document/product/213/38678",
      cnurl:
          "https://www.tencentcloud.com/zh/document/product/213/38678?lang=zh&pg=",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/aws.svg",
      title: "Amazon S3",
      enurl:
          "https://docs.aws.amazon.com/AmazonS3/latest/userguide/GetStartedWithS3.html",
      cnurl:
          "https://docs.aws.amazon.com/zh_cn/AmazonS3/latest/userguide/GetStartedWithS3.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BaiduOCR.svg",
      title: "Baidu OCR",
      enurl: "#",
      cnurl: "https://cloud.baidu.com/doc/OCR/s/dk3iqnq51",
      currentlyOnlySupportsChinese: true,
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BaiduOCR.svg",
      title: "Baidu AI Cloud",
      enurl: "#",
      cnurl: "https://intl.cloud.baidu.com/doc/BML/s/Xjxbjc84n-en",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LcJuvesBlog.svg",
      title: "LcJuves' Blog",
      enurl: "#",
      cnurl: "https://blog.lcjuves.com",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenVSX.svg",
      title: "Open VSX",
      enurl: "#",
      cnurl:
          "https://github.com/EclipseFdn/open-vsx.org?tab=readme-ov-file#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LcJuvesBlog.svg",
      title: "Learn X in Y minutes",
      enurl: "#",
      cnurl: "https://learnxinyminutes.com/c",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Svelte.svg",
      title: "Svelte",
      enurl: "#",
      cnurl: "https://svelte.dev/docs/svelte/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/rust-analyzer.svg",
      title: "rust-analyzer",
      enurl: "#",
      cnurl: "https://rust-analyzer.github.io/book/vs_code.html#vs-code",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenStack.svg",
      title: "OpenStack",
      cnurl: "https://docs.openstack.org/devstack/latest/#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HelloAlgo.svg",
      title: "Hello Algo",
      enurl: "https://www.hello-algo.com/en/chapter_hello_algo",
      cnurl: "https://www.hello-algo.com/chapter_hello_algo",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AVIF.svg",
      title: "AVIF",
      enurl: "#",
      cnurl: "https://aomediacodec.github.io/av1-avif",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/glTF.svg",
      title: "glTF",
      enurl: "#",
      cnurl: "https://www.khronos.org/gltf/#gltf-intro",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Chrome.svg",
      title: "Chrome DevTools",
      enurl:
          "https://developer.chrome.com/docs/devtools/overview?hl=en#open?hl=en",
      cnurl:
          "https://developer.chrome.com/docs/devtools/overview?hl=zh-cn#open?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Chrome.svg",
      title: "Chrome Extensions",
      enurl:
          "https://developer.chrome.com/docs/extensions/get-started/tutorial/hello-world?hl=en",
      cnurl:
          "https://developer.chrome.com/docs/extensions/get-started/tutorial/hello-world?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AFFiNE.svg",
      title: "AFFiNE",
      enurl: "#",
      cnurl: "https://docs.affine.pro/docs/development/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FingerprintJS.svg",
      title: "FingerprintJS",
      enurl: "#",
      cnurl: "https://dev.fingerprint.com/docs/quick-start-guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/UbuntuServer.svg",
      title: "Ubuntu Server",
      enurl: "#",
      cnurl:
          "https://documentation.ubuntu.com/server/tutorial/basic-installation/#basic-installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/J1Assistant.svg",
      title: "J1 Assistant",
      enurl: "#",
      cnurl: "https://matter.ai",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FVM.svg",
      title: "FVM",
      enurl: "#",
      cnurl: "https://fvm.app/documentation/guides/basic-commands",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Tabnine.svg",
      title: "Tabnine",
      enurl: "#",
      cnurl: "https://docs.tabnine.com/main/getting-started/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Continue.svg",
      title: "Continue",
      enurl: "#",
      cnurl: "https://docs.continue.dev/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/VSCodium.svg",
      title: "VSCodium",
      enurl: "#",
      cnurl: "https://github.com/VSCodium/vscodium/blob/master/docs/index.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/_Jekyll.svg",
      title: "Jekyll",
      enurl: "#",
      cnurl: "https://jekyllrb.com/docs",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/W3C.svg",
      title: "WebDriver BiDi",
      enurl: "#",
      cnurl: "https://w3c.github.io/webdriver-bidi",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Tor.svg",
      title: "Tor",
      enurl: "https://support.torproject.org",
      cnurl: "https://support.torproject.org/zh-CN",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LOKINET.svg",
      title: "LOKINET",
      enurl: "#",
      cnurl: "https://www.lokinet.org/faq",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Oxen.svg",
      title: "Oxen",
      enurl: "#",
      cnurl:
          "https://docs.oxen.io/oxen-docs/using-the-oxen-blockchain/oxen-service-node-guides/setting-up-an-oxen-service-node",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SESSION.svg",
      title: "SESSION",
      enurl: "#",
      cnurl: "https://getsession.org/faq",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenRouter.svg",
      title: "OpenRouter",
      enurl: "#",
      cnurl: "https://openrouter.ai/docs/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/uutils.svg",
      title: "uutils coreutils",
      enurl: "#",
      cnurl: "https://uutils.github.io/coreutils/docs/installation.html#cargo",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenBSD.svg",
      title: "OpenBSD",
      enurl: "#",
      cnurl: "https://www.openbsd.org/76.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenGroup.svg",
      title: "POSIX",
      enurl: "#",
      cnurl:
          "https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap01.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenGroup.svg",
      title: "POSIX Headers",
      enurl: "#",
      cnurl:
          "https://pubs.opengroup.org/onlinepubs/9799919799/idx/headers.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenGroup.svg",
      title: "POSIX Shell",
      enurl: "#",
      cnurl:
          "https://pubs.opengroup.org/onlinepubs/9799919799/utilities/V3_chap02.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AWK.svg",
      title: "AWK",
      enurl: "#",
      cnurl:
          "https://pubs.opengroup.org/onlinepubs/9799919799/utilities/awk.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "GAWK",
      enurl: "#",
      cnurl:
          "https://www.gnu.org/software/gawk/manual/gawk.html#toc-Getting-Started-with-awk",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "Jobserver",
      enurl: "#",
      cnurl: "https://make.mad-scientist.net/papers/jobserver-implementation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Eko.svg",
      title: "Eko",
      enurl: "#",
      cnurl: "https://eko.fellou.ai/docs/getting-started/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Serverpod.svg",
      title: "Serverpod",
      enurl: "#",
      cnurl: "https://docs.serverpod.dev/#command-line-tools",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/Motion.svg",
  //     title: "Motion",
  //     cnurl: "https://motion.dev/docs/react-quick-start"));
  // itemList.add(Item(
  //     imgUrl: "https://web.lcjuves.com/Material-for-MkDocs-Icon.svg",
  //     title: "Material for MkDocs",
  //     cnurl: "https://squidfunk.github.io/mkdocs-material/getting-started"));
  itemList.add(
    Item(
      imgUrl: "/GitBook.svg",
      title: "GitBook",
      enurl: "#",
      cnurl: "https://docs.gitbook.com/getting-started/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GCC.svg",
      title: "GCC",
      enurl: "#",
      cnurl: "https://gcc.gnu.org/onlinedocs/gcc-14.2.0/gcc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GDB.svg",
      title: "GDB",
      enurl: "#",
      cnurl: "https://sourceware.org/gdb/download/onlinedocs/gdb.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/emoji_u1f41b.svg",
      title: "LLDB",
      enurl: "#",
      cnurl: "https://lldb.llvm.org/use/tutorial.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Buildah.svg",
      title: "Buildah",
      enurl: "#",
      cnurl:
          "https://buildah.io/blogs/2017/11/02/getting-started-with-buildah.html#building-oci-container-images",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Meson.svg",
      title: "Meson",
      enurl: "#",
      cnurl: "https://mesonbuild.com/Quick-guide.html#requirements",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ionic.svg",
      title: "Ionic React",
      enurl: "#",
      cnurl:
          "https://ionicframework.com/docs/react/quickstart#what-is-ionic-framework",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ionic.svg",
      title: "Ionic Vue",
      enurl: "#",
      cnurl:
          "https://ionicframework.com/docs/vue/quickstart#what-is-ionic-framework",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WebRTC.svg",
      title: "WebRTC",
      enurl: "https://webrtc.org/getting-started/overview?hl=en",
      cnurl: "https://webrtc.org/getting-started/overview?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FlatBuffers.svg",
      title: "FlatBuffers",
      enurl: "#",
      cnurl: "https://flatbuffers.dev/quick_start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Hono.svg",
      title: "Hono",
      enurl: "#",
      cnurl: "https://hono.dev/docs/getting-started/basic#starter",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Lobster.svg",
      title: "Lobster",
      enurl: "#",
      cnurl: "https://aardappel.github.io/lobster/getting_started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Evcxr Rust REPL",
      enurl: "#",
      cnurl: "https://github.com/evcxr/evcxr/blob/main/evcxr_repl/README.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeltaLake.svg",
      title: "Delta Lake",
      enurl: "#",
      cnurl: "https://delta-io.github.io/delta-rs/usage/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/StirlingPDF.svg",
      title: "Stirling PDF",
      enurl: "#",
      cnurl:
          "https://docs.stirlingpdf.com/Installation/Docker%20Install#run-docker-container-with-docker-run",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GN.svg",
      title: "GN",
      enurl: "#",
      cnurl: "https://gn.googlesource.com/gn/+/main/docs/quick_start.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mojo.svg",
      title: "Firecrawl",
      enurl: "#",
      cnurl: "https://docs.firecrawl.dev/introduction",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FirebaseStudio.svg",
      title: "Firebase Studio",
      enurl: "https://firebase.google.com/docs/studio/get-started?hl=en",
      cnurl: "https://firebase.google.com/docs/studio/get-started?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/qwik.svg",
      title: "qwik",
      enurl: "#",
      cnurl: "https://qwik.dev/docs/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Nuxt.svg",
      title: "Nuxt",
      enurl: "#",
      cnurl: "https://nuxt.com/docs/getting-started",
    ),
  );
  itemList.add(
    Item(imgUrl: "/OAuth.svg", title: "OAuth 2", cnurl: "https://oauth.net/2"),
  );
  itemList.add(
    Item(
      imgUrl: "/OAuth.svg",
      title: "OAuth PKCE",
      enurl: "#",
      cnurl: "https://oauth.net/2/pkce",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/SDKMAN.svg",
  //     title: "SDKMAN",
  //     cnurl: "https://sdkman.io/install"));
  itemList.add(
    Item(
      imgUrl: "/MindSpore.svg",
      title: "MindSpore",
      enurl: "https://www.mindspore.cn/install/en",
      cnurl: "https://www.mindspore.cn/install",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ARCore.svg",
      title: "ARCore",
      enurl: "https://developers.google.com/ar/develop/getting-started?hl=en",
      cnurl:
          "https://developers.google.com/ar/develop/getting-started?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WebXR.svg",
      title: "WebXR",
      enurl: "#",
      cnurl: "https://immersiveweb.dev/#gettingstartedbuildingawebxrwebsite",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Buck2.svg",
      title: "Buck2",
      enurl: "#",
      cnurl: "https://buck2.build/docs/about/getting_started",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/OpenWebUI.svg",
  //     title: "Open WebUI",
  //     cnurl: "https://docs.openwebui.com/getting-started/quick-start"));
  // itemList.add(Item(
  //     imgUrl: "/Carbon.svg",
  //     title: "Carbon",
  //     cnurl: "https://docs.carbon-lang.dev/#getting-started"));
  itemList.add(
    Item(
      imgUrl: "/NextJS.svg",
      title: "NextJS",
      enurl: "#",
      cnurl: "https://nextjs.org/docs/app/getting-started/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mercurial.svg",
      title: "Mercurial",
      enurl: "#",
      cnurl: "https://www.mercurial-scm.org/install",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WebP.svg",
      title: "WebP",
      enurl: "https://developers.google.com/speed/webp?hl=en",
      cnurl: "https://developers.google.com/speed/webp?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LLVM.svg",
      title: "Clang",
      enurl: "#",
      cnurl: "https://clang.llvm.org/get_started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/clangd.svg",
      title: "clangd",
      enurl: "#",
      cnurl: "https://clangd.llvm.org/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Windsurf.svg",
      title: "Windsurf",
      enurl: "#",
      cnurl: "https://docs.codeium.com/windsurf/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Windows_11.svg",
      title: "Windows PE Format",
      enurl: "https://learn.microsoft.com/en-us/windows/win32/debug/pe-format",
      cnurl: "https://learn.microsoft.com/zh-cn/windows/win32/debug/pe-format",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "rustdoc",
      enurl: "#",
      cnurl: "https://doc.rust-lang.org/rustdoc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rayon",
      enurl: "https://crates.io/crates/rayon",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "GitMCP",
      enurl:
          "https://github.com/idosal/git-mcp?tab=readme-ov-file#-getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust up",
      enurl: "#",
      cnurl: "https://rust-lang.github.io/rustup/basics.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "reqwest",
      enurl: "#",
      cnurl: "https://docs.rs/reqwest/latest",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Comprehensive Rust",
      enurl: "https://google.github.io/comprehensive-rust/index.html",
      cnurl: "https://google.github.io/comprehensive-rust/zh-CN",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/sbt.svg",
      title: "sbt",
      enurl: "#",
      cnurl: "https://www.scala-sbt.org/1.x/docs/sbt-by-example.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Java_with_Ant.svg",
      title: "Ant",
      enurl: "#",
      cnurl: "https://ant.apache.org/manual/install.html#getting",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MistralAI.svg",
      title: "Mistral AI",
      enurl: "#",
      cnurl: "https://docs.mistral.ai/getting-started/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Metaflow.svg",
      title: "Metaflow",
      enurl: "#",
      cnurl: "https://docs.metaflow.org/getting-started/install",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/_WeChat.svg",
      title: "WeChat Mini Program",
      enurl:
          "https://developers.weixin.qq.com/miniprogram/en/dev/framework/quickstart/getstart.html",
      cnurl:
          "https://developers.weixin.qq.com/miniprogram/dev/framework/quickstart/getstart.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Douyin.svg",
      title: "Douyin Mini App",
      enurl:
          "https://developers.tiktok.com/doc/our-guidelines-developer-guidelines",
      cnurl:
          "https://developer.open-douyin.com/docs/resource/zh-CN/mini-app/develop/tutorial/beginner/todo-list-app-dev",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/World.svg",
      title: "World Mini Apps",
      enurl: "#",
      cnurl: "https://docs.world.org/mini-apps/quick-start/installing",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/Taro.svg",
  //     title: "Taro",
  //     enurl: "https://docs.taro.zone/en/docs/GETTING-STARTED",
  //     cnurl: "https://docs.taro.zone/docs/GETTING-STARTED"));
  itemList.add(
    Item(
      imgUrl: "/u-root.svg",
      title: "u-root",
      enurl: "#",
      cnurl: "https://u-root.org/#get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust UEFI",
      enurl: "#",
      cnurl: "https://rust-osdev.github.io/uefi-rs/tutorial/app.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/iroh.svg",
      title: "iroh",
      enurl: "#",
      cnurl: "https://www.iroh.computer/docs/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bazzite.svg",
      title: "Bazzite",
      enurl: "#",
      cnurl: "https://docs.bazzite.gg/General/Installation_Guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/UNIX.svg",
      title: "Unix ELF",
      enurl: "https://en.wikipedia.org/wiki/Executable_and_Linkable_Format",
      cnurl:
          "https://zh.wikipedia.org/zh-cn/%E5%8F%AF%E5%9F%B7%E8%A1%8C%E8%88%87%E5%8F%AF%E9%8F%88%E6%8E%A5%E6%A0%BC%E5%BC%8F",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/UNIX.svg",
      title: "Unix domain socket",
      enurl: "https://en.wikipedia.org/wiki/Unix_domain_socket",
      cnurl:
          "https://zh.wikipedia.org/wiki/Unix%E5%9F%9F%E5%A5%97%E6%8E%A5%E5%AD%97",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AsciiDoc.svg",
      title: "AsciiDoc",
      enurl: "#",
      cnurl: "https://asciidoc.org/#try",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ktunnel.svg",
      title: "ktunnel",
      enurl: "#",
      cnurl: "https://github.com/omrikiei/ktunnel?tab=readme-ov-file#usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/UNIX.svg",
      title: "The UNIX® Standard",
      enurl: "#",
      cnurl: "https://www.opengroup.org/membership/forums/platform/unix",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "https://web.lcjuves.com/donate/Alipay.svg",
      title: "Donate to the author",
      enurl: "#",
      cnurl: "https://web.lcjuves.com/donate/Alipay.svg",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/musl-libc.svg",
      title: "musl libc",
      enurl: "#",
      cnurl: "https://wiki.musl-libc.org/getting-started",
    ),
  );
  itemList.add(
    Item(imgUrl: "/systemd.svg", title: "systemd", cnurl: "https://systemd.io"),
  );
  itemList.add(
    Item(
      imgUrl: "/IT-Tools.svg",
      title: "IT - TOOLS",
      enurl: "#",
      cnurl: "https://it-tools.tech",
    ),
  );
  itemList.add(
    Item(imgUrl: "/CRDTs.svg", title: "CRDTs", cnurl: "https://crdt.tech"),
  );
  itemList.add(
    Item(
      imgUrl: "/HTTPieCLI.svg",
      title: "HTTPie CLI",
      enurl: "#",
      cnurl: "https://httpie.io/docs/cli/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "WSL",
      enurl: "https://learn.microsoft.com/en-us/windows/wsl/install",
      cnurl: "https://learn.microsoft.com/zh-cn/windows/wsl/install",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LSP.svg",
      title: "LSP / LSIF",
      enurl: "#",
      cnurl:
          "https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CocoaPods.svg",
      title: "CocoaPods",
      enurl: "#",
      cnurl: "https://guides.cocoapods.org/using/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/UUP-dump.svg",
      title: "UUP dump",
      enurl: "#",
      cnurl: "https://uupdump.net",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/XunFeiOpenPlatform.svg",
      title: "iFLYTEK Open Platform",
      enurl: "#",
      cnurl: "https://www.xfyun.cn/doc/platform/quickguide.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apple.svg",
      title: "Mach-O EF",
      enurl: "#",
      cnurl:
          "https://developer.apple.com/library/archive/documentation/Performance/Conceptual/CodeFootprint/Articles/MachOOverview.html",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/MATLAB.svg",
  //     title: "MATLAB",
  //     cnurl: "https://ww2.mathworks.cn/help/?s_tid=hp_ff_l_doc"));
  // itemList.add(Item(
  //     imgUrl: "/OpenGL.svg",
  //     title: "OpenGL",
  //     cnurl: "https://www.khronos.org/opengl/wiki/Getting_Started"));
  itemList.add(
    Item(
      imgUrl: "/Unofficial_SSH_Logo.svg",
      title: "OpenSSH",
      enurl: "https://www.openssh.com/manual.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/RocketMQ.svg",
      title: "RocketMQ",
      enurl: "https://rocketmq.apache.org/docs/quickStart/01quickstart",
      cnurl: "https://rocketmq.apache.org/zh/docs/quickStart/01quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Aider.svg",
      title: "Aider",
      enurl: "#",
      cnurl: "https://aider.chat/#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Zed.svg",
      title: "Zed",
      enurl: "#",
      cnurl: "https://zed.dev/docs/#getting-started",
    ),
  );
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
  itemList.add(
    Item(
      imgUrl: "/RISC-V.svg",
      title: "RISC-V",
      enurl: "#",
      cnurl: "https://riscv.org/developers",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/RISC-V.svg",
      title: "RISCV Sail Model",
      enurl: "#",
      cnurl:
          "https://github.com/riscv/sail-riscv?tab=readme-ov-file#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/arm.svg",
      title: "Arm Embedded Compiler",
      enurl: "#",
      cnurl:
          "https://developer.arm.com/documentation/100748/0623/Getting-Started?lang=en",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/e-CNY.svg",
      title: "LoongArch",
      enurl:
          "https://loongson.github.io/LoongArch-Documentation/README-EN.html#_getting_started",
      cnurl:
          "https://loongson.github.io/LoongArch-Documentation/README-CN.html#getting-start",
    ),
  );

  // itemList.add(Item(
  //     imgUrl: "/CommonLisp.svg",
  //     title: "Common Lisp",
  //     cnurl: "https://lisp-lang.org/learn/getting-started"));
  itemList.add(
    Item(
      imgUrl: "/Cloudflare.svg",
      title: "Pingora",
      enurl: "#",
      cnurl:
          "https://github.com/cloudflare/pingora/blob/main/docs/quick_start.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NEWSNOW.svg",
      title: "News Now",
      enurl: "#",
      cnurl: "https://newsnow.busiyi.world",
      currentlyOnlySupportsChinese: true,
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitLens.svg",
      title: "GitLens",
      enurl: "#",
      cnurl: "https://help.gitkraken.com/gitlens/gitlens-home",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Grain.svg",
      title: "Grain",
      enurl: "#",
      cnurl: "https://grain-lang.org/docs/getting_grain",
    ),
  );

  // itemList.add(Item(
  //     imgUrl: "/Xen.svg",
  //     title: "Xen",
  //     cnurl: "https://wiki.xenproject.org/wiki/Main_Page"));

  // itemList.add(Item(
  //     imgUrl: "/WINE.svg",
  //     title: "WineHQ",
  //     cnurl: "https://gitlab.winehq.org/wine/wine/-/wikis/Wine-User's-Guide"));
  itemList.sort(
    (a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()),
  );
  final items = Items(itemList: itemList);
  final itemsPB = File('../../items.pb');
  await itemsPB.writeAsBytes(items.writeToBuffer(), flush: true);
}
