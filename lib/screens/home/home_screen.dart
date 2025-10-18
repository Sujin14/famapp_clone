// lib/screens/home/home_screen.dart
import 'package:flutter/material.dart';
import 'package:fam_app/routes/app_routes.dart';

import 'widgets/home_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> screens = const [
    {'title': 'Phone Verified Screen', 'route': AppRoutes.page1},
    {'title': 'Enter Phone Number Screen', 'route': AppRoutes.page2},
    // Add more as screens are implemented
    // {'title': 'Screen 2', 'route': AppRoutes.page2},
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