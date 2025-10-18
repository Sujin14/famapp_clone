import 'package:flutter/material.dart';

class RewardsImage extends StatelessWidget {
  const RewardsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Image.asset(
        'assets/images/trophy.png',
        height: 260,
        width: 250,
        fit: BoxFit.contain,
      ),
    );
  }
}
