import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_campus/classes/constants.dart';
import 'package:on_campus/screens/Payment/payment.dart' as payment;
import 'package:on_campus/widgets/barchart.dart';
import 'package:on_campus/widgets/lineChart.dart';

Widget text({
  String content = "",
  Color textColor = Colors.black,
  String fontFamily = "",
  double? fontSize,
  FontWeight? fontWeight,
  TextOverflow? overflow,
}) {
  return Text(
    content,
    style: TextStyle(
      color: textColor,
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      overflow: overflow,
    ),
  );
}

Widget buildTopIconsRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      buildIconButton('assets/Screens/Home/Payment/earnings.png', 'Earnings'),
      buildIconButton('assets/Screens/Home/Payment/received.png', 'Received'),
      buildIconButton('assets/Screens/Home/Payment/pending.png', 'Pending'),
      buildIconButton('assets/Screens/Home/Payment/failed.png', 'Failed'),
    ],
  );
}

Widget buildIconButton(String iconPath, String label) {
  return Column(
    children: [
      GestureDetector(
        onTap: () {
          if (label == "Received") payment.textNotifier.value = "Received";
          if (label == "Failed") payment.textNotifier.value = "Failed";
          if (label == "Pending") payment.textNotifier.value = "Pending";
          if (label == "Earnings") payment.textNotifier.value = "Earnings";
          debugPrint(label);
          debugPrint("This is payment status: ${payment.textNotifier.value}");
        },
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: const Color.fromRGBO(0, 0, 0, 0.05),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Image.asset(iconPath, height: 20),
        ),
      ),
      const SizedBox(height: 8),
      Text(
        label,
        style: TextStyle(
          fontSize: 13.sp,
          color: Color(0xFF1E1E2D),
          fontFamily: "Poppins",
        ),
      ),
    ],
  );
}

Widget buildSectionHeader() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Recent Payments',
        style: TextStyle(
          fontSize: 18.sp,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
          color: Color(0xFF1E1E2D),
        ),
      ),
      TextButton(
        onPressed: () {},
        child: Text(
          'See All',
          style: TextStyle(
            fontSize: 18.sp,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
            color: Color(0xFF00EFD1),
          ),
        ),
      ),
    ],
  );
}

Widget buildPaymentList() {
  return Column(
    children: [
      buildPaymentItem(
        'assets/Screens/Home/Payment/andrea.png',
        'Andrea B.',
        'Room 4',
        '1-in-a Room',
        'Paid',
        const Color(0xFF00D689),
        'GHS5,999',
      ),
      const SizedBox(height: 15),
      buildPaymentItem(
        'assets/Screens/Home/Payment/christiana.png',
        'Cristina G.',
        'Room 4',
        '4-in-a Room',
        'Pending',
        Color(0xFF8A8B8F),
        'GHS5,999',
      ),
      const SizedBox(height: 15),
      buildPaymentItem(
        'assets/Screens/Home/Payment/miles.png',
        'Miles K.',
        'Room 4',
        '1-in-a Room',
        'Failed',
        const Color(0xFFEA6A5D),
        'GHS5,999',
      ),
    ],
  );
}

Widget buildPaymentItem(
  String imagePath,
  String name,
  String room,
  String roomType,
  String status,
  Color statusColor,
  String amount,
) {
  return Container(
    padding: const EdgeInsets.all(15.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Row(
      children: [
        CircleAvatar(radius: 25.r, backgroundImage: AssetImage(imagePath)),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Inter",
                  fontSize: 16.sp,
                  color: Color(0xFF121417),
                ),
              ),
              Text(
                room,
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 14.sp,
                  color: Color(0xFF637587),
                ),
              ),
              Text(
                roomType,
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 14.sp,
                  color: Color(0xFF637587),
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.center,
              width: 90.w,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: statusColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                status,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              amount,
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                color: Color(0xFF1E1E2D),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

// Widget buildPieChartCard() {
//   final List<ChartData> chartData = [
//     ChartData('1 in a room', 50),
//     ChartData('4 in a room', 30),
//     ChartData('2 in a room', 15),
//     ChartData('Other', 5),
//   ];
//   return Card(
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//     child: Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             'Rooms allocated',
//             style: TextStyle(fontSize: 16, color: Colors.grey),
//           ),
//           const SizedBox(height: 5),
//           const Text(
//             '60% this year',
//             style: TextStyle(fontSize: 14, color: Colors.green),
//           ),
//           const SizedBox(height: 20),
//           SizedBox(
//             height: 200,
//             child: SfCircularChart(
//               series: <CircularSeries>[
//                 DoughnutSeries<ChartData, String>(
//                   dataSource: chartData,
//                   pointColorMapper: (ChartData data, _) {
//                     switch (data.x) {
//                       case '1 in a room':
//                         return Colors.yellow.shade200;
//                       case '4 in a room':
//                         return Colors.teal.shade200;
//                       case '2 in a room':
//                         return Colors.red.shade200;
//                       default:
//                         return Colors.grey.shade200;
//                     }
//                   },
//                   xValueMapper: (ChartData data, _) => data.x,
//                   yValueMapper: (ChartData data, _) => data.y,
//                   innerRadius: '80%',
//                   explode: true,
//                   explodeIndex: 0,
//                   dataLabelSettings: const DataLabelSettings(
//                     borderRadius: 12,
//                     isVisible: false,
//                     labelPosition: ChartDataLabelPosition.inside,
//                   ),
//                 )
//               ],
//               annotations: <CircularChartAnnotation>[
//                 CircularChartAnnotation(
//                   widget: Text(
//                     '50%',
//                     style: TextStyle(
//                       color: Colors.yellow.shade800,
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//           buildLegendRow(),
//         ],
//       ),
//     ),
//   );
// }

Widget u101({required String imagePath, required String description}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            height: Constant.height * 0.04,
            width: Constant.width * 0.08,
            decoration: BoxDecoration(
              color: Color(0xFFF0F2F5),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Image.asset(imagePath),
          ),
          SizedBox(width: Constant.width * 0.04),
          SizedBox(
            height: Constant.height * 0.03,
            child: FittedBox(
              child: text(
                content: description,
                fontFamily: "Plus Jakarta Sans",
                fontSize: 12.sp,
                textColor: Color(0xFF121417),
              ),
            ),
          ),
        ],
      ),
      Icon(Icons.chevron_right, color: Color(0xFF121417), size: 24),
    ],
  );
}

