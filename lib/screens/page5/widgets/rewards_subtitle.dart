// lib/widgets/rewards_subtitle.dart
// Subtitle text
import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';

class RewardsSubtitle extends StatelessWidget {
  const RewardsSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: Text(
        'Big rewards\nWin on recharges, gift cards\n & Google Play Redeem Codes.',
        textAlign: TextAlign.center,
        style: AppTextStyles.upiSubtitle,
      ),
    );
  }
}