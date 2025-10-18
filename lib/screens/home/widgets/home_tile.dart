import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// HomeTile is a reusable widget representing a single navigatable item
// It displays a title and a trailing arrow icon. Tapping the tile
class HomeTile extends StatelessWidget {
  // The text to display on the tile
  final String title;

  // The named route to navigate to when the tile is tapped
  final String routeName;

  const HomeTile({
    super.key,
    required this.title,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // Display the title text
      title: Text(title),

      // Trailing arrow to indicate navigability
      trailing: const Icon(Icons.arrow_forward_ios_rounded),

      onTap: () => context.pushNamed(routeName),
    );
  }
}
