import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';

class VerifiedHeader extends StatelessWidget {
  final String title;
  final String phoneNumber;

  const VerifiedHeader({
    super.key,
    required this.title,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppTextStyles.verifiedTitle,
        ),
        const SizedBox(height: 8),
        Text(phoneNumber, style: AppTextStyles.verifiedPhone),
      ],
    );
  }
}