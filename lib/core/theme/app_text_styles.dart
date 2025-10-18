// lib/core/theme/app_text_styles.dart
// Text styles matching the screenshot's font sizes, weights, and colors exactly.
// No changes needed as existing styles align with the visual hierarchy in the image.

import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  // Common Text Styles
  static const TextStyle title = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 14,
    color: AppColors.textSecondary,
  );

  static const TextStyle heading = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  // Verified Screen
  static const TextStyle verifiedTitle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const TextStyle verifiedPhone = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.accentOrange,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  // Phone Entry Screen
  static const TextStyle entryTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const TextStyle entryInput = TextStyle(
    fontSize: 18,
    color: AppColors.white,
  );

  static const TextStyle termsNormal = TextStyle(
    fontSize: 14,
    color: AppColors.textMuted,
  );

  static const TextStyle termsLink = TextStyle(
    fontSize: 14,
    color: AppColors.accentOrange,
    fontWeight: FontWeight.w500,
  );

  // SMS Verifying Screen
  static const TextStyle smsTitle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w900,
    color: AppColors.white,
  );

  // Verification Summary Screen
  static const TextStyle summaryTitle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const TextStyle summaryItemMain = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const TextStyle summaryItemSub = TextStyle(
    fontSize: 14,
    color: Color.fromARGB(255, 144, 143, 143),
  );

  static const TextStyle linkText = TextStyle(
    fontSize: 14,
    color: AppColors.accentOrange,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle noteText = TextStyle(
    fontSize: 14,
    color: AppColors.textSubtle,
  );

  static const TextStyle retryButtonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  // UPI Scan & Pay Screen
  static const TextStyle upiTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const TextStyle upiScanTitle = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.accentOrange,
  );

  static const TextStyle upiSubtitle = TextStyle(
    fontSize: 14,
    color: AppColors.textMuted,
  );

  static const TextStyle searchHint = TextStyle(
    fontSize: 16,
    color: AppColors.textMuted,
  );
}