import 'dart:io';

import 'lib/items.pb.dart';

Future main(List<String> args) async {
  final List<Item> itemList = List.empty(growable: true);
  itemList.add(
    Item(
      imgUrl: "/Flutter.svg",
      title: "Flutter",
      enUrl:
          "https://docs.flutter.dev/get-started/install/macos/mobile-android",
      zhUrl: "https://docs.flutter.cn/get-started/install/windows/mobile",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Zapp_.svg",
      title: "Zapp!",
      enUrl: "https://docs.zapp.run/templates",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Flutter.svg",
      title: "Flame",
      enUrl: "https://docs.flame-engine.org/latest/README.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FlutterFlow.svg",
      title: "FlutterFlow",
      enUrl: "https://docs.flutterflow.io/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Anthropic.svg",
      title: "Claude Code",
      enUrl: "https://docs.anthropic.com/en/docs/claude-code/quickstart",
      zhUrl: "https://docs.anthropic.com/zh-CN/docs/claude-code/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Gitpod.svg",
      title: "Gitpod",
      enUrl:
          "https://www.gitpod.io/docs/classic/user/introduction/getting-started/overview#step-1%3A-your-first-workspace",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Android.svg",
      title: "Android",
      zhTitle: "安卓",
      enUrl:
          "https://developer.android.com/codelabs/basic-android-kotlin-compose-first-app?hl=en#0",
      zhUrl:
          "https://developer.android.google.cn/codelabs/basic-android-kotlin-compose-first-app?hl=zh-cn#0",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/hex-rays.svg",
      title: "hex-rays",
      enUrl: "https://docs.hex-rays.com/getting-started/install-ida",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Meyou.svg",
      title: "How To Cook",
      enUrl:
          "https://cook.aiursoft.cn/tips/%E5%8E%A8%E6%88%BF%E5%87%86%E5%A4%87",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Meyou.svg",
      title: "Kapa HTTP API",
      enUrl: "https://docs.kapa.ai/api/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Meyou.svg",
      title: "Apktool",
      enUrl: "https://apktool.org/docs/the-basics/intro",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Android.svg",
      title: "CameraX",
      enUrl:
          "https://developer.android.com/codelabs/camerax-getting-started?hl=en#0",
      zhUrl:
          "https://developer.android.google.cn/codelabs/camerax-getting-started?hl=zh-cn#0",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Android.svg",
      title: "ExoPlayer",
      enUrl: "https://developer.android.com/codelabs/exoplayer-intro?hl=en#0",
      zhUrl:
          "https://developer.android.google.cn/codelabs/exoplayer-intro?hl=zh-cn#0",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Android.svg",
      title: "ADPF",
      enUrl: "https://developer.android.com/games/optimize/adpf?hl=en",
      zhUrl: "https://developer.android.google.cn/games/optimize/adpf?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Android.svg",
      title: "Android NDK",
      zhTitle: "安卓原生开发套件",
      enUrl: "https://developer.android.com/ndk/guides?hl=en",
      zhUrl: "https://developer.android.google.cn/ndk/guides?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Android.svg",
      title: "SDK CmdLine Tools",
      enUrl: "https://developer.android.com/tools?hl=en",
      zhUrl: "https://developer.android.google.cn/tools?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Android.svg",
      title: "Android Decompile",
      zhTitle: "安卓反编译",
      enUrl: "https://github.lcjuves.com/java/android/decompile",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/_Atom.svg",
      title: "Atom",
      enUrl:
          "https://flight-manual.atom-editor.cc/getting-started/sections/atom-basics",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Android.svg",
      title: "AOSP",
      zhTitle: "安卓开源项目",
      enUrl: "https://source.android.com/docs/setup/start?hl=en",
      zhUrl: "https://source.android.com/docs/setup/start?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Fuchsia.svg",
      title: "Fuchsia",
      enUrl: "https://fuchsia.dev/fuchsia-src/get-started?hl=en",
      zhUrl: "https://fuchsia.dev/fuchsia-src/get-started?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Jetty.svg",
      title: "Jetty",
      enUrl: "https://jetty.org/docs/jetty/12/programming-guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MAX.svg",
      title: "MAX",
      enUrl: "https://docs.modular.com/stable/max/get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Magic.svg",
      title: "Magic",
      enUrl: "https://docs.modular.com/stable/magic",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/C3.svg",
      title: "C3",
      enUrl: "https://c3-lang.org/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SageMath.svg",
      title: "SageMath",
      enUrl: "https://www.sagemath.org/tour-quickstart.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Sage.svg",
      title: "Sage",
      enUrl:
          "https://github.com/sagemath/sage?tab=readme-ov-file#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Square.svg",
      title: "Okio",
      enUrl: "https://square.github.io/okio",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LeakCanary.svg",
      title: "LeakCanary",
      enUrl: "https://square.github.io/leakcanary/getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Android.svg",
      title: "Android XR",
      zhTitle: "安卓 XR",
      enUrl: "https://developer.android.com/develop/xr/get-started?hl=en",
      zhUrl:
          "https://developer.android.google.cn/develop/xr/get-started?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JetpackCompose.svg",
      title: "Jetpack XR SDK",
      enUrl: "https://developer.android.com/develop/xr/jetpack-xr-sdk?hl=en",
      zhUrl: "https://developer.android.com/develop/xr/jetpack-xr-sdk?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apache%20Groovy.svg",
      title: "Groovy",
      enUrl: "https://docs.groovy-lang.org/latest/html/documentation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Scala.svg",
      title: "Scala",
      enUrl:
          "https://docs.scala-lang.org/getting-started/sbt-track/getting-started-with-scala-and-sbt-on-the-command-line.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ScalaJS.svg",
      title: "ScalaJS",
      enUrl: "https://www.scala-js.org/doc/tutorial/scalajs-vite.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MDN.svg",
      title: "MDN Web",
      enUrl: "https://developer.mozilla.org/en-US/docs/Web",
      zhUrl: "https://developer.mozilla.org/zh-CN/docs/Web",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MDN.svg",
      title: "SharedArrayBuffer",
      enUrl:
          "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer",
      zhUrl:
          "https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MDN.svg",
      title: "DOM",
      zhTitle: "文档对象模型",
      enUrl:
          "https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction",
      zhUrl:
          "https://developer.mozilla.org/zh-CN/docs/Web/API/Document_Object_Model/Introduction",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MDN.svg",
      title: "HTTP cookies",
      enUrl: "https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/Cookies",
      zhUrl: "https://developer.mozilla.org/zh-CN/docs/Web/HTTP/Guides/Cookies",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MDN.svg",
      title: "Secure contexts",
      zhTitle: "安全上下文",
      enUrl:
          "https://developer.mozilla.org/en-US/docs/Web/Security/Secure_Contexts",
      zhUrl:
          "https://developer.mozilla.org/zh-CN/docs/Web/Security/Secure_Contexts",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MDN.svg",
      title: "Types of attacks",
      zhTitle: "攻击类型",
      enUrl:
          "https://developer.mozilla.org/en-US/docs/Web/Security/Types_of_attacks",
      zhUrl:
          "https://developer.mozilla.org/zh-CN/docs/Web/Security/Types_of_attacks",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Kotlin.svg",
      title: "Kotlin",
      enUrl: "https://kotlinlang.org/docs/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Kotlin.svg",
      title: "KSP API",
      enUrl: "https://kotlinlang.org/docs/ksp-quickstart.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Kotlin.svg",
      title: "KSP with KMP",
      enUrl: "https://kotlinlang.org/docs/ksp-multiplatform.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Kotlin.svg",
      title: "kotlinx-io",
      enUrl:
          "https://github.com/Kotlin/kotlinx-io?tab=readme-ov-file#using-in-your-projects",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Liam_ERD.svg",
      title: "Liam ERD",
      enUrl: "https://liambx.com/docs#how-to-get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/kRPC.svg",
      title: "kRPC",
      enUrl: "https://kotlin.github.io/kotlinx-rpc/get-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/KotlinMultiplatform.svg",
      title: "Kotlin Multiplatform",
      enUrl:
          "https://www.jetbrains.com/help/kotlin-multiplatform-dev/quickstart.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/KotlinMultiplatform.svg",
      title: "KMP Wizard",
      enUrl:
          "https://kmp.jetbrains.com/?android=true&ios=true&iosui=compose&desktop=true&web=true&server=true&includeTests=true",
      zhUrl:
          "https://kmp.jetbrains.com/zh-cn/?android=true&ios=true&iosui=compose&desktop=true&web=true&server=true&includeTests=true",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Kuikly.svg",
      title: "Kuikly",
      enUrl:
          "https://github.com/Tencent-TDS/KuiklyUI?tab=readme-ov-file#getting-started",
      zhUrl:
          "https://kuikly.tds.qq.com/%E5%BF%AB%E9%80%9F%E5%BC%80%E5%A7%8B/env-setup.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ReactNative.svg",
      title: "React Native",
      enUrl: "https://reactnative.dev/docs/environment-setup",
      zhUrl: "https://reactnative.cn/docs/environment-setup",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FluentUI.svg",
      title: "FluentUI React Native",
      enUrl:
          "https://github.com/microsoft/fluentui-react-native?tab=readme-ov-file#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Expo.svg",
      title: "Expo",
      enUrl: "https://docs.expo.dev/get-started/create-a-project",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Vue.svg",
      title: "VueJS",
      enUrl: "https://vuejs.org/guide/quick-start.html",
      zhUrl: "https://cn.vuejs.org/guide/quick-start.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Python.svg",
      title: "Python",
      enUrl: "https://docs.python.org/3/tutorial/index.html",
      zhUrl: "https://docs.python.org/zh-cn/3/tutorial/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "PyO3",
      enUrl: "https://pyo3.rs/latest/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "numpy",
      enUrl: "https://docs.rs/numpy/latest/numpy",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bincode.svg",
      title: "Bincode",
      enUrl: "https://docs.rs/bincode/latest/bincode/#example",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Slang.svg",
      title: "Slang",
      enUrl:
          "https://docs.shader-slang.org/en/latest/external/slang/docs/user-guide/01-get-started.html#getting-started-with-slang",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Slang.svg",
      title: "Slang Playground",
      zhTitle: "Slang 演练场",
      enUrl: "https://shader-slang.org/slang-playground",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "rustix",
      enUrl:
          "https://github.com/bytecodealliance/rustix?tab=readme-ov-file#rustix",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Ferrules",
      enUrl:
          "https://github.com/AmineDiro/ferrules?tab=readme-ov-file#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ONNXRuntime.svg",
      title: "ONNX Runtime",
      enUrl: "https://onnxruntime.ai/docs/get-started/with-c.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "ort",
      enUrl: "https://ort.pyke.io",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Miri",
      enUrl: "https://github.com/rust-lang/miri?tab=readme-ov-file#using-miri",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ray.svg",
      title: "Ray Core",
      enUrl:
          "https://docs.ray.io/en/latest/ray-core/walkthrough.html#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Dart.svg",
      title: "Dart",
      enUrl: "https://dart.dev/language",
      zhUrl: "https://dart.cn/language",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Dart.svg",
      title: "Cap'n Proto for Dart",
      enUrl: "https://pub.dev/packages/capnproto/example",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Dart.svg",
      title: "DartPad",
      enUrl: "https://dartpad.dev",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Flutter.svg",
      title: "Liquid Glass Renderer",
      enUrl:
          "https://github.com/whynotmake-it/flutter_liquid_glass/tree/main/packages/liquid_glass_renderer#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/InAppWebView.svg",
      title: "InAppWebView",
      enUrl: "https://inappwebview.dev/docs/intro#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/appwrite.svg",
      title: "appwrite",
      enUrl: "https://appwrite.io/docs/quick-starts/kotlin",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Isar.svg",
      title: "Isar",
      enUrl: "https://isar.dev/tutorials/quickstart.html",
      zhUrl: "https://isar.dev/zh/tutorials/quickstart.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rive.svg",
      title: "Rive",
      enUrl: "https://rive.app/docs/runtimes/flutter/flutter#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Riverpod.svg",
      title: "Riverpod",
      enUrl: "https://riverpod.dev/docs/introduction/getting_started",
      zhUrl: "https://riverpod.dev/zh-hans/docs/introduction/getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/RevyOS.svg",
      title: "RevyOS",
      enUrl: "https://docs.revyos.dev/en/docs/desktop/revyos-use-docker",
      zhUrl: "https://docs.revyos.dev/docs/desktop/revyos-use-docker",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Google.svg",
      title: "MediaPipe",
      enUrl:
          "https://ai.google.dev/edge/mediapipe/solutions/guide?hl=en#get_started",
      zhUrl:
          "https://ai.google.dev/edge/mediapipe/solutions/guide?hl=zh-cn#get_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Passkeys.svg",
      title: "Passkeys",
      enUrl: "https://passkeys.dev/docs/intro/what-are-passkeys",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WebAuthn.svg",
      title: "WebAuthn",
      enUrl: "https://webauthn.guide/#about-webauthn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Dart.svg",
      title: "dio",
      enUrl: "https://pub.dev/packages/dio#get-started",
      zhUrl:
          "https://github.com/cfug/dio/blob/main/dio/README-ZH.md#%E5%BC%80%E5%A7%8B%E4%BD%BF%E7%94%A8",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Dart.svg",
      title: "http",
      enUrl: "https://pub.dev/packages/http#using",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Dart.svg",
      title: "Dart DevTools",
      zhTitle: "Dart 开发者工具",
      enUrl: "https://dart.dev/tools/dart-devtools",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Java.svg",
      title: "Java",
      enUrl: "https://dev.java/learn/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JBang.svg",
      title: "JBang",
      enUrl: "https://www.jbang.dev/documentation/guide/latest/usage.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Xamarin.svg",
      title: "Xamarin",
      enUrl:
          "https://learn.microsoft.com/en-us/previous-versions/xamarin/get-started/quickstarts/app",
      zhUrl:
          "https://learn.microsoft.com/zh-cn/previous-versions/xamarin/get-started/quickstarts/app",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Kubernetes.svg",
      title: "Kubernetes",
      enUrl: "https://kubernetes.io/docs/setup",
      zhUrl: "https://kubernetes.io/zh-cn/docs/setup",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/kind.svg",
      title: "kind",
      enUrl: "https://kind.sigs.k8s.io/docs/user/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TypeScript.svg",
      title: "TypeScript",
      enUrl:
          "https://www.typescriptlang.org/docs/handbook/typescript-from-scratch.html",
      zhUrl:
          "https://www.typescriptlang.org/zh/docs/handbook/typescript-from-scratch.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TSDoc.svg",
      title: "TSDoc",
      enUrl: "https://tsdoc.org/pages/spec/tag_kinds",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TypeScript.svg",
      title: "JSDoc",
      enUrl:
          "https://www.typescriptlang.org/docs/handbook/jsdoc-supported-types.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JenkinsCI.svg",
      title: "Jenkins",
      enUrl: "https://www.jenkins.io/doc/pipeline/tour/getting-started",
      zhUrl: "https://www.jenkins.io/zh/doc/pipeline/tour/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MCP.svg",
      title: "MCP Java",
      enUrl: "https://modelcontextprotocol.io/sdk/java/mcp-overview",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MCP.svg",
      title: "MCP Kotlin",
      enUrl:
          "https://github.com/modelcontextprotocol/kotlin-sdk?tab=readme-ov-file#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MCP.svg",
      title: "MCP TypeScript",
      enUrl:
          "https://github.com/modelcontextprotocol/typescript-sdk?tab=readme-ov-file#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MCP.svg",
      title: "Open MCP",
      enUrl: "https://www.open-mcp.org/servers/creating-a-server",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mem0.svg",
      title: "OpenMemory",
      enUrl: "https://docs.mem0.ai/openmemory/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/_Unity.svg",
      title: "Unity",
      enUrl:
          "https://docs.unity3d.com/2022.3/Documentation/Manual/Quickstart3D.html",
      zhUrl: "https://docs.unity.cn/cn/2022.3/Manual/Quickstart3D.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Unreal%20Engine.svg",
      title: "Unreal Engine",
      enUrl:
          "https://dev.epicgames.com/documentation/en-us/unreal-engine/understanding-the-basics-of-unreal-engine",
      zhUrl:
          "https://dev.epicgames.com/documentation/zh-cn/unreal-engine/understanding-the-basics-of-unreal-engine",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/China%20Mobile.svg",
      title: "Mobile Open Platform",
      zhTitle: "中移开放平台",
      zhUrl: "https://dev.10086.cn/docInside?contentId=10000009826739",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ThreeJS.svg",
      title: "ThreeJS",
      enUrl: "https://threejs.org/manual/#en/installation",
      zhUrl: "https://threejs.org/manual/#zh/fundamentals",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Deno.svg",
      title: "Deno",
      enUrl: "https://docs.deno.com/runtime",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NodeJS.svg",
      title: "NodeJS",
      enUrl:
          "https://nodejs.org/en/learn/getting-started/introduction-to-nodejs",
      zhUrl:
          "https://nodejs.org/zh-cn/learn/getting-started/introduction-to-nodejs",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/PyTorch.svg",
      title: "PyTorch",
      enUrl: "https://pytorch.org/get-started/locally",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/PyTorch.svg",
      title: "Torch-TensorRT",
      enUrl:
          "https://docs.pytorch.org/TensorRT/getting_started/quick_start.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/PyTorch.svg",
      title: "TensorRT through ONNX",
      enUrl:
          "https://github.com/NVIDIA/TensorRT/blob/release/10.12/quickstart/IntroNotebooks/2.%20Using%20PyTorch%20through%20ONNX.ipynb",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/dotNET.svg",
      title: "dotNET",
      enUrl:
          "https://learn.microsoft.com/en-us/dotnet/core/tutorials/with-visual-studio-code",
      zhUrl:
          "https://learn.microsoft.com/zh-cn/dotnet/core/tutorials/with-visual-studio-code",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Avalonia.svg",
      title: "Avalonia",
      enUrl:
          "https://docs.avaloniaui.net/docs/get-started/test-drive/create-a-project",
      zhUrl:
          "https://docs.avaloniaui.net/zh-Hans/docs/get-started/test-drive/create-a-project",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/dotNET.svg",
      title: "dotNET MAUI",
      enUrl:
          "https://learn.microsoft.com/en-us/dotnet/maui/get-started/installation?view=net-maui-9.0&tabs=visual-studio-code",
      zhUrl:
          "https://learn.microsoft.com/zh-cn/dotnet/maui/get-started/installation?view=net-maui-9.0&tabs=visual-studio-code",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Docker.svg",
      title: "Docker",
      enUrl: "https://docs.docker.com",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TensorFlow.svg",
      title: "TensorFlow",
      enUrl: "https://tensorflow.org/tutorials/quickstart/beginner?hl=en",
      zhUrl:
          "https://tensorflow.google.cn/tutorials/quickstart/beginner?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Django.svg",
      title: "Django",
      enUrl: "https://docs.djangoproject.com/en/5.2/intro/tutorial01",
      zhUrl: "https://docs.djangoproject.com/zh-hans/5.2/intro/tutorial01",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenCV.svg",
      title: "OpenCV",
      enUrl: "https://opencv.org/get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apache%20Hadoop.svg",
      title: "Hadoop",
      enUrl:
          "https://hadoop.apache.org/docs/current/hadoop-project-dist/hadoop-common/SingleCluster.html",
      zhUrl: "https://hadoop.apache.org/docs/r1.0.4/cn/quickstart.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Flink.svg",
      title: "Flink",
      enUrl:
          "https://nightlies.apache.org/flink/flink-docs-release-1.20/docs/learn-flink/overview",
      zhUrl:
          "https://nightlies.apache.org/flink/flink-docs-release-1.20/zh/docs/learn-flink/overview",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/_Markdown.svg",
      title: "Markdown",
      enUrl: "https://www.markdownguide.org/getting-started",
      zhUrl: "https://www.markdown.xyz/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Quarkdown.svg",
      title: "Quarkdown",
      enUrl:
          "https://github.com/iamgio/quarkdown?tab=readme-ov-file#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Valkyrie.svg",
      title: "Valkyrie CLI",
      enUrl:
          "https://github.com/ComposeGears/Valkyrie?tab=readme-ov-file#cli-tool",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Linux.svg",
      title: "Linux",
      enUrl: "https://www.kernel.org/doc/html/latest/index.html",
      zhUrl: "https://www.kernel.org/doc/html/latest/translations/zh_CN",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Linux.svg",
      title: "Linux XZ",
      enUrl: "https://www.kernel.org/doc/html/latest/staging/xz.html",
      zhUrl:
          "https://www.kernel.org/doc/html/latest/translations/zh_CN/staging/xz.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LinuxBoot.svg",
      title: "LinuxBoot",
      enUrl: "https://www.linuxboot.org",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Linux%20Foundation.svg",
      title: "LF Projects",
      zhTitle: "Linux 基金会开源项目",
      enUrl: "https://www.linuxfoundation.org/projects",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GoLang.svg",
      title: "Go",
      enUrl: "https://go.dev/doc/tutorial/getting-started",
      zhUrl: "https://golang.google.cn/doc/tutorial/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust",
      enUrl: "https://www.rust-lang.org/learn/get-started",
      zhUrl: "https://www.rust-lang.org/zh-CN/learn/get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/rustacean-flat-happy.svg",
      title: "Rustlings",
      enUrl: "https://rustlings.rust-lang.org/setup",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust Playground",
      zhTitle: "Rust 演练场",
      enUrl:
          "https://play.rust-lang.org/?version=stable&mode=debug&edition=2024",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust Lang",
      zhTitle: "Rust 语言",
      enUrl: "https://doc.rust-lang.org/book/ch01-01-installation.html",
      zhUrl: "https://kaisery.github.io/trpl-zh-cn/ch01-01-installation.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust Edition Guide",
      zhTitle: "Rust 版次指南",
      enUrl:
          "https://doc.rust-lang.org/edition-guide/editions/creating-a-new-project.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust by Example",
      zhTitle: "通过例子学 Rust",
      enUrl: "https://doc.rust-lang.org/rust-by-example",
      zhUrl: "https://rustwiki.org/zh-CN/rust-by-example",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Clippy",
      enUrl: "https://doc.rust-lang.org/clippy/installation.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Learning Rust",
      zhTitle: "学习 Rust",
      enUrl: "https://learning-rust.github.io/docs/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust Project Goals",
      enUrl: "https://rust-lang.github.io/rust-project-goals",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust MIR",
      enUrl: "https://rustc-dev-guide.rust-lang.org/mir",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust HIR",
      enUrl: "https://rustc-dev-guide.rust-lang.org/hir.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Crubit",
      enUrl:
          "https://github.com/google/crubit?tab=readme-ov-file#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Corrosion",
      enUrl: "https://corrosion-rs.github.io/corrosion/v0.5/quick_start.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "cc",
      enUrl: "https://docs.rs/cc/latest/cc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "libc",
      enUrl: "https://docs.rs/libc/latest/libc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "CXX",
      enUrl: "https://cxx.rs",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "bindgen",
      enUrl: "https://rust-lang.github.io/rust-bindgen",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust Core Library",
      zhTitle: "Rust 核心库",
      enUrl: "https://doc.rust-lang.org/core/index.html#the-rust-core-library",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust Standard Library",
      zhTitle: "Rust 标准库",
      enUrl: "https://doc.rust-lang.org/std/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "rustc",
      zhTitle: "Rust 编译器",
      enUrl: "https://doc.rust-lang.org/rustc/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust error codes",
      zhTitle: "Rust 错误码",
      enUrl: "https://doc.rust-lang.org/error_codes/error-index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/uv.svg",
      title: "uv",
      enUrl: "https://docs.astral.sh/uv/getting-started/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/iced.svg",
      title: "iced",
      enUrl: "https://book.iced.rs/first-steps.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/gVisor.svg",
      title: "gVisor",
      enUrl: "https://gvisor.dev/docs/user_guide/install",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Chromium.svg",
      title: "Chromium",
      enUrl:
          "https://chromium.googlesource.com/chromium/src/+/refs/heads/main/docs/README.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Windows_11.svg",
      title: "Rust for Windows",
      enUrl: "https://microsoft.github.io/windows-docs-rs/doc/windows",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust-for-Linux.svg",
      title: "Rust for Linux",
      enUrl: "https://docs.kernel.org/rust/quick-start.html",
      zhUrl: "https://docs.kernel.org/translations/zh_CN/rust/quick-start.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Windows_Terminal.svg",
      title: "Windows Terminal",
      zhTitle: "Windows 终端",
      enUrl: "https://learn.microsoft.com/en-us/windows/terminal",
      zhUrl: "https://learn.microsoft.com/zh-cn/windows/terminal",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Angular.svg",
      title: "Angular",
      enUrl:
          "https://angular.dev/tutorials/learn-angular/1-components-in-angular",
      zhUrl:
          "https://angular.cn/tutorials/learn-angular/1-components-in-angular",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OctoTools.svg",
      title: "OctoTools",
      enUrl:
          "https://github.com/octotools/octotools?tab=readme-ov-file#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apache%20Dubbo.svg",
      title: "Dubbo",
      enUrl:
          "https://cn.dubbo.apache.org/en/overview/mannual/java-sdk/quick-start/starter",
      zhUrl:
          "https://cn.dubbo.apache.org/zh-cn/overview/mannual/java-sdk/quick-start/starter",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "Microsoft SQL",
      enUrl: "https://learn.microsoft.com/en-us/sql",
      zhUrl: "https://docs.microsoft.com/zh-cn/sql",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "MSFT Open Projects",
      zhTitle: "微软开源项目",
      enUrl: "https://opensource.microsoft.com/projects",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Webpack.svg",
      title: "webpack",
      enUrl: "https://webpack.js.org/guides/getting-started",
      zhUrl: "https://webpack.docschina.org/guides/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bonjour.svg",
      title: "Bonjour",
      enUrl:
          "https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/NetServices/Introduction.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Let's%20Encrypt.svg",
      title: "Let's Encrypt",
      enUrl: "https://letsencrypt.org/getting-started",
      zhUrl: "https://letsencrypt.org/zh-cn/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Certbot.svg",
      title: "Certbot Commands",
      zhTitle: "Certbot 命令",
      enUrl:
          "https://eff-certbot.readthedocs.io/en/stable/using.html#certbot-commands",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bootstrap.svg",
      title: "Bootstrap",
      enUrl:
          "https://getbootstrap.com/docs/5.3/getting-started/introduction/#quick-start",
      zhUrl:
          "https://v5.bootcss.com/docs/getting-started/introduction/#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "OmniParser",
      enUrl:
          "https://github.com/microsoft/OmniParser?tab=readme-ov-file#install",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "Universal CRT",
      zhTitle: "通用 CRT",
      enUrl:
          "https://learn.microsoft.com/en-us/cpp/windows/universal-crt-deployment?view=msvc-170",
      zhUrl:
          "https://learn.microsoft.com/zh-cn/cpp/windows/universal-crt-deployment?view=msvc-170",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Colossal-AI.svg",
      title: "Colossal-AI",
      enUrl: "https://colossalai.org/docs/get_started/installation",
      zhUrl: "https://colossalai.org/zh-Hans/docs/get_started/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/PHP.svg",
      title: "PHP",
      enUrl: "https://www.php.net/manual/en/tutorial.firstpage.php",
      zhUrl: "https://www.php.net/manual/zh/tutorial.firstpage.php",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Termux.svg",
      title: "Termux",
      enUrl: "https://wiki.termux.com/wiki/Getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ruby.svg",
      title: "Ruby",
      enUrl: "https://www.ruby-lang.org/en/documentation/quickstart",
      zhUrl: "https://www.ruby-lang.org/zh_cn/documentation/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Qwen.svg",
      title: "Qwen Wan",
      enUrl:
          "https://github.com/Wan-Video/Wan2.1?tab=readme-ov-file#quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Qwen.svg",
      title: "Qwen",
      zhTitle: "通义千问",
      enUrl:
          "https://qwen.readthedocs.io/en/latest/getting_started/quickstart.html",
      zhUrl:
          "https://qwen.readthedocs.io/zh-cn/latest/getting_started/quickstart.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Qwen.svg",
      title: "Qwen3-Coder",
      enUrl:
          "https://github.com/QwenLM/Qwen3-Coder?tab=readme-ov-file#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BentoML.svg",
      title: "BentoML",
      enUrl: "https://docs.bentoml.com/en/latest/get-started/hello-world.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/_Electron.svg",
      title: "Electron",
      enUrl:
          "https://www.electronjs.org/docs/latest/tutorial/tutorial-first-app",
      zhUrl:
          "https://www.electronjs.org/zh/docs/latest/tutorial/tutorial-first-app",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JavaScript.svg",
      title: "JavaScript",
      enUrl: "https://developer.mozilla.org/en-US/docs/Web/JavaScript",
      zhUrl: "https://developer.mozilla.org/zh-CN/docs/Web/JavaScript",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GraphQL.svg",
      title: "GraphQL",
      enUrl: "https://graphql.org/learn",
      zhUrl: "https://graphql.cn/learn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZIG.svg",
      title: "ZIG Guide",
      zhTitle: "ZIG 指引",
      enUrl: "https://zig.guide/getting-started/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZIG.svg",
      title: "ZIG",
      enUrl: "https://ziglang.org/learn/getting-started",
      zhUrl: "https://ziglang.org/zh-CN/learn/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZIG.svg",
      title: "Zigtools",
      enUrl: "https://zigtools.org",
      zhUrl: "#",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZLS.svg",
      title: "ZLS",
      zhTitle: "Zig 语言服务协议",
      enUrl: "https://zigtools.org/zls/install",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZLS.svg",
      title: "Zig LSP Kit",
      zhTitle: "Zig 语言服务协议套件",
      enUrl:
          "https://github.com/zigtools/lsp-kit?tab=readme-ov-file#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZLS.svg",
      title: "Zig Playground",
      zhTitle: "Zig 演练场",
      enUrl: "https://playground.zigtools.org",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/The%20C%20Programming%20Language.svg",
      title: "Visual C",
      enUrl:
          "https://learn.microsoft.com/en-us/cpp/build/walkthrough-compile-a-c-program-on-the-command-line?view=msvc-170",
      zhUrl:
          "https://learn.microsoft.com/zh-cn/cpp/build/walkthrough-compile-a-c-program-on-the-command-line?view=msvc-170",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/C%2B%2B.svg",
      title: "Visual C++",
      enUrl:
          "https://learn.microsoft.com/en-us/cpp/build/vscpp-step-1-create?view=msvc-170",
      zhUrl:
          "https://learn.microsoft.com/zh-cn/cpp/build/vscpp-step-1-create?view=msvc-170",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/C%2B%2B.svg",
      title: "C++/WinRT",
      enUrl:
          "https://learn.microsoft.com/en-us/windows/uwp/cpp-and-winrt-apis/get-started?view=msvc-170#a-cwinrt-quick-start",
      zhUrl:
          "https://learn.microsoft.com/zh-cn/windows/uwp/cpp-and-winrt-apis/get-started?view=msvc-170#a-cwinrt-quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/C%2B%2B.svg",
      title: "ISO C++",
      enUrl: "https://isocpp.org/get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Qt.svg",
      title: "Qt Widgets",
      enUrl: "https://doc.qt.io/qt-6/widgets-getting-started.html",
      zhUrl: "https://doc.qt.io/qt-6/zh/widgets-getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TOML.svg",
      title: "TOML",
      enUrl: "https://toml.io/en",
      zhUrl: "https://toml.io/cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Tombi.svg",
      title: "Tombi",
      enUrl: "https://tombi-toml.github.io/tombi/docs/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Swift.svg",
      zhImgUrl: "/SwiftGG.svg",
      title: "Swift",
      zhTitle: "SwiftGG",
      enUrl:
          "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour",
      zhUrl:
          "https://doc.swiftgg.team/documentation/the-swift-programming-language/guidedtour",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Swift.svg",
      title: "SwiftUI",
      enUrl:
          "https://developer.apple.com/tutorials/swiftui-concepts/exploring-the-structure-of-a-swiftui-app",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SKIP.tools.svg",
      title: "SKIP.tools",
      enUrl: "https://skip.tools/docs/gettingstarted",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MetaMask.svg",
      title: "Meta Mask",
      enUrl: "https://docs.metamask.io/sdk/quickstart/javascript-wagmi",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Vapor.svg",
      title: "Vapor",
      enUrl: "https://docs.vapor.codes/getting-started/hello-world",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenUSD.svg",
      title: "Open USD",
      enUrl: "https://openusd.org/release/tut_helloworld.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Swift.svg",
      title: "SIL",
      enUrl: "https://github.com/swiftlang/swift/blob/main/docs/SIL/SIL.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Swift.svg",
      title: "SwiftPM",
      enUrl: "https://www.swift.org/getting-started/cli-swiftpm",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Swift.svg",
      title: "Swift for TensorFlow",
      enUrl:
          "https://github.com/tensorflow/swift/blob/main/README.md#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Elixir.svg",
      title: "Elixir",
      enUrl: "https://hexdocs.pm/elixir/introduction.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bun.svg",
      title: "Bun",
      enUrl: "https://bun.sh/docs/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/H3.svg",
      title: "H3",
      enUrl: "https://h3.dev/guide#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apple.svg",
      title: "Apple Developer",
      zhTitle: "苹果开发者",
      enUrl: "https://developer.apple.com/documentation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apple.svg",
      title: "Apple Open Projects",
      zhTitle: "苹果开源项目",
      enUrl: "https://opensource.apple.com/projects",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apple.svg",
      title: "Objective-C Runtime",
      zhTitle: "Objective-C 运行时",
      enUrl: "https://developer.apple.com/documentation/objectivec",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apple.svg",
      title: "FastVLM",
      enUrl:
          "https://github.com/apple/ml-fastvlm?tab=readme-ov-file#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WebAssembly.svg",
      title: "WebAssembly",
      enUrl: "https://webassembly.org/getting-started/developers-guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WebAssembly.svg",
      title: "WAMR",
      enUrl: "https://wamr.gitbook.io/document/basics/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BytecodeAlliance.svg",
      title: "wasm-tools",
      enUrl:
          "https://github.com/bytecodealliance/wasm-tools?tab=readme-ov-file#wasm-tools",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Slint.svg",
      title: "Slint",
      enUrl:
          "https://docs.slint.dev/latest/docs/slint/tutorial/getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Java.svg",
      title: "TeaVM",
      enUrl: "https://teavm.org/docs/intro/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Google.svg",
      title: "J2CL/Wasm",
      enUrl:
          "https://github.com/google/j2cl/blob/master/docs/getting-started-j2wasm.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Google.svg",
      title: "Gemini CLI",
      enUrl:
          "https://github.com/google-gemini/gemini-cli?tab=readme-ov-file#quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/A2A.svg",
      title: "Agent2Agent",
      enUrl: "https://a2a-protocol.org/latest/topics/what-is-a2a/#what-is-a2a",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MDN.svg",
      title: "SSE",
      zhTitle: "服务器发送事件",
      enUrl:
          "https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events",
      zhUrl:
          "https://developer.mozilla.org/zh-CN/docs/Web/API/Server-sent_events/Using_server-sent_events",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Brotli.svg",
      title: "Brotli",
      enUrl: "https://github.com/google/brotli?tab=readme-ov-file#introduction",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CVE.svg",
      title: "CVE List V5",
      enUrl:
          "https://github.com/CVEProject/cvelistV5?tab=readme-ov-file#cve-list-v5",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CodeCrafters.svg",
      title: "CodeCrafters",
      enUrl: "https://app.codecrafters.io/catalog",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Devin.svg",
      title: "DeepWiki",
      enUrl: "https://deepwiki.com",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Hyprland.svg",
      title: "Hyprland",
      enUrl: "https://wiki.hypr.land/Getting-Started/Installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Lean.svg",
      title: "Lean",
      enUrl:
          "https://lean-lang.org/functional_programming_in_lean/Hello___-World___/Running-a-Program/#running-a-program",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Google.svg",
      title: "ANGLE",
      enUrl: "https://chromium.googlesource.com/angle/angle/+/main/README.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GoogleTranslate.svg",
      title: "Google Translate",
      zhTitle: "谷歌翻译",
      enUrl: "https://translate.google.com/?hl=en&sl=en&tl=zh-CN&op=translate",
      zhUrl:
          "https://translate.google.com.hk/?hl=zh-CN&sourceid=cnhp&sl=zh-CN&tl=en&op=translate",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ReactJS.svg",
      title: "ReactJS",
      enUrl: "https://react.dev/learn",
      zhUrl: "https://zh-hans.react.dev/learn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ReactJS.svg",
      title: "Liquid Glass React",
      enUrl:
          "https://github.com/rdev/liquid-glass-react?tab=readme-ov-file#-usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/reactbits.svg",
      title: "React Bits",
      enUrl: "https://www.reactbits.dev/get-started/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ContainerSSH.svg",
      title: "ContainerSSH",
      enUrl: "https://containerssh.io/v0.5/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HMOS.svg",
      title: "HarmonyOS NEXT",
      zhTitle: "鸿蒙 NEXT",
      enUrl:
          "https://developer.huawei.com/consumer/en/doc/harmonyos-guides/start-with-ets-stage",
      zhUrl:
          "https://developer.huawei.com/consumer/cn/doc/harmonyos-guides/start-with-ets-stage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Coder.svg",
      title: "Coder",
      enUrl: "https://coder.com/docs/tutorials/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cangjie.svg",
      title: "Cangjie",
      zhTitle: "仓颉",
      enUrl:
          "https://cangjie-lang.cn/en/docs?url=%2F0.53.13%2Fuser_manual%2Fsource_en%2Ffirst_understanding%2Fbasic.html",
      zhUrl:
          "https://cangjie-lang.cn/docs?url=%2F1.0.0%2Fuser_manual%2Fsource_zh_cn%2Ffirst_understanding%2Fbasic.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TAURI.svg",
      title: "TAURI",
      enUrl: "https://tauri.app/start",
      zhUrl: "https://tauri.app/zh-cn/start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Nginx.svg",
      title: "Nginx",
      enUrl: "https://nginx.org/en/docs/beginners_guide.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/git-scm.svg",
      title: "Git SCM",
      zhTitle: "Git 源代码管理工具",
      enUrl: "https://git-scm.com/docs/git",
      zhUrl: "https://git-scm.com/docs/git/zh_HANS-CN",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitButler.svg",
      title: "GitButler",
      enUrl: "https://docs.gitbutler.com/guide",
    ),
  );
  itemList.add(Item(
    imgUrl: "/Meyou.svg",
    title: "libgit2",
    enUrl: "https://libgit2.org/docs/reference/main",
  ));
  itemList.add(Item(
    imgUrl: "/Rerun.svg",
    title: "Rerun",
    enUrl: "https://rerun.io/docs/getting-started/quick-start/rust",
  ));
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "git2-rs",
      enUrl: "https://docs.rs/git2/latest/git2",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "vk-video",
      enUrl:
          "https://github.com/software-mansion/smelter/tree/master/vk-video#usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Meyou.svg",
      title: "Veryl",
      enUrl:
          "https://doc.veryl-lang.org/book/03_getting_started/01_installation.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Meyou.svg",
      title: "Nature",
      enUrl: "https://nature-lang.org/docs/get-started",
      zhUrl: "https://nature-lang.cn/docs/get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "capnpc",
      enUrl: "https://docs.rs/capnpc/latest/capnpc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Cap’n Proto RTLib",
      zhTitle: "Cap’n Proto 运行库",
      enUrl: "https://docs.rs/capnp/latest/capnp/#capn-proto-runtime-library",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "GitHub Actions",
      enUrl: "https://docs.github.com/en/actions/writing-workflows/quickstart",
      zhUrl: "https://docs.github.com/zh/actions/writing-workflows/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "easyWSL",
      enUrl:
          "https://github.com/redcode-labs/easyWSL?tab=readme-ov-file#-easywsl",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "Track Weight",
      enUrl:
          "https://github.com/KrishKrosh/TrackWeight?tab=readme-ov-file#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "Semantic Versioning",
      zhTitle: "语义化版本",
      enUrl: "https://semver.org",
      zhUrl: "https://semver.org/lang/zh-CN",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "Conventional Commits",
      zhTitle: "约定式提交",
      enUrl: "https://www.conventionalcommits.org/en/v1.0.0/#summary",
      zhUrl:
          "https://www.conventionalcommits.org/zh-hans/v1.0.0/#%e7%ba%a6%e5%ae%9a%e5%bc%8f%e6%8f%90%e4%ba%a4%e8%a7%84%e8%8c%83",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "Typeinc",
      enUrl:
          "https://github.com/AnirudhG07/Typeinc?tab=readme-ov-file#-homebrew-installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/EasingWizard.svg",
      title: "Easing Wizard",
      enUrl: "https://easingwizard.com",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GeoGebra_Graphing.svg",
      title: "GeoGebra Graphing",
      enUrl: "https://www.geogebra.org/graphing",
      zhUrl: "https://www.geogebra.org/graphing",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Orillusion.svg",
      title: "Orillusion",
      enUrl: "https://www.orillusion.com/en/guide/getting_start/install.html",
      zhUrl: "https://www.orillusion.com/guide/getting_start/install.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "GitHub Packages",
      enUrl: "https://docs.github.com/en/packages/quickstart",
      zhUrl: "https://docs.github.com/zh/packages/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "GitHub REST API",
      enUrl: "https://docs.github.com/en/rest/quickstart?apiVersion=2022-11-28",
      zhUrl: "https://docs.github.com/zh/rest/quickstart?apiVersion=2022-11-28",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "Actions Runner Images",
      enUrl:
          "https://github.com/actions/runner-images/blob/main/docs/create-image-and-azure-resources.md#github-actions-runner-images",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "gh-card",
      enUrl: "https://gh-card.dev",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CodeConvert.svg",
      title: "CodeConvert",
      enUrl: "https://www.codeconvert.ai/free-converter",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/freeCodeCamp.svg",
      title: "freeCodeCamp",
      enUrl: "https://www.freecodecamp.org/learn",
      zhUrl: "https://www.freecodecamp.org/chinese/learn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/freeCodeCamp.svg",
      title: "freeCodeCamp DevDocs",
      enUrl: "https://devdocs.io/rust",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/996.ICU.svg",
      title: "996.ICU",
      enUrl: "https://996.icu/#/en_US",
      zhUrl: "https://996.icu/#/zh_CN",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rig.svg",
      title: "Rig",
      enUrl: "https://docs.rig.rs/docs/quickstart/getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Packer.svg",
      title: "Packer",
      enUrl:
          "https://developer.hashicorp.com/packer/tutorials/docker-get-started/get-started-install-cli",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "GitHub CLI",
      enUrl: "https://docs.github.com/en/github-cli/github-cli/quickstart",
      zhUrl: "https://docs.github.com/zh/github-cli/github-cli/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "GitHub Codespaces",
      enUrl: "https://docs.github.com/en/codespaces/quickstart",
      zhUrl: "https://docs.github.com/zh/codespaces/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "GitHub Desktop",
      enUrl:
          "https://docs.github.com/en/desktop/overview/getting-started-with-github-desktop",
      zhUrl:
          "https://docs.github.com/zh/desktop/overview/getting-started-with-github-desktop",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitLab.svg",
      title: "GitLab CI/CD",
      enUrl: "https://docs.gitlab.com/ci",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitLab.svg",
      title: "GitLab REST API",
      enUrl: "https://docs.gitlab.com/api/rest",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitLab.svg",
      title: "GitLab CLI",
      enUrl: "https://docs.gitlab.com/editor_extensions/gitlab_cli",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/VS Code.svg",
      title: "Visual Studio Code",
      enUrl: "https://code.visualstudio.com/docs/getstarted/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/VS Code.svg",
      title: "VS Code Extension",
      zhTitle: "VS Code 拓展",
      enUrl:
          "https://code.visualstudio.com/api/get-started/your-first-extension",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/VS Code.svg",
      title: "VS Code API",
      enUrl: "https://code.visualstudio.com/api/references/vscode-api",
    ),
  );
  itemList.add(
    Item(
        imgUrl: "/VS Code.svg",
        title: "VS Code Dev",
        enUrl: "https://vscode.dev",
        zhUrl: "https://vscode.dev/?vscode-lang=zh-cn"),
  );
  itemList.add(
    Item(
      imgUrl: "/IntelliJ_Platform_Plugin.svg",
      title: "IntelliJ Plugins",
      zhTitle: "IntelliJ 插件",
      enUrl:
          "https://plugins.jetbrains.com/docs/intellij/creating-plugin-project.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GIMP.svg",
      title: "GIMP",
      enUrl: "https://www.gimp.org/tutorials/GIMP_Quickies",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust CUDA",
      enUrl:
          "https://github.com/Rust-GPU/Rust-CUDA/blob/main/guide/src/guide/getting_started.md#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "vy",
      enUrl: "https://github.com/jonahlund/vy?tab=readme-ov-file#usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "rusotp",
      enUrl: "https://eendroroy.github.io/rusotp",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Plotlars",
      enUrl: "https://github.com/alceal/plotlars?tab=readme-ov-file#motivation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust GPU",
      enUrl: "https://rust-gpu.github.io",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "empiriqa",
      enUrl: "https://github.com/ynqa/empiriqa?tab=readme-ov-file#usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/__CodeOSS.svg",
      title: "Code OSS",
      enUrl: "https://github.com/LcJuves/vscode/wiki/How-to-Contribute",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/__CodeOSS.svg",
      title: "Monaco Editor",
      enUrl: "https://microsoft.github.io/monaco-editor",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mermaid.svg",
      title: "Mermaid Live Editor",
      enUrl:
          "https://mermaid.live/edit#pako:eNpVjkFrwzAMhf-K0GmD5g_kMFiTrZfCButpcQ8iUWKz2DKOTSlJ_vucdoNNJ-m97z00YysdY4n9KJdWU4hwqpWDPM9NpYOZoqXpDEXxtBw4ghXH1wX2DweBSYv3xg2Pd36_QVDNxw1jiNq4r_VuVbf8m-MF6uZIPoo__3VOF1ngpTHvOtf_d3TgnHpteip7KloKUFG4IbhDy8GS6fL786YojJotKyzz2nFPaYwKlVszSinKx9W1WMaQeIdB0qAxd45TvpLvKHJtaAhkfxFP7lPE_kDrN7nAYR4",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CMake.svg",
      title: "CMake",
      enUrl:
          "https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/PowerShell.svg",
      title: "PowerShell",
      enUrl:
          "https://learn.microsoft.com/en-us/powershell/scripting/learn/ps101/01-getting-started?view=powershell-7.5",
      zhUrl:
          "https://learn.microsoft.com/zh-cn/powershell/scripting/learn/ps101/01-getting-started?view=powershell-7.5",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "GNU",
      enUrl: "https://www.gnu.org/doc/doc.en.html",
      zhUrl: "https://www.gnu.org/doc/doc.zh-cn.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "GNU FSD",
      enUrl: "https://directory.fsf.org/wiki/Main_Page",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "GNU Parallel",
      enUrl: "https://www.gnu.org/software/parallel/parallel_tutorial.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "GNU C Library",
      enUrl: "https://www.gnu.org/software/libc/manual/html_node/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MSYS2.svg",
      title: "MSYS2",
      enUrl: "https://www.msys2.org/#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JWT.svg",
      title: "JWT",
      enUrl: "https://jwt.io/introduction",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Meyou.svg",
      title: "emscripten",
      enUrl: "https://emscripten.org/docs/getting_started/downloads.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/podman.svg",
      title: "podman",
      enUrl: "https://podman.io/docs/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/redis.svg",
      title: "Redis",
      enUrl:
          "https://redis.io/docs/latest/operate/oss_and_stack/install/install-stack/docker",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/redis.svg",
      title: "Redis Client",
      enUrl: "https://redis.io/docs/latest/develop/clients/jedis/connect",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/redis.svg",
      title: "Redis CLI",
      enUrl:
          "https://redis.io/docs/latest/develop/tools/cli/#command-line-usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/redis.svg",
      title: "Redis Commands",
      zhTitle: "Redis 命令",
      enUrl: "https://redis.io/docs/latest/commands",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Valkey.svg",
      title: "Valkey",
      enUrl: "https://valkey.io/topics/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LLVM.svg",
      title: "LLVM",
      enUrl: "https://llvm.org/docs/GettingStarted.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CIRCT.svg",
      title: "CIRCT",
      enUrl: "https://circt.llvm.org/docs/GettingStarted",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "mlir-sys",
      enUrl: "https://github.com/mlir-rs/mlir-sys",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ratatui.svg",
      title: "Ratatui",
      enUrl: "https://ratatui.rs/tutorials/hello-ratatui",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Melior",
      enUrl: "https://mlir-rs.github.io/melior/melior",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "llvm-sys",
      enUrl: "https://docs.rs/llvm-sys/latest/llvm_sys",
    ),
  );

  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "audionimbus-sys",
      enUrl: "https://docs.rs/audionimbus-sys/latest/audionimbus_sys",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LLVM.svg",
      title: "llvm-cov",
      enUrl: "https://llvm.org/docs/CommandGuide/llvm-cov.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/snowflake.svg",
      title: "snowflake",
      enUrl: "https://docs.snowflake.com/en/user-guide-getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ClickHouse.svg",
      title: "ClickHouse",
      enUrl: "https://clickhouse.com/docs/getting-started/quick-start/oss",
      zhUrl: "https://clickhouse.com/docs/zh/getting-started/quick-start/oss",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NanoID.svg",
      title: "NanoID",
      enUrl: "https://zelark.github.io/nano-id-cc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/eBPF.svg",
      title: "eBPF",
      enUrl: "https://ebpf.io/what-is-ebpf",
      zhUrl: "https://ebpf.io/zh-hans/what-is-ebpf",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SVGO.svg",
      title: "SVGO",
      enUrl: "https://svgo.dev/docs/introduction",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mermaid.svg",
      title: "Mermaid",
      enUrl: "https://mermaid.js.org/intro/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JSONCrack.svg",
      title: "JSON Crack",
      enUrl: "https://todiagram.com/editor",
    ),
  );
  itemList.add(Item(
    imgUrl: "/JSON.svg",
    title: "JSON5",
    enUrl: "https://json5.org",
  ));
  itemList.add(Item(
    imgUrl: "/JSON.svg",
    title: "JSON5 DIF/Spec",
    zhTitle: "JSON5 数据交换格式",
    enUrl: "https://spec.json5.org",
  ));
  itemList.add(
    Item(
      imgUrl: "/Datatracker.svg",
      title: "Datatracker",
      enUrl: "https://datatracker.ietf.org/doc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Datatracker.svg",
      title: "SOCKS 5",
      enUrl: "https://datatracker.ietf.org/doc/html/rfc1928",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DocsyJekyll.svg",
      title: "trojan",
      enUrl: "https://trojan-gfw.github.io/trojan/protocol",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SVG.svg",
      title: "SVG",
      zhTitle: "可缩放矢量图形",
      enUrl:
          "https://developer.mozilla.org/en-US/docs/Web/SVG#getting_started_with_svg",
      zhUrl:
          "https://developer.mozilla.org/zh-CN/docs/Web/SVG#getting_started_with_svg",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/esbuild.svg",
      title: "esbuild",
      enUrl: "https://esbuild.github.io/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Raspberrypi.svg",
      title: "Raspberry Pi",
      zhTitle: "树莓派",
      enUrl:
          "https://www.raspberrypi.com/documentation/computers/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Pug%20Template%20Engine.svg",
      title: "PugJS",
      enUrl: "https://pugjs.org/api/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Pkl.svg",
      title: "Pkl",
      enUrl: "https://pkl-lang.org/swift/current/quickstart.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Dragonfly.svg",
      title: "Dragonfly",
      enUrl: "https://www.dragonflydb.io/docs/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bevy.svg",
      title: "Bevy",
      enUrl: "https://bevyengine.org/learn/quick-start/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/godot.svg",
      title: "godot-rust",
      enUrl: "https://godot-rust.github.io/book/intro/setup.html#godot-engine",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/tokio.svg",
      title: "Tokio",
      enUrl: "https://tokio.rs/tokio/tutorial/hello-tokio",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ByteDance.svg",
      title: "Monoio",
      enUrl:
          "https://github.com/bytedance/monoio?tab=readme-ov-file#quick-start",
      zhUrl:
          "https://github.com/bytedance/monoio/blob/master/README-zh.md#%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ByteDance.svg",
      title: "ByteX",
      enUrl:
          "https://github.com/bytedance/ByteX?tab=readme-ov-file#quick-start",
      zhUrl:
          "https://github.com/bytedance/ByteX/blob/master/README_zh.md#%E5%BF%AB%E9%80%9F%E6%8E%A5%E5%85%A5",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/hyper.svg",
      title: "hyper",
      enUrl: "https://hyper.rs/guides/1/init/setup",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Diesel.svg",
      title: "Diesel",
      enUrl: "https://diesel.rs/guides/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IPFS.svg",
      title: "IPFS",
      zhTitle: "星际文件系统",
      enUrl: "https://docs.ipfs.tech/install",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/PDFJS.svg",
      title: "PDFJS",
      enUrl: "https://mozilla.github.io/pdf.js/getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SQLite.svg",
      title: "SQLite",
      enUrl: "https://www.sqlite.org/quickstart.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bytebase.svg",
      title: "Bytebase",
      enUrl: "https://docs.bytebase.com/get-started/self-host#docker",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JetpackCompose.svg",
      title: "Jetpack Compose",
      enUrl:
          "https://developer.android.com/develop/ui/compose/documentation?hl=en",
      zhUrl:
          "https://developer.android.google.cn/develop/ui/compose/documentation?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ComposeMultiplatform.svg",
      title: "Compose Multiplatform",
      enUrl:
          "https://www.jetbrains.com/help/kotlin-multiplatform-dev/compose-multiplatform-create-first-app.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CMPWizard.svg",
      title: "CMP Wizard",
      enUrl: "https://terrakok.github.io/Compose-Multiplatform-Wizard",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WebdriverIO.svg",
      title: "WebdriverIO",
      enUrl: "https://webdriver.io/docs/gettingstarted",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rspack.svg",
      title: "Rspack",
      enUrl: "https://rspack.dev/guide/start/quick-start",
      zhUrl: "https://rspack.dev/zh/guide/start/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CSS.svg",
      title: "CSS",
      zhTitle: "层叠样式表",
      enUrl: "https://developer.mozilla.org/en-US/docs/Web/CSS",
      zhUrl: "https://developer.mozilla.org/zh-CN/docs/Web/CSS",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Vite.svg",
      title: "Vite",
      enUrl: "https://vite.dev/guide",
      zhUrl: "https://cn.vite.dev/guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rollup.svg",
      title: "Rollup",
      enUrl: "https://rollupjs.org/introduction/#installation",
      zhUrl: "https://cn.rollupjs.org/introduction/#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ESLint.svg",
      title: "ESLint",
      enUrl: "https://eslint.org/docs/latest/use/getting-started",
      zhUrl: "https://zh-hans.eslint.org/docs/latest/use/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Playwright.svg",
      title: "Playwright",
      enUrl: "https://playwright.dev/docs/intro#installing-playwright",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Hexo.svg",
      title: "Hexo",
      enUrl: "https://hexo.io/docs/setup.html",
      zhUrl: "https://hexo.io/zh-cn/docs/setup",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GruntJS.svg",
      title: "GruntJS",
      enUrl: "https://gruntjs.com/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Keras.svg",
      title: "Keras",
      enUrl: "https://keras.io/getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JAX.svg",
      title: "JAX",
      enUrl: "https://jax.readthedocs.io/en/latest/quickstart.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenVINO.svg",
      title: "OpenVINO",
      enUrl: "https://docs.openvino.ai/2024/get-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Spring.svg",
      title: "Spring",
      enUrl: "https://spring.io/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Puppeteer.svg",
      title: "Puppeteer",
      enUrl: "https://pptr.dev/guides/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Wintun.svg",
      title: "Wintun",
      enUrl: "https://git.zx2c4.com/wintun/about",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NumPy.svg",
      title: "NumPy",
      enUrl:
          "https://numpy.org/doc/stable/user/quickstart.html#numpy-quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Browserless.svg",
      title: "Browserless",
      enUrl: "https://docs.browserless.io/baas/docker/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AppImage.svg",
      title: "AppImage",
      enUrl:
          "https://docs.appimage.org/introduction/quickstart.html#ref-quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Laravel.svg",
      title: "Laravel",
      enUrl: "https://laravel.com/docs/12.x#creating-a-laravel-project",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Lodash.svg",
      title: "Lodash",
      enUrl: "https://lodash.com/docs",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Subversion.svg",
      title: "Subversion",
      enUrl: "https://subversion.apache.org/quick-start#installing-the-client",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenVela.svg",
      title: "Xiaomi OpenVela",
      enUrl: "https://github.com/open-vela/docs/blob/dev/README.md",
      zhUrl: "https://github.com/open-vela/docs/blob/dev/README_zh-cn.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NuttX.svg",
      title: "NuttX",
      enUrl: "https://nuttx.apache.org/docs/latest/quickstart/install.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AzureQuantum.svg",
      title: "Azure Quantum",
      enUrl:
          "https://learn.microsoft.com/en-us/training/modules/intro-to-azure-quantum/3-what-is-azure-quantum",
      zhUrl:
          "https://learn.microsoft.com/zh-cn/training/modules/intro-to-azure-quantum/3-what-is-azure-quantum",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Meyou.svg",
      title: "OriginQ QPanda3",
      zhTitle: "本源量子 QPanda3",
      enUrl: "https://qcloud.originqc.com.cn/document/qpanda-3/index.html",
      zhUrl: "https://qcloud.originqc.com.cn/document/qpanda-3/cn/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Azure.svg",
      title: "Azure Linux",
      enUrl:
          "https://github.com/microsoft/azurelinux/blob/3.0/toolkit/docs/quick_start/quickstart.md#quick-start-guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Homebrew.svg",
      title: "Homebrew",
      enUrl: "https://docs.brew.sh/Installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "Media Types",
      zhTitle: "媒体类型",
      enUrl: "https://www.iana.org/assignments/media-types/media-types.xhtml",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "HTTP Status Codes",
      zhTitle: "HTTP 状态码",
      enUrl:
          "https://www.iana.org/assignments/http-status-codes/http-status-codes.xhtml",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "HTTP Methods",
      zhTitle: "HTTP 方法名",
      enUrl: "https://www.iana.org/assignments/http-methods/http-methods.xhtml",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "HTTP Fields",
      zhTitle: "HTTP 字段名",
      enUrl: "https://www.iana.org/assignments/http-fields/http-fields.xhtml",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "DoQ Error Codes",
      zhTitle: "DoQ 错误码",
      enUrl:
          "https://www.iana.org/assignments/dns-parameters/dns-parameters.xhtml#dns-quic-error-codes",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "ICMPv6 Parameters",
      zhTitle: "ICMPv6 参数",
      enUrl:
          "https://www.iana.org/assignments/icmpv6-parameters/icmpv6-parameters.xhtml",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Wikipedia.svg",
      title: "ICMPv6",
      enUrl: "https://en.wikipedia.org/wiki/ICMPv6",
      zhUrl:
          "https://zh.wikipedia.org/wiki/%E4%BA%92%E8%81%94%E7%BD%91%E6%8E%A7%E5%88%B6%E6%B6%88%E6%81%AF%E5%8D%8F%E8%AE%AE%E7%AC%AC%E5%85%AD%E7%89%88",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/U-Boot.svg",
      title: "Das U-Boot",
      enUrl: "https://docs.u-boot.org/en/latest/usage/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "DNSSEC Alg Numbers",
      zhTitle: "DNSSEC 算法编号",
      enUrl:
          "https://www.iana.org/assignments/dns-sec-alg-numbers/dns-sec-alg-numbers.xhtml#dns-sec-alg-numbers-1",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "HTTP/3 Error Codes",
      zhTitle: "HTTP/3 错误码",
      enUrl:
          "https://www.iana.org/assignments/http3-parameters/http3-parameters.xhtml#http3-parameters-error-codes",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "HTTP/3 Frame Types",
      zhTitle: "HTTP/3 帧类型",
      enUrl:
          "https://www.iana.org/assignments/http3-parameters/http3-parameters.xhtml#http3-parameters-frame-types",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "HTTP/3 Settings",
      enUrl:
          "https://www.iana.org/assignments/http3-parameters/http3-parameters.xhtml#http3-parameters-settings",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IANA.svg",
      title: "HTTP/3 Stream Types",
      zhTitle: "HTTP/3 流类型",
      enUrl:
          "https://www.iana.org/assignments/http3-parameters/http3-parameters.xhtml#http3-parameters-stream-types",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ACME.svg",
      title: "ACME",
      enUrl: "https://datatracker.ietf.org/doc/html/rfc8555",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HTML5.svg",
      title: "HTML",
      zhTitle: "超文本标记语言",
      enUrl: "https://developer.mozilla.org/en-US/docs/Web/HTML",
      zhUrl: "https://developer.mozilla.org/zh-CN/docs/Web/HTML",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/_cURL.svg",
      title: "cURL",
      enUrl: "https://curl.se/docs/tutorial.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ruby%20on%20Ralis.svg",
      title: "Ruby on Rails",
      enUrl: "https://guides.rubyonrails.org/getting_started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GODOT_Engine.svg",
      title: "Godot Engine",
      zhTitle: "Godot 引擎",
      enUrl:
          "https://docs.godotengine.org/en/stable/getting_started/introduction/introduction_to_godot.html",
      zhUrl:
          "https://docs.godotengine.org/zh-cn/stable/getting_started/introduction/introduction_to_godot.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apache%20Kafka.svg",
      title: "Kafka",
      enUrl: "https://kafka.apache.org/documentation/#gettingStarted",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/gulpjs.svg",
      title: "GulpJS",
      enUrl: "https://gulpjs.com/docs/en/getting-started/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Anaconda.svg",
      title: "Anaconda",
      enUrl: "https://docs.anaconda.com/anaconda/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Conda.svg",
      title: "Conda",
      enUrl:
          "https://docs.conda.io/projects/conda/en/latest/user-guide/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/InLong.svg",
      title: "InLong",
      zhTitle: "银龙",
      enUrl:
          "https://inlong.apache.org/docs/quick_start/data_ingestion/file_pulsar_clickhouse_example",
      zhUrl:
          "https://inlong.apache.org/zh-CN/docs/quick_start/data_ingestion/file_pulsar_clickhouse_example",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/conda-forge.svg",
      title: "conda-forge",
      enUrl: "https://conda-forge.org/docs/user/introduction",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/conda-forge.svg",
      title: "Miniforge",
      enUrl: "https://conda-forge.org/download",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Trae.svg",
      title: "Trae",
      enUrl: "https://docs.trae.ai/docs/set-up-trae?_lang=en",
      zhUrl: "https://docs.trae.ai/docs/set-up-trae?_lang=zh",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GEETEST.svg",
      title: "GEETEST OneLogin",
      zhTitle: "GEETEST 身份验证",
      zhUrl: "https://docs.geetest.com/onelogin/overview/start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "AIOpsLab",
      enUrl:
          "https://github.com/microsoft/AIOpsLab?tab=readme-ov-file#%F0%9F%9A%80quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Appium.svg",
      title: "Appium",
      enUrl: "https://appium.io/docs/en/latest/quickstart",
      zhUrl: "https://appium.io/docs/zh/latest/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/RabbitMQ.svg",
      title: "RabbitMQ",
      enUrl: "https://www.rabbitmq.com/tutorials/tutorial-one-rust-stream",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Atlassian%20Bitbucket.svg",
      title: "Bitbucket Pipelines",
      enUrl:
          "https://support.atlassian.com/bitbucket-cloud/docs/get-started-with-bitbucket-pipelines",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Jupyter.svg",
      title: "Jupyter",
      enUrl: "https://docs.jupyter.org/en/latest/start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Blender.svg",
      title: "Blender",
      enUrl:
          "https://docs.blender.org/manual/en/latest/getting_started/installing/index.html",
      zhUrl:
          "https://docs.blender.org/manual/zh-hans/latest/getting_started/installing/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SpiderMonkey.svg",
      title: "SpiderMonkey",
      enUrl: "https://firefox-source-docs.mozilla.org/js",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WASIX.svg",
      title: "WASIX",
      enUrl: "https://wasix.org/docs/language-guide/rust/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MoonBit.svg",
      title: "MoonBit",
      enUrl: "https://docs.moonbitlang.com/en/latest/tutorial/tour.html",
      zhUrl: "https://docs.moonbitlang.com/zh-cn/latest/tutorial/tour.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Clojure.svg",
      title: "Clojure",
      enUrl: "https://clojure.org/guides/getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Crystal.svg",
      title: "Crystal",
      enUrl: "https://crystal-lang.org/reference/1.14/getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BabylonJS.svg",
      title: "BabylonJS",
      enUrl:
          "https://doc.babylonjs.com/journey/theFirstStep#everyones-very-first-step",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Nacos.svg",
      title: "Nacos",
      enUrl: "https://nacos.io/docs/latest/quickstart/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FreeBSD.svg",
      title: "FreeBSD",
      enUrl: "https://docs.freebsd.org/en/books/handbook/basics",
      zhUrl: "https://docs.freebsd.org/zh-cn/books/handbook/basics",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Tabby.svg",
      title: "Tabby",
      enUrl: "https://tabby.sh",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Tabby.svg",
      title: "russh",
      enUrl: "https://docs.rs/russh/latest/russh",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/gRPC.svg",
      title: "gRPC",
      enUrl: "https://grpc.io/docs/languages/go/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Meyou.svg",
      title: "Cap’n Proto",
      enUrl: "https://capnproto.org/language.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "SIMD JSON for Rust",
      enUrl: "https://docs.rs/simd-json/latest/simd_json/#usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "i24",
      enUrl: "https://docs.rs/i24/2.1.0/i24/#usage",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/radash.svg",
  //     title: "radash",
  //     enUrl:
  //         "https://radash-docs.vercel.app/docs/getting-started#getting-started",
  //     ));
  itemList.add(
    Item(
      imgUrl: "/Apache%20Tomcat.svg",
      title: "Tomcat",
      enUrl: "https://tomcat.apache.org/tomcat-11.0-doc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apache%20Camel.svg",
      title: "Camel Core",
      enUrl: "https://camel.apache.org/camel-core/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bash.svg",
      title: "Bash",
      enUrl: "https://www.gnu.org/software/bash/manual/html_node/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GraalVM.svg",
      title: "GraalVM",
      enUrl: "https://www.graalvm.org/latest/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GraalVM.svg",
      title: "GraalVM Native Image",
      enUrl: "https://www.graalvm.org/latest/reference-manual/native-image",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LibericaNIK.svg",
      title: "Liberica NIK",
      enUrl:
          "https://docs.bell-sw.com/liberica-nik/24.2.2b1-24.0.2b13/how-to/using-nik-with-desktop-applications",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GraalVM.svg",
      title: "GraalVM SDK",
      enUrl: "https://www.graalvm.org/sdk/javadoc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cygwin.svg",
      title: "Cygwin",
      enUrl: "https://cygwin.com/cygwin-ug-net/cygwin-ug-net.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/robot.svg",
      title: "Robot Framework",
      zhTitle: "Robot 框架",
      enUrl: "https://docs.robotframework.org/docs/getting_started/rpa",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apache%20Hive.svg",
      title: "Hive",
      enUrl: "https://cwiki.apache.org/confluence/display/Hive/GettingStarted",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apache%20Cordova.svg",
      title: "Cordova",
      enUrl:
          "https://cordova.apache.org/docs/en/latest/guide/cli/installation.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "GNU Coreutils",
      enUrl:
          "https://www.gnu.org/software/coreutils/manual/html_node/index.html#toc-Introduction-1",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "sed",
      enUrl:
          "https://www.gnu.org/software/sed/manual/sed.html#Command_002dLine-Options",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "grep",
      enUrl:
          "https://www.gnu.org/software/grep/manual/grep.html#grep-Programs-1",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "GNU Binutils",
      enUrl: "https://sourceware.org/binutils/docs/binutils/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "GNU make",
      enUrl: "https://www.gnu.org/software/make/manual/html_node/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "GNU Wget",
      enUrl: "https://www.gnu.org/software/wget/manual/html_node/index.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Org_WebKit.svg",
      title: "WebKit",
      enUrl: "https://webkit.org/blog/category/standards",
    ),
  );
  itemList.add(Item(
    imgUrl: "/V8.svg",
    title: "V8",
    enUrl: "https://v8.dev/docs/cross-compile-arm",
  ));
  itemList.add(
    Item(
      imgUrl: "/Duke%20Hips.svg",
      title: "OpenJDK",
      enUrl: "https://openjdk.org/guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Duke%20Hips.svg",
      title: "Building the OpenJDK",
      zhTitle: "OpenJDK 构建",
      enUrl: "https://openjdk.org/groups/build/doc/building.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Duke%20Hips.svg",
      title: "ZGC",
      enUrl: "https://wiki.openjdk.org/display/zgc/Main#Main-QuickStart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Chroma.svg",
      title: "Chroma",
      enUrl:
          "https://docs.trychroma.com/docs/overview/getting-started?lang=typescript",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TensorZero.svg",
      title: "TensorZero",
      enUrl: "https://www.tensorzero.com/docs/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/roboflow.svg",
      title: "supervision",
      enUrl: "https://supervision.roboflow.com/how_to/detect_and_annotate",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Dotenvx.svg",
      title: "Dotenvx",
      enUrl: "https://dotenvx.com/docs/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Kali.svg",
      title: "Kali Linux",
      enUrl: "https://www.kali.org/docs/introduction/what-is-kali-linux",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Kali.svg",
      title: "Kali Tools",
      enUrl: "https://www.kali.org/tools",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/linebender.svg",
      title: "resvg",
      enUrl: "https://github.com/linebender/resvg",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Sentry.svg",
      title: "Sentry",
      enUrl: "https://docs.sentry.io/platforms",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ReactFlow.svg",
      title: "React Flow",
      enUrl: "https://reactflow.dev/learn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AppVeyor.svg",
      title: "AppVeyor",
      enUrl:
          "https://www.appveyor.com/docs/getting-started-with-appveyor-for-linux/#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WebGPU.svg",
      title: "WebGPU",
      enUrl: "https://developer.mozilla.org/en-US/docs/Web/API/WebGPU_API",
      zhUrl: "https://developer.mozilla.org/zh-CN/docs/Web/API/WebGPU_API",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/wgpu.svg",
      title: "wgpu",
      enUrl: "https://docs.rs/wgpu/latest/wgpu",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "WRKFLW",
      enUrl:
          "https://github.com/bahdotsh/wrkflw?tab=readme-ov-file#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Bake",
      enUrl:
          "https://github.com/ali77gh/bake-rs?tab=readme-ov-file#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/jnv.svg",
      title: "jnv",
      enUrl: "https://github.com/ynqa/jnv",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/tonic.svg",
      title: "tonic",
      enUrl: "https://github.com/ynqa/jnv",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "axum",
      enUrl: "https://docs.rs/axum/latest/axum/#example",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "uniocr",
      enUrl:
          "https://github.com/mediar-ai/uniOCR?tab=readme-ov-file#quickstart-",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MinIO.svg",
      title: "MinIO",
      enUrl:
          "https://min.io/docs/minio/container/operations/installation.html#install-and-deploy-minio",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GTK.svg",
      title: "GTK",
      enUrl: "https://www.gtk.org/docs/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/gtk-kn.svg",
      title: "gtk-kn",
      enUrl: "https://gtk-kn.org/get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/PostgreSQL.svg",
      title: "PostgreSQL",
      enUrl: "https://www.postgresql.org/docs/current/tutorial-install.html",
      zhUrl: "http://www.postgres.cn/docs/current/tutorial-install.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Vala.svg",
      title: "Vala",
      enUrl: "https://docs.vala.dev/installation-guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Servo.svg",
      title: "Servo",
      enUrl: "https://book.servo.org/getting-servo.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Wa.svg",
      title: "Wa",
      enUrl: "https://wa-lang.org/tutorial",
      zhUrl: "https://wa-lang.org/tutorial",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "ZLUDA",
      enUrl: "https://github.com/vosen/ZLUDA?tab=readme-ov-file#usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "shields.rs",
      enUrl:
          "https://github.com/Jannchie/shields.rs?tab=readme-ov-file#usage-example",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Pot.svg",
      title: "Pot",
      enUrl: "https://pot-app.com/en/docs/#user-guide",
      zhUrl: "https://pot-app.com/docs/#%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenHarmony.svg",
      title: "OpenHarmony",
      enUrl:
          "https://docs.openharmony.cn/pages/v5.1/en/device-dev/quick-start/quickstart-ide-env-win.md",
      zhUrl:
          "https://docs.openharmony.cn/pages/v5.1/zh-cn/device-dev/quick-start/quickstart-ide-env-win.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenHarmony.svg",
      title: "Flutter for OHOS",
      zhTitle: "OpenHarmony版 Flutter",
      enUrl:
          "https://gitcode.com/openharmony-tpc/flutter_samples/blob/master/ohos/docs/03_environment/openHarmony-flutter%E7%8E%AF%E5%A2%83%E6%90%AD%E5%BB%BA%E6%8C%87%E5%AF%BC.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Huawei%20DevEco%20Studio.svg",
      title: "DevEco Studio",
      enUrl:
          "https://developer.huawei.com/consumer/en/doc/harmonyos-guides-V2/installation_process-0000001071425528-V2",
      zhUrl:
          "https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V2/installation_process-0000001071425528-V2",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/_Xiaomi.svg",
      title: "Home Integration",
      zhTitle: "米家集成",
      enUrl: "https://github.com/XiaoMi/ha_xiaomi_home/blob/main/README.md",
      zhUrl:
          "https://github.com/XiaoMi/ha_xiaomi_home/blob/main/doc/README_zh.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MQTT.svg",
      title: "MQTT",
      enUrl: "https://www.hivemq.com/blog/how-to-get-started-with-mqtt",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JSON.svg",
      title: "JSON",
      enUrl: "https://www.json.org/json-en.html",
      zhUrl: "https://www.json.org/json-zh.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JSON.svg",
      title: "JSON Schema Store",
      enUrl: "https://www.schemastore.org",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JSON.svg",
      title: "JSON API",
      enUrl: "https://www.schemastore.org/api/json/catalog.json",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JSONSchema.svg",
      title: "JSON Schema",
      enUrl: "https://json-schema.org/learn/getting-started-step-by-step",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JSON.svg",
      title: "GeoJSON",
      enUrl: "https://geojson.org",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BSON.svg",
      title: "BSON",
      enUrl: "https://bsonspec.org/spec.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Langflow.svg",
      title: "Langflow",
      enUrl: "https://docs.langflow.org/get-started-quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Meyou.svg",
      title: "GitLocalize",
      enUrl: "https://docs.gitlocalize.com/getting_started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/microbit.svg",
      title: "micro:bit",
      enUrl:
          "https://microbit.org/get-started/getting-started/power-up-and-play",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HomeAssistant.svg",
      title: "Home Assistant",
      enUrl:
          "https://www.home-assistant.io/installation/generic-x86-64#install-home-assistant-container",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/D3JS.svg",
      title: "D3JS",
      enUrl: "https://d3js.org/getting-started#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/RockyLinux.svg",
      title: "Rocky Linux",
      enUrl: "https://docs.rockylinux.org/guides/installation",
      zhUrl: "https://docs.rockylinux.org/zh/guides/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Fedora.svg",
      title: "Fedora Workstation",
      zhTitle: "Fedora 工作站",
      enUrl: "https://docs.fedoraproject.org/en-US/workstation-docs",
      zhUrl: "https://docs.fedoraproject.org/zh_Hans/workstation-docs",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Asahi%20Linux.svg",
      title: "Asahi Linux",
      enUrl: "https://asahilinux.org/docs/#developers",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ClearLinux.svg",
      title: "Clear Linux",
      enUrl: "https://www.clearlinux.org/clear-linux-documentation/guides",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Deepin.svg",
      title: "Deepin DTK",
      zhTitle: "深度/统信DTK",
      zhUrl:
          "https://docs.deepin.org/info/%E5%BC%80%E5%8F%91%E5%85%A5%E9%97%A8/%E5%9F%BA%E7%A1%80%E7%8E%AF%E5%A2%83/DTK/%E6%A6%82%E8%BF%B0/%E6%A6%82%E8%BF%B0/DTK%E5%85%A5%E9%97%A8%E6%8C%87%E5%BC%95",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Deepin.svg",
      title: "linyaps",
      zhTitle: "如意玲珑",
      enUrl:
          "https://linyaps.org.cn/en/guide/start/install.html#install-linyaps",
      zhUrl:
          "https://linyaps.org.cn/guide/start/install.html#%E5%AE%89%E8%A3%85%E5%A6%82%E6%84%8F%E7%8E%B2%E7%8F%91",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/QEMU.svg",
      title: "QEMU",
      enUrl: "https://www.qemu.org/docs/master",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NVIDIA.svg",
      title: "NVVM IR",
      enUrl: "https://docs.nvidia.com/cuda/nvvm-ir-spec",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NVIDIA.svg",
      title: "TensorRT",
      enUrl:
          "https://developer.nvidia.com/tensorrt#section-get-started-with-tensorrt",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NVIDIA.svg",
      title: "NVVM ABI for PTX",
      enUrl:
          "https://docs.nvidia.com/cuda/nvvm-ir-spec/index.html#nvvm-abi-for-ptx",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/UEFI.svg",
      title: "UEFI",
      enUrl: "https://uefi.org/uefi",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Grok.svg",
      title: "xAI Grok",
      enUrl: "https://github.com/xai-org/grok-1",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LangChain.svg",
      title: "LangChain",
      enUrl: "https://js.langchain.com/docs/how_to",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NVIDIA.svg",
      title: "CUDA",
      enUrl: "https://docs.nvidia.com/cuda/cuda-quick-start-guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MooreThreads.svg",
      title: "vLLM-MTT",
      zhTitle: "摩尔线程（ vLLM-MTT ）",
      enUrl: "https://docs.mthreads.com/mtt/mtt-doc-online/quick_start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/vLLM.svg",
      title: "vLLM",
      enUrl: "https://docs.vllm.ai/en/stable/getting_started/quickstart.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NVIDIA.svg",
      title: "CUDA-GDB",
      enUrl: "https://docs.nvidia.com/cuda/cuda-gdb/index.html#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NVIDIA.svg",
      title: "Cosmos",
      enUrl:
          "https://research.nvidia.com/publication/2025-01_cosmos-world-foundation-model-platform-physical-ai",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/KasmWorkspaces.svg",
      title: "Kasm Workspaces",
      zhTitle: "Kasm 工作空间",
      enUrl: "https://kasmweb.com/docs/latest/index.html#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WireGuard.svg",
      title: "WireGuard",
      enUrl: "https://www.wireguard.com/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenWrt.svg",
      title: "OpenWrt",
      enUrl: "https://openwrt.org/docs/guide-quick-start/start",
      zhUrl: "https://openwrt.org/zh/docs/guide-quick-start/start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/YAML.svg",
      title: "YAML",
      enUrl: "https://yaml.org",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/XML.svg",
      title: "XML",
      zhTitle: "可扩展标记语言",
      enUrl: "https://developer.mozilla.org/en-US/docs/Web/XML",
      zhUrl: "https://developer.mozilla.org/zh-CN/docs/Web/XML",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Nim.svg",
      title: "Nim",
      enUrl: "https://nim-lang.org/documentation.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Haskell.svg",
      title: "Haskell",
      enUrl: "https://www.haskell.org/get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bitcoin.svg",
      title: "Bitcoin",
      zhTitle: "比特币",
      enUrl: "https://developer.bitcoin.org/devguide/block_chain.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WinterCG.svg",
      title: "WinterTC",
      enUrl: "https://wintertc.org/work",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Exercism.svg",
      title: "Exercism",
      enUrl: "https://exercism.org/tracks",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/gitee.svg",
      title: "Gitee Go",
      zhUrl: "https://gitee.com/help/articles/4357#article-header0",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/gitee.svg",
      title: "Gitee MCP Server",
      enUrl:
          "https://github.com/oschina/mcp-gitee?tab=readme-ov-file#installation",
      zhUrl: "https://gitee.com/oschina/mcp-gitee#%E5%AE%89%E8%A3%85",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "GitHub MCP Server",
      enUrl:
          "https://github.com/github/github-mcp-server?tab=readme-ov-file#usage-with-vs-code",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "Karakum",
      enUrl:
          "https://github.com/karakum-team/karakum/blob/master/docs/guides/Basic_usage.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Playwright.svg",
      title: "Playwright MCP",
      enUrl:
          "https://github.com/microsoft/playwright-mcp?tab=readme-ov-file#installation-in-vs-code",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MCP.svg",
      title: "Git MCP",
      enUrl:
          "https://github.com/idosal/git-mcp?tab=readme-ov-file#-getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Flameshot.svg",
      title: "Flameshot",
      enUrl: "https://flameshot.org/docs/overview/overview",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Gradle.svg",
      title: "Gradle",
      enUrl:
          "https://docs.gradle.org/current/userguide/getting_started_eng.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ethereum.svg",
      title: "Ethereum",
      zhTitle: "以太坊",
      enUrl: "https://ethereum.org/en/developers/docs/intro-to-ethereum",
      zhUrl: "https://ethereum.org/zh/developers/docs/intro-to-ethereum",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/arroyo.svg",
      title: "arroyo",
      zhUrl: "https://doc.arroyo.dev/getting-started",
    ),
  );
  itemList.add(Item(
    imgUrl: "/Meyou.svg",
    title: "ProGuard",
    enUrl: "https://www.guardsquare.com/manual/quickstart",
  ));

  itemList.add(
    Item(
      imgUrl: "/Mojo.svg",
      title: "Mojo",
      enUrl: "https://docs.modular.com/stable/mojo/manual/get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mojo.svg",
      title: "Mojo StdLib",
      enUrl: "https://docs.modular.com/mojo/lib",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Debian.svg",
      title: "Debian",
      enUrl: "https://www.debian.org/doc/manuals/debian-reference",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Debian.svg",
      title: "Simple Shell Command",
      enUrl:
          "https://www.debian.org/doc/manuals/debian-reference/ch01.en.html#_the_simple_shell_command",
      zhUrl:
          "https://www.debian.org/doc/manuals/debian-reference/ch01.zh-cn.html#_the_simple_shell_command",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cargo.svg",
      title: "Cargo",
      enUrl:
          "https://doc.rust-lang.org/stable/cargo/getting-started/first-steps.html",
    ),
  );
  itemList.add(Item(
    imgUrl: "/Meyou.svg",
    title: "XTermJS",
    enUrl: "https://xtermjs.org/docs/guides/download",
  ));
  itemList.add(
    Item(
      imgUrl: "/Wayland.svg",
      title: "Wayland",
      enUrl: "https://wayland.freedesktop.org/docs/html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Waydroid.svg",
      title: "Waydroid",
      enUrl: "https://docs.waydro.id/usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CompilerExplorer.svg",
      title: "Compiler Explorer",
      enUrl: "https://godbolt.org",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "MSVC",
      enUrl:
          "https://learn.microsoft.com/en-us/cpp/build/reference/compiling-a-c-cpp-program?view=msvc-170",
      zhUrl:
          "https://learn.microsoft.com/zh-cn/cpp/build/reference/compiling-a-c-cpp-program?view=msvc-170",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "Injectorpp for rust",
      enUrl:
          "https://github.com/microsoft/injectorppforrust?tab=readme-ov-file#usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "MSBuild",
      enUrl:
          "https://learn.microsoft.com/en-us/visualstudio/msbuild/walkthrough-using-msbuild?view=vs-2022",
      zhUrl:
          "https://learn.microsoft.com/zh-cn/visualstudio/msbuild/walkthrough-using-msbuild?view=vs-2022",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MySQL.svg",
      title: "MySQL",
      enUrl: "https://dev.mysql.com/doc/refman/9.4/en/binary-installation.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenZFS.svg",
      title: "OpenZFS",
      enUrl:
          "https://openzfs.github.io/openzfs-docs/Getting%20Started/Debian/index.html#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GreptimeDB.svg",
      title: "GreptimeDB",
      enUrl: "https://docs.greptime.com/getting-started/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SpringBoot.svg",
      title: "Spring Boot",
      enUrl:
          "https://docs.spring.io/spring-boot/how-to/native-image/developing-your-first-application.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ECMAScript.svg",
      title: "ECMAScript",
      enUrl: "https://tc39.es/ecma262",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Xcode.svg",
      title: "Xcode",
      enUrl:
          "https://developer.apple.com/documentation/xcode/creating-an-xcode-project-for-an-app",
    ),
  );
  itemList.add(Item(
    imgUrl: "/Meyou.svg",
    title: "HighlightJS",
    enUrl:
        "https://highlightjs.readthedocs.io/en/latest/readme.html#basic-usage",
  ));
  itemList.add(
    Item(
      imgUrl: "/HTTP_Toolkit.svg",
      title: "HTTP Toolkit",
      enUrl: "https://httptoolkit.com/docs/getting-started/installing",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HTTP_3_Check.svg",
      title: "HTTP/3 Check",
      enUrl: "https://http3check.net",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TIOBE.svg",
      title: "TIOBE Index",
      enUrl: "https://www.tiobe.com/tiobe-index",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Lua.svg",
      title: "Lua",
      enUrl: "https://www.lua.org/start.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Swagger.svg",
      title: "Swagger",
      enUrl: "https://swagger.io/docs",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HHVM.svg",
      title: "HHVM",
      enUrl: "https://docs.hhvm.com/hhvm/basic-usage/introduction",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Gnome.svg",
      title: "GNOME",
      enUrl:
          "https://developer.gnome.org/documentation/tutorials/beginners/getting_started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ReactiveX.svg",
      title: "ReactiveX",
      enUrl: "https://reactivex.io/documentation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OceanBase.svg",
      title: "OceanBase",
      enUrl:
          "https://en.oceanbase.com/docs/common-oceanbase-database-10000000001970931",
      zhUrl:
          "https://www.oceanbase.com/docs/common-oceanbase-database-cn-1000000002012693",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TiDB.svg",
      title: "TiDB",
      enUrl: "https://docs.pingcap.com/tidb/stable/quick-start-with-tidb",
      zhUrl: "https://docs.pingcap.com/zh/tidb/stable/quick-start-with-tidb",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/mongoDB.svg",
      title: "MongoDB",
      enUrl: "https://www.mongodb.com/docs/manual/tutorial/getting-started",
      zhUrl:
          "https://www.mongodb.com/zh-cn/docs/manual/tutorial/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DocsyJekyll.svg",
      title: "Docsy Jekyll",
      enUrl: "https://vsoch.github.io/docsy-jekyll/docs/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DocsyJekyll.svg",
      title: "Protocol Buffers",
      enUrl: "https://protobuf.dev/programming-guides/proto3",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ByteDance%20Feishu.svg",
      title: "Protoc Gen ArkTS",
      enUrl:
          "https://github.com/larksuite/protoc-gen-ets?tab=readme-ov-file#usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DocsyJekyll.svg",
      title: "ProtoJSON Format",
      zhTitle: "ProtoJSON 格式",
      enUrl: "https://protobuf.dev/programming-guides/json",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MariaDB.svg",
      title: "MariaDB",
      enUrl: "https://mariadb.com/kb/en/a-mariadb-primer",
      zhUrl: "https://mariadb.com/kb/zh-cn/a-mariadb-primer",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SurrealDB.svg",
      title: "SurrealDB",
      enUrl: "https://surrealdb.com/docs/surrealdb/installation/macos",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Tribuo.svg",
      title: "Tribuo",
      enUrl: "https://tribuo.org/learn/4.3/docs/#h1",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitLFS.svg",
      title: "Git LFS",
      enUrl:
          "https://github.com/git-lfs/git-lfs?tab=readme-ov-file#example-usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HTTP.svg",
      title: "HTTP",
      enUrl: "https://developer.mozilla.org/en-US/docs/Web/HTTP",
      zhUrl: "https://developer.mozilla.org/zh-CN/docs/Web/HTTP",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ktor.svg",
      title: "Ktor Client",
      enUrl: "https://ktor.io/docs/client-create-new-application.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ktor.svg",
      title: "Ktor Server",
      enUrl:
          "https://ktor.io/docs/server-create-a-new-project.html#create-project-with-the-ktor-project-generator",
    ),
  );

  itemList.add(
    Item(
      imgUrl: "/Airflow.svg",
      title: "Airflow",
      enUrl: "https://airflow.apache.org/docs/apache-airflow/stable/start.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Arduino.svg",
      title: "Arduino",
      enUrl:
          "https://docs.arduino.cc/learn/starting-guide/getting-started-arduino",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Inkscape.svg",
      title: "Inkscape",
      enUrl: "https://inkscape.org/doc/tutorials/basic/tutorial-basic.html",
      zhUrl:
          "https://inkscape.org/zh-hans/doc/tutorials/basic/tutorial-basic.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LateX.svg",
      title: "LateX",
      enUrl: "https://www.latex-project.org/help/documentation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/KateX.svg",
      title: "KateX",
      enUrl: "https://katex.org/docs/browser.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Redox.svg",
      title: "Redox OS",
      enUrl:
          "https://doc.redox-os.org/book/getting-started.html#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Plan9.svg",
      title: "Plan 9",
      enUrl: "http://9p.io/wiki/plan9/Installation_instructions",
    ),
  );

  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust and WebAssembly",
      enUrl:
          "https://rustwasm.github.io/docs/book/game-of-life/hello-world.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "wasm-bindgen",
      enUrl:
          "https://rustwasm.github.io/docs/wasm-bindgen/examples/hello-world.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FFmpeg.svg",
      title: "FFmpeg",
      enUrl: "https://ffmpeg.org/ffmpeg-all.html#Synopsis",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Alpine.svg",
      title: "Alpine Linux",
      enUrl:
          "https://docs.alpinelinux.org/user-handbook/0.1a/Installing/medium.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Etcher.svg",
      title: "Etcher",
      enUrl: "https://etcher-docs.balena.io/#supported-operating-systems",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Arch%20Linux.svg",
      title: "Arch Linux",
      enUrl: "https://wiki.archlinux.org/title/Main_page",
      zhUrl: "https://wiki.archlinuxcn.org/wiki/%E9%A6%96%E9%A1%B5",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Windows_11.svg",
      title: "Windows",
      enUrl:
          "https://learn.microsoft.com/en-us/windows/whats-new/windows-11-overview",
      zhUrl:
          "https://learn.microsoft.com/zh-cn/windows/whats-new/windows-11-overview",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Windows_11.svg",
      title: "Virtual Terminal Sequences",
      zhTitle: "虚拟终端序列",
      enUrl:
          "https://learn.microsoft.com/en-us/windows/console/console-virtual-terminal-sequences",
      zhUrl:
          "https://learn.microsoft.com/zh-cn/windows/console/console-virtual-terminal-sequences",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Windows_11.svg",
      title: "Windows Commands",
      zhTitle: "Windows 命令",
      enUrl:
          "https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands",
      zhUrl:
          "https://learn.microsoft.com/zh-cn/windows-server/administration/windows-commands/windows-commands",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MS-DOS.svg",
      title: "MS-DOS",
      enUrl: "https://en.wikipedia.org/wiki/List_of_DOS_commands",
      zhUrl:
          "https://zh.wikipedia.org/wiki/MS-DOS%E5%91%BD%E4%BB%A4%E5%88%97%E8%A1%A8",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ActixWeb.svg",
      title: "Actix Web",
      enUrl: "https://actix.rs/docs/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rocket.svg",
      title: "Rocket",
      enUrl: "https://rocket.rs/guide/v0.5/getting-started/#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Eclipse%20IDE.svg",
      title: "AspectJ",
      enUrl: "https://eclipse.dev/aspectj/doc/released/progguide/starting.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OW2_ASM.svg",
      title: "OW2 ASM",
      enUrl: "https://asm.ow2.io",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Figma.svg",
      title: "Figma Code Layer",
      enUrl: "https://www.figma.com/code-docs/create-your-first-code-layer",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/XOrg.svg",
      title: "X Window System",
      enUrl: "https://www.x.org/releases/current/doc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OCaml.svg",
      title: "OCaml",
      enUrl: "https://ocaml.org/docs/your-first-program",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/KDE.svg",
      title: "KDE Developer",
      enUrl: "https://develop.kde.org/docs/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Unicode.svg",
      title: "Unicode",
      enUrl: "https://www.unicode.org/versions/Unicode17.0.0",
      // enUrl: "https://www.unicode.org/versions/latest",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Unicode.svg",
      title: "Unicode CLDR",
      enUrl: "https://cldr.unicode.org",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/vcpkg.svg",
      title: "vcpkg",
      enUrl:
          "https://learn.microsoft.com/en-us/vcpkg/get_started/get-started?pivots=shell-bash",
      zhUrl:
          "https://learn.microsoft.com/zh-cn/vcpkg/get_started/get-started?pivots=shell-bash",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Maven.svg",
      title: "Maven",
      enUrl: "https://maven.apache.org/ref/current",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DevContainer.svg",
      title: "Dev Containers",
      enUrl: "https://containers.dev/implementors/templates",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/containerd.svg",
      title: "containerd",
      enUrl:
          "https://github.com/containerd/containerd/blob/main/docs/getting-started.md#getting-started-with-containerd",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/containerd.svg",
      title: "nerdctl",
      enUrl:
          "https://github.com/containerd/nerdctl?tab=readme-ov-file#basic-usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OCI.svg",
      title: "runc",
      enUrl:
          "https://github.com/opencontainers/runc?tab=readme-ov-file#using-runc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OCI.svg",
      title: "OCI Runtime Spec",
      enUrl:
          "https://opencontainers.org/posts/blog/2024-02-18-oci-runtime-spec-v1-2/#what-is-the-oci-runtime-spec",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/youki_flat.svg",
      title: "youki",
      enUrl: "https://youki-dev.github.io/youki/user/basic_setup.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CSV.svg",
      title: "CSV",
      enUrl: "https://en.wikipedia.org/wiki/Comma-separated_values",
      zhUrl:
          "https://zh.wikipedia.org/wiki/%E9%80%97%E5%8F%B7%E5%88%86%E9%9A%94%E5%80%BC",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/InternVL.svg",
      title: "InternVL",
      enUrl:
          "https://internvl.readthedocs.io/en/latest/internvl2.5/quick_start.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Trendshift.svg",
      title: "Trendshift",
      enUrl: "https://trendshift.io",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/crun.svg",
      title: "crun",
      enUrl:
          "https://github.com/containers/crun/tree/main?tab=readme-ov-file#performance",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bazel.svg",
      title: "Bazel",
      enUrl: "https://bazel.build/run/build?hl=en",
      zhUrl: "https://bazel.build/run/build?hl=zh-cn",
    ),
  );
  itemList.add(Item(
    imgUrl: "/Meyou.svg",
    title: "BusyBox",
    enUrl: "https://busybox.net/downloads/BusyBox.html",
  ));
  itemList.add(
    Item(
      imgUrl: "/Zookeeper.svg",
      title: "Zookeeper",
      enUrl:
          "https://zookeeper.apache.org/doc/current/zookeeperStarted.html#getting-started-coordinating-distributed-applications-with-zooKeeper",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WrenAI.svg",
      title: "Wren AI",
      enUrl: "https://docs.getwren.ai/oss/overview/introduction",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/quiche.svg",
      title: "quiche",
      enUrl: "https://docs.quic.tech/quiche",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/QUIC.svg",
      title: "QUIC",
      enUrl: "https://quicwg.org",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenSSL.svg",
      title: "OpenSSL commands",
      enUrl: "https://docs.openssl.org/master/man1",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenEuler.svg",
      title: "OpenEuler",
      enUrl:
          "https://docs.openeuler.org/en/docs/22.03_LTS_SP2/docs/Installation/installation-preparations.html",
      zhUrl:
          "https://docs.openeuler.org/zh/docs/22.03_LTS_SP2/docs/Installation/%E5%AE%89%E8%A3%85%E6%8C%87%E5%AF%BC.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Datadog.svg",
      title: "Datadog",
      enUrl: "https://docs.datadoghq.com/getting_started/application",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Wireshark.svg",
      title: "Wireshark",
      enUrl: "https://www.wireshark.org/docs/wsug_html",
    ),
  );
  itemList.add(Item(
    imgUrl: "/Meyou.svg",
    title: "Buildroot",
    enUrl:
        "https://buildroot.org/downloads/manual/manual.html#_getting_started",
  ));
  itemList.add(
    Item(
      imgUrl: "/SWC.svg",
      title: "SWC",
      enUrl: "https://swc.rs/docs/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Qdrant.svg",
      title: "Qdrant",
      enUrl: "https://qdrant.tech/documentation/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HuggingFace.svg",
      title: "Hugging Face",
      enUrl: "https://huggingface.co/docs/transformers/quicktour",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ollama.svg",
      title: "Ollama",
      enUrl: "https://github.com/ollama/ollama/blob/main/README.md#quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Grafana.svg",
      title: "Grafana",
      enUrl: "https://grafana.com/docs/grafana/latest/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Geany.svg",
      title: "Geany",
      enUrl: "https://www.geany.org/manual/current/index.html#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Prometheus.svg",
      title: "Prometheus",
      enUrl: "https://prometheus.io/docs/introduction/first_steps",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cilium.svg",
      title: "Cilium",
      enUrl: "https://docs.cilium.io/en/stable/#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Hubble.svg",
      title: "Hubble",
      enUrl:
          "https://github.com/cilium/hubble?tab=readme-ov-file#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Tetragon.svg",
      title: "Tetragon",
      enUrl: "https://tetragon.io/docs/getting-started/install-k8s",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Remmina.svg",
      title: "Remmina",
      enUrl:
          "https://remmina.gitlab.io/remminadoc.gitlab.io/md__builds__remmina_remmina_ci__remmina_wiki__sidebar.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Chat2DB.svg",
      title: "Chat2DB",
      zhUrl:
          "https://chat2db-ai.com/resources/docs/start-guide/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Selenium.svg",
      title: "Selenium",
      enUrl: "https://www.selenium.dev/documentation/webdriver/getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenAIPlatform.svg",
      title: "OpenAI Platform",
      enUrl: "https://platform.openai.com/docs/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenAIPlatform.svg",
      title: "Codex CLI",
      enUrl: "https://github.com/openai/codex?tab=readme-ov-file#quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenAIPlatform.svg",
      title: "typst",
      enUrl: "https://typst.app/docs/guides/page-setup-guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenHands.svg",
      title: "OpenHands",
      enUrl:
          "https://github.com/All-Hands-AI/OpenHands?tab=readme-ov-file#-quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenAIPlatform.svg",
      title: "universe",
      enUrl:
          "https://github.com/openai/universe?tab=readme-ov-file#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/minikube.svg",
      title: "minikube",
      enUrl: "https://minikube.sigs.k8s.io/docs/start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IntelliJ_IDEA.svg",
      title: "IntelliJ IDEA",
      enUrl: "https://www.jetbrains.com/help/idea/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Fleet.svg",
      title: "JetBrains Fleet",
      enUrl: "https://www.jetbrains.com/help/fleet/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Space.svg",
      title: "JetBrains Space",
      enUrl: "https://www.jetbrains.com/help/space/new-user-quick-start-guide.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Metabase.svg",
      title: "Metabase",
      enUrl: "https://www.metabase.com/learn/metabase-basics/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TigerBeetle.svg",
      title: "TigerBeetle",
      enUrl: "https://docs.tigerbeetle.com/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Alibaba.svg",
      title: "AliDNS",
      zhTitle: "阿里公共解析服务",
      zhUrl: "https://www.alidns.com/knowledge?type=SETTING_DOCS#user",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Aliyun.svg",
      title: "Alibaba Cloud",
      zhTitle: "阿里云",
      enUrl:
          "https://www.alibabacloud.com/help/en/cloud-migration-guide-for-beginners/latest/overview",
      zhUrl:
          "https://www.alibabacloud.com/help/zh/cloud-migration-guide-for-beginners/latest/overview",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Higress.svg",
      title: "Higress",
      enUrl: "https://higress.cn/en/ai/quick-start",
      zhUrl: "https://higress.cn/ai/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cloudflare.svg",
      title: "1.1.1.1",
      enUrl: "https://developers.cloudflare.com/1.1.1.1/setup",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CloudflareWorkers.svg",
      title: "Cloudflare Workers",
      enUrl: "https://developers.cloudflare.com/workers/languages/rust",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Trunk.svg",
      title: "workers-rs",
      enUrl:
          "https://github.com/cloudflare/workers-rs?tab=readme-ov-file#example-usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MaterialWeb.svg",
      title: "Material Web",
      enUrl: "https://material-web.dev/about/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BaiduKaifa.svg",
      title: "Baidu Kaifa",
      zhTitle: "百度开发者搜索",
      zhUrl: "https://kaifa.baidu.com",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GooglePublicDNS.svg",
      title: "Google Public DNS",
      zhTitle: "谷歌公共 DNS",
      enUrl: "https://developers.google.com/speed/public-dns/docs/using?hl=en",
      zhUrl:
          "https://developers.google.com/speed/public-dns/docs/using?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cursor.svg",
      title: "Cursor",
      enUrl: "https://docs.cursor.com/get-started/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FAST.svg",
      title: "FAST",
      enUrl: "https://fast.com",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "Win32 API",
      enUrl:
          "https://learn.microsoft.com/en-us/windows/win32/desktop-programming",
      zhUrl:
          "https://learn.microsoft.com/zh-cn/windows/win32/desktop-programming",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "UWP",
      enUrl:
          "https://learn.microsoft.com/en-us/windows/uwp/get-started/create-a-hello-world-app-xaml-universal",
      zhUrl:
          "https://learn.microsoft.com/zh-cn/windows/uwp/get-started/create-a-hello-world-app-xaml-universal",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/codeium.svg",
      title: "codeium",
      enUrl: "https://docs.codeium.com/getstarted/overview#get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ghostty.svg",
      title: "Ghostty",
      enUrl: "https://ghostty.org/docs#get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rsbuild.svg",
      title: "Rsbuild",
      enUrl: "https://rsbuild.dev/guide/start/quick-start",
      zhUrl: "https://rsbuild.dev/zh/guide/start/quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rolldown.svg",
      title: "Rolldown",
      enUrl: "https://rolldown.rs/guide/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AzurePipelines.svg",
      title: "Azure Pipelines",
      enUrl:
          "https://learn.microsoft.com/en-us/azure/devops/pipelines/create-first-pipeline?view=azure-devops&tabs=java%2Cbrowser",
      zhUrl:
          "https://learn.microsoft.com/zh-cn/azure/devops/pipelines/create-first-pipeline?view=azure-devops&tabs=java%2Cbrowser",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CodeGeeX.svg",
      title: "CodeGeeX",
      enUrl: "https://github.com/THUDM/CodeGeeX4/blob/main/README.md",
      zhUrl: "https://github.com/THUDM/CodeGeeX4/blob/main/README_zh.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ModelScope.svg",
      title: "ModelScope",
      enUrl: "https://modelscope.cn/docs/Beginner-s-Guide/Quick-Start",
      zhUrl: "https://modelscope.cn/docs/intro/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenInterpreter.svg",
      title: "Open Interpreter",
      enUrl:
          "https://github.com/OpenInterpreter/open-interpreter?tab=readme-ov-file#quick-start",
      zhUrl:
          "https://github.com/OpenInterpreter/open-interpreter/blob/main/docs/README_ZH.md#%E5%BF%AB%E9%80%9F%E5%BC%80%E5%A7%8B",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Gemini.svg",
      title: "Gemini API",
      enUrl: "https://ai.google.dev/gemini-api/docs/quickstart?hl=en&lang=rest",
      zhUrl:
          "https://ai.google.dev/gemini-api/docs/quickstart?hl=zh-cn&lang=rest",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MetaLlama.svg",
      title: "Meta Llama",
      enUrl: "https://www.llama.com/docs/how-to-guides",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NextChat.svg",
      title: "NextChat",
      enUrl:
          "https://github.com/ChatGPTNextWeb/NextChat/tree/main?tab=readme-ov-file#get-started",
      zhUrl:
          "https://github.com/ChatGPTNextWeb/NextChat/blob/main/README_CN.md#%E5%BC%80%E5%A7%8B%E4%BD%BF%E7%94%A8",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Automa.svg",
      title: "Automa",
      enUrl: "https://docs.automa.site/rpa/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mintty.svg",
      title: "Mintty",
      enUrl: "https://mintty.github.io/mintty.1.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Wasmer.svg",
      title: "Wasmer",
      enUrl: "https://docs.wasmer.io/install",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Wasmer.svg",
      title: "WinterJS",
      enUrl:
          "https://github.com/wasmerio/winterjs?tab=readme-ov-file#running-winterjs-natively",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Skia.svg",
      title: "Skia",
      enUrl: "https://skia.org/docs",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Skia.svg",
      title: "CanvasKit",
      enUrl: "https://skia.org/docs/user/modules/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Lima.svg",
      title: "Lima",
      enUrl: "https://lima-vm.io/docs/usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/libimobiledevice.svg",
      title: "libimobiledevice",
      enUrl: "https://libimobiledevice.org/#get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AssemblyScript.svg",
      title: "AssemblyScript",
      enUrl: "https://www.assemblyscript.org/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MLIR.svg",
      title: "MLIR",
      enUrl: "https://mlir.llvm.org/getting_started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Pintree.svg",
      title: "Pintree",
      enUrl: "https://docs.pintree.io/en/guide/open-source",
      zhUrl: "https://docs.pintree.io/zh/guide/open-source",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/JavaScript.svg",
      title: "QuickJS",
      enUrl: "https://bellard.org/quickjs/quickjs.html#Quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BoaJS.svg",
      title: "Boa",
      enUrl: "https://docs.rs/boa_engine/latest/boa_engine/#example-usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rusty V8 Binding",
      enUrl: "https://docs.rs/v8/latest/v8/#example",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust Style Guide",
      zhTitle: "Rust 风格指引",
      enUrl:
          "https://doc.rust-lang.org/stable/style-guide/#the-default-rust-style",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Pepe",
      enUrl:
          "https://github.com/omarmhaimdat/pepe/tree/master?tab=readme-ov-file#usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "MCPR",
      enUrl: "https://github.com/conikeec/mcpr?tab=readme-ov-file#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "rustup",
      enUrl: "https://rustup.rs",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "extfn",
      enUrl: "https://docs.rs/extfn/latest/extfn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "thread-priority",
      enUrl: "https://docs.rs/thread-priority/latest/thread_priority/#usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Haylxon",
      enUrl:
          "https://github.com/pwnwriter/haylxon/?tab=readme-ov-file#hxn-in-action-",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "bitflags",
      enUrl: "https://github.com/bitflags/bitflags?tab=readme-ov-file#usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "binrw",
      enUrl: "https://docs.rs/binrw/latest/binrw",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "enigo",
      enUrl: "https://docs.rs/enigo/latest/enigo/#examples",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ndarray.svg",
      title: "ndarray",
      enUrl: "https://docs.rs/ndarray/latest/ndarray",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "bitpiece",
      enUrl: "https://docs.rs/bitpiece/0.4.0/bitpiece/#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "socket2",
      enUrl: "https://docs.rs/socket2/latest/socket2/#examples",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "facet",
      enUrl: "https://docs.rs/facet/latest/facet",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "cross",
      enUrl: "https://github.com/cross-rs/cross?tab=readme-ov-file#usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "unsynn",
      enUrl: "https://docs.rs/unsynn/latest/unsynn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "flate2",
      enUrl:
          "https://github.com/rust-lang/flate2-rs/tree/main?tab=readme-ov-file#compression",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FUTURES-RS.svg",
      title: "futures",
      enUrl: "https://docs.rs/futures/latest/futures",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZIG.svg",
      title: "Zig LangRef",
      zhTitle: "Zig 语言参考",
      enUrl: "https://ziglang.org/documentation/0.14.1",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZIG.svg",
      title: "Zig StdLib",
      zhTitle: "Zig 标准库",
      enUrl: "https://ziglang.org/documentation/0.14.1/std",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZIG.svg",
      title: "zigup",
      enUrl: "https://github.com/marler8997/zigup?tab=readme-ov-file#usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZIG.svg",
      title: "zig-clap",
      enUrl:
          "https://github.com/Hejsil/zig-clap?tab=readme-ov-file#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZIG.svg",
      title: "Ziggy",
      enUrl: "https://ziggy-lang.io/documentation/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZIG.svg",
      title: "Zine",
      enUrl: "https://zine-ssg.io/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ZIG.svg",
      title: "⚡zap⚡",
      enUrl: "https://github.com/zigzap/zap?tab=readme-ov-file#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "NatureLM",
      enUrl: "https://naturelm.github.io",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "BitNet",
      enUrl: "https://github.com/microsoft/BitNet?tab=readme-ov-file#usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "UniFFI",
      enUrl: "https://mozilla.github.io/uniffi-rs/latest/Getting_started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "RustOwl",
      enUrl:
          "https://github.com/cordx56/rustowl?tab=readme-ov-file#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "mlx-rs",
      enUrl:
          "https://github.com/oxideai/mlx-rs?tab=readme-ov-file#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "windows-drivers-rs",
      enUrl:
          "https://github.com/microsoft/windows-drivers-rs?tab=readme-ov-file#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/COSMIC_Toolkit.svg",
      title: "COSMIC Toolkit",
      zhTitle: "COSMIC 工具箱",
      enUrl: "https://pop-os.github.io/libcosmic-book/introduction.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "Tabiew",
      enUrl:
          "https://github.com/shshemi/tabiew?tab=readme-ov-file#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitHub.svg",
      title: "DRA",
      enUrl:
          "https://github.com/devmatteini/dra?tab=readme-ov-file#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Trunk.svg",
      title: "Trunk",
      enUrl: "https://trunkrs.dev/#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cargo.svg",
      title: "Cargo Remote",
      enUrl: "https://github.com/sgeisler/cargo-remote",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cargo.svg",
      title: "Cargo NDK",
      enUrl:
          "https://github.com/bbqsrc/cargo-ndk?tab=readme-ov-file#cargo-ndk---build-rust-code-for-android",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cargo.svg",
      title: "Cargo Cocoapods",
      enUrl:
          "https://github.com/bbqsrc/cargo-cocoapods/tree/main?tab=readme-ov-file#cargo-cocoapods---build-rust-code-for-xcode-integration",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cargo.svg",
      title: "Cargo Lipo",
      enUrl:
          "https://github.com/TimNN/cargo-lipo?tab=readme-ov-file#cargo-lipo--",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cargo.svg",
      title: "Workspace Analyzer",
      enUrl:
          "https://github.com/jaads/cargo-workspace-analyzer?tab=readme-ov-file#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Cargo.svg",
      title: "Cargo Make",
      enUrl: "https://sagiegurari.github.io/cargo-make",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Prefix.svg",
      title: "Pixi",
      enUrl: "https://pixi.sh/latest/#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/mingw-w64.svg",
      title: "mingw-w64",
      enUrl: "https://www.mingw-w64.org/getting-started/msys2-llvm",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "DeepSeek R1",
      enUrl:
          "https://github.com/deepseek-ai/DeepSeek-R1?tab=readme-ov-file#6-how-to-run-locally",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "DeepEP",
      enUrl:
          "https://github.com/deepseek-ai/DeepEP?tab=readme-ov-file#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "DeepGEMM",
      enUrl:
          "https://github.com/deepseek-ai/DeepGEMM?tab=readme-ov-file#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "DeepSeek 3FS",
      enUrl:
          "https://github.com/deepseek-ai/3FS/blob/main/deploy/README.md#3fs-setup-guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "Smallpond",
      enUrl:
          "https://github.com/deepseek-ai/smallpond/blob/main/docs/source/getstarted.rst",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "FlashMLA",
      enUrl:
          "https://github.com/deepseek-ai/FlashMLA?tab=readme-ov-file#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeepSeek-V3.svg",
      title: "DeepSeek-VL2",
      enUrl:
          "https://github.com/deepseek-ai/DeepSeek-VL2?tab=readme-ov-file#4-quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AppFlowy.svg",
      title: "AppFlowy",
      enUrl:
          "https://docs.appflowy.io/docs/appflowy/install-appflowy/installation-methods/installing-with-docker",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/PinganCloud.svg",
      title: "Ping An Cloud",
      zhTitle: "平安云",
      enUrl:
          "https://fincloud.pingan.com/ssr/help/compute/ecs/Quick_Start.Linux_Quick_Start.Create_Instance",
      zhUrl:
          "https://fincloud.pingan.com/ssr/help/compute/ecs/Quick_Start.Linux_Quick_Start.Create_Instance",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Tencent%20Cloud.svg",
      title: "Tencent Cloud VM",
      zhTitle: "腾讯云虚拟机",
      enUrl: "https://www.tencentcloud.com/document/product/213/38678",
      zhUrl:
          "https://www.tencentcloud.com/zh/document/product/213/38678?lang=zh&pg=",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/aws.svg",
      title: "Amazon S3",
      enUrl:
          "https://docs.aws.amazon.com/AmazonS3/latest/userguide/GetStartedWithS3.html",
      zhUrl:
          "https://docs.aws.amazon.com/zh_cn/AmazonS3/latest/userguide/GetStartedWithS3.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BaiduOCR.svg",
      title: "Baidu OCR",
      zhTitle: "百度智能云文字识别",
      zhUrl: "https://cloud.baidu.com/doc/OCR/s/dk3iqnq51",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BaiduOCR.svg",
      title: "Baidu AI Cloud",
      zhTitle: "百度智能云",
      enUrl: "https://intl.cloud.baidu.com/doc/BML/s/Xjxbjc84n-en",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LcJuvesBlog.svg",
      title: "LcJuves' Blog",
      zhTitle: "凉城。少年说的博客",
      enUrl: "https://blog.lcjuves.com",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenVSX.svg",
      title: "Open VSX",
      enUrl:
          "https://github.com/EclipseFdn/open-vsx.org?tab=readme-ov-file#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LcJuvesBlog.svg",
      title: "Learn X in Y minutes",
      enUrl: "https://learnxinyminutes.com/c",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Svelte.svg",
      title: "Svelte",
      enUrl: "https://svelte.dev/docs/svelte/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/rust-analyzer.svg",
      title: "rust-analyzer",
      enUrl: "https://rust-analyzer.github.io/book/vs_code.html#vs-code",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/TinyWow.svg",
      title: "TinyWow",
      enUrl: "https://tinywow.com",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenStack.svg",
      title: "OpenStack",
      enUrl: "https://docs.openstack.org/devstack/latest/#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HelloAlgo.svg",
      title: "Hello Algo",
      zhTitle: "Hello 算法",
      enUrl: "https://www.hello-algo.com/en/chapter_hello_algo",
      zhUrl: "https://www.hello-algo.com/chapter_hello_algo",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AVIF.svg",
      title: "AVIF",
      enUrl: "https://aomediacodec.github.io/av1-avif",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/glTF.svg",
      title: "glTF",
      enUrl: "https://www.khronos.org/gltf/#gltf-intro",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Chrome.svg",
      title: "Chrome DevTools",
      zhTitle: "Chrome 开发者工具",
      enUrl:
          "https://developer.chrome.com/docs/devtools/overview?hl=en#open?hl=en",
      zhUrl:
          "https://developer.chrome.com/docs/devtools/overview?hl=zh-cn#open?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Chrome.svg",
      title: "Chrome Extensions",
      zhTitle: "Chrome 拓展",
      enUrl:
          "https://developer.chrome.com/docs/extensions/get-started/tutorial/hello-world?hl=en",
      zhUrl:
          "https://developer.chrome.com/docs/extensions/get-started/tutorial/hello-world?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AFFiNE.svg",
      title: "AFFiNE",
      enUrl:
          "https://docs.affine.pro/self-host-affine/install/docker-compose-recommend#docker-compose-recommend",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FingerprintJS.svg",
      title: "Fingerprint",
      enUrl: "https://dev.fingerprint.com/docs/flutter",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FingerprintJS.svg",
      title: "Fingerprint Pro Flutter",
      enUrl: "https://pub.dev/packages/fpjs_pro_plugin#how-to-install",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FingerprintJS.svg",
      title: "Fingerprint Pro Playground",
      zhTitle: "Fingerprint Pro 演练场",
      enUrl: "https://demo.fingerprint.com/playground",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/BarbaJS.svg",
      title: "BarbaJS",
      enUrl: "https://barba.js.org/docs/getstarted/install",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/UbuntuServer.svg",
      title: "Ubuntu Server",
      enUrl:
          "https://documentation.ubuntu.com/server/tutorial/basic-installation/#basic-installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FVM.svg",
      title: "FVM",
      enUrl: "https://fvm.app/documentation/guides/basic-commands",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Puro.svg",
      title: "Puro",
      enUrl: "https://puro.dev/#quick-start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Tabnine.svg",
      title: "Tabnine",
      enUrl: "https://docs.tabnine.com/main/getting-started/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Continue.svg",
      title: "Continue",
      enUrl: "https://docs.continue.dev/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/VSCodium.svg",
      title: "VSCodium",
      enUrl:
          "https://github.com/VSCodium/vscodium/blob/master/docs/getting-started.md#getting-started-with-vscodium",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/_Jekyll.svg",
      title: "Jekyll",
      enUrl: "https://jekyllrb.com/docs/step-by-step/01-setup",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/W3C.svg",
      title: "WebDriver BiDi",
      enUrl: "https://w3c.github.io/webdriver-bidi",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Tor.svg",
      title: "Tor",
      enUrl: "https://support.torproject.org",
      zhUrl: "https://support.torproject.org/zh-CN",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LOKINET.svg",
      title: "LOKINET",
      enUrl: "https://www.lokinet.org/faq",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Oxen.svg",
      title: "Oxen",
      enUrl:
          "https://docs.oxen.io/oxen-docs/using-the-oxen-blockchain/oxen-service-node-guides/setting-up-an-oxen-service-node",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/SESSION.svg",
      title: "SESSION",
      enUrl: "https://getsession.org/faq",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenRouter.svg",
      title: "OpenRouter",
      enUrl: "https://openrouter.ai/docs/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/uutils.svg",
      title: "uutils coreutils",
      enUrl: "https://uutils.github.io/coreutils/docs/installation.html#cargo",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenBSD.svg",
      title: "OpenBSD",
      enUrl: "https://www.openbsd.org/76.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenGroup.svg",
      title: "POSIX",
      enUrl:
          "https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap01.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenGroup.svg",
      title: "POSIX Headers",
      zhTitle: "POSIX 头文件",
      enUrl:
          "https://pubs.opengroup.org/onlinepubs/9799919799/idx/headers.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OpenGroup.svg",
      title: "POSIX Shell",
      enUrl:
          "https://pubs.opengroup.org/onlinepubs/9799919799/utilities/V3_chap02.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AWK.svg",
      title: "AWK",
      enUrl:
          "https://pubs.opengroup.org/onlinepubs/9799919799/utilities/awk.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "GAWK",
      enUrl:
          "https://www.gnu.org/software/gawk/manual/gawk.html#toc-Getting-Started-with-awk",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GNU.svg",
      title: "Jobserver",
      enUrl: "https://make.mad-scientist.net/papers/jobserver-implementation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Eko.svg",
      title: "Eko",
      enUrl: "https://eko.fellou.ai/docs/getting-started/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Serverpod.svg",
      title: "Serverpod",
      enUrl: "https://docs.serverpod.dev/#command-line-tools",
    ),
  );
  itemList.add(Item(
    imgUrl: "/Motion.svg",
    title: "Motion",
    enUrl: "https://motion.dev/docs/quick-start#install",
  ));
  itemList.add(
    Item(
      imgUrl: "/_Material-for-MkDocs-Icon.svg",
      title: "Material for MkDocs",
      enUrl: "https://squidfunk.github.io/mkdocs-material/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitBook.svg",
      title: "GitBook",
      enUrl: "https://docs.gitbook.com/getting-started/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GCC.svg",
      title: "GCC",
      enUrl: "https://gcc.gnu.org/onlinedocs/gcc-15.1.0/gcc/#Introduction",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GDB.svg",
      title: "GDB",
      enUrl: "https://sourceware.org/gdb/download/onlinedocs/gdb.html",
    ),
  );
  itemList.add(
    Item(
      emojiIcon: "🐛",
      imgUrl: "/emoji_u1f41b.svg",
      title: "LLDB",
      enUrl: "https://lldb.llvm.org/use/tutorial.html",
    ),
  );
  itemList.add(
    Item(
      emojiIcon: "👋",
      imgUrl: "/Meyou.svg",
      title: "koji",
      enUrl:
          "https://github.com/cococonscious/koji?tab=readme-ov-file#installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/devenv.svg",
      title: "devenv",
      enUrl: "https://devenv.sh/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Buildah.svg",
      title: "Buildah",
      enUrl:
          "https://buildah.io/blogs/2017/11/02/getting-started-with-buildah.html#building-oci-container-images",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Meson.svg",
      title: "Meson",
      enUrl: "https://mesonbuild.com/Quick-guide.html#requirements",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ionic.svg",
      title: "Ionic React",
      enUrl:
          "https://ionicframework.com/docs/react/quickstart#what-is-ionic-framework",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Ionic.svg",
      title: "Ionic Vue",
      enUrl:
          "https://ionicframework.com/docs/vue/quickstart#what-is-ionic-framework",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WebRTC.svg",
      title: "WebRTC",
      enUrl: "https://webrtc.org/getting-started/overview?hl=en",
      zhUrl: "https://webrtc.org/getting-started/overview?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FlatBuffers.svg",
      title: "FlatBuffers",
      enUrl: "https://flatbuffers.dev/quick_start",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Hono.svg",
      title: "Hono",
      enUrl: "https://hono.dev/docs/getting-started/basic#starter",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Lobster.svg",
      title: "Lobster",
      enUrl: "https://aardappel.github.io/lobster/getting_started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Evcxr Rust REPL",
      enUrl: "https://github.com/evcxr/evcxr/blob/main/evcxr_repl/README.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DeltaLake.svg",
      title: "Delta Lake",
      enUrl: "https://delta-io.github.io/delta-rs/usage/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/StirlingPDF.svg",
      title: "Stirling PDF",
      enUrl:
          "https://docs.stirlingpdf.com/Installation/Docker%20Install#run-docker-container-with-docker-run",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GN.svg",
      title: "GN",
      enUrl: "https://gn.googlesource.com/gn/+/main/docs/quick_start.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mojo.svg",
      title: "Firecrawl",
      enUrl: "https://docs.firecrawl.dev/introduction",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/FirebaseStudio.svg",
      title: "Firebase Studio",
      enUrl: "https://firebase.google.com/docs/studio/get-started?hl=en",
      zhUrl: "https://firebase.google.com/docs/studio/get-started?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/qwik.svg",
      title: "qwik",
      enUrl: "https://qwik.dev/docs/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Nuxt.svg",
      title: "Nuxt",
      enUrl: "https://nuxt.com/docs/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OAuth.svg",
      title: "OAuth 2",
      enUrl: "https://oauth.net/2",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/OAuth.svg",
      title: "OAuth PKCE",
      enUrl: "https://oauth.net/2/pkce",
    ),
  );
  itemList.add(Item(
    imgUrl: "/SDKMAN.svg",
    title: "SDKMAN",
    enUrl: "https://sdkman.io/install",
  ));
  itemList.add(
    Item(
      imgUrl: "/MindSpore.svg",
      title: "MindSpore",
      enUrl: "https://www.mindspore.cn/install/en",
      zhUrl: "https://www.mindspore.cn/install",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ARCore.svg",
      title: "ARCore",
      enUrl: "https://developers.google.com/ar/develop/getting-started?hl=en",
      zhUrl:
          "https://developers.google.com/ar/develop/getting-started?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WebXR.svg",
      title: "WebXR",
      enUrl: "https://immersiveweb.dev/#gettingstartedbuildingawebxrwebsite",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Buck2.svg",
      title: "Buck2",
      enUrl: "https://buck2.build/docs/about/getting_started",
    ),
  );
  itemList.add(Item(
    imgUrl: "/OpenWebUI.svg",
    title: "Open WebUI",
    enUrl:
        "https://docs.openwebui.com/getting-started/quick-start/#quick-start-with-docker-",
  ));
  itemList.add(
    Item(
      imgUrl: "/Google.svg",
      title: "Carbon",
      enUrl: "https://docs.carbon-lang.dev/#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NextJS.svg",
      title: "NextJS",
      enUrl: "https://nextjs.org/docs/app/getting-started/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Mercurial.svg",
      title: "Mercurial",
      enUrl: "https://www.mercurial-scm.org/install",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/WebP.svg",
      title: "WebP",
      enUrl: "https://developers.google.com/speed/webp?hl=en",
      zhUrl: "https://developers.google.com/speed/webp?hl=zh-cn",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LLVM.svg",
      title: "Clang",
      enUrl: "https://clang.llvm.org/get_started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/clangd.svg",
      title: "clangd",
      enUrl: "https://clangd.llvm.org/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Windsurf.svg",
      title: "Windsurf",
      enUrl: "https://docs.windsurf.com/windsurf/getting-started#set-up",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Windows_11.svg",
      title: "Windows PE Format",
      zhTitle: "Windows PE 格式",
      enUrl: "https://learn.microsoft.com/en-us/windows/win32/debug/pe-format",
      zhUrl: "https://learn.microsoft.com/zh-cn/windows/win32/debug/pe-format",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "rustdoc",
      enUrl: "https://doc.rust-lang.org/rustdoc",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rayon",
      enUrl: "https://crates.io/crates/rayon",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "GitMCP",
      enUrl:
          "https://github.com/idosal/git-mcp?tab=readme-ov-file#-getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust up",
      enUrl: "https://rust-lang.github.io/rustup/basics.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "reqwest",
      enUrl: "https://docs.rs/reqwest/latest",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Comprehensive Rust",
      enUrl: "https://google.github.io/comprehensive-rust",
      zhUrl: "https://google.github.io/comprehensive-rust/zh-CN",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/sbt.svg",
      title: "sbt",
      enUrl: "https://www.scala-sbt.org/1.x/docs/sbt-by-example.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Java_with_Ant.svg",
      title: "Ant",
      enUrl: "https://ant.apache.org/manual/install.html#getting",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/MistralAI.svg",
      title: "Mistral AI",
      enUrl: "https://docs.mistral.ai/getting-started/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Metaflow.svg",
      title: "Metaflow",
      enUrl: "https://docs.metaflow.org/getting-started/install",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/_WeChat.svg",
      title: "WeChat Mini Program",
      zhTitle: "微信小程序",
      enUrl:
          "https://developers.weixin.qq.com/miniprogram/en/dev/framework/quickstart/getstart.html",
      zhUrl:
          "https://developers.weixin.qq.com/miniprogram/dev/framework/quickstart/getstart.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Douyin.svg",
      title: "Douyin Mini App",
      zhTitle: "抖音小程序",
      enUrl:
          "https://developers.tiktok.com/doc/our-guidelines-developer-guidelines",
      zhUrl:
          "https://developer.open-douyin.com/docs/resource/zh-CN/mini-app/develop/tutorial/beginner/todo-list-app-dev",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/World.svg",
      title: "World Mini Apps",
      enUrl: "https://docs.world.org/mini-apps/quick-start/installing",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Meyou.svg",
      title: "Taro",
      enUrl: "https://docs.taro.zone/en/docs/GETTING-STARTED",
      zhUrl: "https://docs.taro.zone/docs/GETTING-STARTED",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HMOS.svg",
      title: "Taro on HarmonyOS",
      enUrl:
          "https://github.com/NervJS/taro-harmony-capi-library?tab=readme-ov-file#taro-harmony-cpp-library",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Meyou.svg",
      title: "FinClip",
      enUrl:
          "https://www.finclip.com/mop-en/document/for-developer/quick-start/build-mini-program.html",
      zhUrl:
          "https://www.finclip.com/mop/document/develop/guide/start/host-environment.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/u-root.svg",
      title: "u-root",
      enUrl: "https://u-root.org/#get-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Rust.svg",
      title: "Rust UEFI",
      enUrl: "https://rust-osdev.github.io/uefi-rs/tutorial/app.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/iroh.svg",
      title: "iroh",
      enUrl: "https://www.iroh.computer/docs/quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Bazzite.svg",
      title: "Bazzite",
      enUrl: "https://docs.bazzite.gg/General/Installation_Guide",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/UNIX.svg",
      title: "Unix ELF",
      enUrl: "https://en.wikipedia.org/wiki/Executable_and_Linkable_Format",
      zhUrl:
          "https://zh.wikipedia.org/zh-cn/%E5%8F%AF%E5%9F%B7%E8%A1%8C%E8%88%87%E5%8F%AF%E9%8F%88%E6%8E%A5%E6%A0%BC%E5%BC%8F",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/UNIX.svg",
      title: "Unix domain socket",
      enUrl: "https://en.wikipedia.org/wiki/Unix_domain_socket",
      zhUrl:
          "https://zh.wikipedia.org/wiki/Unix%E5%9F%9F%E5%A5%97%E6%8E%A5%E5%AD%97",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/AsciiDoc.svg",
      title: "AsciiDoc",
      enUrl: "https://asciidoc.org/#try",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/ktunnel.svg",
      title: "ktunnel",
      enUrl: "https://github.com/omrikiei/ktunnel?tab=readme-ov-file#usage",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/UNIX.svg",
      title: "UNIX® Standard",
      enUrl: "https://www.opengroup.org/membership/forums/platform/unix",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "https://fastweb.lcjuves.com/donate/Alipay.svg",
      title: "Donate to the author",
      zhTitle: "向作者捐赠",
      enUrl: "https://fastweb.lcjuves.com/donate/Alipay.svg",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/musl-libc.svg",
      title: "musl libc",
      enUrl: "https://wiki.musl-libc.org/getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/systemd.svg",
      title: "systemd",
      enUrl: "https://systemd.io",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/IT-Tools.svg",
      title: "IT - TOOLS",
      enUrl: "https://it-tools.tech",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/DevToys.svg",
      title: "DevToys",
      enUrl:
          "https://devtoys.app/doc/articles/extension-development/getting-started/setup.html?tabs=windows",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CRDTs.svg",
      title: "CRDTs",
      enUrl: "https://crdt.tech",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/HTTPieCLI.svg",
      title: "HTTPie CLI",
      enUrl: "https://httpie.io/docs/cli/installation",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Microsoft.svg",
      title: "WSL",
      enUrl: "https://learn.microsoft.com/en-us/windows/wsl/install",
      zhUrl: "https://learn.microsoft.com/zh-cn/windows/wsl/install",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/LSP.svg",
      title: "LSP / LSIF",
      enUrl:
          "https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/CocoaPods.svg",
      title: "CocoaPods",
      enUrl: "https://guides.cocoapods.org/using/getting-started.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/UUP-dump.svg",
      title: "UUP dump",
      enUrl: "https://uupdump.net",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/XunFeiOpenPlatform.svg",
      title: "iFLYTEK Open Platform",
      zhTitle: "讯飞开放平台",
      zhUrl: "https://www.xfyun.cn/doc/platform/quickguide.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apple.svg",
      title: "Mach-O EF",
      enUrl:
          "https://developer.apple.com/library/archive/documentation/Performance/Conceptual/CodeFootprint/Articles/MachOOverview.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Apple.svg",
      title: "container",
      enUrl:
          "https://github.com/apple/container?tab=readme-ov-file#get-started",
    ),
  );
  // itemList.add(Item(
  //     imgUrl: "/MATLAB.svg",
  //     title: "MATLAB",
  //     enUrl: "https://ww2.mathworks.cn/help/matlab/getting-started-with-matlab.html?s_tid=CRUX_lftnav",
  //     zhUrl:
  //         "https://ww2.mathworks.cn/help/matlab/getting-started-with-matlab.html?s_tid=CRUX_lftnav"));
  itemList.add(Item(
    imgUrl: "/Khronos.svg",
    title: "OpenGL",
    enUrl: "https://www.khronos.org/opengl/wiki/Getting_Started",
  ));
  itemList.add(
    Item(
      imgUrl: "/Unofficial_SSH_Logo.svg",
      title: "OpenSSH",
      enUrl: "https://www.openssh.com/manual.html",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/RocketMQ.svg",
      title: "RocketMQ",
      enUrl: "https://rocketmq.apache.org/docs/quickStart/01quickstart",
      zhUrl: "https://rocketmq.apache.org/zh/docs/quickStart/01quickstart",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Aider.svg",
      title: "Aider",
      enUrl: "https://aider.chat/#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Zed.svg",
      title: "Zed",
      enUrl: "https://zed.dev/docs/#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Zed.svg",
      title: "Zed Extensions",
      zhTitle: "Zed 拓展",
      enUrl: "https://zed.dev/docs/extensions/developing-extensions",
    ),
  );
  itemList.add(Item(
    imgUrl: "/Meyou.svg",
    title: "WASI",
    enUrl: "https://wasi.dev/#how-to-get-started",
  ));
  // itemList.add(Item(
  //     imgUrl: "/GPTAcademic.svg",
  //     title: "GPT Academic",
  //     zhUrl: "https://github.com/binary-husky/gpt_academic/wiki/online"));
  // itemList.add(Item(
  //     imgUrl: "/Roo-Cline.svg",
  //     title: "Roo Code",
  //     zhUrl: "https://github.com/RooVetGit/Roo-Cline"));
  itemList.add(Item(
    imgUrl: "/TabbyML.svg",
    title: "Tabby ML",
    enUrl: "https://tabby.tabbyml.com/docs/quick-start/installation/docker",
  ));

  itemList.add(
    Item(
      imgUrl: "/RISC-V.svg",
      title: "RISC-V",
      enUrl: "https://riscv.org/developers",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/RISC-V.svg",
      title: "RISCV Sail Model",
      enUrl:
          "https://github.com/riscv/sail-riscv?tab=readme-ov-file#getting-started",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/arm.svg",
      title: "Arm Embedded Compiler",
      enUrl:
          "https://developer.arm.com/documentation/100748/0623/Getting-Started?lang=en",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Meyou.svg",
      title: "LoongArch",
      zhTitle: "龙芯架构",
      enUrl:
          "https://loongson.github.io/LoongArch-Documentation/README-EN.html#_getting_started",
      zhUrl:
          "https://loongson.github.io/LoongArch-Documentation/README-CN.html#getting-start",
    ),
  );

  itemList.add(Item(
    imgUrl: "/Meyou.svg",
    title: "Common Lisp",
    enUrl: "https://lisp-lang.org/learn/getting-started",
  ));
  itemList.add(
    Item(
      imgUrl: "/Cloudflare.svg",
      title: "Pingora",
      enUrl:
          "https://github.com/cloudflare/pingora/blob/main/docs/quick_start.md",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/NEWSNOW.svg",
      title: "News Now",
      zhUrl: "https://newsnow.busiyi.world",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/GitLens.svg",
      title: "GitLens",
      enUrl: "https://help.gitkraken.com/gitlens/gitlens-home",
    ),
  );
  itemList.add(
    Item(
      imgUrl: "/Grain.svg",
      title: "Grain",
      enUrl: "https://grain-lang.org/docs/getting_grain",
    ),
  );

  itemList.add(Item(
    imgUrl: "/Xen.svg",
    title: "Xen",
    enUrl: "https://wiki.xenproject.org/wiki/Xen_Project_Beginners_Guide",
  ));

  itemList.add(Item(
    imgUrl: "/WINE.svg",
    title: "WineHQ",
    enUrl: "https://gitlab.winehq.org/wine/wine/-/wikis/Wine-User's-Guide",
  ));
  itemList.add(Item(
    imgUrl: "/Cachix.svg",
    title: "SecretSpec",
    enUrl: "https://secretspec.dev/quick-start",
  ));
  itemList.add(Item(
    imgUrl: "/meilisearch.svg",
    title: "meilisearch",
    enUrl:
        "https://www.meilisearch.com/docs/learn/self_hosted/getting_started_with_self_hosted_meilisearch",
  ));

  itemList.add(Item(
    imgUrl: "/ResumeMatcher.svg",
    title: "Resume Matcher",
    enUrl:
        "https://github.com/srbhr/resume-matcher?tab=readme-ov-file#getting-started-with-resume-matcher",
  ));
  itemList.sort(
    (a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()),
  );

  final items = Items(itemList: itemList.toSet().toList());
  items.tempTipVisible = false;
  items.ipv6Guard = false;
  items.specIpAddrPrefix = "27.38";
  items.shutdownSomeArea = true;
  final itemsPB = File('../../items.pb');
  await itemsPB.writeAsBytes(items.writeToBuffer(), flush: true);
}
