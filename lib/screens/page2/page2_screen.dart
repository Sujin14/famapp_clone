import 'package:fam_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fam_app/core/theme/app_colors.dart';
import 'widgets/phone_image.dart';
import 'widgets/phone_input_field.dart';
import 'widgets/terms_text.dart';

class Page2Screen extends StatefulWidget {
  const Page2Screen({super.key});

  @override
  State<Page2Screen> createState() => _Page2ScreenState();
}

class _Page2ScreenState extends State<Page2Screen> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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

          // Scrollable main content
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 40),
              child: Column(
                children: [
                  // Back button
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
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

                  const SizedBox(height: 60),

                  // Illustration
                  const PhoneImage(),

                  const SizedBox(height: 40),

                  // Title
                  const Text(
                    'Enter Phone number',
                    style: AppTextStyles.entryTitle,
                  ),

                  const SizedBox(height: 40),

                  // Input Field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: PhoneInputField(
                    ),
                  ),

                  const SizedBox(height: 250),

                  // Terms Text
                  const TermsText(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}