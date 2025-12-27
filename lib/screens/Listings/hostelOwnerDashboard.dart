import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:on_campus/classes/constants.dart';
import 'package:on_campus/screens/Listings/edit_listings.dart';
import 'package:on_campus/screens/Listings/pricing.dart';
import 'package:on_campus/screens/Listings/room_listings.dart';
import 'package:on_campus/widgets/widget.dart';

class HostelOwnerDashboard extends StatefulWidget {
  const HostelOwnerDashboard({super.key});

  @override
  State<HostelOwnerDashboard> createState() => _HostelOwnerDashboardState();
}

class _HostelOwnerDashboardState extends State<HostelOwnerDashboard> {
  int itemCount = 2;
  final GlobalKey key = GlobalKey();
  final GlobalKey key1 = GlobalKey();
  final GlobalKey key2 = GlobalKey();
  final GlobalKey key3 = GlobalKey();
  final GlobalKey key4 = GlobalKey();
  Size? widgetSize;

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
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            actionsPadding: EdgeInsets.only(right: Constant.generalPadding),
            leading: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              },
              child: Icon(Icons.close, color: Colors.black, size: 25),
            ),
            automaticallyImplyLeading: true,
            centerTitle: true,
            title: SizedBox(
              // color: Colors.blue,
              height: Constant.height * 0.03,
              child: FittedBox(
                child: text(
                  content: "Hostel  Owner  Dashboard",
                  fontFamily: "Plus Jakarta Sans",
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Get.to(() => const Editlistings());
                },
                child: Image.asset(
                  height: Constant.height * 0.03,
                  width: Constant.width * 0.05,
                  "assets/Screens/Home/Listings/edit.png",
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: Constant.height * 0.008),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.generalPadding,
                  ),
                  child: SizedBox(
                    // color: Colors.red,
                    height: Constant.height * 0.035,
                    child: FittedBox(
                      child: text(
                        content: "Your Listings",
                        fontFamily: "Plus Jakarta Sans",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Constant.height * 0.01),
                Container(
                  height: Constant.height * 0.28,
                  margin: EdgeInsets.symmetric(
                    horizontal: Constant.generalPadding,
                  ),
                  width: MediaQuery.of(context).size.width,
                  foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color.fromRGBO(0, 0, 0, 0),
                        const Color.fromRGBO(0, 0, 0, 0.4),
                      ],
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(12.r),
                    child: Image.asset(
                      "assets/Screens/Home/Listings/Asir.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: Constant.height * 0.012),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.generalPadding,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            // color: Colors.amber,
                            height: Constant.height * 0.025,
                            child: FittedBox(
                              child: text(
                                content: "Downtown Hostel",
                                fontFamily: "Plus Jakarta Sans",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                textColor: Color(0xFF121417),
                              ),
                            ),
                          ),
                          SizedBox(
                            // color: Colors.green,
                            height: Constant.height * 0.02,
                            child: FittedBox(
                              child: text(
                                content: "University of Ghana, Legon, Accra",
                                fontFamily: "Plus Jakarta Sans",
                                fontSize: 9.sp,
                                textColor: Color(0xFF637587),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            // color: Colors.blue,
                            height: Constant.height * 0.018,
                            child: FittedBox(
                              child: text(
                                content: "From  ",
                                fontFamily: "Plus Jakarta Sans",
                                fontSize: 9.sp,
                                textColor: Color(0xFF121417),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Constant.height * 0.028,
                            child: FittedBox(
                              child: text(
                                content: "GHS 3,400",
                                fontFamily: "Plus Jakarta Sans",
                                fontSize: 12.sp,
                                textColor: Color(0xFF121417),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Constant.height * 0.04),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.generalPadding,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: Constant.height * 0.045,
                        width: Constant.width * 0.09,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFFF0F2F5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(
                          "assets/Screens/Home/Listings/check.png",
                        ),
                      ),
                      SizedBox(width: Constant.width * 0.03),
                      SizedBox(
                        height: Constant.height * 0.028,
                        child: FittedBox(
                          child: text(
                            content: "Active",
                            fontFamily: "Plus Jakarta Sans",
                            fontSize: 12.sp,
                            textColor: Color(0xFF121417),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Constant.height * 0.03),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.generalPadding,
                  ),
                  child: SizedBox(
                    height: Constant.height * 0.035,
                    child: FittedBox(
                      child: text(
                        content: "Recent Bookings",
                        fontFamily: "Plus Jakarta Sans",
                        textColor: Color(0xFF121417),
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Constant.height * 0.02),
                SizedBox(
                  height: (Constant.height * 0.07) * itemCount,
                  child: ListView.builder(
                    itemCount: itemCount,
                    itemBuilder: (context, index) {
                      return Container(
                        // color: Colors.blue,
                        height: Constant.height * 0.045,
                        margin: EdgeInsets.only(bottom: Constant.height * 0.02),
                        padding: EdgeInsets.symmetric(
                          horizontal: Constant.generalPadding,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: Constant.height * 0.06,
                                  width: Constant.width * 0.12,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF0F2F5),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/Screens/Home/Listings/calender.png",
                                  ),
                                ),
                                SizedBox(width: Constant.width * 0.03),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: Constant.height * 0.025,
                                      child: FittedBox(
                                        child: text(
                                          content: "Dec 20-25",
                                          fontFamily: "Plus Jakarta Sans",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12.sp,
                                          textColor: Color(0xFF121417),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Constant.height * 0.02,
                                      child: FittedBox(
                                        child: text(
                                          content: "5 tenants",
                                          fontFamily: "Plus Jakarta Sans",
                                          fontSize: 10.sp,
                                          textColor: Color(0xFF637887),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Constant.height * 0.028,
                              child: FittedBox(
                                child: text(
                                  content: "GHS 3,000",
                                  fontFamily: "Plus Jakarta Sans",
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: Constant.height * 0.008),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.generalPadding,
                  ),
                  child: SizedBox(
                    height: Constant.height * 0.035,
                    child: FittedBox(
                      child: text(
                        content: "Reviews and ratings",
                        fontFamily: "Plus Jakarta Sans",
                        textColor: Color(0xFF121417),
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Constant.height * 0.02),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.generalPadding,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text(
                              content: "4.7",
                              fontSize: 36.sp,
                              textColor: Color(0xFF121417),
                              fontWeight: FontWeight.w900,
                            ),
                            SizedBox(
                              // color: Colors.yellow,
                              height: Constant.height * 0.025,
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF121417),
                                    size: 19,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF121417),
                                    size: 19,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF121417),
                                    size: 19,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF121417),
                                    size: 19,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF121417),
                                    size: 19,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: Constant.height * 0.015),
                            SizedBox(
                              height: Constant.height * 0.025,
                              child: FittedBox(
                                child: text(
                                  content: "123 reviews",
                                  fontFamily: "Plus Jakarta Sans",
                                  fontSize: 12.sp,
                                  textColor: Color(0xFF121417),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          // color: Colors.blue,
                          padding: EdgeInsets.only(left: Constant.width * 0.03),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ratings("5", 57, key),
                              SizedBox(height: 5.h),
                              ratings("4", 30, null),
                              SizedBox(height: 5.h),
                              ratings("3", 10, null),
                              SizedBox(height: 5.h),
                              ratings("2", 2, null),
                              SizedBox(height: 5.h),
                              ratings("1", 1, null),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Constant.height * 0.03),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.generalPadding,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: Constant.generalPadding,
                      vertical: Constant.width * 0.035,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFF00EFD1),
                    ),
                    child: SizedBox(
                      height: Constant.height * 0.027,
                      // color: Colors.orange,
                      child: FittedBox(
                        child: text(
                          content: "View details",
                          textColor: Colors.white,
                          fontFamily: "Plus Jakarta Sans",
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Constant.height * 0.03),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.generalPadding,
                  ),
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: Constant.height * 0.035,
                    child: FittedBox(
                      child: text(
                        content: "Occupancy",
                        fontFamily: "Plus Jakarta Sans",
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Constant.height * 0.02),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.generalPadding,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: Constant.height * 0.025,
                        child: FittedBox(
                          child: Text(
                            "Total",
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
                        height: Constant.height * 0.025,
                        child: FittedBox(
                          child: Text(
                            "50%",
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
                SizedBox(height: Constant.height * 0.011),
                SizedBox(
                  height: Constant.height * 0.01,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: Constant.generalPadding,
                        ),
                        height: Constant.height * 0.01,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: const Color(0xFFDEDEDE),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: Constant.generalPadding,
                        ),
                        height: Constant.height * 0.01,
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                          color: const Color(0xFF00EFD1),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Constant.height * 0.008),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    horizontal: Constant.generalPadding,
                  ),
                  child: SizedBox(
                    height: Constant.height * 0.025,
                    child: FittedBox(
                      child: Text(
                        "Expected: 2000 | Collected: 500",
                        style: TextStyle(
                          fontFamily: "Plus Jakarta Sans",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF6B6B6B),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Constant.height * 0.03),
                SizedBox(
                  child: SizedBox(
                    height: Constant.height * 0.03,
                    child: FittedBox(
                      child: text(
                        content: "Listing performance",
                        fontFamily: "Plus Jakarta Sans",
                        textColor: Color(0xFF637587),
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Constant.height * 0.535,
                  child: buildLineChartCard(
                    title: "Average views per day",
                    amount: "12",
                    text_1: "Last 30 days",
                    text_2: "+20%",
                    monthLabels: ["Jan 14", "Jan 21", "Jan 28", "Feb 4"],
                    maxX: 3,
                    spots: [
                      FlSpot(0, 10000),
                      FlSpot(0.5, 20000),
                      FlSpot(1, 16000),
                      FlSpot(1.5, 25000),
                      FlSpot(1.8, 1000),
                      FlSpot(2, 20000),
                      FlSpot(2.5, 15000),
                      FlSpot(2.8, 25000),
                      FlSpot(3, 18000),
                    ],
                    useHostelOwnerDashboardProperties: true,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.generalPadding,
                  ),
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: Constant.height * 0.035,
                    child: FittedBox(
                      child: text(
                        content: "Room Listing",
                        fontFamily: "Plus Jakarta Sans",
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Constant.height * 0.02),
                GestureDetector(
                  onTap: () {
                    Get.to(() => RoomListings());
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: Constant.generalPadding,
                    ),
                    child: u101(
                      imagePath: "assets/Screens/Home/Listings/rooms.png",
                      description: "View rooms",
                    ),
                  ),
                ),
                SizedBox(height: Constant.height * 0.015),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.generalPadding,
                  ),
                  alignment: Alignment.centerLeft,
                  child: text(
                    content: "Calender",
                    fontFamily: "Plus Jakarta Sans",
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
                SizedBox(height: Constant.height * 0.02),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.generalPadding,
                  ),
                  child: u101(
                    imagePath: "assets/Screens/Home/Listings/calender.png",
                    description: "Set availability..............",
                  ),
                ),
                SizedBox(height: Constant.height * 0.015),
                GestureDetector(
                  onTap: () {
                    Get.to(() => Pricing());
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: Constant.generalPadding,
                    ),
                    child: u101(
                      imagePath: "assets/Screens/Home/Listings/pricing.png",
                      description: "Pricing",
                    ),
                  ),
                ),
                SizedBox(height: Constant.height * 0.02),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.generalPadding,
                  ),
                  child: u101(
                    imagePath: "assets/Screens/Home/Listings/offer.png",
                    description: "Special Offer",
                  ),
                ),
                SizedBox(height: Constant.height * 0.02),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.generalPadding,
                  ),
                  alignment: Alignment.centerLeft,
                  child: text(
                    content: "Get more bookings",
                    fontFamily: "Plus Jakarta Sans",
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
                SizedBox(height: Constant.height * 0.015),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.generalPadding,
                  ),
                  child: u101(
                    imagePath: "assets/Screens/Home/Listings/calendar-2.png",
                    description: "Boost your ranking",
                  ),
                ),

                SizedBox(height: Constant.height * 0.04),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ratings(String index, double percentage, GlobalKey? key) {
    return Row(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          width: Constant.width * 0.03,
          child: FittedBox(
            child: text(
              content: "$index  ",
              fontFamily: "Plus Jakarta Sans",
              fontSize: 10.sp,
              textColor: Color(0xFF121417),
            ),
          ),
        ),
        Expanded(
          child: Stack(
            children: [
              Container(
                key: key,
                height: Constant.height * 0.011,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: Color(0xFFDBE0E5),
                ),
              ),
              Container(
                height: Constant.height * 0.011,
                width: ((widgetSize?.width ?? 0) * (percentage / 100)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xFF121417),
                ),
              ),
            ],
          ),
        ),
        Container(
          // color: Colors.pink,
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(left: 2),
          width: Constant.width * 0.08,
          child: FittedBox(
            child: text(
              content: "${percentage.toInt()}%",
              fontFamily: "Plus Jakarta Sans",
              fontSize: 10.sp,
              textColor: Color(0xFF121417),
            ),
          ),
        ),
      ],
    );
  }
}
