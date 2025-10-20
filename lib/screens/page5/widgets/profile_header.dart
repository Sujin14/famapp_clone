import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_colors.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFF3B3B3B), width: 1.2),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF2D274B),
            Color(0xFF1A1830),
            Color(0xFF9787F3),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
          BoxShadow(
            color: Color(0xFF9787F3).withOpacity(0.06),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: const Center(
        child: Text(
          'F',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 22,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}