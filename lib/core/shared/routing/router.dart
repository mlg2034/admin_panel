import 'package:admin_panel/features/main_screen/screen/main_screen.dart';
import 'package:admin_panel/features/navigation_rail/screen/navigation_rail_screen.dart';
import 'package:admin_panel/features/notifications/screen/notification_screen.dart';
import 'package:admin_panel/features/settings/screen/settings_screen.dart';
import 'package:admin_panel/features/users/screen/users_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (_, GoRouterState state, child) =>
          const NavigationRailScreen(),
      // pageBuilder: (context, state, child) {
      //   return CustomTransitionPage(
      //     key: state.pageKey,
      //     child: child,
      //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
      //       return FadeTransition(
      //         opacity:
      //             CurveTween(curve: Curves.easeInOutCirc).animate(animation),
      //         child: child,
      //       );
      //     },
      //   );
      // },
      routes: [
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: '/',
          builder: (_, __) => const MainScreen(),
        ),
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: '/users',
          builder: (_, __) => const UsersScreen(),
        ),
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: '/settings',
          builder: (_, __) => const SettingsScreen(),
        ),
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: '/notifications',
          builder: (_, __) => const NotificationScreen(),
        ),
      ],
    ),
  ],
);
