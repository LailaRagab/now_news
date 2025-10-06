import 'package:flutter/material.dart';

import 'core/utiles/app_colors.dart';
import 'core/utiles/app_images.dart';
import 'features/home_feature/presentation/home_screen.dart';
import 'features/search_feature/widgets/splash_screen.dart';

void main() {
  runApp(const NowNews());
}

class NowNews extends StatelessWidget {
  const NowNews({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        HomeScreen.routeName: (_) => const HomeScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
