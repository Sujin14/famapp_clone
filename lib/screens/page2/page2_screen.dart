import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fam_app/core/theme/app_colors.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';
import '../../routes/app_routes.dart';
import 'widgets/phone_image.dart';
import 'widgets/phone_input_field.dart';
import 'widgets/terms_text.dart';

class Page2Screen extends StatefulWidget {
  const Page2Screen({super.key});

  @override
  State<Page2Screen> createState() => _Page2ScreenState();
}

class _Page2ScreenState extends State<Page2Screen> {
  final TextEditingController _phoneController = TextEditingController(
    text: '90 0000 0000',
  );

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.gradientStart, AppColors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Custom Back Button
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

              // Title
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 48.0),
                child: Text(
                  'Enter phone number',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.entryTitle,
                ),
              ),

              const SizedBox(height: 60),

              // Phone Illustration
              const PhoneImage(),

              const SizedBox(height: 60),

              // Input Field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: PhoneInputField(
                  controller: _phoneController,
                  onSubmitted: () => context.pushNamed(
                    AppRoutes.page1,
                  ), // Simulate verification
                ),
              ),

              const Spacer(flex: 1),

              // Terms Text
              const TermsText(),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
