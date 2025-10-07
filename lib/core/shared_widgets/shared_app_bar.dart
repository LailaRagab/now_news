import 'package:flutter/material.dart';

import '../utiles/app_colors.dart';

class SharedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SharedAppBar({super.key, required this.actions});
  final List<Widget> actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))),
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.primary,
      centerTitle: true,
      actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(80);
}
