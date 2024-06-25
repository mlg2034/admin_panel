import 'package:admin_panel/core/utils/parse_utils.dart';
import 'package:admin_panel/src/ui/theme/size.dart';
import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final Color? backgroundColor;
  final VoidCallback onPressed;
  final Widget child;
  const AppIconButton(
      {super.key,
      this.backgroundColor,
      required this.onPressed,
      required this.child});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onPressed,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: backgroundColor ?? color.onPrimaryContainer,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding:const EdgeInsets.all(
            AppSizes.size8,
          ),
          child: child,
        ),
      ),
    );
  }
}
