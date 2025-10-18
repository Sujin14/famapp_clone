// lib/widgets/fee_note.dart
// Widget for the fee note with icon

import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_colors.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';

class FeeNote extends StatelessWidget {
  const FeeNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColors.noteBg,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.orangePrimary.withOpacity(0.3)),
        ),
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: AppColors.feeIcon.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.info_outlined,
                color: AppColors.feeIcon,
                size: 12,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: RichText(
                text: TextSpan(
                  style: AppTextStyles.noteText,
                  children: [
                    const TextSpan(
                      text: '₹99 nominal fee applicable for ',
                    ),
                    TextSpan(
                      style: AppTextStyles.noteText.copyWith(fontWeight: FontWeight.w500),
                      text: 'video verification',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}