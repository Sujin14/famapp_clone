import 'package:fam_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_colors.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';
import 'package:go_router/go_router.dart';

class GetVerifiedButton extends StatelessWidget {
  const GetVerifiedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 220,
        height: 56,
        child: ElevatedButton(
          onPressed: () => context.pushNamed(AppRoutes.page3),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.accentOrange,
            elevation: 6,
            shadowColor: Colors.black.withOpacity(0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(38),
            ),
          ),
          child: Text(
            'Get Verified',
            style: AppTextStyles.buttonText.copyWith(
              color: AppColors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}