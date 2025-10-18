// lib/widgets/home_tile.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeTile extends StatelessWidget {
  final String title;
  final String routeName;

  const HomeTile({super.key, required this.title, required this.routeName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () => context.pushNamed(routeName),
    );
  }
}
