import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';
import 'package:fam_app/core/theme/app_colors.dart';

class UpiSearchBar extends StatelessWidget {
  const UpiSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.accentYellow,
            borderRadius: BorderRadius.circular(16),
          ),
        ),

        Transform.translate(
          offset: const Offset(0, -1),
          child: Container(
            height: 39,
            decoration: BoxDecoration(
              color: AppColors.searchBackground,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: const Color(0xFF3A2B16).withOpacity(0.95),
              ),
            ),
            child: Row(
              children: [
                const SizedBox(width: 12),
                const Icon(Icons.search, color: AppColors.white, size: 24),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Pay UPI ID or number',
                    style: AppTextStyles.searchHint.copyWith(
                      color: AppColors.textMuted,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
