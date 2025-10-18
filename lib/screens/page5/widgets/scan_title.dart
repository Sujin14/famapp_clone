import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';
import 'package:fam_app/core/theme/app_colors.dart';

class ScanTitle extends StatelessWidget {
  const ScanTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Unlock your', style: AppTextStyles.upiTitle),
        const SizedBox(height: 6),
        Text('Scan and Pay', style: AppTextStyles.upiScanTitle.copyWith(color: AppColors.accentOrange)),
      ],
    );
  }
}
