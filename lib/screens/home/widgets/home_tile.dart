import 'package:flutter/material.dart';

// Home tile will have the page name, arrow icon and while clicking on the tile it will go to the corresponding pages

class HomeTile extends StatelessWidget {
  final String title; // page name
  final String routeName; // route

  const HomeTile({super.key, required this.title, required this.routeName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () => Navigator.pushNamed(context, routeName),
    );
  }
}
