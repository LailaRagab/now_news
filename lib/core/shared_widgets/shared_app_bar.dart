import 'package:flutter/material.dart';
import 'package:now_news/core/shared_widgets/shared_icon_button.dart';
import 'package:now_news/features/search_feature/presentation/search_screen.dart';

import '../utiles/app_colors.dart';
import 'custom_text.dart';

class SharedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SharedAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))),
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.primary,
      centerTitle: true,
      actions: [
        SharedIconButton(
          icon: Icons.menu,
          color: AppColors.secondary,
        ),
        const SizedBox(
          width: 70,
        ),
        CustomText(
            text: "NowNews",
            style: TextStyle(color: AppColors.secondary, fontSize: 22)),
        const SizedBox(width: 70),
        SharedIconButton(
            icon: Icons.search,
            color: AppColors.secondary,
            onPressed: () {
              showSearch(context: context, delegate: SearchScreen());
            }),
        const SizedBox(
          width: 25,
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
