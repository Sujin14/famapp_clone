// lib/widgets/scan_title.dart
// "Unlock your Scan and Pay" title
import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';

class ScanTitle extends StatelessWidget {
  const ScanTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          Text(
            'Unlock your',
            style: AppTextStyles.upiTitle,
          ),
          SizedBox(height: 4),
          Text(
            'Scan and Pay',
            style: AppTextStyles.upiScanTitle,
          ),
        ],
      ),
    );
  }
}