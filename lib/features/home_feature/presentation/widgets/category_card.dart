import 'package:flutter/material.dart';
import 'package:now_news/core/shared_widgets/custom_text.dart';
import 'package:now_news/core/utiles/app_colors.dart';
import 'package:now_news/core/utiles/app_styles.dart';
import 'category_articles.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.color,
    required this.image,
    required this.text,
    required this.bottomLeft,
    required this.bottomRight,
  });
  final Color color;
  final String image;
  final String text;
  final double bottomLeft;
  final double bottomRight;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DisplayCategoryNews(category: text);
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomLeft: Radius.circular(bottomLeft),
              topRight: Radius.circular(25),
              bottomRight: Radius.circular(bottomRight)),
          image: DecorationImage(
            image: AssetImage(image),
          ),
        ),
        width: 148,
        height: 171,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: CustomText(
                      text: text,
                      style: AppStyles.font22black.copyWith(
                          color: AppColors.secondary,
                          fontWeight: FontWeight.w400))),
            ),
          ],
        ),
      ),
    );
  }
}
