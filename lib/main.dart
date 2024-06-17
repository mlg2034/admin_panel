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
    final router = AppRouter(context: context).router;
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: CustomThemeData().themeData,
    );
  }
}
