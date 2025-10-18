// lib/screens/home/home_screen.dart
// Updated to include tile for page3

import 'package:flutter/material.dart';
import 'package:fam_app/routes/app_routes.dart';

import 'widgets/home_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> screens = const [
    {'title': 'Phone Verified Screen', 'route': AppRoutes.page1},
    {'title': 'Enter Phone Number Screen', 'route': AppRoutes.page2},
    {'title': 'Verifying SMS Screen', 'route': AppRoutes.page3},
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