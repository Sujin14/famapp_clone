import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';
import 'package:fam_app/core/theme/app_colors.dart';

class RewardsSubtitle extends StatelessWidget {
  const RewardsSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Big rewards\n',
              style: AppTextStyles.upiSubtitle.copyWith(
                color: AppColors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.3,
              ),
            ),
            TextSpan(
              text:
                  'Win on recharges, gift cards & Google Play Redeem Codes.',
              style: AppTextStyles.upiSubtitle.copyWith(
                color: AppColors.textMuted,
                fontSize: 14,
                fontWeight: FontWeight.normal,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
