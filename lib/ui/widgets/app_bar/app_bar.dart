import 'package:flutter/material.dart';
import 'package:now_news/ui/screens/search/search_screen.dart';
import 'package:now_news/utiles/colors.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: AppColors.primary,
    centerTitle: true,
    actions: [
      IconButton(
          color: AppColors.secondary,
          onPressed: () {},
          icon: const Icon(Icons.menu)),
      const SizedBox(
        width: 70,
      ),
      Text(
        "NowNews App",
        style: TextStyle(color: AppColors.secondary, fontSize: 22),
      ),
      const SizedBox(width: 70),
      IconButton(
          onPressed: () {
            showSearch(context: context, delegate: SearchScreen());
          },
          color: AppColors.secondary,
          icon: const Icon(Icons.search)),
    ],
  );
}
