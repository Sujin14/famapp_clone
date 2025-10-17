import 'package:fam_app/routes/app_routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Map<String, WidgetBuilder> get routes => {
    AppRoutes.home: (context) => const HomePage(),
    AppRoutes.page1: (context) => const Page1Screen();
    AppRoutes.page2: (context) => const Page2Screen();
    AppRoutes.page3: (context) => const Page3Screen();
    AppRoutes.page4: (context) => const Page4Screen();
    AppRoutes.page5: (context) => const Page5Screen();
  };
}
