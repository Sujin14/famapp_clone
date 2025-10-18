// lib/widgets/retry_button.dart
// Variant of ContinueButton for retry payment

import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_colors.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';

class RetryButton extends StatelessWidget {
  final VoidCallback onPressed;

  const RetryButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
      child: SizedBox(
        width: double.infinity,
        height: 52,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.buttonOrange,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 0,
          ),
          child: Text(
            'Retry Payment',
            style: AppTextStyles.retryButtonText,
          ),
        ),
      ),
    );
  }
}