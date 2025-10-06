import 'package:flutter/material.dart';

import '../../../home_feature/home_models/article.dart';

class News extends StatelessWidget {
  const News({super.key, required this.generalNews});

  final Article generalNews;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            generalNews.image ??
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUVOiiseRib5RMnu-d8hONYJdDtIIhpduzWA&s",
            fit: BoxFit.fill,
            width: double.infinity,
          ),
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
        )
      ],
    );
  }
}
