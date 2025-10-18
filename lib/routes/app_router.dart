// lib/routes/app_router.dart
import 'package:go_router/go_router.dart';
import 'package:fam_app/routes/app_routes.dart';
import 'package:fam_app/screens/home/home_screen.dart';
import 'package:fam_app/screens/page1/page1_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.home,
    routes: [
      GoRoute(
        path: AppRoutes.home,
        name: AppRoutes.home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.page1,
        name: AppRoutes.page1,
        builder: (context, state) => const Page1Screen(),
      ),
      // Placeholder for future pages
      // GoRoute(
      //   path: AppRoutes.page2,
      //   name: AppRoutes.page2,
      //   builder: (context, state) => const Page2Screen(),
      // ),
    ],
  );
}