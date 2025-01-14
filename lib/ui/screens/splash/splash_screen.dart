import 'package:flutter/material.dart';
import 'package:now_news/ui/screens/home/home_screen.dart';

import '../../../utiles/images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static String routeName = "splash";

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(Images.splash),
    );
  }
}
