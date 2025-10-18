// lib/widgets/upi_search_bar.dart
// Search bar for UPI ID
import 'package:flutter/material.dart';
import 'package:fam_app/core/theme/app_colors.dart';
import 'package:fam_app/core/theme/app_text_styles.dart';

class UpiSearchBar extends StatelessWidget {
  const UpiSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.searchBg,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.searchBorder.withOpacity(0.3)),
        ),
        child: TextField(
          style: AppTextStyles.entryInput.copyWith(color: AppColors.white),
          decoration: InputDecoration(
            hintText: 'Pay UPI ID or number',
            hintStyle: AppTextStyles.searchHint,
            prefixIcon: Icon(Icons.search, color: AppColors.upiSubtitle),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          ),
        ),
      ),
    );
  }
}