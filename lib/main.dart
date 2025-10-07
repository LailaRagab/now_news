import 'package:flutter/material.dart';

import 'core/constants/app_router.dart';
import 'core/utiles/app_colors.dart';
import 'core/utiles/app_images.dart';

void main() {
  runApp(const NowNews());
}

class NowNews extends StatelessWidget {
  const NowNews({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.background),
              fit: BoxFit.cover,
            ),
          ),
          child: child,
        );
      },
      theme: ThemeData(scaffoldBackgroundColor: AppColors.transparent),
    );
  }
}
