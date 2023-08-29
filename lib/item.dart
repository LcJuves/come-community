class Item {
  final String imgUrl;
  final String title;
  final String url;

  Item(this.imgUrl, this.title, this.url);

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(json['imgUrl'], json['title'], json['url']);
  }
}
