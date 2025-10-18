import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';
import 'package:fam_app/core/theme/app_colors.dart';

class PhoneInputField extends StatelessWidget {
  final TextEditingController? controller;
  final VoidCallback? onSubmitted;

  const PhoneInputField({super.key, this.controller, this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onFieldSubmitted: (_) => onSubmitted?.call(),
      keyboardType: TextInputType.phone,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10),
      ],
      style: AppTextStyles.entryInput.copyWith(
        color: AppColors.white,
      ),
      decoration: InputDecoration(
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
        prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        border: InputBorder.none,
      ),
    );
  }
}
