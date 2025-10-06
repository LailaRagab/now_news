import 'package:flutter/material.dart';
import 'package:now_news/core/shared_widgets/shared_app_bar.dart';
import 'package:now_news/features/home_feature/presentation/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SharedAppBar(),
        body: HomeBody(),
      ),
    );
  }
}
