// lib/core/theme/app_text_styles.dart
// Updated with styles for verification summary

import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
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

  // Styles for verified screen
  static const TextStyle verifiedTitle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.verifiedText,
  );

  static const TextStyle verifiedPhone = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.phoneNumberColor,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  // Styles for phone entry screen
  static const TextStyle entryTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.entryTitleText,
  );

  static const TextStyle entryInput = TextStyle(
    fontSize: 18,
    color: AppColors.entryInputText,
  );

  static const TextStyle termsNormal = TextStyle(
    fontSize: 14,
    color: AppColors.termsText,
  );

  static const TextStyle termsLink = TextStyle(
    fontSize: 14,
    color: AppColors.termsLink,
    fontWeight: FontWeight.w500,
  );

  // Styles for SMS verifying screen
  static const TextStyle smsTitle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.smsTitleText,
    letterSpacing: 0.5,
  );

  // Styles for verification summary screen
  static const TextStyle summaryTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.summaryTitleText,
  );

  static const TextStyle summaryItemMain = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.summaryText,
  );

  static const TextStyle summaryItemSub = TextStyle(
    fontSize: 14,
    color: AppColors.summarySubText,
  );

  static const TextStyle linkText = TextStyle(
    fontSize: 14,
    color: AppColors.linkOrange,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle noteText = TextStyle(
    fontSize: 14,
    color: AppColors.noteText,
  );

  static const TextStyle retryButtonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
}