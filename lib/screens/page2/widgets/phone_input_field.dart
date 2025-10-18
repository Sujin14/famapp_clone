import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';

class PhoneInputField extends StatelessWidget {
  final TextEditingController? controller;
  final VoidCallback? onSubmitted;

  const PhoneInputField({super.key, this.controller, this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: TextFormField(
        controller: controller,
        onFieldSubmitted: (_) => onSubmitted?.call(),
        keyboardType: TextInputType.phone,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(13), // +91 + 10 digits
        ],
        style: AppTextStyles.entryInput,
        decoration: InputDecoration(
          hintText: '90 0000 0000',
          hintStyle: AppTextStyles.entryInput.copyWith(color: Colors.grey[600]),
          prefixText: '+91 ',
          prefixStyle: AppTextStyles.entryInput,
          suffixIcon: null, // No suffix in screenshot
        ),
      ),
    );
  }
}
