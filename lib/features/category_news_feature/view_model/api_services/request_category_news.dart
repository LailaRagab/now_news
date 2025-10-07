import 'package:dio/dio.dart';
import 'package:now_news/core/networking/api_constants.dart';

import '../../models/article_model.dart';

class RequestCategoryServices {
  ApiConstants apiConstants = ApiConstants();
  Future<List<ArticleModel>> getCategoryNews(
      {required String categoryType}) async {
    try {
      Response response = await apiConstants.dio.get(
          "${apiConstants.apiBaseUrl}/top-headlines?country=us&apiKey=${apiConstants.apiKey}&category=$categoryType");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      // To convert each map inside the articles list into obj
      List<ArticleModel> articleList = [];
      for (var article in articles) {
        ArticleModel articleContent = ArticleModel.fromJson(article);
        articleList.add(articleContent);
      }
      //list of objects 'articles'
      return articleList;
    } on Dio catch (e) {
      return [];
    }
  }
}
