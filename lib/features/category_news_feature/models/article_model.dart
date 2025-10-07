class ArticleModel {
  String? image;
  String? title;
  String? subTitle;

  ArticleModel({this.image, this.title, this.subTitle});

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
        image: json["urlToImage"],
        title: json["title"],
        subTitle: json["description"]);
  }
}
