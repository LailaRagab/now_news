import 'package:flutter/material.dart';
import 'package:now_news/features/category_news_feature/view_model/api_services/request_searched_news.dart';
import '../../../core/utiles/app_colors.dart';
import '../../../core/utiles/app_images.dart';
import '../../category_news_feature/models/article_model.dart';
import '../presentation/widgets/search_widget/article_item.dart';

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
        RequestSearchedNews().getSearchedNews(searchedQuery: widget.search);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.background),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        body: FutureBuilder<List<ArticleModel>>(
          future: future,
          builder: (BuildContext context,
              AsyncSnapshot<List<ArticleModel>> snapshot) {
            if (snapshot.hasData) {
              List<ArticleModel>? allArticles = snapshot.data;
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
