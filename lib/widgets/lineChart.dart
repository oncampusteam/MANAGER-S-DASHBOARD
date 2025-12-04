import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        gridData: const FlGridData(show: false),
        titlesData: FlTitlesData(
          leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              interval: 1, // 👈 ensures only 0,1,2,...,6 show
              getTitlesWidget: getBottomTitles,
            ),
          ),
        ),
        borderData: FlBorderData(show: false),
        minX: 0,
        maxX: 6,
        minY: 0,
        maxY: 6,
        lineBarsData: [
          LineChartBarData(
            isCurved: true,
            spots: const [
              FlSpot(0, 3),
              FlSpot(1, 1),
              FlSpot(2, 4),
              FlSpot(3, 2),
              FlSpot(4, 5),
              FlSpot(5, 1),
              FlSpot(6, 3),
            ],
            color: Color(0xFF637587),
            barWidth: 4,
            isStrokeCapRound: true,
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
                  Color(0xFFF0F2F5),
                  Color(0x00F0F2F5),
                ],
              ),
            ),
            dotData: const FlDotData(show: false),
          ),
        ],
      ),
    );
  }

  /// Bottom axis titles (days of week)
  Widget getBottomTitles(double value, TitleMeta meta) {
    const days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

    if (value < 0 || value >= days.length) {
      return const SizedBox.shrink();
    }

    final style = const TextStyle(
      color: Color(0xFF637587),
      fontWeight: FontWeight.bold,
      fontSize: 12,
      fontFamily: "Manrope"
    );

    return SideTitleWidget(
      meta: meta, // 👈 you forgot this earlier
      space: 4,
      child: Text(days[value.toInt()], style: style),
    );
  }
}


class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  int _selectedSegment = 1; // 0 for Day, 1 for Month, 2 for Yearly

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildSegmentedControl(),
        const SizedBox(height: 30),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: buildLineChart()),
        ),
      ],
    );
  }

  Widget _buildSegmentedControl() {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(42.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildSegmentButton('Day', 0),
          _buildSegmentButton('Month', 1),
          _buildSegmentButton('Yearly', 2),
        ],
      ),
    );
  }

  Widget _buildSegmentButton(String text, int index) {
    bool isSelected = _selectedSegment == index;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedSegment = index;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 0),
          curve: Curves.easeInOut,
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xFF60E9E7) : Colors.transparent,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: isSelected ? 13.sp : 11.sp,
                color: isSelected ? Colors.white : Color(0xFFA4ADBD),
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }

  
}


Widget buildLineChart({
    List<String> monthLabels = const ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
    List<FlSpot> spots = const  [
      FlSpot(0, 10000),
      FlSpot(0.5, 20000),
      FlSpot(1, 16000),
      FlSpot(1.5, 25000),
      FlSpot(2, 20000),
      FlSpot(2.5, 15000),
      FlSpot(3, 18000),
      FlSpot(3.2, 20000),
      FlSpot(3.6, 27000),
      FlSpot(4, 15000),
      FlSpot(4.5, 30000),
      FlSpot(5, 15000),
      // FlSpot(6, 20000),
    ],
    Color color = Colors.white,
    bool leftAxisShow = true,
    bool verticalDrawVerticalLineShow = false,
    bool horizontalDrawHorizontalLineShow = true,
    double maxX = 5,
    double maxY = 30000,
    double reservedSize = 60,
    Color lineColor = const Color(0xFF20A3A2),
    bool useHostelOwnerDashboardProperties = false,
     }) {
    // Dummy data for the line chart
    // final List<FlSpot> spots = spots;

    // X-axis labels for months
    // final List<String> monthLabels = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'];

    return Container(
      color: color,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: maxX,
          minY: 0,
          maxY: maxY,
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                interval: 1,
                showTitles: true,
                reservedSize: reservedSize,
                getTitlesWidget: (value, meta) {
                  return SideTitleWidget(
                    meta: meta,
                    space: 40.0,
                    child: Text(
                      monthLabels[value.toInt()],
                      style: TextStyle(
                        color: useHostelOwnerDashboardProperties? Color(0xFF637587):Color(0xFF8A8A8A),
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"

                      ),
                    ),
                  );
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: leftAxisShow,
                reservedSize: 40,
                getTitlesWidget: (value, meta) {
                  String text;
                  switch (value.toInt()) {
                    case 0:
                      text = '¢0';
                      break;
                    case 10000:
                      text = '¢10k';
                      break;
                    case 20000:
                      text = '¢20k';
                      break;
                    case 30000:
                      text = '¢30k';
                      break;
                    default:
                      return const SizedBox.shrink();
                  }
                  return Text(
                    text,
                    style: TextStyle(
                      color: Color(0xFF8A8A8A),
                      fontFamily: "Roboto",
                      fontSize: 13.sp,
                    ),
                    textAlign: TextAlign.left,
                  );
                },
              ),
            ),
            rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: horizontalDrawHorizontalLineShow,
            drawVerticalLine: verticalDrawVerticalLineShow,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color.fromRGBO(158, 158, 158, 0.15),
                strokeWidth: 1,
                dashArray: [10,10]
              );
            },
          ),
          borderData: FlBorderData(
            show: false,
          ),
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              // tooltipBgColor: Colors.white,
              getTooltipItems: (touchedSpots) {
                return touchedSpots.map((spot) {
                  return LineTooltipItem(
                    '¢${spot.y.toInt()}',
                    const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  );
                }).toList();
              },
            ),
            touchCallback: (FlTouchEvent, LineTouchResponse) {},
            handleBuiltInTouches: true,
          ),
          lineBarsData: [
            LineChartBarData(
              spots: spots,
              isCurved: true,
              color: lineColor,
              barWidth: 3,
              isStrokeCapRound: true,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                color: Colors.transparent,
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFFE8F0F2),
                    const Color.fromRGBO(232, 240, 242, 0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }