import 'package:flutter/material.dart';
import '../../routes/app_routes.dart';
import 'widgets/home_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> screens = const [
    {'title': 'Screen 1', 'route': AppRoutes.page1},
    {'title': 'Screen 2', 'route': AppRoutes.page2},
    {'title': 'Screen 3', 'route': AppRoutes.page3},
    {'title': 'Screen 4', 'route': AppRoutes.page4},
    {'title': 'Screen 5', 'route': AppRoutes.page5},
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
