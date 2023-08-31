import 'lib/items.pb.dart';
import 'dart:io';

Future main(List<String> args) async {
  final List<Item> itemList = List.empty(growable: true);
  itemList.add(Item(
      imgUrl: "/SwiftGG.svg",
      title: "SwiftGG",
      url: "https://swiftgg.gitbook.io/swift"));
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
      imgUrl: "/Vue.svg", title: "Vue", url: "https://cn.vuejs.org/v2/guide"));
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
      url: "https://docs.unity.cn/cn/2020.3/Manual/UnityManual.html"));
  itemList.add(Item(
      imgUrl: "/ThreeJS.svg",
      title: "Three",
      url:
          "https://threejs.org/docs/index.html#manual/zh/introduction/Creating-a-scene"));
  itemList.add(Item(
      imgUrl: "/Deno.svg",
      title: "Deno",
      url: "https://doc.deno.land/builtin/stable"));
  itemList.add(Item(
      imgUrl: "/NodeJS.svg",
      title: "Node",
      url: "https://nodejs.org/zh-cn/docs"));
  itemList.add(Item(
      imgUrl: "/PyTorch.svg",
      title: "PyTorch",
      url: "https://pytorch.apachecn.org"));
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
      url: "https://getbootstrap.com/docs"));
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
  final items = Items(itemList: itemList);
  final itemsPB = File('../../items.pb');
  await itemsPB.writeAsBytes(items.writeToBuffer(), flush: true);
  final itemsJSON = File('../../items.json');
  await itemsJSON.writeAsString(items.writeToJson(), flush: true);
}
