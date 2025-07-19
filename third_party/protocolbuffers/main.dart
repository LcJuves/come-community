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
      imgUrl: "/Flutter.svg",
      title: "Flame",
      enurl: "https://docs.flame-engine.org/latest/README.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FlutterFlow.svg",
      title: "FlutterFlow",
      enurl: "https://docs.flutterflow.io/quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Anthropic.svg",
      title: "Claude Code",
      enurl: "https://docs.anthropic.com/en/docs/claude-code/quickstart",
      cnurl: "https://docs.anthropic.com/zh-CN/docs/claude-code/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Gitpod.svg",
      title: "Gitpod",
      enurl:
          "https://www.gitpod.io/docs/classic/user/introduction/getting-started/overview#step-1%3A-your-first-workspace",
      cnurl: "#",
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
      enurl: "https://github.lcjuves.com/java/android/decompile",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/_Atom.svg",
      title: "Atom",
      enurl:
          "https://flight-manual.atom-editor.cc/getting-started/sections/atom-basics",
      cnurl: "#",
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
      enurl: "https://jetty.org/docs/jetty/12/programming-guide",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MAX.svg",
      title: "MAX",
      enurl: "https://docs.modular.com/stable/max/get-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Magic.svg",
      title: "Magic",
      enurl: "https://docs.modular.com/stable/magic",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/C3.svg",
      title: "C3",
      enurl: "https://c3-lang.org/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SageMath.svg",
      title: "SageMath",
      enurl: "https://www.sagemath.org/tour-quickstart.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Sage.svg",
      title: "Sage",
      enurl:
          "https://github.com/sagemath/sage?tab=readme-ov-file#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Square.svg",
      title: "Okio",
      enurl: "https://square.github.io/okio",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LeakCanary.svg",
      title: "LeakCanary",
      enurl: "https://square.github.io/leakcanary/getting_started",
      cnurl: "#",
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
      imgUrl: "/JetpackCompose.svg",
      title: "Jetpack XR SDK",
      enurl: "https://developer.android.com/develop/xr/jetpack-xr-sdk?hl=en",
      cnurl: "https://developer.android.com/develop/xr/jetpack-xr-sdk?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apache%20Groovy.svg",
      title: "Groovy",
      enurl: "https://docs.groovy-lang.org/latest/html/documentation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Scala.svg",
      title: "Scala",
      enurl:
          "https://docs.scala-lang.org/getting-started/sbt-track/getting-started-with-scala-and-sbt-on-the-command-line.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ScalaJS.svg",
      title: "ScalaJS",
      enurl: "https://www.scala-js.org/doc/tutorial/scalajs-vite.html",
      cnurl: "#",
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
      title: "DOM",
      enurl:
          "https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction",
      cnurl:
          "https://developer.mozilla.org/zh-CN/docs/Web/API/Document_Object_Model/Introduction",
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
      enurl: "https://kotlinlang.org/docs/getting-started.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Kotlin.svg",
      title: "kotlinx-io",
      enurl:
          "https://github.com/Kotlin/kotlinx-io?tab=readme-ov-file#using-in-your-projects",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Liam_ERD.svg",
      title: "Liam ERD",
      enurl: "https://liambx.com/docs#how-to-get-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/kRPC.svg",
      title: "kRPC",
      enurl: "https://kotlin.github.io/kotlinx-rpc/get-started.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/KotlinMultiplatform.svg",
      title: "Kotlin Multiplatform",
      enurl:
          "https://www.jetbrains.com/help/kotlin-multiplatform-dev/quickstart.html",
      cnurl: "#",
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
      enurl: "https://reactnative.dev/docs/environment-setup",
      cnurl: "https://reactnative.cn/docs/environment-setup",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FluentUI.svg",
      title: "FluentUI React Native",
      enurl:
          "https://github.com/microsoft/fluentui-react-native?tab=readme-ov-file#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Expo.svg",
      title: "Expo",
      enurl: "https://docs.expo.dev/get-started/create-a-project",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Vue.svg",
      title: "VueJS",
      enurl: "https://vuejs.org/guide/quick-start.html",
      cnurl: "https://cn.vuejs.org/guide/quick-start.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Python.svg",
      title: "Python",
      enurl: "https://docs.python.org/3/tutorial/index.html",
      cnurl: "https://docs.python.org/zh-cn/3/tutorial/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "PyO3",
      enurl: "https://pyo3.rs/latest/getting-started.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "numpy",
      enurl: "https://docs.rs/numpy/latest/numpy",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Ferrules",
      enurl:
          "https://github.com/AmineDiro/ferrules?tab=readme-ov-file#installation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ONNXRuntime.svg",
      title: "ONNX Runtime",
      enurl: "https://onnxruntime.ai/docs/get-started/with-c.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "ort",
      enurl: "https://ort.pyke.io",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Miri",
      enurl: "https://github.com/rust-lang/miri?tab=readme-ov-file#using-miri",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ray.svg",
      title: "Ray Core",
      enurl:
          "https://docs.ray.io/en/latest/ray-core/walkthrough.html#getting-started",
      cnurl: "#",
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
      imgUrl: "/Flutter.svg",
      title: "Liquid Glass Renderer",
      enurl:
          "https://github.com/whynotmake-it/flutter_liquid_glass/tree/main/packages/liquid_glass_renderer#installation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/InAppWebView.svg",
      title: "InAppWebView",
      enurl: "https://inappwebview.dev/docs/intro#installation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/appwrite.svg",
      title: "appwrite",
      enurl: "https://appwrite.io/docs/quick-starts/kotlin",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Isar.svg",
      title: "Isar",
      enurl: "https://isar.dev/tutorials/quickstart.html",
      cnurl: "https://isar.dev/zh/tutorials/quickstart.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rive.svg",
      title: "Rive",
      enurl: "https://rive.app/docs/runtimes/flutter/flutter#quick-start",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/RevyOS.svg",
      title: "RevyOS",
      enurl: "https://docs.revyos.dev/en/docs/desktop/revyos-use-docker",
      cnurl: "https://docs.revyos.dev/docs/desktop/revyos-use-docker",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Google.svg",
      title: "MediaPipe",
      enurl:
          "https://ai.google.dev/edge/mediapipe/solutions/guide?hl=en#get_started",
      cnurl:
          "https://ai.google.dev/edge/mediapipe/solutions/guide?hl=zh-cn#get_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Passkeys.svg",
      title: "Passkeys",
      enurl: "https://passkeys.dev/docs/intro/what-are-passkeys",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WebAuthn.svg",
      title: "WebAuthn",
      enurl: "https://webauthn.guide/#about-webauthn",
      cnurl: "#",
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
      enurl: "https://dart.dev/tools/dart-devtools",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Java.svg",
      title: "Java",
      enurl: "https://dev.java/learn/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JBang.svg",
      title: "JBang",
      enurl: "https://www.jbang.dev/documentation/guide/latest/usage.html",
      cnurl: "#",
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
      enurl: "https://kubernetes.io/docs/setup",
      cnurl: "https://kubernetes.io/zh-cn/docs/setup",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/kind.svg",
      title: "kind",
      enurl: "https://kind.sigs.k8s.io/docs/user/quick-start",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TypeScript.svg",
      title: "TypeScript",
      enurl:
          "https://www.typescriptlang.org/docs/handbook/typescript-from-scratch.html",
      cnurl:
          "https://www.typescriptlang.org/zh/docs/handbook/typescript-from-scratch.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TSDoc.svg",
      title: "TSDoc",
      enurl: "https://tsdoc.org/pages/spec/tag_kinds",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TypeScript.svg",
      title: "JSDoc",
      enurl:
          "https://www.typescriptlang.org/docs/handbook/jsdoc-supported-types.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JenkinsCI.svg",
      title: "Jenkins",
      enurl: "https://www.jenkins.io/doc/pipeline/tour/getting-started",
      cnurl: "https://www.jenkins.io/zh/doc/pipeline/tour/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MCP.svg",
      title: "MCP Java",
      enurl: "https://modelcontextprotocol.io/sdk/java/mcp-overview",
      cnurl: "#",
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
      enurl:
          "https://github.com/modelcontextprotocol/typescript-sdk?tab=readme-ov-file#quick-start",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MCP.svg",
      title: "Open MCP",
      enurl: "https://www.open-mcp.org/servers/creating-a-server",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mem0.svg",
      title: "OpenMemory",
      enurl: "https://docs.mem0.ai/openmemory/quickstart",
      cnurl: "#",
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
      enurl: "https://threejs.org/manual/#en/installation",
      cnurl: "https://threejs.org/manual/#zh/fundamentals",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Deno.svg",
      title: "Deno",
      enurl: "https://docs.deno.com/runtime",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NodeJS.svg",
      title: "NodeJS",
      enurl:
          "https://nodejs.org/en/learn/getting-started/introduction-to-nodejs",
      cnurl:
          "https://nodejs.org/zh-cn/learn/getting-started/introduction-to-nodejs",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/PyTorch.svg",
      title: "PyTorch",
      enurl: "https://pytorch.org/get-started/locally",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/dotNET.svg",
      title: "dotNET",
      enurl:
          "https://learn.microsoft.com/en-us/dotnet/core/get-started?source=recommendations",
      cnurl:
          "https://learn.microsoft.com/zh-cn/dotnet/core/get-started?source=recommendations",
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
      enurl: "https://docs.docker.com",
      cnurl: "#",
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
      enurl: "https://opencv.org/get-started",
      cnurl: "#",
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
      imgUrl: "/Quarkdown.svg",
      title: "Quarkdown",
      enurl:
          "https://github.com/iamgio/quarkdown?tab=readme-ov-file#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Valkyrie.svg",
      title: "Valkyrie CLI",
      enurl:
          "https://github.com/ComposeGears/Valkyrie?tab=readme-ov-file#cli-tool",
      cnurl: "#",
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
      enurl: "https://www.linuxboot.org",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Linux%20Foundation.svg",
      title: "LF Projects",
      enurl: "https://www.linuxfoundation.org/projects",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GoLang.svg",
      title: "Go",
      enurl: "https://go.dev/doc/tutorial/getting-started",
      cnurl: "https://golang.google.cn/doc/tutorial/getting-started",
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
      enurl: "https://rustc-dev-guide.rust-lang.org/mir",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust HIR",
      enurl: "https://rustc-dev-guide.rust-lang.org/hir.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Crubit",
      enurl:
          "https://github.com/google/crubit?tab=readme-ov-file#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Corrosion",
      enurl: "https://corrosion-rs.github.io/corrosion/v0.5/quick_start.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "cc",
      enurl: "https://docs.rs/cc/latest/cc",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "libc",
      enurl: "https://docs.rs/libc/latest/libc",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "CXX",
      enurl: "https://cxx.rs",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "bindgen",
      enurl: "https://rust-lang.github.io/rust-bindgen",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "The Rust Core Library",
      enurl: "https://doc.rust-lang.org/core/index.html#the-rust-core-library",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "rustc",
      enurl: "https://doc.rust-lang.org/rustc/index.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust error codes",
      enurl: "https://doc.rust-lang.org/error_codes/error-index.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/uv.svg",
      title: "uv",
      enurl: "https://docs.astral.sh/uv/getting-started/installation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/iced.svg",
      title: "iced",
      enurl: "https://book.iced.rs/first-steps.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/gVisor.svg",
      title: "gVisor",
      enurl: "https://gvisor.dev/docs/user_guide/install",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Chromium.svg",
      title: "Chromium",
      enurl:
          "https://chromium.googlesource.com/chromium/src/+/refs/heads/main/docs/README.md",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Windows_11.svg",
      title: "Rust for Windows",
      enurl: "https://microsoft.github.io/windows-docs-rs/doc/windows",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust-for-Linux.svg",
      title: "Rust for Linux",
      enurl: "https://docs.kernel.org/rust/quick-start.html",
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
      enurl:
          "https://github.com/octotools/octotools?tab=readme-ov-file#installation",
      cnurl: "#",
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
      imgUrl: "/Microsoft.svg",
      title: "MSFT Open Projects",
      enurl: "https://opensource.microsoft.com/projects",
      cnurl: "#",
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
      enurl:
          "https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/NetServices/Introduction.html",
      cnurl: "#",
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
      enurl:
          "https://eff-certbot.readthedocs.io/en/stable/using.html#certbot-commands",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bootstrap.svg",
      title: "Bootstrap",
      enurl:
          "https://getbootstrap.com/docs/5.3/getting-started/introduction/#quick-start",
      cnurl:
          "https://v5.bootcss.com/docs/getting-started/introduction/#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "OmniParser",
      enurl:
          "https://github.com/microsoft/OmniParser?tab=readme-ov-file#install",
      cnurl: "#",
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
      enurl: "https://wiki.termux.com/wiki/Getting_started",
      cnurl: "#",
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
      enurl:
          "https://github.com/Wan-Video/Wan2.1?tab=readme-ov-file#quickstart",
      cnurl: "#",
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
      enurl: "https://docs.bentoml.com/en/latest/get-started/hello-world.html",
      cnurl: "#",
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
      enurl: "https://zig.guide/getting-started/installation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZLS.svg",
      title: "ZLS",
      enurl: "https://zigtools.org/zls/install",
      cnurl: "#",
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
      enurl: "https://isocpp.org/get-started",
      cnurl: "#",
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
      imgUrl: "/Tombi.svg",
      title: "Tombi",
      enurl: "https://tombi-toml.github.io/tombi/docs/installation",
      cnurl: "#",
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
      enurl: "https://skip.tools/docs/gettingstarted",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MetaMask.svg",
      title: "Meta Mask",
      enurl: "https://docs.metamask.io/sdk/quickstart/javascript-wagmi",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Vapor.svg",
      title: "Vapor",
      enurl: "https://docs.vapor.codes/getting-started/hello-world",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenUSD.svg",
      title: "Open USD",
      enurl: "https://openusd.org/release/tut_helloworld.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Swift.svg",
      title: "SIL",
      enurl: "https://github.com/swiftlang/swift/blob/main/docs/SIL/SIL.md",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Swift.svg",
      title: "SwiftPM",
      enurl: "https://www.swift.org/getting-started/cli-swiftpm",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Swift.svg",
      title: "Swift for TensorFlow",
      enurl:
          "https://github.com/tensorflow/swift/blob/main/README.md#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Elixir.svg",
      title: "Elixir",
      enurl: "https://hexdocs.pm/elixir/introduction.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bun.svg",
      title: "Bun",
      enurl: "https://bun.sh/docs/quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apple.svg",
      title: "Apple Developer",
      enurl: "https://developer.apple.com/documentation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apple.svg",
      title: "Apple Open Projects",
      enurl: "https://opensource.apple.com/projects",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apple.svg",
      title: "Objective-C Runtime",
      enurl: "https://developer.apple.com/documentation/objectivec",
      cnurl: "#",
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
      enurl: "https://webassembly.org/getting-started/developers-guide",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WebAssembly.svg",
      title: "WAMR",
      enurl: "https://wamr.gitbook.io/document/basics/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BytecodeAlliance.svg",
      title: "wasm-tools",
      enurl:
          "https://github.com/bytecodealliance/wasm-tools?tab=readme-ov-file#wasm-tools",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Slint.svg",
      title: "Slint",
      enurl:
          "https://docs.slint.dev/latest/docs/slint/tutorial/getting_started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Java.svg",
      title: "TeaVM",
      enurl: "https://teavm.org/docs/intro/getting-started.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Google.svg",
      title: "J2CL/Wasm",
      enurl:
          "https://github.com/google/j2cl/blob/master/docs/getting-started-j2wasm.md",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Google.svg",
      title: "Gemini CLI",
      enurl:
          "https://github.com/google-gemini/gemini-cli?tab=readme-ov-file#quickstart",
      cnurl: "#",
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
      imgUrl: "/Devin.svg",
      title: "DeepWiki",
      enurl: "https://deepwiki.com",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Hyprland.svg",
      title: "Hyprland",
      enurl: "https://wiki.hypr.land/Getting-Started/Installation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Lean.svg",
      title: "Lean",
      enurl:
          "https://lean-lang.org/functional_programming_in_lean/Hello___-World___/Running-a-Program/#running-a-program",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Google.svg",
      title: "ANGLE",
      enurl: "https://chromium.googlesource.com/angle/angle/+/main/README.md",
      cnurl: "#",
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
      imgUrl: "/ReactJS.svg",
      title: "Liquid Glass React",
      enurl:
          "https://github.com/rdev/liquid-glass-react?tab=readme-ov-file#-usage",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/reactbits.svg",
      title: "reactbits",
      enurl: "https://www.reactbits.dev/text-animations/split-text",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ContainerSSH.svg",
      title: "ContainerSSH",
      enurl: "https://containerssh.io/v0.5/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HMOS.svg",
      title: "HarmonyOS NEXT",
      enurl:
          "https://developer.huawei.com/consumer/en/doc/harmonyos-guides-V5/start-overview-V5",
      cnurl:
          "https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V5/start-overview-V5",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Coder.svg",
      title: "Coder",
      enurl: "https://coder.com/docs/tutorials/quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cangjie.svg",
      title: "Cangjie",
      enurl:
          "https://cangjie-lang.cn/en/docs?url=%2F0.53.13%2Fuser_manual%2Fsource_en%2Ffirst_understanding%2Fbasic.html",

      cnurl:
          "https://cangjie-lang.cn/docs?url=%2F1.0.0%2Fuser_manual%2Fsource_zh_cn%2Ffirst_understanding%2Fbasic.html",
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
      enurl: "https://nginx.org/en/docs/beginners_guide.html",
      cnurl: "#",
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
  //     enurl: "https://libgit2.org/docs/reference/main",
  //     cnurl: "#"));
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "git2-rs",
      enurl: "https://docs.rs/git2/latest/git2",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "vk-video",
      enurl:
          "https://github.com/software-mansion/smelter/tree/master/vk-video#usage",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/e-CNY.svg",
      title: "Veryl",
      enurl:
          "https://doc.veryl-lang.org/book/03_getting_started/01_installation.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/e-CNY.svg",
      title: "Nature",
      enurl: "https://nature-lang.org/docs/get-started",
      cnurl: "https://nature-lang.cn/docs/get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "capnpc",
      enurl: "https://docs.rs/capnpc/latest/capnpc",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Cap’n Proto Runtime",
      enurl: "https://docs.rs/capnp/latest/capnp/#capn-proto-runtime-library",
      cnurl: "#",
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
      title: "Typeinc",
      enurl:
          "https://github.com/AnirudhG07/Typeinc?tab=readme-ov-file#-homebrew-installation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/EasingWizard.svg",
      title: "Easing Wizard",
      enurl: "https://easingwizard.com",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GeoGebra_Graphing.svg",
      title: "GeoGebra Graphing",
      enurl: "https://www.geogebra.org/graphing",
      cnurl: "https://www.geogebra.org/graphing",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Orillusion.svg",
      title: "Orillusion",
      enurl: "https://www.orillusion.com/en/guide/getting_start/install.html",
      cnurl: "https://www.orillusion.com/guide/getting_start/install.html",
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
      enurl:
          "https://github.com/actions/runner-images/blob/main/docs/create-image-and-azure-resources.md#github-actions-runner-images",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "gh-card",
      enurl: "https://gh-card.dev",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CodeConvert.svg",
      title: "CodeConvert",
      enurl: "https://www.codeconvert.ai/free-converter",
      cnurl: "#",
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
      imgUrl: "/freeCodeCamp.svg",
      title: "freeCodeCamp DevDocs",
      enurl: "https://devdocs.io/rust",
      cnurl: "#",
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
      imgUrl: "/Rig.svg",
      title: "Rig",
      enurl: "https://docs.rig.rs/docs/quickstart/getting_started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Packer.svg",
      title: "Packer",
      enurl:
          "https://developer.hashicorp.com/packer/tutorials/docker-get-started/get-started-install-cli",
      cnurl: "#",
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
      enurl: "https://docs.gitlab.com/ci",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitLab.svg",
      title: "GitLab REST API",
      enurl: "https://docs.gitlab.com/api/rest",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitLab.svg",
      title: "GitLab CLI",
      enurl: "https://docs.gitlab.com/editor_extensions/gitlab_cli",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/VS Code.svg",
      title: "Visual Studio Code",
      enurl: "https://code.visualstudio.com/docs/getstarted/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/VS Code.svg",
      title: "VS Code Extension",
      enurl:
          "https://code.visualstudio.com/api/get-started/your-first-extension",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/VS Code.svg",
      title: "VS Code API",
      enurl: "https://code.visualstudio.com/api/references/vscode-api",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IntelliJ_Platform_Plugin.svg",
      title: "IntelliJ Plugins",
      enurl:
          "https://plugins.jetbrains.com/docs/intellij/creating-plugin-project.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GIMP.svg",
      title: "GIMP",
      enurl: "https://www.gimp.org/tutorials/GIMP_Quickies",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust CUDA",
      enurl:
          "https://github.com/Rust-GPU/Rust-CUDA/blob/main/guide/src/guide/getting_started.md#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "vy",
      enurl: "https://github.com/jonahlund/vy?tab=readme-ov-file#usage",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "rusotp",
      enurl: "https://eendroroy.github.io/rusotp",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Plotlars",
      enurl: "https://github.com/alceal/plotlars?tab=readme-ov-file#motivation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust GPU",
      enurl: "https://rust-gpu.github.io",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "empiriqa",
      enurl: "https://github.com/ynqa/empiriqa?tab=readme-ov-file#usage",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/__CodeOSS.svg",
      title: "Code OSS",
      enurl: "https://github.com/LcJuves/vscode/wiki/How-to-Contribute",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/__CodeOSS.svg",
      title: "Monaco Editor",
      enurl: "https://microsoft.github.io/monaco-editor",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mermaid.svg",
      title: "Mermaid Live Editor",
      enurl:
          "https://mermaid.live/edit#pako:eNpVjkFrwzAMhf-K0GmD5g_kMFiTrZfCButpcQ8iUWKz2DKOTSlJ_vucdoNNJ-m97z00YysdY4n9KJdWU4hwqpWDPM9NpYOZoqXpDEXxtBw4ghXH1wX2DweBSYv3xg2Pd36_QVDNxw1jiNq4r_VuVbf8m-MF6uZIPoo__3VOF1ngpTHvOtf_d3TgnHpteip7KloKUFG4IbhDy8GS6fL786YojJotKyzz2nFPaYwKlVszSinKx9W1WMaQeIdB0qAxd45TvpLvKHJtaAhkfxFP7lPE_kDrN7nAYR4",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CMake.svg",
      title: "CMake",
      enurl:
          "https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html",
      cnurl: "#",
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
    Item(
      imgUrl: "/GNU.svg",
      title: "GNU",
      enurl: "https://www.gnu.org/doc",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "The GNU C Library",
      enurl: "https://www.gnu.org/software/libc/manual/html_node/index.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MSYS2.svg",
      title: "MSYS2",
      enurl: "https://www.msys2.org/docs/what-is-msys2",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JWT.svg",
      title: "JWT",
      enurl: "https://jwt.io/introduction",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/e-CNY.svg",
      title: "emscripten",
      enurl: "https://emscripten.org/docs/getting_started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/podman.svg",
      title: "podman",
      enurl: "https://podman.io/docs/installation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/redis.svg",
      title: "Redis",
      enurl: "https://redis.io/docs/latest/get-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Valkey.svg",
      title: "Valkey",
      enurl: "https://valkey.io/topics/quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LLVM.svg",
      title: "LLVM",
      enurl: "https://llvm.org/docs/GettingStarted.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CIRCT.svg",
      title: "CIRCT",
      enurl: "https://circt.llvm.org/docs/GettingStarted",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "mlir-sys",
      enurl: "https://github.com/mlir-rs/mlir-sys",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Melior",
      enurl: "https://mlir-rs.github.io/melior/melior",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "llvm-sys",
      enurl: "https://docs.rs/llvm-sys/latest/llvm_sys",
      cnurl: "#",
    ),
  );

  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "audionimbus-sys",
      enurl: "https://docs.rs/audionimbus-sys/latest/audionimbus_sys",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LLVM.svg",
      title: "llvm-cov",
      enurl: "https://llvm.org/docs/CommandGuide/llvm-cov.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/snowflake.svg",
      title: "snowflake",
      enurl: "https://docs.snowflake.com/en/user-guide-getting-started",
      cnurl: "#",
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
      enurl: "https://zelark.github.io/nano-id-cc",
      cnurl: "#",
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
      enurl: "https://svgo.dev/docs/introduction",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mermaid.svg",
      title: "Mermaid",
      enurl: "https://mermaid.js.org/intro/getting-started.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JSONCrack.svg",
      title: "JSON Crack",
      enurl: "https://todiagram.com/editor",
      cnurl: "#",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/JSON5.svg",
  //     title: "JSON5",
  //     enurl: "https://json5.org",
  //     cnurl: "#"));
  itemList.add(
    Item(
      imgUrl: "/Datatracker.svg",
      title: "Datatracker",
      enurl: "https://datatracker.ietf.org/doc",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Datatracker.svg",
      title: "SOCKS 5",
      enurl: "https://datatracker.ietf.org/doc/html/rfc1928",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DocsyJekyll.svg",
      title: "trojan",
      enurl: "https://trojan-gfw.github.io/trojan/protocol",
      cnurl: "#",
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
      enurl: "https://esbuild.github.io/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Raspberrypi.svg",
      title: "Raspberry Pi",
      enurl:
          "https://www.raspberrypi.com/documentation/computers/getting-started.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Pug%20Template%20Engine.svg",
      title: "PugJS",
      enurl: "https://pugjs.org/api/getting-started.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Pkl.svg",
      title: "Pkl",
      enurl: "https://pkl-lang.org/swift/current/quickstart.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Dragonfly.svg",
      title: "Dragonfly",
      enurl: "https://www.dragonflydb.io/docs/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bevy.svg",
      title: "Bevy",
      enurl: "https://bevyengine.org/learn/quick-start/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/godot.svg",
      title: "godot-rust",
      enurl: "https://godot-rust.github.io/book/intro/setup.html#godot-engine",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/tokio.svg",
      title: "Tokio",
      enurl: "https://tokio.rs/tokio/tutorial/hello-tokio",
      cnurl: "#",
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
      enurl: "https://hyper.rs/guides/1/init/setup",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Diesel.svg",
      title: "Diesel",
      enurl: "https://diesel.rs/guides/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IPFS.svg",
      title: "IPFS",
      enurl: "https://docs.ipfs.tech/install",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/PDFJS.svg",
      title: "PDFJS",
      enurl: "https://mozilla.github.io/pdf.js/getting_started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SQLite.svg",
      title: "SQLite",
      enurl: "https://www.sqlite.org/quickstart.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bytebase.svg",
      title: "Bytebase",
      enurl: "https://docs.bytebase.com/get-started/self-host#docker",
      cnurl: "#",
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
      enurl: "https://webdriver.io/docs/gettingstarted",
      cnurl: "#",
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
      enurl: "https://playwright.dev/docs/intro#installing-playwright",
      cnurl: "#",
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
      enurl: "https://gruntjs.com/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Keras.svg",
      title: "Keras",
      enurl: "https://keras.io/getting_started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JAX.svg",
      title: "JAX",
      enurl: "https://jax.readthedocs.io/en/latest/quickstart.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenVINO.svg",
      title: "OpenVINO",
      enurl: "https://docs.openvino.ai/2024/get-started.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Spring.svg",
      title: "Spring",
      enurl: "https://spring.io/quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Puppeteer.svg",
      title: "Puppeteer",
      enurl: "https://pptr.dev/guides/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Wintun.svg",
      title: "Wintun",
      enurl: "https://git.zx2c4.com/wintun/about",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NumPy.svg",
      title: "NumPy",
      enurl:
          "https://numpy.org/doc/stable/user/quickstart.html#numpy-quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Browserless.svg",
      title: "Browserless",
      enurl: "https://docs.browserless.io/baas/docker/quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AppImage.svg",
      title: "AppImage",
      enurl:
          "https://docs.appimage.org/introduction/quickstart.html#ref-quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Laravel.svg",
      title: "Laravel",
      enurl: "https://laravel.com/docs/12.x#creating-a-laravel-project",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Lodash.svg",
      title: "Lodash",
      enurl: "https://lodash.com/docs",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Subversion.svg",
      title: "Subversion",
      enurl: "https://subversion.apache.org/quick-start#installing-the-client",
      cnurl: "#",
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
      enurl: "https://nuttx.apache.org/docs/latest/quickstart/install.html",
      cnurl: "#",
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
      enurl:
          "https://github.com/microsoft/azurelinux/blob/3.0/toolkit/docs/quick_start/quickstart.md#quick-start-guide",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Homebrew.svg",
      title: "Homebrew",
      enurl: "https://docs.brew.sh/Installation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "Media Types",
      enurl: "https://www.iana.org/assignments/media-types/media-types.xhtml",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "HTTP Status Codes",
      enurl:
          "https://www.iana.org/assignments/http-status-codes/http-status-codes.xhtml",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "HTTP Methods",
      enurl: "https://www.iana.org/assignments/http-methods/http-methods.xhtml",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "HTTP Fields",
      enurl: "https://www.iana.org/assignments/http-fields/http-fields.xhtml",
      cnurl: "#",
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
      enurl: "https://datatracker.ietf.org/doc/html/rfc8555",
      cnurl: "#",
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
      enurl: "https://curl.se/docs/tutorial.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ruby%20on%20Ralis.svg",
      title: "Ruby on Rails",
      enurl: "https://guides.rubyonrails.org/getting_started.html",
      cnurl: "#",
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
      enurl: "https://kafka.apache.org/documentation/#gettingStarted",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/gulpjs.svg",
      title: "GulpJS",
      enurl: "https://gulpjs.com/docs/en/getting-started/quick-start",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Anaconda.svg",
      title: "Anaconda",
      enurl: "https://docs.anaconda.com/anaconda/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Conda.svg",
      title: "Conda",
      enurl:
          "https://docs.conda.io/projects/conda/en/latest/user-guide/getting-started.html",
      cnurl: "#",
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
      enurl: "https://conda-forge.org/docs/user/introduction",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/conda-forge.svg",
      title: "Miniforge",
      enurl: "https://conda-forge.org/download",
      cnurl: "#",
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
      currentlyOnlySupportsChinese: true,
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "AIOpsLab",
      enurl:
          "https://github.com/microsoft/AIOpsLab?tab=readme-ov-file#%F0%9F%9A%80quickstart",
      cnurl: "#",
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
      enurl: "https://www.rabbitmq.com/tutorials/tutorial-one-rust-stream",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Atlassian%20Bitbucket.svg",
      title: "Bitbucket Pipelines",
      enurl:
          "https://support.atlassian.com/bitbucket-cloud/docs/get-started-with-bitbucket-pipelines",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Jupyter.svg",
      title: "Jupyter",
      enurl: "https://docs.jupyter.org/en/latest/start",
      cnurl: "#",
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
      enurl: "https://firefox-source-docs.mozilla.org/js",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WASIX.svg",
      title: "WASIX",
      enurl: "https://wasix.org/docs/language-guide/rust/installation",
      cnurl: "#",
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
      enurl: "https://clojure.org/guides/getting_started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Crystal.svg",
      title: "Crystal",
      enurl: "https://crystal-lang.org/reference/1.14/getting_started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BabylonJS.svg",
      title: "BabylonJS",
      enurl:
          "https://doc.babylonjs.com/journey/theFirstStep#everyones-very-first-step",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Nacos.svg",
      title: "Nacos",
      enurl: "https://nacos.io/docs/latest/quickstart/quick-start",
      cnurl: "#",
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
    Item(
      imgUrl: "/Tabby.svg",
      title: "Tabby",
      enurl: "https://tabby.sh",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/gRPC.svg",
      title: "gRPC",
      enurl: "https://grpc.io/docs/languages/go/quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/e-CNY.svg",
      title: "Cap’n Proto",
      enurl: "https://capnproto.org/language.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "SIMD JSON for Rust",
      enurl: "https://docs.rs/simd-json/latest/simd_json/#usage",
      cnurl: "#",
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
  //     enurl:
  //         "https://radash-docs.vercel.app/docs/getting-started#getting-started",
  //     cnurl: "#"));
  itemList.add(
    Item(
      imgUrl: "/Apache%20Tomcat.svg",
      title: "Tomcat",
      enurl: "https://tomcat.apache.org/tomcat-11.0-doc",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apache%20Camel.svg",
      title: "Camel Core",
      enurl: "https://camel.apache.org/camel-core/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bash.svg",
      title: "Bash",
      enurl: "https://www.gnu.org/software/bash/manual/html_node/index.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GraalVM.svg",
      title: "GraalVM",
      enurl: "https://www.graalvm.org/latest/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GraalVM.svg",
      title: "GraalVM Native Image",
      enurl: "https://www.graalvm.org/latest/reference-manual/native-image",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GraalVM.svg",
      title: "GraalVM SDK",
      enurl: "https://www.graalvm.org/sdk/javadoc",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cygwin.svg",
      title: "Cygwin",
      enurl: "https://cygwin.com/cygwin-ug-net/cygwin-ug-net.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/robot.svg",
      title: "Robot Framework",
      enurl: "https://docs.robotframework.org/docs/getting_started/rpa",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apache%20Hive.svg",
      title: "Hive",
      enurl: "https://cwiki.apache.org/confluence/display/Hive/GettingStarted",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apache%20Cordova.svg",
      title: "Cordova",
      enurl:
          "https://cordova.apache.org/docs/en/latest/guide/cli/installation.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "GNU Coreutils",
      enurl:
          "https://www.gnu.org/software/coreutils/manual/html_node/index.html#toc-Introduction-1",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "sed",
      enurl:
          "https://www.gnu.org/software/sed/manual/sed.html#Command_002dLine-Options",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "grep",
      enurl:
          "https://www.gnu.org/software/grep/manual/grep.html#grep-Programs-1",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "GNU Binutils",
      enurl: "https://sourceware.org/binutils/docs/binutils/index.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "GNU make",
      enurl: "https://www.gnu.org/software/make/manual/html_node/index.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "GNU Wget",
      enurl: "https://www.gnu.org/software/wget/manual/html_node/index.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Org_WebKit.svg",
      title: "WebKit",
      enurl: "https://webkit.org/blog/category/standards",
      cnurl: "#",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/V8.svg",
  //     title: "V8",
  //     enurl: "https://v8.dev/docs",
  //     cnurl: "#"));
  itemList.add(
    Item(
      imgUrl: "/Duke%20Hips.svg",
      title: "OpenJDK",
      enurl: "https://openjdk.org/guide",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Duke%20Hips.svg",
      title: "Building the JDK",
      enurl: "https://openjdk.org/groups/build/doc/building.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Duke%20Hips.svg",
      title: "ZGC",
      enurl: "https://wiki.openjdk.org/display/zgc/Main#Main-QuickStart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Chroma.svg",
      title: "Chroma",
      enurl:
          "https://docs.trychroma.com/docs/overview/getting-started?lang=typescript",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Kali.svg",
      title: "Kali Linux",
      enurl: "https://www.kali.org/docs/introduction/what-is-kali-linux",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Kali.svg",
      title: "Kali Tools",
      enurl: "https://www.kali.org/tools",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/linebender.svg",
      title: "resvg",
      enurl: "https://github.com/linebender/resvg",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Sentry.svg",
      title: "Sentry",
      enurl: "https://docs.sentry.io/platforms",
      cnurl: "#",
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
      enurl: "https://www.gtk.org/docs/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/gtk-kn.svg",
      title: "gtk-kn",
      enurl: "https://gtk-kn.org/get-started",
      cnurl: "#",
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
      enurl: "https://docs.vala.dev/installation-guide",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Servo.svg",
      title: "Servo",
      enurl: "https://book.servo.org/getting-servo.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Wa.svg",
      title: "Wa",
      enurl: "https://wa-lang.org/tutorial",
      cnurl: "https://wa-lang.org/tutorial",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "ZLUDA",
      enurl: "https://github.com/vosen/ZLUDA?tab=readme-ov-file#usage",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "shields.rs",
      enurl:
          "https://github.com/Jannchie/shields.rs?tab=readme-ov-file#usage-example",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Pot.svg",
      title: "Pot",
      enurl: "https://pot-app.com/en/docs/#user-guide",
      cnurl: "https://pot-app.com/docs/#%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97",
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
      imgUrl: "/OpenHarmony.svg",
      title: "Flutter for OHOS",
      enurl:
          "https://gitcode.com/openharmony-tpc/flutter_samples/blob/master/ohos/docs/03_environment/openHarmony-flutter%E7%8E%AF%E5%A2%83%E6%90%AD%E5%BB%BA%E6%8C%87%E5%AF%BC.md",
      cnurl: "#",
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
      enurl: "https://www.hivemq.com/blog/how-to-get-started-with-mqtt",
      cnurl: "#",
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
      imgUrl: "/JSON.svg",
      title: "JSON Schema Store",
      enurl: "https://www.schemastore.org",
      cnurl: "#",
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
      enurl: "https://json-schema.org/learn/getting-started-step-by-step",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/microbit.svg",
      title: "micro:bit",
      enurl:
          "https://microbit.org/get-started/getting-started/power-up-and-play",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HomeAssistant.svg",
      title: "Home Assistant",
      enurl:
          "https://www.home-assistant.io/installation/generic-x86-64#install-home-assistant-container",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/D3JS.svg",
      title: "D3JS",
      enurl: "https://d3js.org/getting-started#getting-started",
      cnurl: "#",
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
      enurl:
          "https://www.clearlinux.org/clear-linux-documentation/guides/index.html",
      cnurl: "#",
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
      imgUrl: "/Deepin.svg",
      title: "linyaps",
      enurl:
          "https://linyaps.org.cn/en/guide/start/install.html#install-linyaps",
      cnurl:
          "https://linyaps.org.cn/guide/start/install.html#%E5%AE%89%E8%A3%85%E5%A6%82%E6%84%8F%E7%8E%B2%E7%8F%91",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/QEMU.svg",
      title: "QEMU",
      enurl: "https://www.qemu.org/docs/master",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NVIDIA.svg",
      title: "NVVM IR",
      enurl: "https://docs.nvidia.com/cuda/nvvm-ir-spec",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NVIDIA.svg",
      title: "NVVM ABI for PTX",
      enurl:
          "https://docs.nvidia.com/cuda/nvvm-ir-spec/index.html#nvvm-abi-for-ptx",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/UEFI.svg",
      title: "UEFI",
      enurl: "https://uefi.org/uefi",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Grok.svg",
      title: "xAI Grok",
      enurl: "https://github.com/xai-org/grok-1",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LangChain.svg",
      title: "LangChain",
      enurl: "https://js.langchain.com/docs/how_to",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NVIDIA.svg",
      title: "CUDA",
      enurl: "https://docs.nvidia.com/cuda/cuda-quick-start-guide",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MooreThreads.svg",
      title: "MT-Transformer-vLLM",
      enurl: "https://docs.mthreads.com/mtt/mtt-doc-online/quick_start",
      cnurl: "#",
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
      enurl: "https://docs.nvidia.com/cuda/cuda-gdb/index.html#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NVIDIA.svg",
      title: "Cosmos",
      enurl:
          "https://research.nvidia.com/publication/2025-01_cosmos-world-foundation-model-platform-physical-ai",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/KasmWorkspaces.svg",
      title: "Kasm Workspaces",
      enurl: "https://kasmweb.com/docs/latest/index.html#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WireGuard.svg",
      title: "WireGuard",
      enurl: "https://www.wireguard.com/quickstart",
      cnurl: "#",
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
    Item(
      imgUrl: "/YAML.svg",
      title: "YAML",
      enurl: "https://yaml.org",
      cnurl: "#",
    ),
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
      enurl: "https://nim-lang.org/documentation.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Haskell.svg",
      title: "Haskell",
      enurl: "https://www.haskell.org/get-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bitcoin.svg",
      title: "Bitcoin",
      enurl: "https://developer.bitcoin.org/devguide/index.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WinterCG.svg",
      title: "WinterTC",
      enurl: "https://wintertc.org/work",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Exercism.svg",
      title: "Exercism",
      enurl: "https://exercism.org/tracks",
      cnurl: "#",
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
      imgUrl: "/GitHub.svg",
      title: "Karakum",
      enurl:
          "https://github.com/karakum-team/karakum/blob/master/docs/guides/Basic_usage.md",
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
      enurl: "https://flameshot.org/docs/overview/overview",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Gradle.svg",
      title: "Gradle",
      enurl:
          "https://docs.gradle.org/current/userguide/getting_started_eng.html",
      cnurl: "#",
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
  //     enurl: "https://www.guardsquare.com/manual/quickstart",
  //     cnurl: "#"));

  itemList.add(
    Item(
      imgUrl: "/Mojo.svg",
      title: "Mojo",
      enurl: "https://docs.modular.com/stable/mojo/manual/get-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mojo.svg",
      title: "Mojo StdLib",
      enurl: "https://docs.modular.com/mojo/lib",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Debian.svg",
      title: "Debian",
      enurl: "https://www.debian.org/doc/manuals/debian-reference",
      cnurl: "#",
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
      enurl:
          "https://doc.rust-lang.org/stable/cargo/getting-started/first-steps.html",
      cnurl: "#",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/XTermJS.svg",
  //     title: "XTermJS",
  //     enurl: "https://xtermjs.org/docs",
  //     cnurl: "#"));
  itemList.add(
    Item(
      imgUrl: "/Wayland.svg",
      title: "Wayland",
      enurl: "https://wayland.freedesktop.org/docs/html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Waydroid.svg",
      title: "Waydroid",
      enurl: "https://docs.waydro.id/usage",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CompilerExplorer.svg",
      title: "Compiler Explorer",
      enurl: "https://godbolt.org",
      cnurl: "#",
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
      title: "Injectorpp for rust",
      enurl:
          "https://github.com/microsoft/injectorppforrust?tab=readme-ov-file#usage",
      cnurl: "#",
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
      enurl: "https://dev.mysql.com/doc/refman/9.3/en/binary-installation.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenZFS.svg",
      title: "OpenZFS",
      enurl:
          "https://openzfs.github.io/openzfs-docs/Getting%20Started/Debian/index.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GreptimeDB.svg",
      title: "GreptimeDB",
      enurl: "https://docs.greptime.com/getting-started/quick-start",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SpringBoot.svg",
      title: "Spring Boot",
      enurl:
          "https://docs.spring.io/spring-boot/how-to/native-image/developing-your-first-application.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ECMAScript.svg",
      title: "ECMAScript",
      enurl: "https://tc39.es/ecma262",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Xcode.svg",
      title: "Xcode",
      enurl:
          "https://developer.apple.com/documentation/xcode/creating-an-xcode-project-for-an-app",
      cnurl: "#",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/HighlightJS.svg",
  //     title: "HighlightJS",
  //     enurl: "https://highlightjs.readthedocs.io/en/latest",
  //     cnurl: "#"));
  itemList.add(
    Item(
      imgUrl: "/HTTP_Toolkit.svg",
      title: "HTTP Toolkit",
      enurl: "https://httptoolkit.com/docs/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HTTP_3_Check.svg",
      title: "HTTP/3 Check",
      enurl: "https://http3check.net",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TIOBE.svg",
      title: "TIOBE Index",
      enurl: "https://www.tiobe.com/tiobe-index",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Lua.svg",
      title: "Lua",
      enurl: "https://www.lua.org/start.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Swagger.svg",
      title: "Swagger",
      enurl: "https://swagger.io/docs",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HHVM.svg",
      title: "HHVM",
      enurl: "https://docs.hhvm.com/hhvm/basic-usage/introduction",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Gnome.svg",
      title: "GNOME",
      enurl:
          "https://developer.gnome.org/documentation/tutorials/beginners/getting_started.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ReactiveX.svg",
      title: "ReactiveX",
      enurl: "https://reactivex.io/documentation",
      cnurl: "#",
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
      enurl: "https://vsoch.github.io/docsy-jekyll/docs/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DocsyJekyll.svg",
      title: "Protocol Buffers",
      enurl: "https://protobuf.dev/programming-guides/proto3",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ByteDance%20Feishu.svg",
      title: "Protoc Gen ArkTS",
      enurl:
          "https://github.com/larksuite/protoc-gen-ets?tab=readme-ov-file#usage",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DocsyJekyll.svg",
      title: "ProtoJSON Format",
      enurl: "https://protobuf.dev/programming-guides/json",
      cnurl: "#",
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
      enurl: "https://tribuo.org/learn/4.3/docs/#h1",
      cnurl: "#",
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
    Item(
      imgUrl: "/Ktor.svg",
      title: "Ktor Client",
      enurl: "https://ktor.io/docs/client-create-new-application.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ktor.svg",
      title: "Ktor Server",
      enurl:
          "https://ktor.io/docs/server-create-a-new-project.html#create-project-with-the-ktor-project-generator",
      cnurl: "#",
    ),
  );

  itemList.add(
    Item(
      imgUrl: "/Airflow.svg",
      title: "Airflow",
      enurl: "https://airflow.apache.org/docs/apache-airflow/stable/start.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Arduino.svg",
      title: "Arduino",
      enurl:
          "https://docs.arduino.cc/learn/starting-guide/getting-started-arduino",
      cnurl: "#",
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
  //     enurl: "https://docs.mattermost.com",
  //     cnurl: "#"));
  itemList.add(
    Item(
      imgUrl: "/LateX.svg",
      title: "LateX",
      enurl: "https://www.latex-project.org/help/documentation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/KateX.svg",
      title: "KateX",
      enurl: "https://katex.org/docs",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Redox.svg",
      title: "Redox OS",
      enurl:
          "https://doc.redox-os.org/book/getting-started.html#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Plan9.svg",
      title: "Plan 9",
      enurl: "http://9p.io/wiki/plan9/Installation_instructions/index.html",
      cnurl: "#",
    ),
  );

  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust and WebAssembly",
      enurl: "https://rustwasm.github.io/docs/book/game-of-life/setup.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FFmpeg.svg",
      title: "FFmpeg",
      enurl: "https://ffmpeg.org/ffmpeg-all.html#Synopsis",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Alpine.svg",
      title: "Alpine Linux",
      enurl:
          "https://docs.alpinelinux.org/user-handbook/0.1a/Installing/medium.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Etcher.svg",
      title: "Etcher",
      enurl: "https://etcher-docs.balena.io/#supported-operating-systems",
      cnurl: "#",
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
      enurl: "https://actix.rs/docs/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rocket.svg",
      title: "Rocket",
      enurl: "https://rocket.rs/guide/v0.5/getting-started/#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Eclipse%20IDE.svg",
      title: "AspectJ",
      enurl: "https://eclipse.dev/aspectj/doc/released/progguide/starting.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OW2_ASM.svg",
      title: "OW2 ASM",
      enurl: "https://asm.ow2.io",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Figma.svg",
      title: "Figma Code Layer",
      enurl: "https://www.figma.com/code-docs/create-your-first-code-layer",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/XOrg.svg",
      title: "X Window System",
      enurl: "https://www.x.org/releases/current/doc/index.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OCaml.svg",
      title: "OCaml",
      enurl: "https://ocaml.org/docs/installing-ocaml",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/KDE.svg",
      title: "KDE Developer",
      enurl: "https://develop.kde.org/docs/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Unicode.svg",
      title: "Unicode",
      enurl: "https://www.unicode.org/versions/Unicode17.0.0",
      // enurl: "https://www.unicode.org/versions/latest",
      cnurl: "#",
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
      enurl: "https://maven.apache.org/ref/current",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DevContainer.svg",
      title: "Dev Containers",
      enurl: "https://containers.dev/implementors/templates",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/containerd.svg",
      title: "containerd",
      enurl:
          "https://github.com/containerd/containerd/blob/main/docs/getting-started.md#getting-started-with-containerd",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/containerd.svg",
      title: "nerdctl",
      enurl:
          "https://github.com/containerd/nerdctl?tab=readme-ov-file#basic-usage",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OCI.svg",
      title: "runc",
      enurl:
          "https://github.com/opencontainers/runc?tab=readme-ov-file#using-runc",
      cnurl: "#",
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
  //     enurl: "https://busybox.net/downloads/BusyBox.html",
  //     cnurl: "#"));
  itemList.add(
    Item(
      imgUrl: "/Zookeeper.svg",
      title: "Zookeeper",
      enurl:
          "https://zookeeper.apache.org/doc/current/zookeeperStarted.html#getting-started-coordinating-distributed-applications-with-zooKeeper",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WrenAI.svg",
      title: "Wren AI",
      enurl: "https://docs.getwren.ai/oss/overview/introduction",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/quiche.svg",
      title: "quiche",
      enurl: "https://docs.quic.tech/quiche",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenSSL.svg",
      title: "OpenSSL commands",
      enurl: "https://docs.openssl.org/master/man1",
      cnurl: "#",
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
      enurl: "https://docs.datadoghq.com/getting_started/application",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Wireshark.svg",
      title: "Wireshark",
      enurl: "https://www.wireshark.org/docs/wsug_html",
      cnurl: "#",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/Buildroot.svg",
  //     title: "Buildroot",
  //     enurl:
  //         "https://buildroot.org/downloads/manual/manual.html#_getting_started",
  //     cnurl: "#"));
  itemList.add(
    Item(
      imgUrl: "/SWC.svg",
      title: "SWC",
      enurl: "https://swc.rs/docs/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Qdrant.svg",
      title: "Qdrant",
      enurl: "https://qdrant.tech/documentation/quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HuggingFace.svg",
      title: "Hugging Face",
      enurl: "https://huggingface.co/docs/transformers/quicktour",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ollama.svg",
      title: "Ollama",
      enurl: "https://github.com/ollama/ollama/blob/main/README.md#quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Grafana.svg",
      title: "Grafana",
      enurl: "https://grafana.com/docs/grafana/latest/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Geany.svg",
      title: "Geany",
      enurl: "https://www.geany.org/manual/current/index.html#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Prometheus.svg",
      title: "Prometheus",
      enurl: "https://prometheus.io/docs/introduction/first_steps",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cilium.svg",
      title: "Cilium",
      enurl: "https://docs.cilium.io/en/stable/#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Hubble.svg",
      title: "Hubble",
      enurl:
          "https://github.com/cilium/hubble?tab=readme-ov-file#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Tetragon.svg",
      title: "Tetragon",
      enurl: "https://tetragon.io/docs/getting-started/install-k8s",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Remmina.svg",
      title: "Remmina",
      enurl:
          "https://remmina.gitlab.io/remminadoc.gitlab.io/md__builds__remmina_remmina_ci__remmina_wiki__sidebar.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Chat2DB.svg",
      title: "Chat2DB",
      enurl: "#",
      cnurl:
          "https://chat2db-ai.com/resources/docs/start-guide/getting-started",
      currentlyOnlySupportsChinese: true,
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Selenium.svg",
      title: "Selenium",
      enurl: "https://www.selenium.dev/documentation/webdriver/getting_started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenAIPlatform.svg",
      title: "OpenAI Platform",
      enurl: "https://platform.openai.com/docs/quickstart",
      cnurl: "#",
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
      enurl:
          "https://github.com/All-Hands-AI/OpenHands?tab=readme-ov-file#-quick-start",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenAIPlatform.svg",
      title: "universe",
      enurl:
          "https://github.com/openai/universe?tab=readme-ov-file#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/minikube.svg",
      title: "minikube",
      enurl: "https://minikube.sigs.k8s.io/docs/start",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IntelliJ_IDEA.svg",
      title: "IntelliJ IDEA",
      enurl: "https://www.jetbrains.com/help/idea/getting-started.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Fleet.svg",
      title: "JetBrains Fleet",
      enurl: "https://www.jetbrains.com/help/fleet/getting-started.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Space.svg",
      title: "JetBrains Space",
      enurl: "https://www.jetbrains.com/help/space/getting-started.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Metabase.svg",
      title: "Metabase",
      enurl: "https://www.metabase.com/learn/metabase-basics/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TigerBeetle.svg",
      title: "TigerBeetle",
      enurl: "https://docs.tigerbeetle.com/quick-start",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Alibaba.svg",
      title: "AliDNS",
      enurl: "#",
      cnurl: "https://www.alidns.com/knowledge?type=SETTING_DOCS#user",
      currentlyOnlySupportsChinese: true,
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
      imgUrl: "/Higress.svg",
      title: "Higress",
      enurl: "https://higress.cn/en/ai/quick-start",
      cnurl: "https://higress.cn/ai/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cloudflare.svg",
      title: "1.1.1.1",
      enurl: "https://developers.cloudflare.com/1.1.1.1/setup",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MaterialWeb.svg",
      title: "Material Web",
      enurl: "https://material-web.dev/about/quick-start",
      cnurl: "#",
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
      enurl: "https://docs.cursor.com/get-started/installation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FAST.svg",
      title: "FAST",
      enurl: "https://fast.com",
      cnurl: "#",
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
      enurl: "https://docs.codeium.com/getstarted/overview#get-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ghostty.svg",
      title: "Ghostty",
      enurl: "https://ghostty.org/docs#get-started",
      cnurl: "#",
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
      enurl: "https://rolldown.rs/guide/getting-started",
      cnurl: "#",
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
      enurl: "https://modelscope.cn/docs/Beginner-s-Guide/Quick-Start",
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
      enurl: "https://www.llama.com/docs/how-to-guides",
      cnurl: "#",
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
      enurl: "https://docs.automa.site/rpa/quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mintty.svg",
      title: "Mintty",
      enurl: "https://mintty.github.io/mintty.1.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Wasmer.svg",
      title: "Wasmer",
      enurl: "https://docs.wasmer.io/install",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Wasmer.svg",
      title: "WinterJS",
      enurl:
          "https://github.com/wasmerio/winterjs?tab=readme-ov-file#running-winterjs-natively",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Skia.svg",
      title: "Skia",
      enurl: "https://skia.org/docs",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Skia.svg",
      title: "CanvasKit",
      enurl: "https://skia.org/docs/user/modules/quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Lima.svg",
      title: "Lima",
      enurl: "https://lima-vm.io/docs/usage",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/libimobiledevice.svg",
      title: "libimobiledevice",
      enurl: "https://libimobiledevice.org/#get-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AssemblyScript.svg",
      title: "AssemblyScript",
      enurl: "https://www.assemblyscript.org/getting-started.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MLIR.svg",
      title: "MLIR",
      enurl: "https://mlir.llvm.org/getting_started",
      cnurl: "#",
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
      enurl: "https://bellard.org/quickjs/quickjs.html#Quick-start",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BoaJS.svg",
      title: "Boa",
      enurl: "https://docs.rs/boa_engine/latest/boa_engine/#example-usage",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rusty V8 Binding",
      enurl: "https://docs.rs/v8/latest/v8/#example",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "The Rust Style Guide",
      enurl:
          "https://doc.rust-lang.org/stable/style-guide/#the-default-rust-style",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Pepe",
      enurl:
          "https://github.com/omarmhaimdat/pepe/tree/master?tab=readme-ov-file#usage",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "MCPR",
      enurl: "https://github.com/conikeec/mcpr?tab=readme-ov-file#installation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "rustup",
      enurl: "https://rustup.rs",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "extfn",
      enurl: "https://docs.rs/extfn/latest/extfn",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "thread-priority",
      enurl: "https://docs.rs/thread-priority/latest/thread_priority/#usage",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Haylxon",
      enurl:
          "https://github.com/pwnwriter/haylxon/?tab=readme-ov-file#hxn-in-action-",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "bitflags",
      enurl: "https://github.com/bitflags/bitflags?tab=readme-ov-file#usage",
      cnurl: "#",
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
      enurl:
          "https://github.com/rust-lang/flate2-rs/tree/main?tab=readme-ov-file#compression",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FUTURES-RS.svg",
      title: "futures",
      enurl: "https://docs.rs/futures/latest/futures",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZIG.svg",
      title: "Zig LangRef",
      enurl: "https://ziglang.org/documentation/0.14.1",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZIG.svg",
      title: "Zig StdLib",
      enurl: "https://ziglang.org/documentation/0.14.1/std",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZIG.svg",
      title: "zigup",
      enurl: "https://github.com/marler8997/zigup?tab=readme-ov-file#usage",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "NatureLM",
      enurl: "https://naturelm.github.io",
      cnurl: "#",
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
      enurl: "https://mozilla.github.io/uniffi-rs/latest/Getting_started.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "RustOwl",
      enurl:
          "https://github.com/cordx56/rustowl?tab=readme-ov-file#quick-start",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "mlx-rs",
      enurl:
          "https://github.com/oxideai/mlx-rs?tab=readme-ov-file#installation",
      cnurl: "#",
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
      enurl: "https://pop-os.github.io/libcosmic-book/introduction.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Trunk.svg",
      title: "Trunk",
      enurl: "https://trunkrs.dev/#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cargo.svg",
      title: "Cargo Remote",
      enurl: "https://github.com/sgeisler/cargo-remote",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cargo.svg",
      title: "Cargo NDK",
      enurl:
          "https://github.com/bbqsrc/cargo-ndk?tab=readme-ov-file#cargo-ndk---build-rust-code-for-android",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cargo.svg",
      title: "Cargo Cocoapods",
      enurl:
          "https://github.com/bbqsrc/cargo-cocoapods/tree/main?tab=readme-ov-file#cargo-cocoapods---build-rust-code-for-xcode-integration",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cargo.svg",
      title: "Cargo Lipo",
      enurl:
          "https://github.com/TimNN/cargo-lipo?tab=readme-ov-file#cargo-lipo--",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cargo.svg",
      title: "Workspace Analyzer",
      enurl:
          "https://github.com/jaads/cargo-workspace-analyzer?tab=readme-ov-file#installation",
      cnurl: "#",
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
      enurl: "https://pixi.sh/latest/#installation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/mingw-w64.svg",
      title: "mingw-w64",
      enurl: "https://www.mingw-w64.org/getting-started/msys2-llvm",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "DeepSeek",
      enurl:
          "https://github.com/deepseek-ai/DeepSeek-R1?tab=readme-ov-file#6-how-to-run-locally",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "DeepEP",
      enurl:
          "https://github.com/deepseek-ai/DeepEP?tab=readme-ov-file#quick-start",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "DeepGEMM",
      enurl:
          "https://github.com/deepseek-ai/DeepGEMM?tab=readme-ov-file#quick-start",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "DeepSeek 3FS",
      enurl:
          "https://github.com/deepseek-ai/3FS/blob/main/deploy/README.md#3fs-setup-guide",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "Smallpond",
      enurl:
          "https://github.com/deepseek-ai/smallpond/blob/main/docs/source/getstarted.rst",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "FlashMLA",
      enurl:
          "https://github.com/deepseek-ai/FlashMLA?tab=readme-ov-file#quick-start",
      cnurl: "#",
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
      enurl:
          "https://docs.appflowy.io/docs/appflowy/install-appflowy/installation-methods/installing-with-docker",
      cnurl: "#",
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
      enurl: "https://intl.cloud.baidu.com/doc/BML/s/Xjxbjc84n-en",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LcJuvesBlog.svg",
      title: "LcJuves' Blog",
      enurl: "https://blog.lcjuves.com",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenVSX.svg",
      title: "Open VSX",
      enurl:
          "https://github.com/EclipseFdn/open-vsx.org?tab=readme-ov-file#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LcJuvesBlog.svg",
      title: "Learn X in Y minutes",
      enurl: "https://learnxinyminutes.com/c",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Svelte.svg",
      title: "Svelte",
      enurl: "https://svelte.dev/docs/svelte/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/rust-analyzer.svg",
      title: "rust-analyzer",
      enurl: "https://rust-analyzer.github.io/book/vs_code.html#vs-code",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TinyWow.svg",
      title: "TinyWow",
      enurl: "https://tinywow.com",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenStack.svg",
      title: "OpenStack",
      enurl: "https://docs.openstack.org/devstack/latest/#quick-start",
      cnurl: "#",
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
      enurl: "https://aomediacodec.github.io/av1-avif",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/glTF.svg",
      title: "glTF",
      enurl: "https://www.khronos.org/gltf/#gltf-intro",
      cnurl: "#",
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
      enurl:
          "https://docs.affine.pro/self-host-affine/install/docker-compose-recommend#docker-compose-recommend",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FingerprintJS.svg",
      title: "FingerprintJS",
      enurl: "https://dev.fingerprint.com/docs/quick-start-guide",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BarbaJS.svg",
      title: "BarbaJS",
      enurl: "https://barba.js.org/docs/getstarted/install",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/UbuntuServer.svg",
      title: "Ubuntu Server",
      enurl:
          "https://documentation.ubuntu.com/server/tutorial/basic-installation/#basic-installation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/J1Assistant.svg",
      title: "J1 Assistant",
      enurl: "https://matter.ai",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FVM.svg",
      title: "FVM",
      enurl: "https://fvm.app/documentation/guides/basic-commands",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Puro.svg",
      title: "Puro",
      enurl: "https://puro.dev/#quick-start",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Tabnine.svg",
      title: "Tabnine",
      enurl: "https://docs.tabnine.com/main/getting-started/quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Continue.svg",
      title: "Continue",
      enurl: "https://docs.continue.dev/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/VSCodium.svg",
      title: "VSCodium",
      enurl:
          "https://github.com/VSCodium/vscodium/blob/master/docs/getting-started.md#getting-started-with-vscodium",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/_Jekyll.svg",
      title: "Jekyll",
      enurl: "https://jekyllrb.com/docs",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/W3C.svg",
      title: "WebDriver BiDi",
      enurl: "https://w3c.github.io/webdriver-bidi",
      cnurl: "#",
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
      enurl: "https://www.lokinet.org/faq",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Oxen.svg",
      title: "Oxen",
      enurl:
          "https://docs.oxen.io/oxen-docs/using-the-oxen-blockchain/oxen-service-node-guides/setting-up-an-oxen-service-node",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SESSION.svg",
      title: "SESSION",
      enurl: "https://getsession.org/faq",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenRouter.svg",
      title: "OpenRouter",
      enurl: "https://openrouter.ai/docs/quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/uutils.svg",
      title: "uutils coreutils",
      enurl: "https://uutils.github.io/coreutils/docs/installation.html#cargo",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenBSD.svg",
      title: "OpenBSD",
      enurl: "https://www.openbsd.org/76.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenGroup.svg",
      title: "POSIX",
      enurl:
          "https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap01.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenGroup.svg",
      title: "POSIX Headers",
      enurl:
          "https://pubs.opengroup.org/onlinepubs/9799919799/idx/headers.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenGroup.svg",
      title: "POSIX Shell",
      enurl:
          "https://pubs.opengroup.org/onlinepubs/9799919799/utilities/V3_chap02.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AWK.svg",
      title: "AWK",
      enurl:
          "https://pubs.opengroup.org/onlinepubs/9799919799/utilities/awk.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "GAWK",
      enurl:
          "https://www.gnu.org/software/gawk/manual/gawk.html#toc-Getting-Started-with-awk",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "Jobserver",
      enurl: "https://make.mad-scientist.net/papers/jobserver-implementation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Eko.svg",
      title: "Eko",
      enurl: "https://eko.fellou.ai/docs/getting-started/quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Serverpod.svg",
      title: "Serverpod",
      enurl: "https://docs.serverpod.dev/#command-line-tools",
      cnurl: "#",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/Motion.svg",
  //     title: "Motion",
  //     enurl: "https://motion.dev/docs/react-quick-start",
  //     cnurl: "#"));
  itemList.add(
    Item(
      imgUrl: "/_Material-for-MkDocs-Icon.svg",
      title: "Material for MkDocs",
      enurl: "https://squidfunk.github.io/mkdocs-material/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitBook.svg",
      title: "GitBook",
      enurl: "https://docs.gitbook.com/getting-started/quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GCC.svg",
      title: "GCC",
      enurl: "https://gcc.gnu.org/onlinedocs/gcc-15.1.0/gcc/#Introduction",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GDB.svg",
      title: "GDB",
      enurl: "https://sourceware.org/gdb/download/onlinedocs/gdb.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/emoji_u1f41b.svg",
      title: "LLDB",
      enurl: "https://lldb.llvm.org/use/tutorial.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Buildah.svg",
      title: "Buildah",
      enurl:
          "https://buildah.io/blogs/2017/11/02/getting-started-with-buildah.html#building-oci-container-images",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Meson.svg",
      title: "Meson",
      enurl: "https://mesonbuild.com/Quick-guide.html#requirements",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ionic.svg",
      title: "Ionic React",
      enurl:
          "https://ionicframework.com/docs/react/quickstart#what-is-ionic-framework",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ionic.svg",
      title: "Ionic Vue",
      enurl:
          "https://ionicframework.com/docs/vue/quickstart#what-is-ionic-framework",
      cnurl: "#",
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
      enurl: "https://flatbuffers.dev/quick_start",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Hono.svg",
      title: "Hono",
      enurl: "https://hono.dev/docs/getting-started/basic#starter",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Lobster.svg",
      title: "Lobster",
      enurl: "https://aardappel.github.io/lobster/getting_started.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Evcxr Rust REPL",
      enurl: "https://github.com/evcxr/evcxr/blob/main/evcxr_repl/README.md",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeltaLake.svg",
      title: "Delta Lake",
      enurl: "https://delta-io.github.io/delta-rs/usage/installation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/StirlingPDF.svg",
      title: "Stirling PDF",
      enurl:
          "https://docs.stirlingpdf.com/Installation/Docker%20Install#run-docker-container-with-docker-run",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GN.svg",
      title: "GN",
      enurl: "https://gn.googlesource.com/gn/+/main/docs/quick_start.md",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mojo.svg",
      title: "Firecrawl",
      enurl: "https://docs.firecrawl.dev/introduction",
      cnurl: "#",
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
      enurl: "https://qwik.dev/docs/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Nuxt.svg",
      title: "Nuxt",
      enurl: "https://nuxt.com/docs/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OAuth.svg",
      title: "OAuth 2",
      enurl: "https://oauth.net/2",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OAuth.svg",
      title: "OAuth PKCE",
      enurl: "https://oauth.net/2/pkce",
      cnurl: "#",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/SDKMAN.svg",
  //     title: "SDKMAN",
  //     enurl: "https://sdkman.io/install",
  //     cnurl: "#"));
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
      enurl: "https://immersiveweb.dev/#gettingstartedbuildingawebxrwebsite",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Buck2.svg",
      title: "Buck2",
      enurl: "https://buck2.build/docs/about/getting_started",
      cnurl: "#",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/OpenWebUI.svg",
  //     title: "Open WebUI",
  //     enurl: "https://docs.openwebui.com/getting-started/quick-start",
  //     cnurl: "#"));
  itemList.add(
    Item(
      imgUrl: "/Google.svg",
      title: "Carbon",
      enurl: "https://docs.carbon-lang.dev/#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NextJS.svg",
      title: "NextJS",
      enurl: "https://nextjs.org/docs/app/getting-started/installation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mercurial.svg",
      title: "Mercurial",
      enurl: "https://www.mercurial-scm.org/install",
      cnurl: "#",
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
      enurl: "https://clang.llvm.org/get_started.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/clangd.svg",
      title: "clangd",
      enurl: "https://clangd.llvm.org/installation",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Windsurf.svg",
      title: "Windsurf",
      enurl: "https://docs.windsurf.com/windsurf/getting-started#set-up",
      cnurl: "#",
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
      enurl: "https://doc.rust-lang.org/rustdoc",
      cnurl: "#",
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
      enurl: "https://rust-lang.github.io/rustup/basics.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "reqwest",
      enurl: "https://docs.rs/reqwest/latest",
      cnurl: "#",
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
      enurl: "https://www.scala-sbt.org/1.x/docs/sbt-by-example.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Java_with_Ant.svg",
      title: "Ant",
      enurl: "https://ant.apache.org/manual/install.html#getting",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MistralAI.svg",
      title: "Mistral AI",
      enurl: "https://docs.mistral.ai/getting-started/quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Metaflow.svg",
      title: "Metaflow",
      enurl: "https://docs.metaflow.org/getting-started/install",
      cnurl: "#",
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
      enurl: "https://docs.world.org/mini-apps/quick-start/installing",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/e-CNY.svg",
      title: "Taro",
      enurl: "https://docs.taro.zone/en/docs/GETTING-STARTED",
      cnurl: "https://docs.taro.zone/docs/GETTING-STARTED",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HMOS.svg",
      title: "Taro on HarmonyOS",
      enurl:
          "https://github.com/NervJS/taro-harmony-capi-library?tab=readme-ov-file#taro-harmony-cpp-library",
      cnurl: "#",
      currentlyOnlySupportsChinese: true,
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/e-CNY.svg",
      title: "FinClip",
      enurl:
          "https://www.finclip.com/mop-en/document/for-developer/quick-start/build-mini-program.html",
      cnurl:
          "https://www.finclip.com/mop/document/develop/guide/start/host-environment.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/u-root.svg",
      title: "u-root",
      enurl: "https://u-root.org/#get-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust UEFI",
      enurl: "https://rust-osdev.github.io/uefi-rs/tutorial/app.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/iroh.svg",
      title: "iroh",
      enurl: "https://www.iroh.computer/docs/quickstart",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bazzite.svg",
      title: "Bazzite",
      enurl: "https://docs.bazzite.gg/General/Installation_Guide",
      cnurl: "#",
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
      enurl: "https://asciidoc.org/#try",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ktunnel.svg",
      title: "ktunnel",
      enurl: "https://github.com/omrikiei/ktunnel?tab=readme-ov-file#usage",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/UNIX.svg",
      title: "The UNIX® Standard",
      enurl: "https://www.opengroup.org/membership/forums/platform/unix",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "https://fastweb.lcjuves.com/donate/Alipay.svg",
      title: "Donate to the author",
      enurl: "https://fastweb.lcjuves.com/donate/Alipay.svg",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/musl-libc.svg",
      title: "musl libc",
      enurl: "https://wiki.musl-libc.org/getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/systemd.svg",
      title: "systemd",
      enurl: "https://systemd.io",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IT-Tools.svg",
      title: "IT - TOOLS",
      enurl: "https://it-tools.tech",
      cnurl: "https://it-tools.tech",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DevToys.svg",
      title: "DevToys",
      enurl:
          "https://devtoys.app/doc/articles/extension-development/getting-started/setup.html?tabs=windows",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CRDTs.svg",
      title: "CRDTs",
      enurl: "https://crdt.tech",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HTTPieCLI.svg",
      title: "HTTPie CLI",
      enurl: "https://httpie.io/docs/cli/installation",
      cnurl: "#",
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
      enurl:
          "https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CocoaPods.svg",
      title: "CocoaPods",
      enurl: "https://guides.cocoapods.org/using/getting-started.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/UUP-dump.svg",
      title: "UUP dump",
      enurl: "https://uupdump.net",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/XunFeiOpenPlatform.svg",
      title: "iFLYTEK Open Platform",
      enurl: "#",
      cnurl: "https://www.xfyun.cn/doc/platform/quickguide.html",
      currentlyOnlySupportsChinese: true,
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apple.svg",
      title: "Mach-O EF",
      enurl:
          "https://developer.apple.com/library/archive/documentation/Performance/Conceptual/CodeFootprint/Articles/MachOOverview.html",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apple.svg",
      title: "container",
      enurl:
          "https://github.com/apple/container?tab=readme-ov-file#get-started",
      cnurl: "#",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/MATLAB.svg",
  //     title: "MATLAB",
  //     enurl: "https://ww2.mathworks.cn/help/matlab/getting-started-with-matlab.html?s_tid=CRUX_lftnav",
  //     cnurl:
  //         "https://ww2.mathworks.cn/help/matlab/getting-started-with-matlab.html?s_tid=CRUX_lftnav"));
  // itemList.add(Item(
  //     imgUrl: "/OpenGL.svg",
  //     title: "OpenGL",
  //     enurl: "https://www.khronos.org/opengl/wiki/Getting_Started",
  //     cnurl: "#"));
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
      enurl: "https://aider.chat/#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Zed.svg",
      title: "Zed",
      enurl: "https://zed.dev/docs/#getting-started",
      cnurl: "#",
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
      enurl: "https://riscv.org/developers",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/RISC-V.svg",
      title: "RISCV Sail Model",
      enurl:
          "https://github.com/riscv/sail-riscv?tab=readme-ov-file#getting-started",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/arm.svg",
      title: "Arm Embedded Compiler",
      enurl:
          "https://developer.arm.com/documentation/100748/0623/Getting-Started?lang=en",
      cnurl: "#",
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
      enurl:
          "https://github.com/cloudflare/pingora/blob/main/docs/quick_start.md",
      cnurl: "#",
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
      enurl: "https://help.gitkraken.com/gitlens/gitlens-home",
      cnurl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Grain.svg",
      title: "Grain",
      enurl: "https://grain-lang.org/docs/getting_grain",
      cnurl: "#",
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
