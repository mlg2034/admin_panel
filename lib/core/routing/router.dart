import 'package:admin_panel/src/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final BuildContext context;
  AppRouter({required this.context});
  final router = GoRouter(
    routes: [
      GoRoute(
        path: 'main',
        builder: (context, state) => const MainScreen(),
      )
    ],
  );
}
