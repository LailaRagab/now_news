import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utiles/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static String routeName = "splash";

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).go("/models");
    });
    return Scaffold(
      body: Image.asset(AppImages.splash),
    );
  }
}
