import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_campus/classes/constants.dart';
import 'package:on_campus/classes/generic.dart';
import 'package:on_campus/screens/Payment/payment.dart' as payment;
import 'package:on_campus/widgets/barchart.dart';
import 'package:on_campus/widgets/lineChart.dart';
import 'package:on_campus/widgets/scroll_sheet.dart';

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

Widget galleryImageCard({
  required String imagePath,
  required double width,
  required double height,
  required String imageCount,
  required String galleryTag,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      imagesCard(
        imagePath: imagePath,
        width: width,
        height: height,
        imageCount: imageCount,
      ),
      SizedBox(height: Constant.height * 0.005),
      SizedBox(
        // color: Colors.brown,
        height: Constant.height * 0.03,
        child: FittedBox(
          child: text(
            content: galleryTag,
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
          ),
        ),
      ),
    ],
  );
}

Widget pullUp(
  GenericRoomDetails detailsType,
  double animatedHeight,
  BuildContext context,
) {
  String label() {
    if (detailsType.detailsType == RoomDetailsType.amenities) {
      return "Amenities";
    } else if (detailsType.detailsType == RoomDetailsType.bills) {
      return "Bills";
    } else if (detailsType.detailsType == RoomDetailsType.security) {
      return "Security";
    } else if (detailsType.detailsType == RoomDetailsType.houseRules) {
      return "House Rules";
    } else {
      return "";
    }
  }

  return Positioned(
    bottom: 0,
    left: 0,
    right: 0,
    child: AnimatedContainer(
      height: animatedHeight,
      duration: const Duration(milliseconds: 150),
      curve: Curves.linear,
      decoration: BoxDecoration(
        color: const Color(0xFFFEFEFE),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.r),
          topRight: Radius.circular(15.r),
        ),
      ),
      child: ScrollSheet(
        title: label(),
        scrollHeight: MediaQuery.of(context).size.height * 0.81,
        buildList: detailsType.buildListUsed,
        typeList: detailsType.detailsList,
        type: detailsType.bools,
        enlargeDontCare: false,
      ),
    ),
  );
}

