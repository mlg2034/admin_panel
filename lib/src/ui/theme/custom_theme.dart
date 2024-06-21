import 'package:admin_panel/src/ui/theme/color_theme.dart';
import 'package:admin_panel/src/ui/theme/colors_sheme.dart';
import 'package:admin_panel/src/ui/theme/text_theme.dart';
import 'package:flutter/material.dart';

class CustomThemeData {
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);
  static ThemeData lightThemeData =
      themeData(CustomColorSheme.lightColorScheme, _lightFocusColor);
  static ThemeData darkThemeData =
      themeData(CustomColorSheme.darkColorScheme, _darkFocusColor);
  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      canvasColor: colorScheme.surface,
      scaffoldBackgroundColor: colorScheme.surface,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      cardColor: Colors.white,
      appBarTheme: const AppBarTheme(
        elevation: 0,
      ),
      buttonTheme: const ButtonThemeData(
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
