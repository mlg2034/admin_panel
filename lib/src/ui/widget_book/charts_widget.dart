import 'package:admin_panel/core/utils/parse_utils.dart';
import 'package:admin_panel/src/ui/theme/size.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartsWidget extends StatelessWidget {
  final List<FlSpot> spots;
  final double? heiht;
  final double? width;
  const ChartsWidget({super.key, required this.spots, this.heiht, this.width});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return SizedBox(
      height: heiht ?? MediaQuery.sizeOf(context).height * 0.3,
      width: width ?? MediaQuery.sizeOf(context).width * 0.3,
      child: AspectRatio(
        aspectRatio: 2,
        child: LineChart(
          LineChartData(
            backgroundColor:
                Theme.of(context).colorScheme.primary.withOpacity(0.1),
            titlesData: FlTitlesData(
                bottomTitles: _chartsTitles(context),
                rightTitles: _chartsTitles(context),
                leftTitles:
                    const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false))),
            borderData: FlBorderData(
              show: true,
              border: Border.all(color: const Color(0xff37434d), width: 1),
            ),
            minX: 0,
            maxX: 11,
            minY: 0,
            maxY: 6,
            lineBarsData: [
              LineChartBarData(
                color: color.onPrimaryContainer,
                spots: spots,
                isCurved: true,
                barWidth: 3,
                isStrokeCapRound: true,
                dotData: const FlDotData(show: true),
                belowBarData: BarAreaData(show: true),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _chartsTitles(BuildContext context) {
    return AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        getTitlesWidget: (double value, TitleMeta meta) {
          if (value.isFinite) {
            return Padding(
              padding: const EdgeInsets.only(
                left: AppSizes.size4,
              ),
              child: Text(
                ParseUtils.doubleToString(value),
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            );
          } else {
            return const Text('N/A');
          }
        },
      ),
    );
  }

  List<FlSpot> validateDataPoints(List<FlSpot> spots) {
    return spots.where((spot) => spot.x.isFinite && spot.y.isFinite).toList();
  }
}
