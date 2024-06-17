import 'package:admin_panel/src/ui/theme/color_theme.dart';
import 'package:flutter/material.dart';


class CustomTextTheme {
  final TextStyle labelLarge;
  final TextStyle labelMedium;
  final TextStyle labelSmall;
  final TextStyle displayLarge;
  final TextStyle displayMedium;
  final TextStyle displaySmall;

  CustomTextTheme({
    this.labelLarge = const TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: CustomThemeColor.primaryColor,
      fontFamily: 'Righteous',
    ),
    this.labelMedium = const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: CustomThemeColor.secondaryColor,
      fontFamily: 'Righteous',
    ),
    this.labelSmall = const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: CustomThemeColor.textColor,
      fontFamily: 'Righteous',
    ),
    this.displayLarge = const TextStyle(
      fontSize: 42.0,
      fontWeight: FontWeight.bold,
      color: CustomThemeColor.primaryColor,
      fontFamily: 'Righteous',
    ),
    this.displayMedium = const TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.bold,
      color: CustomThemeColor.secondaryColor,
      fontFamily: 'Righteous',
    ),
    this.displaySmall = const TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: CustomThemeColor.textColor,
      fontFamily: 'Righteous',
    ),
  });
  CustomTextTheme copyWith({
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
  }) {
    return CustomTextTheme(
      labelLarge: labelLarge ?? this.labelLarge,
      labelMedium: labelMedium ?? this.labelMedium,
      labelSmall: labelSmall ?? this.labelSmall,
      displayLarge: displayLarge ?? this.displayLarge,
      displayMedium: displayMedium ?? this.displayMedium,
      displaySmall: displaySmall ?? this.displaySmall,
    );
  }
}
