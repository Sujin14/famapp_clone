import 'package:flutter/material.dart';
import 'package:fam_app/routes/app_routes.dart';
import 'widgets/home_tile.dart';

// HomeScreen displays a list of navigable screens in the app.Each item in the list represents a screen.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // A constant list of screens in the app with their title and route.
  final List<Map<String, String>> screens = const [
    {'title': 'Phone Verified Screen', 'route': AppRoutes.page1},
    {'title': 'Enter Phone Number Screen', 'route': AppRoutes.page2},
    {'title': 'Verifying SMS Screen', 'route': AppRoutes.page3},
    {'title': 'Verification Summary Screen', 'route': AppRoutes.page4},
    {'title': 'UPI Scan and Pay Screen', 'route': AppRoutes.page5},
    {'title': 'Verify Phone Screen', 'route': AppRoutes.page6},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Clone Screens')),

      body: ListView.builder(
        itemCount: screens.length,
        itemBuilder: (context, index) {
          final item = screens[index];
          return HomeTile(
            title: item['title']!, 
            routeName: item['route']!, 
          );
        },
      ),
    );
  }
}
