import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:now_news/ui/widgets/search_widget/article_item.dart';
import 'package:now_news/utiles/colors.dart';

import '../../../api/news_services.dart';
import '../../../models/article.dart';
import '../../../utiles/images.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key, required this.search});

  final String search;

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  var future;

  @override
  void initState() {
    super.initState();
    future =
        NewsServices(dio: Dio()).getSearchedNews(searchedQuery: widget.search);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.background),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        body: FutureBuilder<List<Article>>(
          future: future,
          builder:
              (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
            if (snapshot.hasData) {
              List<Article>? allArticles = snapshot.data;
              return CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                        childCount: allArticles!.length, (BuildContext, index) {
                      return ArticleItem(
                        article: allArticles[index],
                      );
                    }),
                  ),
                ],
              );
            } else if (snapshot.hasError) {
              return Center(
                  child: Text("An error occurred: ${snapshot.error}"));
            } else {
              return const Center(
                heightFactor: 10,
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
