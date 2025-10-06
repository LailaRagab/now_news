import 'package:flutter/material.dart';
import 'package:now_news/core/shared_widgets/app_bar.dart';
import 'package:now_news/features/home_feature/presentation/widgets/categories_listview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: CategoriesListview(),
    );
  }
}
