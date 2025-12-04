import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BarChartSample extends StatelessWidget {
  const BarChartSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: 300,
          child: BarChart(
            BarChartData(
              alignment: BarChartAlignment.spaceAround,
              maxY: 10,
              gridData: FlGridData(show: false),
              borderData: FlBorderData(show: false),
              titlesData: FlTitlesData(
                topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false)),
                rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false)),
                leftTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false)),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      const labels = ['Sep', 'Oct', 'Nov', 'Dec', 'Jan'];
                      if (value.toInt() < labels.length) {
                        return Text(
                          labels[value.toInt()],
                          style: TextStyle(
                            color: Color(0xFF111111),
                            fontFamily: "Roboto",
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        );
                      }
                      return const SizedBox.shrink();
                    },
                  ),
                ),
              ),
              barGroups: [
                makeGroupData(0, 4),
                makeGroupData(1, 10),
                makeGroupData(2, 5),
                makeGroupData(3, 8),
                makeGroupData(4, 2),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(int x, double y) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          color: Color(0xFF00EFD1),
          toY: y,
          width: 24,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.zero,
            topRight: Radius.zero,
          ),
          rodStackItems: [
            BarChartRodStackItem(0, y - 0.1, Color(0xFFE8F0F2)),
          ]
          // gradient: const LinearGradient(
          //   colors: [Color(0xFF20A3A2), Color(0xFFE0E7E9)],
          //   begin: Alignment.,
          //   end: Alignment.bottomCenter,
          // ),
        ),
      ],
    );
  }
}
