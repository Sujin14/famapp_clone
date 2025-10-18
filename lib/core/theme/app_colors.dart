// lib/core/theme/app_colors.dart
// Updated with colors for verification summary screen

import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Colors.indigo;
  static const Color secondary = Colors.teal;
  static const Color background = Color(0xFFF9FAFB);
  static const Color textPrimary = Colors.black87;
  static const Color textSecondary = Colors.black54;
  
  // Shared common colors
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color darkBackground = Color(0xFF0D0C1D);
  static const Color orangePrimary = Color(0xFFFFA726);
  static const Color inputBg = Color(0xFF1A1A1A);
  static const Color termsNormal = Color(0xFF8E8A93);
  
  // Custom colors for screens
  static const Color verifiedGradientStart = darkBackground;
  static const Color verifiedGradientEnd = black;
  static const Color verifiedText = white;
  static const Color phoneNumberColor = orangePrimary;
  static const Color buttonOrange = orangePrimary;
  static const Color greenGlow = Color(0xFF00E676);
  static const Color bluePhone = Color(0xFF2196F3);
  
  // Colors for phone entry screen (referencing shared)
  static const Color entryBackground = black;
  static const Color entryGradientStart = darkBackground;
  static const Color entryTitleText = white;
  static const Color entryInputBg = inputBg;
  static const Color entryInputText = white;
  static const Color entryInputBorder = orangePrimary;
  static const Color termsText = termsNormal;
  static const Color termsLink = orangePrimary;
  static const Color purplePhone = Color(0xFF9C27B0);
  static const Color orangeAccent = orangePrimary;
  
  // Colors for SMS verifying screen
  static const Color smsGradientStart = darkBackground;
  static const Color smsGradientEnd = black;
  static const Color smsTitleText = white;
  static const Color purpleGlow = Color(0xFF7B1FA2);
  static const Color blueBorder = Color(0xFF3F51B5);
  static const Color qrOrange = Color(0xFFFF9800);

  // Colors for verification summary screen
  static const Color summaryGradientStart = darkBackground;
  static const Color summaryGradientEnd = black;
  static const Color summaryTitleText = white;
  static const Color checkGreen = Color(0xFF4CAF50);
  static const Color failRed = Color(0xFFF44336);
  static const Color summaryText = white;
  static const Color summarySubText = Color(0xFFBDBDBD);
  static const Color linkOrange = orangePrimary;
  static const Color noteBg = Color(0xFF1A1A1A);
  static const Color noteText = Color(0xFFBDBDBD);
  static const Color feeIcon = Color(0xFFFF9800);
}