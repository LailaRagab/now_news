import 'package:flutter/material.dart';
import '../../models/article_model.dart';
import 'news.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> generalNewsList;

  const NewsListView({super.key, required this.generalNewsList});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: generalNewsList.length,
          (BuildContext, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 29.5, horizontal: 25.5),
          child: News(
            generalNews: generalNewsList[index],
          ),
        );
      }),
    );
  }
}
