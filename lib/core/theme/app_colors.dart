// lib/core/theme/app_colors.dart
// Application-wide color palette with exact matches to the screenshot's dark theme,
// including a subtle light orange-tinted gradient start for the top of the screen.

import 'package:flutter/material.dart';

class AppColors {
  // === Core Brand Palette ===
  static const Color primary = Colors.indigo;
  static const Color secondary = Colors.teal;
  static const Color background = Color(0xFFF9FAFB);
  static const Color white = Colors.white;
  static const Color black = Colors.black;

  // === Text Colors ===
  static const Color textPrimary = Colors.black87;
  static const Color textSecondary = Colors.black54;
  static const Color textMuted = Color(0xFF8E8E93);
  static const Color textSubtle = Color(0xFFBDBDBD);

  // === Accent Colors (Unified Naming) ===
  static const Color accentOrange = Color(0xFFFFA726);
  static const Color accentBlue = Color(0xFF2196F3);
  static const Color accentPurple = Color(0xFF9C27B0);
  static const Color accentGreen = Color(0xFF4CAF50);
  static const Color accentRed = Color(0xFFF44336);
  static const Color accentYellow = Color(0xFFFFC107);

  // === Thematic Backgrounds ===
  static const Color darkBackground = Color(0xFF0D0C1D);
  static const Color inputBackground = Color(0xFF1A1A1A);
  static const Color noteBackground = Color(0xFF1A1A1A);

  // === Gradients ===
  // Updated gradientStart to include a subtle light orange tint at the top to match the screenshot's top gradient effect.
  static const Color gradientStart = Color(0xFF2D1B00);
  static const Color gradientEnd = black;

  // === Common Component Colors ===
  static const Color borderOrange = accentOrange;
  static const Color buttonPrimary = accentOrange;
  static const Color searchBackground = inputBackground;
  static const Color searchBorder = accentOrange;
  static const Color feeIcon = accentOrange;

  // === Utility Colors ===
  static const Color glowGreen = Color(0xFF00E676);
  static const Color glowPurple = Color(0xFF7B1FA2);
  static const Color borderBlue = Color(0xFF3F51B5);
}