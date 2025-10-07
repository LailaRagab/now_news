import 'package:flutter/material.dart';

import '../../models/article_model.dart';

class News extends StatelessWidget {
  const News({super.key, required this.generalNews});

  final ArticleModel generalNews;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(
            generalNews.image ??
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUVOiiseRib5RMnu-d8hONYJdDtIIhpduzWA&s",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          generalNews.title,
          style: const TextStyle(fontSize: 25, overflow: TextOverflow.ellipsis),
        ),
        Text(
          generalNews.subTitle ?? " ",
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
