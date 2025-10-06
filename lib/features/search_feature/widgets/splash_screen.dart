import 'package:flutter/material.dart';
import 'package:now_news/features/home_feature/presentation/home_screen.dart';

import '../../../core/utiles/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static String routeName = "splash";

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(AppImages.splash),
    );
  }
}
