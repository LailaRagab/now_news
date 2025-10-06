// class for API request.
import 'package:dio/dio.dart';

import '../features/home_feature/home_models/article.dart';

class NewsServices {
  final Dio dio;
  String apiKey = "0ba430b1f4bd4406ae7cead0348c272c";
  String apiBaseUrl = "https://newsapi.org/v2";

  NewsServices({required this.dio});

  Future<List<Article>> getNews({required String categoryType}) async {
    try {
      Response response = await dio.get(
          "$apiBaseUrl/top-headlines?country=us&apiKey=$apiKey&category=$categoryType");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      // To convert each map inside the articles list into obj
      List<Article> articleList = [];
      for (var article in articles) {
        Article articleContent = Article.fromJson(article);
        articleList.add(articleContent);
      }
      //list of objects 'articles'
      return articleList;
    } on Exception catch (e) {
      return [];
    }
  }

  // API method for search screen
  Future<List<Article>> getSearchedNews({required String searchedQuery}) async {
    try {
      Response response = await dio.get(
          "$apiBaseUrl/everything?q=$searchedQuery&from=2024-12-18&to=2024-12-18&sortBy=popularity&apiKey=$apiKey");
      if (response.statusCode! >= 200 && response.statusCode! <= 600) {
        Map<String, dynamic> jsonData = response.data;
        List<dynamic> articles = jsonData["articles"];
        // To convert each map inside the articles list into obj
        List<Article> articleList = [];
        for (var article in articles) {
          Article articleContent = Article.fromJson(article);
          articleList.add(articleContent);
        }
        //list of objects 'articles'
        return articleList;
      } else {
        throw Exception("Error ${response.statusCode}");
      }
    } on Exception catch (e) {
      return [];
    }
  }
}
