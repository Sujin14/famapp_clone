
import 'package:flutter/material.dart';

class RewardsImage extends StatelessWidget {
  const RewardsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Image.asset(
        'assets/images/trophy.jpg',
        height: 250,
        fit: BoxFit.contain,
      ),
    );
  }
}
