import 'package:go_router/go_router.dart';
import 'package:now_news/features/category_news_feature/presentation/category_news.dart';
import 'package:now_news/features/home_feature/presentation/home_screen.dart';

import '../../features/search_feature/presentation/search_screen.dart';
import '../../features/splash_feature/presentation/splash_screen.dart';

class AppRouter {
  static var router = GoRouter(routes: [
    GoRoute(path: "/", builder: (context, state) => SplashScreen()),
    GoRoute(path: "/models", builder: (context, state) => HomeScreen()),
    GoRoute(path: "/search", builder: (context, state) => SearchScreen()),
    GoRoute(
        path: "/displayCategoryNews",
        builder: (context, state) =>
            DisplayCategoryNews(category: state.extra.toString())),
  ]);
}
