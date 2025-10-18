// lib/widgets/transaction_link.dart
// Tappable "View transaction" link

import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';

class TransactionLink extends StatelessWidget {
  const TransactionLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: GestureDetector(
        onTap: () {
          // Simulate navigation or action; adjust as needed
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('View transaction tapped')),
          );
        },
        child: Text(
          'View transaction',
          style: AppTextStyles.linkText,
        ),
      ),
    );
  }
}