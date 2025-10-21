import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';
import 'package:fam_app/core/theme/app_colors.dart';

class PhoneInputField extends StatelessWidget {
  final TextEditingController? controller;
  final VoidCallback? onSubmitted;

  const PhoneInputField({
    super.key,
    this.controller,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Bottom container (shadow/base effect)
        Container(
          height: 58,
          decoration: BoxDecoration(
            color: AppColors.accentYellow,
            borderRadius: BorderRadius.circular(16),
          ),
        ),

        // Slightly elevated top container with actual TextField
        Transform.translate(
          offset: const Offset(0, -1),
          child: Container(
            height: 57,
            decoration: BoxDecoration(
              color: AppColors.searchBackground,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: AppColors.searchBackground,
                width: 1.2,
              ),
            ),
            child: Center(
              child: TextField(
                controller: controller,
                keyboardType: TextInputType.phone,
                onSubmitted: (_) => onSubmitted?.call(),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],
                style: AppTextStyles.entryInput.copyWith(
                  color: AppColors.white,
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  border: InputBorder.none,
                  hintText: '90 0000 0000',
                  hintStyle: AppTextStyles.entryInput.copyWith(
                    color: Colors.grey[500],
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 4),
                    child: Text(
                      '+91-',
                      style: AppTextStyles.entryInput.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  prefixIconConstraints: const BoxConstraints(
                    minWidth: 0,
                    minHeight: 0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
