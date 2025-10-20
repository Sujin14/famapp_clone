import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/continue_button.dart';
import 'widgets/verified_header.dart';
import 'widgets/verified_image.dart';
import 'package:fam_app/core/theme/app_colors.dart';

class Page1Screen extends StatelessWidget {
  const Page1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background color
          Container(color: AppColors.gradientEnd),
          Container(
            height: 160, // height of top gradient
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFEAEFFE),
                  AppColors.gradientEnd,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          // Main content
          SafeArea(
            child: Column(
              children: [
                // Top navigation
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => context.pop(),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Header
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: VerifiedHeader(
                    title: 'Phone number verified',
                    phoneNumber: '9746942596',
                  ),
                ),

                const Spacer(),

                // Illustration
                const VerifiedImage(),

                const Spacer(),

                // Continue Button
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  child: ContinueButton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}