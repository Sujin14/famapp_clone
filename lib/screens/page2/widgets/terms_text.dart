import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';
import 'package:fam_app/core/theme/app_colors.dart';

import '../../../routes/app_routes.dart';

class TermsText extends StatelessWidget {
  const TermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: RichText(
              text: TextSpan(
                style: AppTextStyles.termsNormal,
                children: [
                  const TextSpan(text: 'By continuing, you agree to our '),
                  TextSpan(
                    style: AppTextStyles.termsLink,
                    text: 'Terms of use and Privacy policy.',
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => context.pushNamed(AppRoutes.page1), // Navigate to verified on tap (simulate continue)
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: AppColors.accentOrange.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.accentOrange,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}