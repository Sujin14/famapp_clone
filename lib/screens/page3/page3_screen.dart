import 'package:fam_app/screens/page3/widgets/sms_image.dart';
import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_colors.dart';
import 'widgets/sms_header.dart';

class Page3Screen extends StatelessWidget {
  const Page3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background color
          Container(color: AppColors.gradientEnd),

          // Top gradient overlay
          Container(
            height: 300, // height of top gradient
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 34, 30, 60),
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
                const SizedBox(height: 50),

                // Header
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: SmsHeader(),
                ),

                const SizedBox(height: 100,),

                // Illustration
                const SmsImage(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
