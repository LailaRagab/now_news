import 'package:flutter/material.dart';
import 'package:now_news/ui/widgets/app_bar/app_bar.dart';

import '../../widgets/news_vertical_widgets/news_list_view_builder.dart';

class DisplayCategoryNews extends StatelessWidget {
  const DisplayCategoryNews({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          NewsListViewBuilder(categoryIdentification: category),
        ],
      ),
    );
  }
}
