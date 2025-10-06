import 'package:flutter/material.dart';

import '../../home_models/categories_model.dart';
import 'category_articles.dart';

class CategoryCards extends StatelessWidget {
  const CategoryCards({super.key, required this.model});

  final HorizontalCategoriesModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DisplayCategoryNews(category: model.name);
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          color: model.bgColor,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(model.bgImage),
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
                child: Text(
                  model.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
