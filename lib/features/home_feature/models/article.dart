class Article {
  String? image;
  String title;
  String? subTitle;

  Article({required this.image, required this.title, required this.subTitle});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
        image: json["urlToImage"],
        title: json["title"],
        subTitle: json["description"]);
  }
}
