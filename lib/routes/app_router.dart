import 'package:go_router/go_router.dart';
import 'package:fam_app/routes/app_routes.dart';
import 'package:fam_app/screens/home/home_screen.dart';
import 'package:fam_app/screens/page1/page1_screen.dart';
import 'package:fam_app/screens/page2/page2_screen.dart';
import 'package:fam_app/screens/page3/page3_screen.dart';
import 'package:fam_app/screens/page4/page4_screen.dart';
import 'package:fam_app/screens/page5/page5_screen.dart';
import '../screens/page6/page6_screen.dart';

// AppRouter is a centralized class that defines all routes for the application using GoRouter.
class AppRouter {
  
  // The main router instance used throughout the app.
  static final GoRouter router = GoRouter(
    
    // The first screen that appears when the app launches.
    initialLocation: AppRoutes.home,
    
    // List of all routes in the app.
    routes: [
      
      /// Home Screen route
      GoRoute(
        path: AppRoutes.home,       // URL path for the route
        name: AppRoutes.home,       // Named route for navigation convenience
        builder: (context, state) => const HomeScreen(), // Widget to display
      ),

      // Page 1 Screen route
      GoRoute(
        path: AppRoutes.page1,
        name: AppRoutes.page1,
        builder: (context, state) => const Page1Screen(),
      ),

      // Page 2 Screen route
      GoRoute(
        path: AppRoutes.page2,
        name: AppRoutes.page2,
        builder: (context, state) => const Page2Screen(),
      ),

      // Page 3 Screen route
      GoRoute(
        path: AppRoutes.page3,
        name: AppRoutes.page3,
        builder: (context, state) => const Page3Screen(),
      ),

      // Page 4 Screen route
      GoRoute(
        path: AppRoutes.page4,
        name: AppRoutes.page4,
        builder: (context, state) => const Page4Screen(),
      ),

      // Page 5 Screen route
      GoRoute(
        path: AppRoutes.page5,
        name: AppRoutes.page5,
        builder: (context, state) => const Page5Screen(),
      ),

      // Page 6 Screen route
      GoRoute(
        path: AppRoutes.page6,
        name: AppRoutes.page6,
        builder: (context, state) => const Page6Screen(),
      ),
    ],
  );
}
