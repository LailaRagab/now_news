import 'package:flutter/material.dart';
import '../../../../core/utiles/app_colors.dart';
import '../../../../core/utiles/app_images.dart';
import '../../home_models/categories_model.dart';
import 'category_card.dart';

class CategoriesListview extends StatelessWidget {
  CategoriesListview({super.key});

  final List<HorizontalCategoriesModel> categoriesList = [
    HorizontalCategoriesModel(
        bgImage: AppImages.business,
        name: "Business",
        bgColor: AppColors.businessColor),
    HorizontalCategoriesModel(
        bgImage: AppImages.technology,
        name: "Technology",
        bgColor: AppColors.politicsColor), //
    HorizontalCategoriesModel(
        bgImage: AppImages.ball, name: "Sports", bgColor: AppColors.ballColor),
    HorizontalCategoriesModel(
        bgImage: AppImages.health,
        name: "Health",
        bgColor: AppColors.healthColor),
    HorizontalCategoriesModel(
        bgImage: AppImages.entertainment,
        name: "Entertainment",
        bgColor: AppColors.environmentColor), //
    HorizontalCategoriesModel(
        bgImage: AppImages.science,
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
