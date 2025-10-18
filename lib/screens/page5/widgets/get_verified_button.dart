// lib/widgets/get_verified_button.dart
// Bottom button
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fam_app/core/theme/app_colors.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';

class GetVerifiedButton extends StatelessWidget {
  const GetVerifiedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
      child: SizedBox(
        width: double.infinity,
        height: 52,
        child: ElevatedButton(
          onPressed: () => context.pushNamed('/page2'), // To phone entry
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.upiTitleOrange,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 0,
          ),
          child: const Text(
            'Get Verified',
            style: AppTextStyles.buttonText,
          ),
        ),
      ),
    );
  }
}