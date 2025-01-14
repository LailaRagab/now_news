import 'package:flutter/material.dart';
import 'package:now_news/ui/screens/home/home_screen.dart';
import 'package:now_news/ui/screens/splash/splash_screen.dart';
import 'package:now_news/utiles/colors.dart';
import 'package:now_news/utiles/images.dart';

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
              image: AssetImage(Images.background),
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
