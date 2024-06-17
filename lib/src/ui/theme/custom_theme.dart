import 'package:admin_panel/src/ui/theme/color_theme.dart';
import 'package:admin_panel/src/ui/theme/text_theme.dart';
import 'package:flutter/material.dart';

class CustomThemeData {
  ThemeData get themeData {
    return ThemeData(
      primaryColor: CustomThemeColor.primaryColor,
      scaffoldBackgroundColor: CustomThemeColor.backgroundColor,
      cardColor: Colors.white,
      appBarTheme: const AppBarTheme(
        color: CustomThemeColor.primaryColor,
        elevation: 0,
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: CustomThemeColor.primaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: CustomThemeColor.borderColor),
        ),
      ),
      textTheme: TextTheme(
        labelLarge: CustomTextTheme().labelLarge,
        labelMedium: CustomTextTheme().labelMedium,
        labelSmall: CustomTextTheme().labelSmall,
        displayLarge: CustomTextTheme().displayLarge,
        displayMedium: CustomTextTheme().displayMedium,
        displaySmall: CustomTextTheme().displaySmall,
      ),
    );
  }
}
