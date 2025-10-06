import 'package:flutter/material.dart';
import '../../../../core/shared_widgets/shared_app_bar.dart';
import '../../../category_news_feature/presentation/widgets/news_list_view_builder.dart';

class DisplayCategoryNews extends StatelessWidget {
  const DisplayCategoryNews({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(),
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
