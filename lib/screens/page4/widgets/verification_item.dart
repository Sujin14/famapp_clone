// lib/widgets/verification_item.dart
// Reusable widget for verification list items

import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_colors.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';

class VerificationItem extends StatelessWidget {
  final bool isSuccess;
  final String mainText;
  final String? subText;
  final String? assetPath; // Path to leading/trailing asset, e.g., 'assets/images/aadhaar_icon.png'

  const VerificationItem({
    super.key,
    required this.isSuccess,
    required this.mainText,
    this.subText,
    this.assetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 4.0),
      child: Row(
        children: [
          // Check or X icon
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: isSuccess ? AppColors.checkGreen.withOpacity(0.2) : AppColors.failRed.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(
              isSuccess ? Icons.check : Icons.close,
              color: isSuccess ? AppColors.checkGreen : AppColors.failRed,
              size: 16,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(mainText, style: AppTextStyles.summaryItemMain),
                if (subText != null)
                  Text(subText!, style: AppTextStyles.summaryItemSub),
              ],
            ),
          ),
          if (assetPath != null)
            Image.asset(
              assetPath!,
              height: 40,
              width: 40,
              fit: BoxFit.contain,
            ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}