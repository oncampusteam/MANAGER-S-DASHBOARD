import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_campus/widgets/custompainter.dart';
import 'package:on_campus/widgets/widget.dart';
import 'package:on_campus/screens/Payment/payment.dart' as payment;

class EarningsBreakdownScreen extends StatelessWidget {
  const EarningsBreakdownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: PopScope(
        onPopInvokedWithResult: (value, result) {
          payment.textNotifier.value = "";
        },
        child: SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'Earnings Breakdown',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Work Sans",
                      color: Color(0xFF0D171C),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  buildFilterRow(),
                  SizedBox(height: 20.h),
                  buildLineChartCard(
                    title: 'Financial Report',
                    amount: 'GHS6.8M',
                    text_1: 'Since Listing',
                    text_2: ' +55%',
                    spots: [
                      FlSpot(0, 10000),
                      FlSpot(0.2, 12000),
                      FlSpot(0.3, 500),
                      FlSpot(0.7, 20000),
                      FlSpot(1, 16000),
                      FlSpot(1.5, 11000),
                      FlSpot(2, 20000),
                      FlSpot(2.5, 15000),
                      FlSpot(3, 18000),
                      FlSpot(3.2, 800),
                      FlSpot(3.6, 27000),
                      FlSpot(4, 15000),
                      FlSpot(4.5, 30000),
                      FlSpot(5, 15000),
                      // FlSpot(6, 20000),
                    ],
                  ),
                  const SizedBox(height: 20),
                  buildLineChartCard(
                    title: 'Revenue',
                    amount: 'GHS14,500',
                    text_1: 'this academic year',
                    text_2: ' +15%',
                  ),
                  const SizedBox(height: 20),
                  buildLineChartCard(
                    title: 'Bookings',
                    amount: '1000',
                    text_1: "this academic year",
                    text_2: ' +15%',
                    spots: [
                      FlSpot(0, 10000),
                      FlSpot(0.2, 12000),
                      FlSpot(0.3, 500),
                      FlSpot(0.7, 20000),
                      FlSpot(1, 500),
                      FlSpot(1.5, 11000),
                      FlSpot(2, 20000),
                      FlSpot(2.5, 15000),
                      FlSpot(3, 18000),
                      FlSpot(3.2, 800),
                      FlSpot(3.6, 27000),
                      FlSpot(4, 15000),
                      FlSpot(5, 15000),
                      // FlSpot(6, 20000),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // _buildPieChartCard(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Color(0xFFCFDEE8)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 20.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text(
                              content: "Fees Collected",
                              fontFamily: "Work Sans",
                              fontWeight: FontWeight.bold,
                              textColor: Color(0xFF0D171C),
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                text(
                                  content: "this academic year",
                                  fontFamily: "Work Sans",
                                  fontWeight: FontWeight.bold,
                                  textColor: Color(0xFF4D7D99),
                                ),
                                text(
                                  content: " -5%",
                                  fontFamily: "Work Sans",
                                  fontWeight: FontWeight.bold,
                                  textColor: Color(0xFFE83608),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width,
                              height: 220.h,
                              child: Stack(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 210.h,
                                    width: 210.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFF4F4F4),
                                    ),
                                    child: text(
                                      content: "50%",
                                      fontFamily: "Work Sans",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32.sp,
                                      textColor: Color(0xFF0D171C),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 210.h,
                                    width: 210.w,
                                    child: CustomPaint(
                                      size: Size(210.h, 210.w),
                                      painter: MultiColorRingPainter(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Center(child: buildLegendRow()),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                  buildBarChartCard(
                    title: '1-in-a room',
                    amount: 'GHS4.3M',
                    // percentage: '1.2% this year',
                    text_1: "this academic year",
                    text_2: " +5%",
                    data: [
                      const ChartData('Sep', 50),
                      const ChartData('Oct', 35),
                      const ChartData('Nov', 40),
                      const ChartData('Dec', 20),
                      const ChartData('Jan', 10),
                      const ChartData('Feb', 5),
                    ],
                  ),
                  const SizedBox(height: 20),
                  buildBarChartCard(
                    title: '4-in-a room',
                    amount: 'GHS4.3M',
                    // percentage: '1.2% this year',
                    text_1: "this academic year",
                    text_2: " +5%",
                    data: [
                      const ChartData('Sep', 50),
                      const ChartData('Oct', 35),
                      const ChartData('Nov', 40),
                      const ChartData('Dec', 20),
                      const ChartData('Jan', 10),
                      const ChartData('Feb', 5),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 58.h,
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 20.h,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF00EFD1),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: text(
                      content: "Export Report",
                      textColor: Colors.white,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
