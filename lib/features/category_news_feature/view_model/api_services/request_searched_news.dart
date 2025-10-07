import 'package:dio/dio.dart';

import '../../../../core/networking/api_constants.dart';
import '../../models/article_model.dart';

class RequestSearchedNews {
  ApiConstants apiConstants = ApiConstants();
  Future<List<ArticleModel>> getSearchedNews(
      {required String searchedQuery}) async {
    try {
      Response response = await apiConstants.dio.get(
          "${apiConstants.apiBaseUrl}/everything?q=$searchedQuery&from=2024-12-18&to=2024-12-18&sortBy=popularity&apiKey=${apiConstants.apiKey}");
      if (response.statusCode! >= 200 && response.statusCode! <= 600) {
        Map<String, dynamic> jsonData = response.data;
        List<dynamic> articles = jsonData["articles"];
        // To convert each map inside the articles list into obj
        List<ArticleModel> articleList = [];
        for (var article in articles) {
          ArticleModel articleContent = ArticleModel.fromJson(article);
          articleList.add(articleContent);
        }
        //list of objects 'articles'
        return articleList;
      } else {
        throw Exception("Error ${response.statusCode}");
      }
    } on Dio catch (e) {
      return [];
    }
  }
}
