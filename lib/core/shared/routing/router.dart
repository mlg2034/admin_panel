import 'package:admin_panel/features/main_screen/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final BuildContext context;
  AppRouter({required this.context});
  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MainScreen(),
      )
    ],
  );
}
