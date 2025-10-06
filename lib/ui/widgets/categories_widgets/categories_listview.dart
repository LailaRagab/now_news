import 'package:flutter/material.dart';
import 'package:now_news/utiles/colors.dart';

import '../../../models/categories_model.dart';
import '../../../utiles/images.dart';
import 'category_card.dart';

class CategoriesListview extends StatelessWidget {
  CategoriesListview({super.key});

  final List<HorizontalCategoriesModel> categoriesList = [
    HorizontalCategoriesModel(
        bgImage: Images.business,
        name: "Business",
        bgColor: AppColors.businessColor),
    HorizontalCategoriesModel(
        bgImage: Images.technology,
        name: "Technology",
        bgColor: AppColors.politicsColor), //
    HorizontalCategoriesModel(
        bgImage: Images.ball, name: "Sports", bgColor: AppColors.ballColor),
    HorizontalCategoriesModel(
        bgImage: Images.health, name: "Health", bgColor: AppColors.healthColor),
    HorizontalCategoriesModel(
        bgImage: Images.entertainment,
        name: "Entertainment",
        bgColor: AppColors.environmentColor), //
    HorizontalCategoriesModel(
        bgImage: Images.science,
        name: "Science",
        bgColor: AppColors.scienceColor),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 30),
      child: ListView.builder(
        itemCount: categoriesList.length,
        itemBuilder: (BuildContext, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: CategoryCards(
              model: categoriesList[index],
            ),
          );
        },
      ),
    );
  }
}
