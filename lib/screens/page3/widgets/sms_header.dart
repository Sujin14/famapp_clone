// lib/widgets/sms_header.dart
// New widget for the SMS verifying title

import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';

class SmsHeader extends StatelessWidget {
  const SmsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        children: [
          Text(
            'Verifying SMS with',
            textAlign: TextAlign.center,
            style: AppTextStyles.smsTitle,
          ),
          SizedBox(height: 4),
          Text(
            'server',
            textAlign: TextAlign.center,
            style: AppTextStyles.smsTitle,
          ),
        ],
      ),
    );
  }
}