Widget animatedSheet({
  required BuildContext context,
  required bool add,
  required VoidCallback topButtonTap,
  required VoidCallback bottomButtonTap,
  required String topButtonText,
  required String bottomButtonText,
  required String h1,
  required String h2,
}) {
  return Positioned(
    bottom: 0,
    left: 0,
    right: 0,
    child: AnimatedContainer(
      padding: EdgeInsets.symmetric(
        horizontal: Constant.generalPadding,
        vertical: Constant.generalPaddingVertical,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
      ),
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
      height: add ? Constant.height * 0.5 : 0,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Constant.height * 0.005),
            SizedBox(height: Constant.generalWhiteSpace / 2),
            Container(
              padding: EdgeInsets.all(5),
              // color: Colors.blue,
              width: Constant.width,
              height: Constant.height * 0.15,
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: Constant.width * 0.3,
                  child: Image.asset(
                    "assets/Screens/Home/Listings/created.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Container(
              height: Constant.height * 0.03,
              margin: EdgeInsets.symmetric(
                horizontal: Constant.generalPadding * 2,
              ),
              child: FittedBox(
                child: Text(
                  h1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
            SizedBox(height: Constant.height * 0.01),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Constant.generalPadding * 2,
              ),
              height: Constant.height * 0.045,
              child: FittedBox(
                child: Text(
                  h2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Constant.generalWhiteSpace + Constant.height * 0.01,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: Constant.generalPadding),
              width: Constant.width,
              height: Constant.height * 0.05,
              decoration: BoxDecoration(
                color: Constant.primaryColor,
                borderRadius: BorderRadius.circular(14.r),
              ),
              child: Align(
                child: SizedBox(
                  height: Constant.height * 0.025,
                  child: FittedBox(
                    child: text(
                      content: topButtonText,
                      fontSize: 15.sp,
                      fontFamily: "Outfit",
                      fontWeight: FontWeight.w600,
                      textColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: Constant.height * 0.02),
            GestureDetector(
              onTap: bottomButtonTap,
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: Constant.generalPadding,
                ),
                width: Constant.width,
                height: Constant.height * 0.05,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.r),
                  border: Border.all(color: Color(0xFF00EFD1)),
                ),
                child: Align(
                  child: SizedBox(
                    height: Constant.height * 0.025,
                    child: FittedBox(
                      child: text(
                        content: bottomButtonText,
                        fontSize: 15.sp,
                        fontFamily: "Outfit",
                        fontWeight: FontWeight.w600,
                        textColor: const Color(0xFF00EFD1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget newRoomField({
  required String fieldName,
  required TextEditingController controller,
  required String hintText,
  bool dropDown = false,
  bool variant = false,
  String imagePath = "",
  double height = 0,
  double width = 0,
}) {
  return Column(
    children: [
      SizedBox(height: Constant.height * 0.015),
      SizedBox(
        height: Constant.height * 0.03,
        width: Constant.width,
        child: FittedBox(
          alignment: Alignment.centerLeft,
          child: text(
            content: fieldName,
            fontFamily: "Outfit",
            fontWeight: FontWeight.w500,
            textColor: Color(0xFF01070F),
          ),
        ),
      ),
      SizedBox(height: Constant.height * 0.01),
      SizedBox(
        height: Constant.height * 0.06,
        child: Stack(
          children: [
            Container(
              width: Constant.width,
              height: Constant.height * 0.06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Color(0xFFB0B0B0),
              ),
              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Color(0xFFF7F7F7),
              ),
              child: Container(),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Constant.width * 0.05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Constant.width * 0.5,
                      child: TextField(
                        // focusNode: price.focusNode,
                        style: TextStyle(
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: Colors.black,
                        ),
                        controller: controller,
                        cursorColor: Colors.black,
                        cursorHeight: Constant.height * 0.02,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hint: SizedBox(
                            height: Constant.height * 0.03,
                            child: FittedBox(
                              alignment: Alignment.bottomLeft,
                              child: text(
                                content: hintText,
                                textColor: Color(0xFFB7B8BA),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Outfit",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (dropDown == true)
                      Builder(
                        builder: (context) {
                          if (!variant) {
                            return Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.black,
                              size: 24,
                            );
                          } else {
                            return SizedBox(
                              height: height,
                              width: width,
                              child: Image.asset(
                                imagePath,
                                fit: BoxFit.contain,
                              ),
                            );
                          }
                        },
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget roomDetails({
  required VoidCallback onAmenityTap,
  required GenericRoomDetails detailsType,
  required bool detailBool,
}) {
  String label() {
    if (detailsType.detailsType == RoomDetailsType.amenities) {
      return "Amenities";
    } else if (detailsType.detailsType == RoomDetailsType.bills) {
      return "Bills";
    } else if (detailsType.detailsType == RoomDetailsType.security) {
      return "Security";
    } else if (detailsType.detailsType == RoomDetailsType.houseRules) {
      return "House Rules";
    } else {
      return "";
    }
  }

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        // margin: EdgeInsets.symmetric(horizontal: Constant.generalPadding),
        child: SizedBox(
          height: Constant.height * 0.037,
          child: FittedBox(
            child: Text(
              label(),
              style: TextStyle(fontSize: 20.sp, fontFamily: "Roboto-Medium"),
            ),
          ),
        ),
      ),
      SizedBox(height: Constant.height * 0.008),
      detailBool
          ? ShowAmenities(
              typeList: detailsType.detailsList,
              onTap: onAmenityTap,
            )
          : GestureDetector(
              onTap: onAmenityTap,
              child: SizedBox(
                child: Row(
                  children: [
                    Image.asset(
                      "assets/Screens/Property/Amenities/ic_add.png",
                      width: Constant.width * 0.05,
                      height: 24.h,
                    ),
                    SizedBox(width: 10.h),
                    SizedBox(
                      height: Constant.height * 0.025,
                      child: FittedBox(
                        child: Text(
                          "Add",
                          style: TextStyle(
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    ],
  );
}

Widget imagesCard({
  required String imagePath,
  required double width,
  required double height,
  required String imageCount,
}) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      // padding: EdgeInsets.symmetric(horizontal: 20.w),
      height: height,
      width: width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(12.r),
            child: SizedBox(
              width: width,
              height: height,
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: const Color.fromRGBO(0, 0, 0, 0.05),
            ),
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: text(
              content: "+$imageCount",
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
              fontSize: 12.sp,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}

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
