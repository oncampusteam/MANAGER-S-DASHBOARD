import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_campus/classes/constants.dart';
import 'package:on_campus/widgets/lineChart.dart';
import 'package:on_campus/widgets/widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool instantBooking = false;
  int itemCount = 4;
  int roomAvailabilityCount = 2;
  final GlobalKey key = GlobalKey();
  Size? widgetSize;
  bool tapped = false;
  double position_1 = 0;
  double position_2 = 0;

  @override
  void initState() {
    super.initState();
    // Schedule a callback after layout
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = key.currentContext;
      if (context != null) {
        final size = context.size;
        setState(() {
          widgetSize = size;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 10.h),
                // Group 1 //
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.width * 0.05,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              "assets/Screens/Home/Dashboard/userIcon.png",
                            ),
                          ),
                          SizedBox(width: 10.w),
                          SizedBox(
                            // alignment: Alignment.centerLeft,
                            // color: Colors.blue,
                            width: Constant.width * 0.5,
                            height: Constant.height * 0.04,
                            // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            child: FittedBox(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Good Afternoon",
                                style: TextStyle(
                                  fontFamily: "Outfit-Regular",
                                  fontSize: 20.r,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/Screens/Home/Dashboard/search.png",
                        height: Constant.height * 0.04,
                        width: Constant.width * 0.1,
                      ),
                    ],
                  ),
                ),

                // Group 1 //
                SizedBox(height: 30.h),

                // Occupancy //
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: Constant.width * 0.05,
                    ),
                    height: Constant.height * 0.04,
                    // width: Constant.width * 0.4,
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Occupancy",
                        style: TextStyle(
                          fontFamily: "Plus Jakarta Sans",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),

                // SizedBox //
                SizedBox(height: 30.h),

                SizedBox(
                  height: 175.h,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: itemCount,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          SizedBox(
                            width: index == 0
                                ? Constant.width * 0.05
                                : Constant.width * 0.025,
                          ),
                          Container(
                            height: 170.h,
                            padding: EdgeInsets.all(16.h),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 4,
                                  spreadRadius: 0,
                                  color: Color.fromRGBO(1, 1, 1, 0.1),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 124.w,
                                  height: 118.h,
                                  decoration: BoxDecoration(
                                    // color: Colors.red,
                                    borderRadius: BorderRadius.circular(12.r),
                                    boxShadow: const [
                                      BoxShadow(
                                        offset: Offset(0, 4),
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                      ),
                                    ],
                                  ),
                                  child: Image.asset(
                                    "assets/Screens/Home/Dashboard/frame 1.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      // color: Colors.blue,
                                      width: Constant.width * 0.4,
                                      height: Constant.height * 0.04,
                                      child: AutoSizeText(
                                        "Ultimate Hostel",
                                        maxLines: 1,
                                        minFontSize: 16,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontFamily: "Lexend",
                                          fontSize: Constant.height * 0.05,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    // SizedBox(height: 5.h),
                                    SizedBox(
                                      height: Constant.height * 0.03,
                                      width: Constant.width * 0.2,
                                      child: FittedBox(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Full: 5%",
                                          style: TextStyle(
                                            fontFamily: "Lexend",
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                            color: const Color(0xFF637587),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: index == itemCount - 1
                                ? Constant.width * 0.05
                                : 0.w,
                          ),
                        ],
                      );
                    },
                  ),
                ),

                SizedBox(height: 25.h),

                // Recent Bookings
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: Constant.width * 0.05,
                  ),
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: Constant.height * 0.04,
                    // width: Constant.width * 0.5,
                    // color: Colors.red,
                    child: FittedBox(
                      child: Text(
                        "Recent Bookings",
                        style: TextStyle(
                          fontFamily: "Plus Jakarta Sans",
                          // fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),

                // Recent Bookings //
                SizedBox(height: 25.h),
                SizedBox(
                  height: (72.h) * 3,
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        height: 72.h,
                        child: Row(
                          children: [
                            Container(
                              height: 56.h,
                              width: 56.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                "assets/Screens/Home/Dashboard/frame  2.png",
                              ),
                            ),
                            SizedBox(width: 16.w),
                            SizedBox(
                              width:
                                  MediaQuery.of(context).size.width -
                                  (Constant.width * 0.1 + 56.w + 16.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 5.h),
                                      SizedBox(
                                        // color: Colors.yellow,
                                        height: Constant.height * 0.03,
                                        // width: Constant.width * 0.3,
                                        child: FittedBox(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Room 404",
                                            style: TextStyle(
                                              fontFamily: "Plus Jakarta Sans",
                                              // fontSize: 16.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        // color: Colors.blue,
                                        height: Constant.height * 0.025,
                                        child: FittedBox(
                                          child: Text(
                                            "CL874520999",
                                            style: TextStyle(
                                              fontFamily: "Plus Jakarta Sans",
                                              fontSize: 14.sp,
                                              color: const Color(0xFF6B6B6B),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    // color: Colors.green,
                                    height: Constant.height * 0.025,
                                    width: Constant.width * 0.26,
                                    child: FittedBox(
                                      child: Text(
                                        "13-01-2022",
                                        style: TextStyle(
                                          fontFamily: "Plus Jakarta Sans",
                                          fontSize: 14.sp,
                                          color: const Color(0xFF6B6B6B),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                // Recent Bookings List
                SizedBox(height: 25.h),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: Constant.width * 0.05,
                    ),
                    height: Constant.height * 0.04,
                    child: FittedBox(
                      child: Text(
                        "Fee Collection",
                        style: TextStyle(
                          fontFamily: "Plus Jakarta Sans",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 25.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        // color: Colors.red,
                        height: Constant.height * 0.03,
                        child: FittedBox(
                          child: Text(
                            "Collected",
                            style: TextStyle(
                              fontFamily: "Plus Jakarta Sans",
                              // fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Constant.height * 0.03,
                        child: FittedBox(
                          child: Text(
                            "50%",
                            style: TextStyle(
                              fontFamily: "Plus Jakarta Sans",
                              // fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  height: 8,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25.w),
                        height: 8.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: const Color(0xFFDEDEDE),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25.w),
                        height: 8.h,
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                          color: const Color(0xFF00EFD1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 25.w),
                  height: Constant.height * 0.03,
                  child: FittedBox(
                    child: Text(
                      "Expected: ¢200,000 | Collected: ¢100,000",
                      style: TextStyle(
                        fontFamily: "Plus Jakarta Sans",
                        // fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF6B6B6B),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.h),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: Constant.width * 0.05,
                    ),
                    height: Constant.height * 0.04,
                    // color: Colors.red,
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Booking Approvals",
                        style: TextStyle(
                          fontFamily: "Plus Jakarta Sans",
                          // fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: Constant.height * 0.03,
                        child: FittedBox(
                          child: Text(
                            "New Requests",
                            style: TextStyle(
                              fontFamily: "Plus Jakarta Sans",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Constant.height * 0.03,
                        child: FittedBox(
                          child: Text(
                            "158",
                            style: TextStyle(
                              fontFamily: "Plus Jakarta Sans",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: Constant.height * 0.03,
                        child: FittedBox(
                          child: Text(
                            "Pending",
                            style: TextStyle(
                              fontFamily: "Plus Jakarta Sans",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Constant.height * 0.03,
                        child: FittedBox(
                          child: Text(
                            "96",
                            style: TextStyle(
                              fontFamily: "Plus Jakarta Sans",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: Constant.height * 0.03,
                        child: FittedBox(
                          child: Text(
                            "Instant Booking",
                            style: TextStyle(
                              fontFamily: "Plus Jakarta Sans",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15.w),
                        height: 56.h,
                        child: Switch(
                          thumbColor: const WidgetStatePropertyAll(
                            Color.fromARGB(255, 255, 255, 255),
                          ),
                          activeThumbColor: const Color(0xFF00EFD1),
                          value: instantBooking,
                          onChanged: (value) {
                            setState(() {
                              instantBooking = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    // color: Colors.red,
                    padding: EdgeInsets.symmetric(
                      horizontal: Constant.width * 0.05,
                    ),
                    height: Constant.height * 0.04,
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Booking Trends",
                        style: TextStyle(
                          fontFamily: "Manrope",
                          // fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.width * 0.05,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: Constant.height * 0.03,
                        child: FittedBox(
                          child: Text(
                            "Daily Booking Rate",
                            style: TextStyle(
                              fontFamily: "Manrope",
                              // fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    horizontal: Constant.width * 0.05,
                  ),
                  height: Constant.height * 0.06,
                  // color: Colors.yellow,
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "+3%",
                      style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Row(
                    children: [
                      SizedBox(
                        height: Constant.height * 0.03,
                        child: FittedBox(
                          child: Text(
                            "This week",
                            style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF637587),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Constant.height * 0.03,
                        child: FittedBox(
                          child: Text(
                            " +3%",
                            style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF088738),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 25.h),
                    ],
                  ),
                ),
                Container(
                  height: 212.h,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.width * 0.1,
                  ),
                  child: LineChartWidget(),
                ),
                SizedBox(height: 25.h),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: SizedBox(
                    height: Constant.height * 0.04,
                    child: FittedBox(
                      child: Text(
                        "Room Availability",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF111111),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Container(
                  height: (275.h) * roomAvailabilityCount,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: ListView.builder(
                    itemCount: roomAvailabilityCount,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 242.h,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(vertical: 16.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Stack(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(
                                  12.r,
                                ),
                                child: Image.asset(
                                  "assets/Screens/Home/Dashboard/frame3.png",
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(0, 0, 0, 0.4),
                                    Color.fromRGBO(0, 0, 0, 0),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 16.h,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 63.h,
                                padding: EdgeInsets.only(
                                  left: 16.w,
                                  right: 8.w,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: Constant.height * 0.037,
                                          child: FittedBox(
                                            child: Text(
                                              "1-in-a-Room",
                                              style: TextStyle(
                                                fontFamily: "Inter",
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xFFFFFFFF),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: Constant.height * 0.03,
                                          child: FittedBox(
                                            child: Text(
                                              "8/10 Beds Available",
                                              style: TextStyle(
                                                fontFamily: "Inter",
                                                fontSize: 14.sp,
                                                // fontWeight: FontWeight.bold,
                                                color: const Color(0xFFFFFFFF),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 45.h,
                                      width: 108.w,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF00EFD1),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Align(
                                        child: SizedBox(
                                          height: Constant.height * 0.03,
                                          child: FittedBox(
                                            child: Text(
                                              "View",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.sp,
                                                color: Colors.white,
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
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.w,
                    vertical: 15.h,
                  ),
                  child: SizedBox(
                    height: Constant.height * 0.04,
                    child: FittedBox(
                      child: Text(
                        "Need help?",
                        style: TextStyle(
                          fontFamily: "Plus Jakarta Sans",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 422.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.width * 0.05,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            key: key,
                            height: 200.h,
                            width: Constant.width * 0.43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: Color(0xFFE5DBDE)),
                            ),
                            padding: EdgeInsets.all(16.r),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  height: 24.h,
                                  width: 24.w,
                                  "assets/Screens/Home/Dashboard/homeIcon.png",
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 12, bottom: 4),
                                  child: SizedBox(
                                    height: Constant.height * 0.06,
                                    child: FittedBox(
                                      child: Text(
                                        "I want to add a\nnew property",
                                        style: TextStyle(
                                          fontFamily: "Plus Jakarta Sans",
                                          fontWeight: FontWeight.bold,
                                          // fontSize: 14.sp,
                                          color: Color(0xFF171212),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: Constant.height * 0.05,
                                  child: FittedBox(
                                    child: Text(
                                      "Add a new property\nin 4 steps",
                                      style: TextStyle(
                                        fontFamily: "Plus Jakarta Sans",
                                        fontWeight: FontWeight.bold,
                                        // fontSize: 12.sp,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 200.h,
                            width: Constant.width * 0.43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: Color(0xFFE5DBDE)),
                            ),
                            padding: EdgeInsets.all(16.r),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  height: 24.h,
                                  width: 24.w,
                                  "assets/Screens/Home/Dashboard/payment.png",
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 12, bottom: 4),
                                  child: SizedBox(
                                    // color: Colors.blueGrey,
                                    height: Constant.height * 0.059,
                                    child: FittedBox(
                                      child: Text(
                                        "How do I set up\npayments?",
                                        style: TextStyle(
                                          fontFamily: "Plus Jakarta Sans",
                                          fontWeight: FontWeight.bold,
                                          // fontSize: 14.sp,
                                          color: Color(0xFF171212),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: Constant.height * 0.072,
                                  child: Text(
                                    "Get your payment\njust after booking is\nsuccessful",
                                    style: TextStyle(
                                      fontFamily: "Plus Jakarta Sans",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        height: 200.h,
                        width: widgetSize?.width,
                        margin: EdgeInsets.only(top: 12.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: Color(0xFFE5DBDE)),
                        ),
                        padding: EdgeInsets.all(16.r),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              height: 24.h,
                              width: 24.w,
                              "assets/Screens/Home/Dashboard/question.png",
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12, bottom: 4),
                              child: SizedBox(
                                height: Constant.height * 0.06,
                                child: FittedBox(
                                  child: Text(
                                    "What are the\nfees?",
                                    style: TextStyle(
                                      fontFamily: "Plus Jakarta Sans",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp,
                                      color: Color(0xFF171212),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Constant.height * 0.05,
                              child: FittedBox(
                                child: Text(
                                  "Understand how\nfees works",
                                  style: TextStyle(
                                    fontFamily: "Plus Jakarta Sans",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 9.5.h,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF00EFD1),
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/Screens/Home/Dashboard/whatsapp.png",
                              height: 20,
                              width: 20,
                            ),
                            Text(
                              "  Whatsapp Us",
                              style: TextStyle(
                                fontFamily: "Plus Jakarta Sans",
                                fontWeight: FontWeight.bold,
                                fontSize: 12.sp,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 9.5.h,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFEDEDED),
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/Screens/Home/Dashboard/speak.png",
                              height: 20,
                              width: 20,
                            ),
                            Text(
                              "  Speak to an Expert",
                              style: TextStyle(
                                fontFamily: "Plus Jakarta Sans",
                                fontWeight: FontWeight.w600,
                                fontSize: 12.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(height: 190.h),
              ],
            ),
          ),
        ),

        Positioned(
          bottom: 95.h,
          right: 30.w,
          child: AnimatedContainer(
            color: Colors.transparent,
            height: 284.h,
            width: Constant.width * 0.4,
            duration: Duration(milliseconds: 800),
            curve: Curves.easeIn,
            child: Stack(
              children: [
                Positioned(
                  bottom: position_2,
                  left: 0,
                  right: 0,
                  child: tapped
                      ? GestureDetector(
                          onTap: () {
                            floatingActionButtonAction();
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: Constant.width * 0.02,
                            ),
                            height: Constant.height * 0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFEDEDED),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 52.h,
                                  width: 52.w,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 4),
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                      ),
                                      BoxShadow(
                                        offset: Offset(10, 10),
                                        blurRadius: 20,
                                        spreadRadius: 0,
                                        color: Color(0x3E98ADD9),
                                      ),
                                    ],
                                  ),
                                  child: Image.asset(
                                    "assets/Screens/Home/Dashboard/message.png",
                                  ),
                                ),
                                SizedBox(
                                  height: Constant.height * 0.029,
                                  child: FittedBox(
                                    child: text(
                                      content: " complains",
                                      fontFamily: "Plus Jakarta Sans",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(),
                ),
                Positioned(
                  bottom: position_1,
                  left: 0,
                  right: 0,
                  child: tapped
                      ? GestureDetector(
                          onTap: () {
                            floatingActionButtonAction();
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: Constant.width * 0.02,
                            ),
                            height: Constant.height * 0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFEDEDED),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 52.h,
                                  width: 52.w,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 4),
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                      ),
                                      BoxShadow(
                                        offset: Offset(10, 10),
                                        blurRadius: 20,
                                        spreadRadius: 0,
                                        color: Color(0x3E98ADD9),
                                      ),
                                    ],
                                  ),
                                  child: Image.asset(
                                    "assets/Screens/Home/Dashboard/graduate.png",
                                  ),
                                ),
                                SizedBox(
                                  height: Constant.height * 0.029,
                                  child: FittedBox(
                                    child: text(
                                      content: " students",
                                      fontFamily: "Plus Jakarta Sans",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(),
                ),
                Positioned(
                  bottom: 0,
                  // left: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      floatingActionButtonAction();
                    },
                    child: Container(
                      height: 64.h,
                      width: 64.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF00EFD1),
                      ),
                      child: tapped
                          ? Icon(Icons.close, size: 40, color: Colors.white)
                          : Icon(Icons.add, size: 40, color: Colors.white),
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

  void floatingActionButtonAction() async {
    if (tapped == false) {
      tapped = true;
      setState(() {
        position_1 = 85.h;
        position_2 = position_1;
      });
      await Future.delayed(Duration(milliseconds: 20));
      setState(() {
        position_2 = 160.h;
      });
    } else {
      tapped = false;
      setState(() {
        position_1 = 85.h;
        position_2 = position_1;
      });
      await Future.delayed(Duration(milliseconds: 20));
      setState(() {
        position_1 = 0;
        position_2 = position_1;
      });
    }
  }
}
