import 'package:admin_panel/core/shared/routing/router.dart';
import 'package:admin_panel/src/ui/theme/custom_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: CustomThemeData.lightThemeData,
      themeMode: ThemeMode.light,
    );
  }
}
