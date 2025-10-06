import 'package:flutter/material.dart';
import 'package:now_news/core/shared_widgets/custom_text.dart';
import 'package:now_news/core/utiles/app_styles.dart';

import '../../../../core/utiles/app_colors.dart';
import '../../../../core/utiles/app_images.dart';
import 'category_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
              text: "Pick your category\n of interest ?",
              style: AppStyles.font22black),
          const SizedBox(
            height: 29,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CategoryCard(
              color: AppColors.ballColor,
              image: AppImages.ball,
              text: 'Sports',
              bottomLeft: 25,
              bottomRight: 0,
            ),
            CategoryCard(
              color: AppColors.politicsColor,
              image: AppImages.technology,
              text: "Technology",
              bottomLeft: 0,
              bottomRight: 25,
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CategoryCard(
              color: AppColors.healthColor,
              image: AppImages.health,
              text: "Health",
              bottomLeft: 25,
              bottomRight: 0,
            ),
            const SizedBox(
              width: 20,
            ),
            CategoryCard(
              color: AppColors.businessColor,
              image: AppImages.business,
              text: "Business",
              bottomLeft: 0,
              bottomRight: 25,
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryCard(
                color: AppColors.environmentColor,
                image: AppImages.entertainment,
                text: "Entertainment",
                bottomLeft: 25,
                bottomRight: 0,
              ),
              CategoryCard(
                color: AppColors.scienceColor,
                image: AppImages.science,
                text: "Science",
                bottomLeft: 0,
                bottomRight: 25,
              ),
            ],
          )
        ],
      ),
    );
  }
}
