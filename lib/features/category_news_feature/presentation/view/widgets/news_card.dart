import 'package:flutter/material.dart';

import '../../../models/article_model.dart';

class NewsCard extends StatelessWidget {
  NewsCard({super.key, required this.articleModel});

  ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(
            articleModel.image ??
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUVOiiseRib5RMnu-d8hONYJdDtIIhpduzWA&s",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          articleModel.title ?? "",
          style: const TextStyle(fontSize: 25, overflow: TextOverflow.ellipsis),
        ),
        Text(
          articleModel.subTitle ?? " ",
          style: const TextStyle(
              fontSize: 14,
              overflow: TextOverflow.ellipsis,
              color: Colors.grey),
        ),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }
}
