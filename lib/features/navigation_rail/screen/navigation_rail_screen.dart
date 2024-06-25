import 'package:admin_panel/features/main_screen/screen/main_screen.dart';
import 'package:admin_panel/features/notifications/screen/notification_screen.dart';
import 'package:admin_panel/features/settings/screen/settings_screen.dart';
import 'package:admin_panel/features/users/screen/users_screen.dart';
import 'package:flutter/material.dart';

class NavigationRailScreen extends StatefulWidget {
  const NavigationRailScreen({super.key});

  @override
  State<NavigationRailScreen> createState() => _NavigationRailScreenState();
}

class _NavigationRailScreenState extends State<NavigationRailScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;
    const navigationRailElements = <NavigationRailDestination>[
      NavigationRailDestination(
        icon: Icon(Icons.dashboard_sharp),
        label: Text('DashBoard'),
      ),
      NavigationRailDestination(
        icon: Icon(Icons.people_alt_outlined),
        label: Text('Users'),
      ),
      NavigationRailDestination(
        icon: Icon(Icons.notifications),
        label: Text('Notifications'),
      ),
      NavigationRailDestination(
        icon: Icon(Icons.settings_outlined),
        label: Text('Settings'),
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            NavigationRail(
              backgroundColor: color.primary,
              groupAlignment: -1,
              selectedLabelTextStyle: textStyle.labelSmall
                  ?.copyWith(color: color.primary, fontSize: 12),
              unselectedLabelTextStyle: textStyle.labelSmall
                  ?.copyWith(color: color.surface, fontSize: 12),
              selectedIconTheme: IconThemeData(color: color.primary),
              unselectedIconTheme: IconThemeData(color: color.surface),
              useIndicator: true,
              labelType: NavigationRailLabelType.all,
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              destinations: navigationRailElements,
            ),
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24 , vertical: 20),
                  child: Builder(
                    builder: (context) {
                      switch (_selectedIndex) {
                        case 0:
                          return const KeyedSubtree(
                              key: ValueKey<int>(0), child: MainScreen());
                        case 1:
                          return const KeyedSubtree(
                              key: ValueKey<int>(1), child: UsersScreen());
                        case 2:
                          return const KeyedSubtree(
                              key: ValueKey<int>(2), child: NotificationScreen());
                        case 3:
                          return const KeyedSubtree(
                              key: ValueKey<int>(3), child: SettingsScreen());
                        default:
                          return const KeyedSubtree(
                              key: ValueKey<int>(0), child: MainScreen());
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
