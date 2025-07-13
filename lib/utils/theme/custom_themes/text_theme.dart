import 'package:flutter/material.dart';
import '../../constants/colors.dart';

/// Custom Class for Light & Dark Text Themes
class MhsTextTheme {
  MhsTextTheme._(); // To avoid creating instances

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: MhsColors.dark,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: MhsColors.dark,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: MhsColors.dark,
    ),

    titleLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: MhsColors.dark,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: MhsColors.dark,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: MhsColors.dark,
    ),

    bodyLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: MhsColors.dark,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: MhsColors.dark,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      // ignore: deprecated_member_use
      color: MhsColors.dark.withOpacity(0.5),
    ),

    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: MhsColors.dark,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      // ignore: deprecated_member_use
      color: MhsColors.dark.withOpacity(0.5),
    ),
  );

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: MhsColors.light,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: MhsColors.light,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: MhsColors.light,
    ),

    titleLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: MhsColors.light,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: MhsColors.light,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: MhsColors.light,
    ),

    bodyLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: MhsColors.light,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: MhsColors.light,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      // ignore: deprecated_member_use
      color: MhsColors.light.withOpacity(0.5),
    ),

    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: MhsColors.light,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      // ignore: deprecated_member_use
      color: MhsColors.light.withOpacity(0.5),
    ),
  );
}
