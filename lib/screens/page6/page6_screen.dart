import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme/app_colors.dart';
import '../../routes/app_routes.dart';
import 'widgets/continue_button.dart';
import 'widgets/verified_header.dart';
import 'widgets/verified_image.dart';

class Page6Screen extends StatelessWidget {
  const Page6Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Base background
          Container(color: AppColors.gradientEnd),

          // Top gradient overlay
          Container(
            height: 160,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFEAEFFE), AppColors.gradientEnd],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          // Main content
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: AppColors.white,
                        size: 28,
                      ),
                      onPressed: () => context.pop(),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Header text
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: VerifiedHeader(
                    title: 'Let\'s verify\n your phone number',
                    phoneNumber: '9746942596',
                  ),
                ),

                const Spacer(),

                // Illustration
                const VerifiedImage(),

                const Spacer(),

                // Continue button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: ContinueButton(
                    onPressed: () => context.push(AppRoutes.page2),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
