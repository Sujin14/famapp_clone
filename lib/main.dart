
import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_theme.dart';
import 'package:fam_app/routes/app_router.dart';

//Starting point of the app
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'UI Clone Task',
      theme: AppTheme.lightTheme, 
      routerConfig: AppRouter.router, // Uses GoRouter for named routing
    );
  }
}