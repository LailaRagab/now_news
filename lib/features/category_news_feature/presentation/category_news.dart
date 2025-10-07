import 'package:flutter/material.dart';
import 'package:now_news/features/category_news_feature/presentation/widgets/news_app_bar.dart';
import '../../../core/shared_widgets/custom_text.dart';
import '../../../core/shared_widgets/shared_app_bar.dart';
import '../../../core/shared_widgets/shared_icon_button.dart';
import '../../../core/utiles/app_colors.dart';
import '../../search_feature/presentation/search_delegate.dart';
import 'widgets/news_list_view_builder.dart';

class DisplayCategoryNews extends StatelessWidget {
  const DisplayCategoryNews({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: NewsAppBar(category: category),
        body: CustomScrollView(
          slivers: [
            NewsListViewBuilder(categoryType: category),
          ],
        ),
      ),
    );
  }
}
