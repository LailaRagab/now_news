import 'package:flutter/material.dart';
import 'package:now_news/core/shared_widgets/shared_app_bar.dart';
import 'package:now_news/features/home_feature/presentation/view/widgets/home_body.dart';

import '../../../../core/shared_widgets/custom_text.dart';
import '../../../../core/shared_widgets/shared_icon_button.dart';
import '../../../../core/utiles/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SharedAppBar(
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
            Center(
              child: CustomText(
                  text: "NowNews",
                  style: TextStyle(color: AppColors.secondary, fontSize: 22)),
            ),
            const SizedBox(width: 150),
          ],
        ),
        body: HomeBody(),
      ),
    );
  }
}
