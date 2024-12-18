import 'package:flutter/material.dart';
import 'package:now_news/ui/screens/home/home_screen.dart';
import 'package:now_news/ui/screens/splash/splash_screen.dart';

void main(){
  runApp(const NowNews());
}
 class NowNews extends StatelessWidget {
   const NowNews({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       routes: {
         SplashScreen.routeName : (_) => const SplashScreen(),
         HomeScreen.routeName : (_) => const HomeScreen(),
       },
       initialRoute: SplashScreen.routeName ,
       );
   }
 }
