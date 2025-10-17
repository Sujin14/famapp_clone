import 'package:fam_app/routes/app_routes.dart';
import 'package:fam_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../screens/page1/page1_screen.dart';
import '../screens/page2/page2_screen.dart';
import '../screens/page3/page3_screen.dart';
import '../screens/page4/page4_screen.dart';
import '../screens/page5/page5_screen.dart';

//Class for adding all the route constants

class AppRouter {
  static Map<String, WidgetBuilder> get routes => {
    AppRoutes.home: (context) => const HomeScreen(),
    AppRoutes.page1: (context) => const Page1Screen(),
    AppRoutes.page2: (context) => const Page2Screen(),
    AppRoutes.page3: (context) => const Page3Screen(),
    AppRoutes.page4: (context) => const Page4Screen(),
    AppRoutes.page5: (context) => const Page5Screen(),
  };
}
