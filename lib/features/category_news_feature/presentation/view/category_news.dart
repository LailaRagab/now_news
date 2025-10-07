import 'package:flutter/material.dart';
import 'package:now_news/features/category_news_feature/presentation/view/widgets/news_app_bar.dart';
import 'package:now_news/features/category_news_feature/presentation/view/widgets/news_list_view_builder.dart';

class DisplayCategoryNews extends StatelessWidget {
  const DisplayCategoryNews({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: NewsAppBar(category: category),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 29.5, horizontal: 25.5),
          child: CustomScrollView(
            slivers: [
              NewsListViewBuilder(categoryType: category),
            ],
          ),
        ),
      ),
    );
  }
}
