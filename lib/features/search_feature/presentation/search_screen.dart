import 'package:flutter/material.dart';
import 'package:now_news/features/search_feature/presentation/search_widget.dart';

import '../../../core/utiles/app_colors.dart';

class SearchScreen extends SearchDelegate {
  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.white54),
        ),
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: Colors.white));
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: SearchWidget(search: query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
