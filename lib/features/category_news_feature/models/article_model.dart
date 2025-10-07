class ArticleModel {
  String? image;
  String title;
  String? subTitle;

  ArticleModel(
      {required this.image, required this.title, required this.subTitle});

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
        image: json["urlToImage"],
        title: json["title"],
        subTitle: json["description"]);
  }
}
