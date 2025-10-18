import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';
import 'package:fam_app/core/theme/app_colors.dart';

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
                    style: AppTextStyles.termsLink.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                    text: 'Terms\n of use',
                  ),
                  const TextSpan(text: ' and '),
                  TextSpan(
                    style: AppTextStyles.termsLink.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                    text: 'Privacy policy.',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 12),
          CircleAvatar(
            radius: 30,
            backgroundColor: const Color.fromARGB(255, 109, 77, 29),
            child: Icon(Icons.arrow_forward,size: 30,color: AppColors.black,)
          ),
        ],
      ),
    );
  }
}
