import 'package:admin_panel/src/ui/theme/size.dart';
import 'package:admin_panel/src/ui/widget_book/charts_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../src/ui/widget_book/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppIconButton(
              onPressed: () {},
              child: Icon(
                Icons.dashboard_rounded,
                color: color.surface,
              ),
            ),
            const SizedBox(width: AppSizes.size16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Title',
                  style: textStyle.labelMedium,
                ),
                Text(
                  'Desription of the title',
                  style: textStyle.labelSmall,
                )
              ],
            ),
            const Spacer(),
            Text(
              'some data ',
              style: textStyle.labelSmall
                  ?.copyWith(color: color.primary, fontWeight: FontWeight.w500),
            )
          ],
        ),
        const SizedBox(height: AppSizes.size20),
        Expanded(
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CardWidget(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Titile of diagram',
                        style: textStyle.labelSmall,
                      ),
                      const SizedBox(height: AppSizes.size16),
                      ChartsWidget(
                        width: MediaQuery.sizeOf(context).width * 0.6,
                        heiht: MediaQuery.sizeOf(context).height * 0.4,
                        spots: const [
                          FlSpot(0, 3),
                          FlSpot(2.6, 2),
                          FlSpot(4.9, 2),
                          FlSpot(8, 3),
                          FlSpot(9.5, 3),
                          FlSpot(11, 4),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: AppSizes.size20),
                CardWidget(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sub info',
                        style: textStyle.labelSmall?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: AppSizes.size12),
                      Row(
                        children: [
                          Text(
                            'some date',
                            style: textStyle.labelSmall?.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: color.onPrimaryContainer),
                          ),
                          Spacer(),
                          AppIconButton(onPressed: (){}, child: const Icon(Icons.remove_red_eye_outlined , color: Colors.white,))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