Widget buildLegendRow() {
  return Wrap(
    spacing: 18.0,
    runSpacing: 10.0,
    children: [
      buildLegendItem(Color(0xFFE5DBDE), '1 in a room '),
      buildLegendItem(Color(0xFF707070), '4 in a room'),
      buildLegendItem(Color(0xFFFFE7AD), '3 in a room'),
      buildLegendItem(Color(0xFF66EAC2), '5 in a room'),
    ],
  );
}

Widget buildLegendItem(Color color, String label) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
      const SizedBox(width: 8),
      Text(
        label,
        style: TextStyle(
          fontSize: 13.sp,
          fontFamily: "Poppins",
          color: Color(0xFF1E1E2D),
        ),
      ),
    ],
  );
}

Widget buildBarChartCard({
  required String title,
  required String amount,
  required List<ChartData> data,
  required String text_1,
  required String text_2,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
        side: BorderSide(color: Color(0xFFCFDEE8)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: Color(0xFF0D171C),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              amount,
              style: TextStyle(
                fontFamily: "Work Sans",
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0D171C),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                text(
                  content: text_1,
                  textColor: Color(0xFF4D7D99),
                  fontFamily: "Work Sans",
                  fontSize: 16.sp,
                ),
                text(
                  content: text_2,
                  textColor: Color(0xFF088736),
                  fontFamily: "Work Sans",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(height: 300, child: BarChartSample()),
            const SizedBox(height: 20),
          ],
        ),
      ),
    ),
  );
}

Widget buildFilterRow() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          height: 35.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              text(
                content: "Filter By",
                fontSize: 14.sp,
                fontFamily: "Roboto",
                textColor: Color(0xFF1C1F1F),
              ),
              buildFilterChip('Room Type'),
              buildFilterChip('Month'),
              buildFilterChip('Occupancy'),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              buildFilterChip('Year'),
              SizedBox(width: 12.w),
              buildFilterChip('Custom'),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildFilterChip(String label) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 13.5.w, vertical: 8.h),
    decoration: BoxDecoration(
      color: Color(0xFFF1F3F4),
      borderRadius: BorderRadius.circular(20.r),
      // border: Border.all()
    ),
    child: text(
      content: label,
      fontFamily: "Inter",
      fontSize: 11.sp,
      textColor: Color(0xFF232627),
    ),
  );
}

Widget buildLineChartCard({
  required String title,
  required String amount,
  required String text_1,
  required String text_2,
  // required List<FlSpot> data,
  Color color = const Color(0xFF088736),
  List<String> monthLabels = const [
    "Sep",
    "Oct",
    "Nov",
    "Dec",
    "Jan",
    "Feb",
    "Mar",
  ],
  List<FlSpot> spots = const [
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
  double maxX = 5,
  bool useHostelOwnerDashboardProperties = false,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
    child: Card(
      shadowColor: useHostelOwnerDashboardProperties
          ? Colors.transparent
          : null,
      color: Colors.white,
      shape: useHostelOwnerDashboardProperties
          ? null
          : RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Color(0xFFCFDEE8)),
            ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 15.h),
            padding: useHostelOwnerDashboardProperties
                ? null
                : EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: "Work Sans",
                fontWeight: FontWeight.w500,
                color: Color(0xFF0D171C),
              ),
            ),
          ),
          Container(
            padding: useHostelOwnerDashboardProperties
                ? null
                : EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              amount,
              style: TextStyle(
                fontFamily: "Work Sans",
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0D171C),
              ),
            ),
          ),
          Container(
            padding: useHostelOwnerDashboardProperties
                ? null
                : EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                text(
                  content: text_1,
                  fontFamily: "Inclusive Sans",
                  textColor: useHostelOwnerDashboardProperties
                      ? Color(0xFF637587)
                      : Color(0xFF4D7D99),
                  fontSize: 16.sp,
                ),
                SizedBox(width: 5),
                text(
                  content: text_2,
                  fontFamily: "Inclusive Sans",
                  textColor: color,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: useHostelOwnerDashboardProperties
                ? EdgeInsets.symmetric(horizontal: 35.w)
                : EdgeInsets.symmetric(horizontal: 40.w),
            margin: EdgeInsets.only(bottom: 60.h),
            height: 200,
            child: buildLineChart(
              monthLabels: monthLabels,
              verticalDrawVerticalLineShow: false,
              horizontalDrawHorizontalLineShow: false,
              leftAxisShow: false,
              lineColor: Color(0xFF4D7D99),
              spots: spots,
              maxX: maxX,
              useHostelOwnerDashboardProperties:
                  useHostelOwnerDashboardProperties,
            ),
          ),
        ],
      ),
    ),
  );
}

class ChartData {
  const ChartData(this.x, this.y);
  final String x;
  final double y;
}
