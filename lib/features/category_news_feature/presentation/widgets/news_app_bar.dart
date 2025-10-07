import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/custom_text.dart';
import '../../../../core/shared_widgets/shared_app_bar.dart';
import '../../../../core/shared_widgets/shared_icon_button.dart';
import '../../../../core/utiles/app_colors.dart';
import '../../../search_feature/presentation/search_delegate.dart';

class NewsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NewsAppBar({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return SharedAppBar(
      actions: [
        SharedIconButton(
          icon: Icons.menu,
          color: AppColors.secondary,
          onPressed: () {},
          size: 30,
        ),
        const SizedBox(
          width: 80,
        ),
        CustomText(
            text: category,
            style: TextStyle(color: AppColors.secondary, fontSize: 22)),
        const SizedBox(width: 70),
        SharedIconButton(
          icon: Icons.search_rounded,
          color: AppColors.secondary,
          onPressed: () {
            showSearch(context: context, delegate: SearchScreen());
          },
          size: 35,
        ),
        const SizedBox(
          width: 25,
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(80);
}
