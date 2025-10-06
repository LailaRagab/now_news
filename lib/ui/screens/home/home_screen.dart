import 'package:flutter/material.dart';

import '../../widgets/app_bar/app_bar.dart';
import '../../widgets/categories_widgets/categories_listview.dart';

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
