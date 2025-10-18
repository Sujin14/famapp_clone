import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fam_app/core/theme/app_colors.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';
import 'widgets/fee_note.dart';
import 'widgets/retry_button.dart';
import 'widgets/verification_item.dart';

class Page4Screen extends StatelessWidget {
  const Page4Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Container(color: AppColors.gradientEnd),
          Container(
            height: 200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 61, 39, 3), AppColors.gradientEnd],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0), // global padding
              child: Column(
                children: [
                  // Top navigation
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: AppColors.white,
                          size: 26,
                        ),
                        onPressed: () => context.pop(),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.help_outline,
                          color: AppColors.white,
                          size: 26,
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Help tapped')),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Here's what's next",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.summaryTitle,
                  ),
                  const SizedBox(height: 40),

                  // Verification items
                  VerificationItem(
                    isSuccess: true,
                    mainText: 'Aadhaar verified',
                    subText: 'Farhan Mon P',
                    leadingAsset: 'assets/images/tick1.png',
                    trailingAsset: 'assets/images/aadhar.jpg',
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 78, 78, 78),
                    thickness: 1,
                  ),
                  VerificationItem(
                    isSuccess: true,
                    mainText: 'PAN verified',
                    subText: 'Farhan Mon P',
                    leadingAsset: 'assets/images/tick1.png',
                    trailingAsset: 'assets/images/pan.jpg',
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 78, 78, 78),
                    thickness: 1,
                  ),

                  // Payment failed
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VerificationItem(
                        isSuccess: false,
                        mainText: 'Payment Failed',
                        subTextWidget: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'for video verification',
                              style: AppTextStyles.summaryItemSub,
                            ),
                            const SizedBox(
                              height: 1,
                            ), 
                            Text(
                              'View transaction',
                              style: AppTextStyles.summaryItemSub.copyWith(
                                color: AppColors.accentOrange,
                              ),
                            ),
                          ],
                        ),
                        leadingAsset: 'assets/images/cross.jpg',
                        trailingAsset: 'assets/images/retry_payment.jpg',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const FeeNote(),
                  const SizedBox(height: 80),
                  RetryButton(
                    onPressed: () {
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
        ],
      ),
    );
  }
}
