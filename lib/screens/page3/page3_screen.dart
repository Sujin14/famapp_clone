import 'package:fam_app/screens/page3/sms_image.dart';
import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_colors.dart';
import 'widgets/sms_header.dart';

class Page3Screen extends StatelessWidget {
  const Page3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.gradientStart, AppColors.gradientEnd],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 100),

              // Header
              const SmsHeader(),

              const Spacer(flex: 1),

              // Illustration
              const SmsImage(),

              const Spacer(flex: 2),

              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
