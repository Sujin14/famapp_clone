import 'dart:async';
import 'package:fam_app/screens/page3/widgets/sms_image.dart';
import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_colors.dart';
import 'package:fam_app/routes/app_routes.dart';
import 'package:go_router/go_router.dart';
import 'widgets/sms_header.dart';

class Page3Screen extends StatefulWidget {
  const Page3Screen({super.key});

  @override
  State<Page3Screen> createState() => _Page3ScreenState();
}

class _Page3ScreenState extends State<Page3Screen> {
  @override
  void initState() {
    super.initState();

    // Navigate to screen after 5 seconds
    Timer(const Duration(seconds: 5), () {
      if (mounted) {
        context.pushNamed(AppRoutes.page1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background color
          Container(color: AppColors.gradientEnd),

          // Top gradient overlay
          Container(
            height: 160,
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
                const SizedBox(height: 50),

                // Header
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: SmsHeader(),
                ),

                const SizedBox(height: 100),

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