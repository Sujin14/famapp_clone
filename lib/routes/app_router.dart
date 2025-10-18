// lib/routes/app_router.dart
// Updated to include page5 (as in previous response)
import 'package:go_router/go_router.dart';
import 'package:fam_app/routes/app_routes.dart';
import 'package:fam_app/screens/home/home_screen.dart';
import 'package:fam_app/screens/page1/page1_screen.dart';
import 'package:fam_app/screens/page2/page2_screen.dart';
import 'package:fam_app/screens/page3/page3_screen.dart';
import 'package:fam_app/screens/page4/page4_screen.dart';
import 'package:fam_app/screens/page5/page5_screen.dart';

import '../screens/page6/page6_screen.dart';

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
      GoRoute(
        path: AppRoutes.page2,
        name: AppRoutes.page2,
        builder: (context, state) => const Page2Screen(),
      ),
      GoRoute(
        path: AppRoutes.page3,
        name: AppRoutes.page3,
        builder: (context, state) => const Page3Screen(),
      ),
      GoRoute(
        path: AppRoutes.page4,
        name: AppRoutes.page4,
        builder: (context, state) => const Page4Screen(),
      ),
      GoRoute(
        path: AppRoutes.page5,
        name: AppRoutes.page5,
        builder: (context, state) => const Page5Screen(),
      ),
      GoRoute(
        path: AppRoutes.page6,
        name: AppRoutes.page6,
        builder: (context, state) => const Page6Screen(),
      ),
    ],
  );
}