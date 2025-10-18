import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_colors.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 49, 27, 9),
                  Color.fromARGB(255, 30, 19, 2),
                  Color.fromARGB(255, 164, 113, 4),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: const Center(
              child: Text(
                'F',
                style: TextStyle(
                  color: AppColors.accentOrange,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const Text(
            '₹0',
            style: TextStyle(
              color: AppColors.accentYellow,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
