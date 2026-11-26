import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract final class AppTypography {
  static const fontFamily = 'Notion Sans';
  static const fontFallback = <String>['Inter', 'Segoe UI', 'Arial'];

  static TextTheme get textTheme => const TextTheme(
        displayLarge: TextStyle(
          fontSize: 80,
          fontWeight: FontWeight.w600,
          height: 1.05,
          letterSpacing: -2,
        ),
        displayMedium: TextStyle(
          fontSize: 56,
          fontWeight: FontWeight.w600,
          height: 1.1,
          letterSpacing: -1,
        ),
        headlineLarge: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w600,
          height: 1.15,
          letterSpacing: -0.5,
        ),
        headlineMedium: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w600,
          height: 1.2,
          letterSpacing: -0.5,
        ),
        headlineSmall: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          height: 1.25,
        ),
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          height: 1.3,
        ),
        titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          height: 1.4,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          height: 1.55,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1.5,
        ),
        bodySmall: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          height: 1.4,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          height: 1.3,
        ),
        labelMedium: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          height: 1.4,
        ),
        labelSmall: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          height: 1.4,
          letterSpacing: 1,
        ),
      ).apply(
        fontFamily: fontFamily,
        bodyColor: AppColors.ink,
        displayColor: AppColors.ink,
      );
}
