import 'package:admin_panel/src/ui/theme/size.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Widget child;
  const CardWidget({super.key , required this.child});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color.onPrimary,
        border: Border.all(
          width: 0.5,
          color: color.primary,
        ),
        shape: BoxShape.rectangle,
        boxShadow: [
        BoxShadow(
        color: color.onSecondary.withOpacity(0.3), 
        offset: const Offset(0, 4), 
        blurRadius: 10,  
        spreadRadius: 1,  
      )
        ] , 
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.size16),
        child: child
      ),
    );
  }
}
