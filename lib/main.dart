import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'routes/app_routes.dart';
import 'routes/app_router.dart';

//Starting point of the app
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Clone Task',
      theme: AppTheme.lightTheme,//File having the theme data
      initialRoute: AppRoutes.home, // Initial route pointing to the HomeScreen
      routes: AppRouter.routes, // Approuter stores all the routes
    );
  }
}
