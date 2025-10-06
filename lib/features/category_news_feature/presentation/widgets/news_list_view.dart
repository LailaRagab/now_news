import 'package:flutter/material.dart';
import '../../../home_feature/models/article.dart';
import 'news.dart';

class NewsListView extends StatelessWidget {
  final List<Article> generalNewsList;

  const NewsListView({super.key, required this.generalNewsList});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: generalNewsList.length,
          (BuildContext, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: News(
            generalNews: generalNewsList[index],
          ),
        );
      }),
    );
  }
}
