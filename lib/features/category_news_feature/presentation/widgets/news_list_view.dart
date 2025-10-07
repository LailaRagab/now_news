import 'package:flutter/material.dart';
import '../../models/article_model.dart';
import 'news_card.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
    required this.generalNewsList,
  });
  final List<ArticleModel> generalNewsList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext, index) {
        return NewsCard(
          articleModel: generalNewsList[index],
        );
      }),
    );
  }
}
