// lib/screens/page4/page4_screen.dart
// New screen for Verification Summary

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fam_app/core/theme/app_colors.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';
import 'widgets/fee_note.dart';
import 'widgets/retry_button.dart';
import 'widgets/transaction_link.dart';
import 'widgets/verification_item.dart';

class Page4Screen extends StatelessWidget {
  const Page4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.summaryGradientStart, AppColors.summaryGradientEnd],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Top navigation: Close button (X)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.close, color: AppColors.white, size: 28),
                      onPressed: () => context.pop(),
                    ),
                    IconButton(
                      icon: const Icon(Icons.help_outline, color: AppColors.white, size: 28),
                      onPressed: () {
                        // Simulate help action
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Help tapped')),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              // Title
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 48.0),
                child: Text(
                  "Here's what's next",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.summaryTitle,
                ),
              ),

              const SizedBox(height: 40),

              // Verification items
              const VerificationItem(
                isSuccess: true,
                mainText: 'Aadhaar verified',
                assetPath: 'assets/images/aadhar.jpg',
              ),
              
              const VerificationItem(
                isSuccess: true,
                mainText: 'PAN verified',
                assetPath: 'assets/images/pan.jpg', // Add your asset
              ),
              VerificationItem(
                isSuccess: false,
                mainText: 'Payment Failed for video verification',
                assetPath: 'assets/images/retry_payment.jpg', // Add your asset
              ),
              const TransactionLink(),

              const Spacer(flex: 1),

              const FeeNote(),

              // Retry Button
              RetryButton(
                onPressed: () {
                  // Simulate retry; navigate or action
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Retry payment tapped')),
                  );
                },
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}