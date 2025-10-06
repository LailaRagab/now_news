import 'package:flutter/material.dart';

import '../../../../home_feature/models/article.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              article.image ??
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUVOiiseRib5RMnu-d8hONYJdDtIIhpduzWA&s",
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          ),
          Text(
            article.title,
            style:
                const TextStyle(fontSize: 25, overflow: TextOverflow.ellipsis),
          ),
          Text(
            article.subTitle ?? " ",
            style: const TextStyle(
                fontSize: 14,
                overflow: TextOverflow.ellipsis,
                color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
